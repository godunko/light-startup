--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  FK723M1-ZGT6

with STM32H723.Flash; use STM32H723.Flash;
with STM32H723.PWR;   use STM32H723.PWR;
with STM32H723.RCC;   use STM32H723.RCC;

separate (System_ARMv7)
procedure System_Init is

   use type ACR_LATENCY_Field;
   use type CFGR_SWS_Field;

   --  Parameters to configure 520 MHz CPU frequency.

   VOS0    : constant := 0;  --  Voltage scale, maximum performance.
   Latency : constant := 7;
   DIVM1   : constant := 5;
   MULN1   : constant := 104;
   RGE1    : constant := 2;

   procedure Configure_Power_Supply_LDO;
   --  Configure use of LTO to power MCU.

   procedure Configure_Voltage_Scaling (VOS : D3CR_VOS_Field);
   --  Configure voltage scaling.

   procedure Configure_External_Crystal_Oscillator;
   --  Configure HSE to use crystal oscillator, and start it.

   -------------------------------------------
   -- Configure_External_Crystal_Oscillator --
   -------------------------------------------

   procedure Configure_External_Crystal_Oscillator is
   begin
      --  Set HSE configuration: crystal oscillator

      declare
         Aux : STM32H723.RCC.CR_Register_Value :=
           STM32H723.RCC.CR_Register_Value (RCC_Periph.CR);

      begin
         Aux.HSEON  := True;
         Aux.HSEBYP := False;

         RCC_Periph.CR := STM32H723.RCC.CR_Register (Aux);
      end;

      --  Wait till HSE clock is ready.

      while not RCC_Periph.CR.HSERDY loop
         null;
      end loop;
   end Configure_External_Crystal_Oscillator;

   --------------------
   -- Configure_PLL1 --
   --------------------

   procedure Configure_PLL1 is
   begin
      --  Disable the main PLL.

      RCC_Periph.CR.PLL1ON := False;

      --  Wait till PLL is disabled.

      while RCC_Periph.CR.PLL1RDY loop
         null;
      end loop;

      --  Configure PLL1.

      declare
         Aux : PLLCKSELR_Register_Value :=
           PLLCKSELR_Register_Value (RCC_Periph.PLLCKSELR);

      begin
         Aux.PLLSRC := 2#10#;  --  HSE (hse_ck)
         Aux.DIVM1  := DIVM1;

         RCC_Periph.PLLCKSELR := PLLCKSELR_Register (Aux);
      end;

      declare
         Aux : PLL1DIVR_Register_Value :=
           PLL1DIVR_Register_Value (RCC_Periph.PLL1DIVR);

      begin
         Aux.DIVN1  := MULN1;
         Aux.DIVP1  := 0;
         Aux.DIVQ1  := 0;
         Aux.DIVR1  := 0;

         RCC_Periph.PLL1DIVR := PLL1DIVR_Register (Aux);
      end;

      declare
         Aux : PLLCFGR_Register := RCC_Periph.PLLCFGR;

      begin
         Aux.PLL1FRACEN := False;
         Aux.PLL1VCOSEL := False;
         Aux.PLL1RGE    := RGE1;
         Aux.DIVP1EN    := True;

         RCC_Periph.PLLCFGR := Aux;
      end;

      RCC_Periph.PLL1FRACR.FRACN1 := 0;

      --  Enable the main PLL.

      RCC_Periph.CR.PLL1ON := True;

      --  Wait till PLL is enabled.

      while not RCC_Periph.CR.PLL1RDY loop
         null;
      end loop;
   end Configure_PLL1;

   --------------------------------
   -- Configure_Power_Supply_LDO --
   --------------------------------

   procedure Configure_Power_Supply_LDO is
   begin
      --  Power up MCU, see [STM32H723 Reference manual] 6.4.1. System Supply
      --  Startup.

      --  "5.The software must then initialize the system including supply
      --  configuration programming in PWR control register 3 (PWR_CR3). Once
      --  the supply configuration has been configured, the ACTVOSRDY bit in
      --  PWR control status register 1 (PWR_CSR1) must be checked to
      --  guarantee valid voltage levels:
      --
      --  a) As long as ACTVOSRDY indicates that voltage levels are invalid,
      --     the system is in Run* mode, write operations to RAM are not
      --     allowed, and VOS must not be changed.
      --
      --  b) Once ACTVOSRDY indicates that voltage levels are valid, the
      --  system is in normal Run mode, write accesses to RAMs are allowed
      --  and VOS can be changed."

      --  STM32H723 MCU doesn't provide SMPS. FK723M1-ZGT6 board use LDO
      --  output to power core domain.
      --
      --  This register is reset by a power-on reset only, so write it even
      --  its value is close to defaut.

      --  Set the power supply configuration.

      declare
         Aux : CR3_Register := PWR_Periph.CR3;

      begin
         Aux.BYPASS := False;
         Aux.LDOEN  := True;
         Aux.SDEN   := False;

         PWR_Periph.CR3 := Aux;
      end;

      --  Wait till voltage level flag is set

      while not PWR_Periph.CSR1.ACTVOSRDY loop
         null;
      end loop;
   end Configure_Power_Supply_LDO;

   -------------------------------
   -- Configure_Voltage_Scaling --
   -------------------------------

   procedure Configure_Voltage_Scaling (VOS : D3CR_VOS_Field) is

      use type D3CR_VOS_Field;

      Dummy : D3CR_VOS_Field;

   begin
      PWR_Periph.D3CR.VOS := VOS;

      Dummy := PWR_Periph.D3CR.VOS;
      --  Delay after setting the voltage scaling.

      --  "When VOS0 voltage scaling is selected, to guarantee that the clock
      --  frequency can be increased above the currently used maximum
      --  frequency, ACTVOS[1:0] must be equal to VOS[1:0] and ACTVOSRDY must
      --  be set."

      while PWR_Periph.CSR1.ACTVOS /= VOS loop
         null;
      end loop;

      while not PWR_Periph.CSR1.ACTVOSRDY loop
         null;
      end loop;
   end Configure_Voltage_Scaling;

begin
   Configure_Power_Supply_LDO;
   Configure_Voltage_Scaling (VOS0);
   Configure_External_Crystal_Oscillator;
   Configure_PLL1;

   --  Configure Flash latency

   Flash_Periph.ACR.LATENCY := Latency;

   --  Configure peripheral clocks dividers.

   RCC_Periph.D1CFGR.D1PPRE := 2#100#;   --  rcc_hclk3 / 2

   RCC_Periph.D2CFGR.D2PPRE1 := 2#100#;  --  rcc_hclk1 / 2
   RCC_Periph.D2CFGR.D2PPRE2 := 2#100#;  --  rcc_hclk1 / 2

   RCC_Periph.D3CFGR.D3PPRE := 2#100#;   --  rcc_hclk4 / 2

   RCC_Periph.D1CFGR.HPRE := 2#1000#;    --  sys_d1cpre_ck / 2
   RCC_Periph.D1CFGR.D1CPRE := 0;        --  sys_ck

   --  Switch system clock to PLL

   RCC_Periph.CFGR.SW := 2#011#;

   while RCC_Periph.CFGR.SWS /= 2#011# loop
      null;
   end loop;
end System_Init;
