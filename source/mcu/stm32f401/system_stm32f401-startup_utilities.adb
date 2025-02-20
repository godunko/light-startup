--
--  Copyright (C) 2024-2025, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

with A0B.STM32F401.SVD.Flash; use A0B.STM32F401.SVD.Flash;
with A0B.STM32F401.SVD.PWR;   use A0B.STM32F401.SVD.PWR;
with A0B.STM32F401.SVD.RCC;   use A0B.STM32F401.SVD.RCC;

with A0B.ARMv7M.Startup_Utilities.Enable_FPU;

package body System_STM32F401.Startup_Utilities is

   -----------------
   -- System_Init --
   -----------------

   procedure System_Init
     (FLASH_LATENCY : A0B.Types.Unsigned_3;
      VOS_SCALE     : A0B.Types.Unsigned_2;
      PLL_M         : A0B.Types.Unsigned_6;
      PLL_N         : A0B.Types.Unsigned_9;
      PLL_P         : A0B.Types.Unsigned_2;
      PLL_Q         : A0B.Types.Unsigned_4;
      HPRE          : A0B.Types.Unsigned_4;
      PPRE          : A0B.Types.Unsigned_6)
   is
      use type A0B.Types.Unsigned_2;
      use type A0B.Types.Unsigned_3;

   begin
      --  Enable FPU

      A0B.ARMv7M.Startup_Utilities.Enable_FPU;

      --  Enable PWR peripheral.

      declare
         Aux_APB1ENR : APB1ENR_Register;

      begin
         RCC_Periph.APB1ENR.PWREN := True;
         Aux_APB1ENR := RCC_Periph.APB1ENR;
      end;

      --  Set Flash Latancy first (CPU clock frequency is going to be
      --  increased)

      FLASH_Periph.ACR.LATENCY := FLASH_LATENCY;

      while FLASH_Periph.ACR.LATENCY /= FLASH_LATENCY loop
         --  Wait till it is taken into account

         null;
      end loop;

      --  Set regulator voltage scaling to run @84 MHz

      PWR_Periph.CR.VOS := VOS_SCALE;

      --  Wait till selected VOS is activated.

      while PWR_Periph.CR.VOS /= VOS_SCALE loop
         null;
      end loop;

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

      --  Enable Instruction and Data cache in the Embedded Flash memory
      --  interface
      --
      --  Note: as recommended by [ES0299] 2.2.8, prefetch is disabled to
      --  minimize internal noise impacting ADC accuracy.

      declare
         Aux : ACR_Register := FLASH_Periph.ACR;

      begin
         Aux.ICEN   := True;
         Aux.DCEN   := True;
         Aux.PRFTEN := False;

         FLASH_Periph.ACR := Aux;
      end;
   end System_Init;

end System_STM32F401.Startup_Utilities;
