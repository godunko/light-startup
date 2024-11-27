--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Blackpill STM32F401

with A0B.STM32F401.SVD.Flash; use A0B.STM32F401.SVD.Flash;
with A0B.STM32F401.SVD.PWR;   use A0B.STM32F401.SVD.PWR;
with A0B.STM32F401.SVD.RCC;   use A0B.STM32F401.SVD.RCC;

with A0B.ARMv7M.Startup_Utilities.Enable_FPU;
with A0B.Types;

separate (System_ARMv7M)
procedure System_Init is

   VOS_SCALE : constant := 2#10#;  --  Scale 2
   --  Regulator voltage scaling output to run processor @84 MHz.

   PLL_M : constant := 25;          --  /25
   PLL_N : constant := 336;         --  *336
   PLL_P : constant := 2#01#;       --  /4
   PLL_Q : constant := 7;           --  /7
   HPRE  : constant := 0;           --  /1 AHB
   PPRE  : constant := 2#000_100#;  --  /1 APB2, /2 APB2
   --  Blackbill board has 25 MHz HSE resonator. Selected values allow
   --  processor to run @84 MHz, as well as to use USB controller, which
   --  requires 48 MHz frequency.
   --
   --  Note, PLLQ channel need to be enabled when necessary.

   FLASH_LATENCY : constant := 2;
   --  It is recommended value for 3.3V power and to run @84 MHz frequency,
   --  see [RM0368] Table 6.

   use type A0B.Types.Unsigned_2;
   use type A0B.Types.Unsigned_3;

   Aux_APB1ENR : APB1ENR_Register;

begin
   --  Enable FPU

   A0B.ARMv7M.Startup_Utilities.Enable_FPU;

   --  Enable PWR peripheral.

   RCC_Periph.APB1ENR.PWREN := True;
   Aux_APB1ENR := RCC_Periph.APB1ENR;

   --  Set Flash Latancy first (CPU clock frequency is going to be increased)

   FLASH_Periph.ACR.LATENCY := FLASH_LATENCY;

   while FLASH_Periph.ACR.LATENCY /= FLASH_LATENCY loop
      --  Wait till it is taken into account

      null;
   end loop;

   --  Set regulator voltage scaling to run @84 MHz

   PWR_Periph.CR.VOS := VOS_SCALE;

   --  Enable HSE and wait till it is ready.

   RCC_Periph.CR.HSEON := True;

   while not RCC_Periph.CR.HSERDY loop
   	null;
   end loop;

   --  Configure PLL

   declare
      Aux : PLLCFGR_Register := RCC_Periph.PLLCFGR;

   begin
      Aux.PLLSRC   := True;  --  HSE oscillator clock selected as PLL
      Aux.PLLM.Val := PLL_M;
      Aux.PLLN.Val := PLL_N;
      Aux.PLLP.Val := PLL_P;
      Aux.PLLQ.Val := PLL_Q;

      RCC_Periph.PLLCFGR := Aux;
   end;

   --  Enable PLL and wait till it is ready.

   RCC_Periph.CR.PLLON := True;

   while not RCC_Periph.CR.PLLRDY loop
      null;
   end loop;

   --  Wait till selected VOS is activated.

   while PWR_Periph.CR.VOS /= VOS_SCALE loop
      null;
   end loop;

   --  Configure AHB/APB1/APB2 prescalers

   declare
      Aux : CFGR_Register := RCC_Periph.CFGR;

   begin
      Aux.HPRE     := HPRE;
      Aux.PPRE.Val := PPRE;

      RCC_Periph.CFGR := Aux;
   end;

   --  Switch system clock source to PLL and wait when it is completed.

   RCC_Periph.CFGR.SW.Val := 2#10#;

   while RCC_Periph.CFGR.SW.Val /= 2#10# loop
      null;
   end loop;
end System_Init;
