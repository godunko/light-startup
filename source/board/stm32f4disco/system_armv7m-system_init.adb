--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  stm32f407
with A0B.ARMv7M.CMSIS;                  use A0B.ARMv7M.CMSIS;
with A0B.ARMv7M.System_Control_Block;   use A0B.ARMv7M.System_Control_Block;
with A0B.SVD.STM32F407.Flash;           use A0B.SVD.STM32F407.Flash;
with A0B.SVD.STM32F407.PWR;             use A0B.SVD.STM32F407.PWR;
with A0B.SVD.STM32F407.RCC;             use A0B.SVD.STM32F407.RCC;

with System_ARMv7M.Startup_Utilities;   use System_ARMv7M.Startup_Utilities;
with A0B.Types;

separate (System_ARMv7M)
procedure System_Init is
   PLL_M : constant := 8;
   PLL_N : constant := 336;
   PLL_P : constant := 2;
   PLL_Q : constant := 7;
   FLASH_LATENCY_WS : constant := 5;
   -------------------------------------------
   -- Configure_External_Crystal_Oscillator --
   -------------------------------------------
   procedure Configure_External_Crystal_Oscillator is
   begin
      --  Set HSE configuration: crystal oscillator
      declare
         Val : A0B.SVD.STM32F407.RCC.CR_Register := RCC_Periph.CR;
      begin
         Val.HSEON  := True;
         RCC_Periph.CR := Val;
      end;

      --  Wait till HSE clock is ready.
      while not RCC_Periph.CR.HSERDY loop
         null;
      end loop;
   end Configure_External_Crystal_Oscillator;

   --------------------
   -- Configure_PLL --
   --------------------
   procedure Configure_PLL_168MHZ is
   begin
      --  Disable the main PLL.
      RCC_Periph.CR.PLLON := False;

      --  Wait till PLL is disabled.
      while RCC_Periph.CR.PLLRDY loop
         null;
      end loop;

      --  Configure PLL
      declare
         Val : PLLCFGR_Register := RCC_Periph.PLLCFGR;
      begin
         Val.PLLSRC := True;  --  HSE (hse_ck)
         Val.PLLM.Val := PLL_M;
         Val.PLLN.Val := PLL_N;
         Val.PLLP.Val := PLL_P;
         Val.PLLQ.Val := PLL_Q;
         RCC_Periph.PLLCFGR := PLLCFGR_Register (Val);
      end;

      --  Enable the main PLL.
      RCC_Periph.CR.PLLON := True;

      --  Wait till PLL is enabled.
      while not RCC_Periph.CR.PLLRDY loop
         null;
      end loop;
   end Configure_PLL_168MHZ;

   -----------------------------
   -- Configure Flash and APB --
   -----------------------------
   procedure Configure_Periph is
   begin
      declare
         Val : CFGR_Register := RCC_Periph.CFGR;
      begin
         -- Set up dividers
         Val.HPRE := 0;
         Val.PPRE.Val := 2#100101#;
         RCC_Periph.CFGR := Val;
         RCC_Periph.APB1ENR.PWREN := True;
         PWR_Periph.CSR.VOSRDY := True;
      end;

      -- Set up flash latency
      declare
         Val : ACR_Register := Flash_Periph.ACR;
      begin
         Val.LATENCY := FLASH_LATENCY_WS;
         Val.ICEN := True;
         Val.DCEN := True;
         Val.PRFTEN := True;
         Val.ICRST := True;
         Val.DCRST := True;
         Flash_Periph.ACR := Val;
      end;
   end Configure_Periph;

   use type A0B.Types.Unsigned_2;
begin
   Configure_External_Crystal_Oscillator;
   Configure_Periph;
   Configure_PLL_168MHZ;
   Enable_FPU;

   -- Switch system to PLL clock
   RCC_Periph.CFGR.SW.Val := 2#10#;
   while RCC_Periph.CFGR.SWS.Val /= 2#10# loop
      null;
   end loop;
end System_Init;
