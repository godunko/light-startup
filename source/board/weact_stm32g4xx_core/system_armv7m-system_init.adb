--
--  Copyright (C) 2025, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  WeAct STM32G4xx Core

with A0B.ARMv7M.Startup_Utilities.Enable_FPU;
with A0B.STM32G4.Peripherals.FLASH;
with A0B.STM32G4.Peripherals.PWR;
with A0B.STM32G4.Peripherals.RCC;
with A0B.Types;

separate (System_ARMv7M)
procedure System_Init is

   FLASH_LATENCY : constant := 2#100#;  --  0100: Four wait states

   PLL_M : constant := 2;   --  Mathematical value, mapped to register's value
   PLL_N : constant := 75;
   PLL_P : constant := 2;
   PLL_Q : constant A0B.STM32G4.Peripherals.RCC.RCC_PLLCFGR_PLLQ_Field :=
     A0B.STM32G4.Peripherals.RCC.PLLQ_2;
   PLL_R : constant A0B.STM32G4.Peripherals.RCC.RCC_PLLCFGR_PLLR_Field :=
     A0B.STM32G4.Peripherals.RCC.PLLR_2;
   --  Selected values run processor @150 MHz.

begin
   A0B.ARMv7M.Startup_Utilities.Enable_FPU;

   --  1. Program the VOS bits to “01” in the PWR_CR1 register.
   --
   --  2. Wait until the VOSF flag is cleared in the PWR_SR2 register.

   declare
      Aux : A0B.STM32G4.Peripherals.PWR.PWR_CR1_Register :=
        A0B.STM32G4.Peripherals.PWR.PWR_CR1;

   begin
      Aux.VOS := A0B.STM32G4.Peripherals.PWR.Range_1;  --  01: Range 1

      A0B.STM32G4.Peripherals.PWR.PWR_CR1 := Aux;
   end;

   while A0B.STM32G4.Peripherals.PWR.PWR_SR2.VOSF loop
      null;
   end loop;

   --  3. Adjust number of wait states according new frequency target in Range
   --  1 (LATENCY bits in the FLASH_ACR).

   declare
      Aux : A0B.STM32G4.Peripherals.FLASH.FLASH_ACR_Register :=
        A0B.STM32G4.Peripherals.FLASH.FLASH_ACR;

   begin
      Aux.LATENCY := FLASH_LATENCY;
      Aux.PRFTEN  := True;
      Aux.ICEN    := True;
      Aux.DCEN    := True;

      A0B.STM32G4.Peripherals.FLASH.FLASH_ACR := Aux;
   end;

   declare
      use type A0B.Types.Unsigned_4;

   begin
      while A0B.STM32G4.Peripherals.FLASH.FLASH_ACR.LATENCY
              /= FLASH_LATENCY
      loop
         null;
      end loop;
   end;

   --  4. ... Select the Range 1 normal mode by setting R1MODE bit in the
   --  PWR_CR5 register.

   A0B.STM32G4.Peripherals.PWR.PWR_CR5.R1MODE := True;

   --  Activate HSE clock/crystal

   declare
      Aux : A0B.STM32G4.Peripherals.RCC.RCC_CR_Register :=
        A0B.STM32G4.Peripherals.RCC.RCC_CR;

   begin
      Aux.HSEBYP := False;
      Aux.HSEON  := True;

      A0B.STM32G4.Peripherals.RCC.RCC_CR := Aux;
   end;

   while not A0B.STM32G4.Peripherals.RCC.RCC_CR.HSERDY loop
      null;
   end loop;

   --  Configure PLL

   declare
      use type A0B.Types.Unsigned_4;

      Aux : A0B.STM32G4.Peripherals.RCC.RCC_PLLCFGR_Register :=
        A0B.STM32G4.Peripherals.RCC.RCC_PLLCFGR;

   begin
      Aux.PLLSRC  := A0B.STM32G4.Peripherals.RCC.HSE;
      Aux.PLLM    := PLL_M - 1;
      Aux.PLLN    := PLL_N;
      Aux.PLLPEN  := False;
      --  PLLP is not used
      Aux.PLLQEN  := False;
      Aux.PLLQ    := A0B.STM32G4.Peripherals.RCC.PLLQ_2;
      Aux.PLLREN  := False;
      Aux.PLLR    := A0B.STM32G4.Peripherals.RCC.PLLR_2;
      Aux.PLLPDIV := PLL_P;

      A0B.STM32G4.Peripherals.RCC.RCC_PLLCFGR := Aux;
   end;

   --  Enable PLL and wait till it is ready

   A0B.STM32G4.Peripherals.RCC.RCC_PLLCFGR.PLLREN := True;
   A0B.STM32G4.Peripherals.RCC.RCC_CR.PLLON := True;

   while not A0B.STM32G4.Peripherals.RCC.RCC_CR.PLLRDY loop
      null;
   end loop;

   --  Configure system clock source and bus prescalers.

   declare
      use type A0B.STM32G4.Peripherals.RCC.RCC_CFGR_SW_Field;

      Aux : A0B.STM32G4.Peripherals.RCC.RCC_CFGR_Regiter :=
        A0B.STM32G4.Peripherals.RCC.RCC_CFGR;

   begin
      Aux.SW    := A0B.STM32G4.Peripherals.RCC.PLL;
      Aux.HPRE  := A0B.STM32G4.Peripherals.RCC.SYSCLK_1;
      Aux.PPRE1 := A0B.STM32G4.Peripherals.RCC.HCLK_1;
      Aux.PPRE2 := A0B.STM32G4.Peripherals.RCC.HCLK_1;

      A0B.STM32G4.Peripherals.RCC.RCC_CFGR := Aux;

      while A0B.STM32G4.Peripherals.RCC.RCC_CFGR.SWS
        /= A0B.STM32G4.Peripherals.RCC.PLL
      loop
         null;
      end loop;
   end;
end System_Init;
