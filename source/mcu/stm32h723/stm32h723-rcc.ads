pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32H723.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package STM32H723.RCC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR_HSIDIV_Field is STM32H723.UInt2;

   --  clock control register
   type CR_Register_Value is record
      --  Internal high-speed clock enable
      HSION          : Boolean := True;
      --  High Speed Internal clock enable in Stop mode
      HSIKERON       : Boolean := True;
      --  HSI clock ready flag
      HSIRDY         : Boolean := False;
      --  HSI clock divider
      HSIDIV         : CR_HSIDIV_Field := 16#0#;
      --  HSI divider flag
      HSIDIVF        : Boolean := False;
      --  unspecified
      Reserved_6_6   : STM32H723.Bit := 16#0#;
      --  CSI clock enable
      CSION          : Boolean := True;
      --  CSI clock ready flag
      CSIRDY         : Boolean := False;
      --  CSI clock enable in Stop mode
      CSIKERON       : Boolean := False;
      --  unspecified
      Reserved_10_11 : STM32H723.UInt2 := 16#0#;
      --  RC48 clock enable
      RC48ON         : Boolean := False;
      --  RC48 clock ready flag
      RC48RDY        : Boolean := False;
      --  D1 domain clocks ready flag
      D1CKRDY        : Boolean := False;
      --  D2 domain clocks ready flag
      D2CKRDY        : Boolean := False;
      --  HSE clock enable
      HSEON          : Boolean := False;
      --  HSE clock ready flag
      HSERDY         : Boolean := False;
      --  HSE clock bypass
      HSEBYP         : Boolean := False;
      --  HSE Clock Security System enable
      HSECSSON       : Boolean := False;
      --  unspecified
      Reserved_20_23 : STM32H723.UInt4 := 16#0#;
      --  PLL1 enable
      PLL1ON         : Boolean := False;
      --  PLL1 clock ready flag
      PLL1RDY        : Boolean := False;
      --  PLL2 enable
      PLL2ON         : Boolean := False;
      --  PLL2 clock ready flag
      PLL2RDY        : Boolean := False;
      --  PLL3 enable
      PLL3ON         : Boolean := False;
      --  PLL3 clock ready flag
      PLL3RDY        : Boolean := False;
      --  unspecified
      Reserved_30_31 : STM32H723.UInt2 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CR_Register_Value use record
      HSION          at 0 range 0 .. 0;
      HSIKERON       at 0 range 1 .. 1;
      HSIRDY         at 0 range 2 .. 2;
      HSIDIV         at 0 range 3 .. 4;
      HSIDIVF        at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      CSION          at 0 range 7 .. 7;
      CSIRDY         at 0 range 8 .. 8;
      CSIKERON       at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RC48ON         at 0 range 12 .. 12;
      RC48RDY        at 0 range 13 .. 13;
      D1CKRDY        at 0 range 14 .. 14;
      D2CKRDY        at 0 range 15 .. 15;
      HSEON          at 0 range 16 .. 16;
      HSERDY         at 0 range 17 .. 17;
      HSEBYP         at 0 range 18 .. 18;
      HSECSSON       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      PLL1ON         at 0 range 24 .. 24;
      PLL1RDY        at 0 range 25 .. 25;
      PLL2ON         at 0 range 26 .. 26;
      PLL2RDY        at 0 range 27 .. 27;
      PLL3ON         at 0 range 28 .. 28;
      PLL3RDY        at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   type CR_Register is new CR_Register_Value
     with Volatile_Full_Access;

   subtype HSICFGR_HSICAL_Field is STM32H723.UInt12;
   subtype HSICFGR_HSITRIM_Field is STM32H723.UInt7;

   --  RCC HSI calibration register
   type HSICFGR_Register_Value is record
      --  Read-only. HSI clock calibration Set by hardware by option byte
      --  loading during system reset nreset. Adjusted by software through
      --  trimming bits HSITRIM. This field represents the sum of engineering
      --  option byte calibration value and HSITRIM bits value.
      HSICAL         : HSICFGR_HSICAL_Field := 16#0#;
      --  unspecified
      Reserved_12_23 : STM32H723.UInt12 := 16#0#;
      --  HSI clock trimming Set by software to adjust calibration. HSITRIM
      --  field is added to the engineering option bytes loaded during reset
      --  phase (FLASH_HSI_opt) in order to form the calibration trimming
      --  value. HSICALÂ =Â HSITRIMÂ +Â FLASH_HSI_opt. Note: The reset
      --  value of the field is 0x40.
      HSITRIM        : HSICFGR_HSITRIM_Field := 16#40#;
      --  unspecified
      Reserved_31_31 : STM32H723.Bit := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for HSICFGR_Register_Value use record
      HSICAL         at 0 range 0 .. 11;
      Reserved_12_23 at 0 range 12 .. 23;
      HSITRIM        at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type HSICFGR_Register is new HSICFGR_Register_Value
     with Volatile_Full_Access;

   subtype CRRCR_HSI48CAL_Field is STM32H723.UInt10;

   --  RCC clock recovery RC register
   type CRRCR_Register_Value is record
      --  Read-only. Internal RC 48 MHz clock calibration Set by hardware by
      --  option byte loading during system reset nreset. Read-only.
      HSI48CAL       : CRRCR_HSI48CAL_Field;
      --  unspecified
      Reserved_10_31 : STM32H723.UInt22;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CRRCR_Register_Value use record
      HSI48CAL       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   type CRRCR_Register is new CRRCR_Register_Value
     with Volatile_Full_Access;

   subtype CSICFGR_CSICAL_Field is STM32H723.UInt10;
   subtype CSICFGR_CSITRIM_Field is STM32H723.UInt6;

   --  RCC CSI calibration register
   type CSICFGR_Register_Value is record
      --  Read-only. CSI clock calibration Set by hardware by option byte
      --  loading during system reset nreset. Adjusted by software through
      --  trimming bits CSITRIM. This field represents the sum of engineering
      --  option byte calibration value and CSITRIM bits value.
      CSICAL         : CSICFGR_CSICAL_Field := 16#0#;
      --  unspecified
      Reserved_10_23 : STM32H723.UInt14 := 16#0#;
      --  CSI clock trimming Set by software to adjust calibration. CSITRIM
      --  field is added to the engineering option bytes loaded during reset
      --  phase (FLASH_CSI_opt) in order to form the calibration trimming
      --  value. CSICALÂ =Â CSITRIMÂ +Â FLASH_CSI_opt. Note: The reset
      --  value of the field is 0x20.
      CSITRIM        : CSICFGR_CSITRIM_Field := 16#20#;
      --  unspecified
      Reserved_30_31 : STM32H723.UInt2 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CSICFGR_Register_Value use record
      CSICAL         at 0 range 0 .. 9;
      Reserved_10_23 at 0 range 10 .. 23;
      CSITRIM        at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   type CSICFGR_Register is new CSICFGR_Register_Value
     with Volatile_Full_Access;

   subtype CFGR_SW_Field is STM32H723.UInt3;
   subtype CFGR_SWS_Field is STM32H723.UInt3;
   subtype CFGR_RTCPRE_Field is STM32H723.UInt6;
   subtype CFGR_MCO1PRE_Field is STM32H723.UInt4;
   subtype CFGR_MCO1_Field is STM32H723.UInt3;
   subtype CFGR_MCO2PRE_Field is STM32H723.UInt4;
   subtype CFGR_MCO2_Field is STM32H723.UInt3;

   --  RCC Clock Configuration Register
   type CFGR_Register_Value is record
      --  System clock switch
      SW             : CFGR_SW_Field := 16#0#;
      --  System clock switch status
      SWS            : CFGR_SWS_Field := 16#0#;
      --  System clock selection after a wake up from system Stop
      STOPWUCK       : Boolean := False;
      --  Kernel clock selection after a wake up from system Stop
      STOPKERWUCK    : Boolean := False;
      --  HSE division factor for RTC clock
      RTCPRE         : CFGR_RTCPRE_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : STM32H723.Bit := 16#0#;
      --  Timers clocks prescaler selection
      TIMPRE         : Boolean := False;
      --  unspecified
      Reserved_16_17 : STM32H723.UInt2 := 16#0#;
      --  MCO1 prescaler
      MCO1PRE        : CFGR_MCO1PRE_Field := 16#0#;
      --  Micro-controller clock output 1
      MCO1           : CFGR_MCO1_Field := 16#0#;
      --  MCO2 prescaler
      MCO2PRE        : CFGR_MCO2PRE_Field := 16#0#;
      --  Micro-controller clock output 2
      MCO2           : CFGR_MCO2_Field := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CFGR_Register_Value use record
      SW             at 0 range 0 .. 2;
      SWS            at 0 range 3 .. 5;
      STOPWUCK       at 0 range 6 .. 6;
      STOPKERWUCK    at 0 range 7 .. 7;
      RTCPRE         at 0 range 8 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      TIMPRE         at 0 range 15 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      MCO1PRE        at 0 range 18 .. 21;
      MCO1           at 0 range 22 .. 24;
      MCO2PRE        at 0 range 25 .. 28;
      MCO2           at 0 range 29 .. 31;
   end record;

   type CFGR_Register is new CFGR_Register_Value
     with Volatile_Full_Access;

   subtype D1CFGR_HPRE_Field is STM32H723.UInt4;
   subtype D1CFGR_D1PPRE_Field is STM32H723.UInt3;
   subtype D1CFGR_D1CPRE_Field is STM32H723.UInt4;

   --  RCC Domain 1 Clock Configuration Register
   type D1CFGR_Register_Value is record
      --  D1 domain AHB prescaler
      HPRE           : D1CFGR_HPRE_Field := 16#0#;
      --  D1 domain APB3 prescaler
      D1PPRE         : D1CFGR_D1PPRE_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : STM32H723.Bit := 16#0#;
      --  D1 domain Core prescaler
      D1CPRE         : D1CFGR_D1CPRE_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : STM32H723.UInt20 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for D1CFGR_Register_Value use record
      HPRE           at 0 range 0 .. 3;
      D1PPRE         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      D1CPRE         at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   type D1CFGR_Register is new D1CFGR_Register_Value
     with Volatile_Full_Access;

   subtype D2CFGR_D2PPRE1_Field is STM32H723.UInt3;
   subtype D2CFGR_D2PPRE2_Field is STM32H723.UInt3;

   --  RCC Domain 2 Clock Configuration Register
   type D2CFGR_Register_Value is record
      --  unspecified
      Reserved_0_3   : STM32H723.UInt4 := 16#0#;
      --  D2 domain APB1 prescaler
      D2PPRE1        : D2CFGR_D2PPRE1_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : STM32H723.Bit := 16#0#;
      --  D2 domain APB2 prescaler
      D2PPRE2        : D2CFGR_D2PPRE2_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : STM32H723.UInt21 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for D2CFGR_Register_Value use record
      Reserved_0_3   at 0 range 0 .. 3;
      D2PPRE1        at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      D2PPRE2        at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   type D2CFGR_Register is new D2CFGR_Register_Value
     with Volatile_Full_Access;

   subtype D3CFGR_D3PPRE_Field is STM32H723.UInt3;

   --  RCC Domain 3 Clock Configuration Register
   type D3CFGR_Register_Value is record
      --  unspecified
      Reserved_0_3  : STM32H723.UInt4 := 16#0#;
      --  D3 domain APB4 prescaler
      D3PPRE        : D3CFGR_D3PPRE_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : STM32H723.UInt25 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for D3CFGR_Register_Value use record
      Reserved_0_3  at 0 range 0 .. 3;
      D3PPRE        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   type D3CFGR_Register is new D3CFGR_Register_Value
     with Volatile_Full_Access;

   subtype PLLCKSELR_PLLSRC_Field is STM32H723.UInt2;
   subtype PLLCKSELR_DIVM1_Field is STM32H723.UInt6;
   subtype PLLCKSELR_DIVM2_Field is STM32H723.UInt6;
   subtype PLLCKSELR_DIVM3_Field is STM32H723.UInt6;

   --  RCC PLLs Clock Source Selection Register
   type PLLCKSELR_Register_Value is record
      --  DIVMx and PLLs clock source selection
      PLLSRC         : PLLCKSELR_PLLSRC_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : STM32H723.UInt2 := 16#0#;
      --  Prescaler for PLL1
      DIVM1          : PLLCKSELR_DIVM1_Field := 16#20#;
      --  unspecified
      Reserved_10_11 : STM32H723.UInt2 := 16#0#;
      --  Prescaler for PLL2
      DIVM2          : PLLCKSELR_DIVM2_Field := 16#20#;
      --  unspecified
      Reserved_18_19 : STM32H723.UInt2 := 16#0#;
      --  Prescaler for PLL3
      DIVM3          : PLLCKSELR_DIVM3_Field := 16#20#;
      --  unspecified
      Reserved_26_31 : STM32H723.UInt6 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PLLCKSELR_Register_Value use record
      PLLSRC         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      DIVM1          at 0 range 4 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      DIVM2          at 0 range 12 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      DIVM3          at 0 range 20 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   type PLLCKSELR_Register is new PLLCKSELR_Register_Value
     with Volatile_Full_Access;

   subtype PLLCFGR_PLL1RGE_Field is STM32H723.UInt2;
   subtype PLLCFGR_PLL2RGE_Field is STM32H723.UInt2;
   subtype PLLCFGR_PLL3RGE_Field is STM32H723.UInt2;

   --  RCC PLLs Configuration Register
   type PLLCFGR_Register_Value is record
      --  PLL1 fractional latch enable
      PLL1FRACEN     : Boolean := False;
      --  PLL1 VCO selection
      PLL1VCOSEL     : Boolean := False;
      --  PLL1 input frequency range
      PLL1RGE        : PLLCFGR_PLL1RGE_Field := 16#0#;
      --  PLL2 fractional latch enable
      PLL2FRACEN     : Boolean := False;
      --  PLL2 VCO selection
      PLL2VCOSEL     : Boolean := False;
      --  PLL2 input frequency range
      PLL2RGE        : PLLCFGR_PLL2RGE_Field := 16#0#;
      --  PLL3 fractional latch enable
      PLL3FRACEN     : Boolean := False;
      --  PLL3 VCO selection
      PLL3VCOSEL     : Boolean := False;
      --  PLL3 input frequency range
      PLL3RGE        : PLLCFGR_PLL3RGE_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : STM32H723.UInt4 := 16#0#;
      --  PLL1 DIVP divider output enable
      DIVP1EN        : Boolean := True;
      --  PLL1 DIVQ divider output enable
      DIVQ1EN        : Boolean := True;
      --  PLL1 DIVR divider output enable
      DIVR1EN        : Boolean := True;
      --  PLL2 DIVP divider output enable
      DIVP2EN        : Boolean := True;
      --  PLL2 DIVQ divider output enable
      DIVQ2EN        : Boolean := True;
      --  PLL2 DIVR divider output enable
      DIVR2EN        : Boolean := True;
      --  PLL3 DIVP divider output enable
      DIVP3EN        : Boolean := True;
      --  PLL3 DIVQ divider output enable
      DIVQ3EN        : Boolean := True;
      --  PLL3 DIVR divider output enable
      DIVR3EN        : Boolean := True;
      --  unspecified
      Reserved_25_31 : STM32H723.UInt7 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PLLCFGR_Register_Value use record
      PLL1FRACEN     at 0 range 0 .. 0;
      PLL1VCOSEL     at 0 range 1 .. 1;
      PLL1RGE        at 0 range 2 .. 3;
      PLL2FRACEN     at 0 range 4 .. 4;
      PLL2VCOSEL     at 0 range 5 .. 5;
      PLL2RGE        at 0 range 6 .. 7;
      PLL3FRACEN     at 0 range 8 .. 8;
      PLL3VCOSEL     at 0 range 9 .. 9;
      PLL3RGE        at 0 range 10 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DIVP1EN        at 0 range 16 .. 16;
      DIVQ1EN        at 0 range 17 .. 17;
      DIVR1EN        at 0 range 18 .. 18;
      DIVP2EN        at 0 range 19 .. 19;
      DIVQ2EN        at 0 range 20 .. 20;
      DIVR2EN        at 0 range 21 .. 21;
      DIVP3EN        at 0 range 22 .. 22;
      DIVQ3EN        at 0 range 23 .. 23;
      DIVR3EN        at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   type PLLCFGR_Register is new PLLCFGR_Register_Value
     with Volatile_Full_Access;

   subtype PLL1DIVR_DIVN1_Field is STM32H723.UInt9;
   subtype PLL1DIVR_DIVP1_Field is STM32H723.UInt7;
   subtype PLL1DIVR_DIVQ1_Field is STM32H723.UInt7;
   subtype PLL1DIVR_DIVR1_Field is STM32H723.UInt7;

   --  RCC PLL1 Dividers Configuration Register
   type PLL1DIVR_Register_Value is record
      --  Multiplication factor for PLL1 VCO
      DIVN1          : PLL1DIVR_DIVN1_Field := 16#80#;
      --  PLL1 DIVP division factor
      DIVP1          : PLL1DIVR_DIVP1_Field := 16#1#;
      --  PLL1 DIVQ division factor
      DIVQ1          : PLL1DIVR_DIVQ1_Field := 16#1#;
      --  unspecified
      Reserved_23_23 : STM32H723.Bit := 16#0#;
      --  PLL1 DIVR division factor
      DIVR1          : PLL1DIVR_DIVR1_Field := 16#1#;
      --  unspecified
      Reserved_31_31 : STM32H723.Bit := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PLL1DIVR_Register_Value use record
      DIVN1          at 0 range 0 .. 8;
      DIVP1          at 0 range 9 .. 15;
      DIVQ1          at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      DIVR1          at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type PLL1DIVR_Register is new PLL1DIVR_Register_Value
     with Volatile_Full_Access;

   subtype PLL1FRACR_FRACN1_Field is STM32H723.UInt13;

   --  RCC PLL1 Fractional Divider Register
   type PLL1FRACR_Register_Value is record
      --  unspecified
      Reserved_0_2   : STM32H723.UInt3 := 16#0#;
      --  Fractional part of the multiplication factor for PLL1 VCO
      FRACN1         : PLL1FRACR_FRACN1_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32H723.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PLL1FRACR_Register_Value use record
      Reserved_0_2   at 0 range 0 .. 2;
      FRACN1         at 0 range 3 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   type PLL1FRACR_Register is new PLL1FRACR_Register_Value
     with Volatile_Full_Access;

   subtype PLL2DIVR_DIVN1_Field is STM32H723.UInt9;
   subtype PLL2DIVR_DIVP1_Field is STM32H723.UInt7;
   subtype PLL2DIVR_DIVQ1_Field is STM32H723.UInt7;
   subtype PLL2DIVR_DIVR1_Field is STM32H723.UInt7;

   --  RCC PLL2 Dividers Configuration Register
   type PLL2DIVR_Register_Value is record
      --  Multiplication factor for PLL1 VCO
      DIVN1          : PLL2DIVR_DIVN1_Field := 16#80#;
      --  PLL1 DIVP division factor
      DIVP1          : PLL2DIVR_DIVP1_Field := 16#1#;
      --  PLL1 DIVQ division factor
      DIVQ1          : PLL2DIVR_DIVQ1_Field := 16#1#;
      --  unspecified
      Reserved_23_23 : STM32H723.Bit := 16#0#;
      --  PLL1 DIVR division factor
      DIVR1          : PLL2DIVR_DIVR1_Field := 16#1#;
      --  unspecified
      Reserved_31_31 : STM32H723.Bit := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PLL2DIVR_Register_Value use record
      DIVN1          at 0 range 0 .. 8;
      DIVP1          at 0 range 9 .. 15;
      DIVQ1          at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      DIVR1          at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type PLL2DIVR_Register is new PLL2DIVR_Register_Value
     with Volatile_Full_Access;

   subtype PLL2FRACR_FRACN2_Field is STM32H723.UInt13;

   --  RCC PLL2 Fractional Divider Register
   type PLL2FRACR_Register_Value is record
      --  unspecified
      Reserved_0_2   : STM32H723.UInt3 := 16#0#;
      --  Fractional part of the multiplication factor for PLL VCO
      FRACN2         : PLL2FRACR_FRACN2_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32H723.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PLL2FRACR_Register_Value use record
      Reserved_0_2   at 0 range 0 .. 2;
      FRACN2         at 0 range 3 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   type PLL2FRACR_Register is new PLL2FRACR_Register_Value
     with Volatile_Full_Access;

   subtype PLL3DIVR_DIVN3_Field is STM32H723.UInt9;
   subtype PLL3DIVR_DIVP3_Field is STM32H723.UInt7;
   subtype PLL3DIVR_DIVQ3_Field is STM32H723.UInt7;
   subtype PLL3DIVR_DIVR3_Field is STM32H723.UInt7;

   --  RCC PLL3 Dividers Configuration Register
   type PLL3DIVR_Register_Value is record
      --  Multiplication factor for PLL1 VCO
      DIVN3          : PLL3DIVR_DIVN3_Field := 16#80#;
      --  PLL DIVP division factor
      DIVP3          : PLL3DIVR_DIVP3_Field := 16#1#;
      --  PLL DIVQ division factor
      DIVQ3          : PLL3DIVR_DIVQ3_Field := 16#1#;
      --  unspecified
      Reserved_23_23 : STM32H723.Bit := 16#0#;
      --  PLL DIVR division factor
      DIVR3          : PLL3DIVR_DIVR3_Field := 16#1#;
      --  unspecified
      Reserved_31_31 : STM32H723.Bit := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PLL3DIVR_Register_Value use record
      DIVN3          at 0 range 0 .. 8;
      DIVP3          at 0 range 9 .. 15;
      DIVQ3          at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      DIVR3          at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type PLL3DIVR_Register is new PLL3DIVR_Register_Value
     with Volatile_Full_Access;

   subtype PLL3FRACR_FRACN3_Field is STM32H723.UInt13;

   --  RCC PLL3 Fractional Divider Register
   type PLL3FRACR_Register_Value is record
      --  unspecified
      Reserved_0_2   : STM32H723.UInt3 := 16#0#;
      --  Fractional part of the multiplication factor for PLL3 VCO
      FRACN3         : PLL3FRACR_FRACN3_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32H723.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PLL3FRACR_Register_Value use record
      Reserved_0_2   at 0 range 0 .. 2;
      FRACN3         at 0 range 3 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   type PLL3FRACR_Register is new PLL3FRACR_Register_Value
     with Volatile_Full_Access;

   subtype D1CCIPR_FMCSEL_Field is STM32H723.UInt2;
   subtype D1CCIPR_OCTOSPISEL_Field is STM32H723.UInt2;
   subtype D1CCIPR_CKPERSEL_Field is STM32H723.UInt2;

   --  RCC Domain 1 Kernel Clock Configuration Register
   type D1CCIPR_Register_Value is record
      --  FMC kernel clock source selection
      FMCSEL         : D1CCIPR_FMCSEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : STM32H723.UInt2 := 16#0#;
      --  QUADSPI kernel clock source selection
      OCTOSPISEL     : D1CCIPR_OCTOSPISEL_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : STM32H723.UInt10 := 16#0#;
      --  SDMMC kernel clock source selection
      SDMMCSEL       : Boolean := False;
      --  unspecified
      Reserved_17_27 : STM32H723.UInt11 := 16#0#;
      --  per_ck clock source selection
      CKPERSEL       : D1CCIPR_CKPERSEL_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : STM32H723.UInt2 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for D1CCIPR_Register_Value use record
      FMCSEL         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      OCTOSPISEL     at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      SDMMCSEL       at 0 range 16 .. 16;
      Reserved_17_27 at 0 range 17 .. 27;
      CKPERSEL       at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   type D1CCIPR_Register is new D1CCIPR_Register_Value
     with Volatile_Full_Access;

   subtype D2CCIP1R_SAI1SEL_Field is STM32H723.UInt3;
   subtype D2CCIP1R_SPI123SEL_Field is STM32H723.UInt3;
   subtype D2CCIP1R_SPI45SEL_Field is STM32H723.UInt3;
   subtype D2CCIP1R_SPDIFRXSEL_Field is STM32H723.UInt2;
   subtype D2CCIP1R_FDCANSEL_Field is STM32H723.UInt2;

   --  RCC Domain 2 Kernel Clock Configuration Register
   type D2CCIP1R_Register_Value is record
      --  SAI1 and DFSDM1 kernel Aclk clock source selection
      SAI1SEL        : D2CCIP1R_SAI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_3_11  : STM32H723.UInt9 := 16#0#;
      --  SPI/I2S1,2 and 3 kernel clock source selection
      SPI123SEL      : D2CCIP1R_SPI123SEL_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : STM32H723.Bit := 16#0#;
      --  SPI4 and 5 kernel clock source selection
      SPI45SEL       : D2CCIP1R_SPI45SEL_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : STM32H723.Bit := 16#0#;
      --  SPDIFRX kernel clock source selection
      SPDIFRXSEL     : D2CCIP1R_SPDIFRXSEL_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : STM32H723.UInt2 := 16#0#;
      --  DFSDM1 kernel Clk clock source selection
      DFSDM1SEL      : Boolean := False;
      --  unspecified
      Reserved_25_27 : STM32H723.UInt3 := 16#0#;
      --  FDCAN kernel clock source selection
      FDCANSEL       : D2CCIP1R_FDCANSEL_Field := 16#0#;
      --  unspecified
      Reserved_30_30 : STM32H723.Bit := 16#0#;
      --  SWPMI kernel clock source selection
      SWPMISEL       : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for D2CCIP1R_Register_Value use record
      SAI1SEL        at 0 range 0 .. 2;
      Reserved_3_11  at 0 range 3 .. 11;
      SPI123SEL      at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SPI45SEL       at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      SPDIFRXSEL     at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DFSDM1SEL      at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      FDCANSEL       at 0 range 28 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      SWPMISEL       at 0 range 31 .. 31;
   end record;

   type D2CCIP1R_Register is new D2CCIP1R_Register_Value
     with Volatile_Full_Access;

   subtype D2CCIP2R_USART234578SEL_Field is STM32H723.UInt3;
   subtype D2CCIP2R_USART16910SEL_Field is STM32H723.UInt3;
   subtype D2CCIP2R_RNGSEL_Field is STM32H723.UInt2;
   subtype D2CCIP2R_I2C123SEL_Field is STM32H723.UInt2;
   subtype D2CCIP2R_USBSEL_Field is STM32H723.UInt2;
   subtype D2CCIP2R_CECSEL_Field is STM32H723.UInt2;
   subtype D2CCIP2R_LPTIM1SEL_Field is STM32H723.UInt3;

   --  RCC Domain 2 Kernel Clock Configuration Register
   type D2CCIP2R_Register_Value is record
      --  USART2/3, UART4,5, 7/8 (APB1) kernel clock source selection
      USART234578SEL : D2CCIP2R_USART234578SEL_Field := 16#0#;
      --  USART1 and 6 kernel clock source selection
      USART16910SEL  : D2CCIP2R_USART16910SEL_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : STM32H723.UInt2 := 16#0#;
      --  RNG kernel clock source selection
      RNGSEL         : D2CCIP2R_RNGSEL_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : STM32H723.UInt2 := 16#0#;
      --  I2C1,2,3 kernel clock source selection
      I2C123SEL      : D2CCIP2R_I2C123SEL_Field := 16#0#;
      --  unspecified
      Reserved_14_19 : STM32H723.UInt6 := 16#0#;
      --  USBOTG 1 and 2 kernel clock source selection
      USBSEL         : D2CCIP2R_USBSEL_Field := 16#0#;
      --  HDMI-CEC kernel clock source selection
      CECSEL         : D2CCIP2R_CECSEL_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : STM32H723.UInt4 := 16#0#;
      --  LPTIM1 kernel clock source selection
      LPTIM1SEL      : D2CCIP2R_LPTIM1SEL_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : STM32H723.Bit := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for D2CCIP2R_Register_Value use record
      USART234578SEL at 0 range 0 .. 2;
      USART16910SEL  at 0 range 3 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      RNGSEL         at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      I2C123SEL      at 0 range 12 .. 13;
      Reserved_14_19 at 0 range 14 .. 19;
      USBSEL         at 0 range 20 .. 21;
      CECSEL         at 0 range 22 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      LPTIM1SEL      at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type D2CCIP2R_Register is new D2CCIP2R_Register_Value
     with Volatile_Full_Access;

   subtype D3CCIPR_LPUART1SEL_Field is STM32H723.UInt3;
   subtype D3CCIPR_I2C4SEL_Field is STM32H723.UInt2;
   subtype D3CCIPR_LPTIM2SEL_Field is STM32H723.UInt3;
   subtype D3CCIPR_LPTIM345SEL_Field is STM32H723.UInt3;
   subtype D3CCIPR_ADCSEL_Field is STM32H723.UInt2;
   subtype D3CCIPR_SAI4ASEL_Field is STM32H723.UInt3;
   subtype D3CCIPR_SAI4BSEL_Field is STM32H723.UInt3;
   subtype D3CCIPR_SPI6SEL_Field is STM32H723.UInt3;

   --  RCC Domain 3 Kernel Clock Configuration Register
   type D3CCIPR_Register_Value is record
      --  LPUART1 kernel clock source selection
      LPUART1SEL     : D3CCIPR_LPUART1SEL_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : STM32H723.UInt5 := 16#0#;
      --  I2C4 kernel clock source selection
      I2C4SEL        : D3CCIPR_I2C4SEL_Field := 16#0#;
      --  LPTIM2 kernel clock source selection
      LPTIM2SEL      : D3CCIPR_LPTIM2SEL_Field := 16#0#;
      --  LPTIM3,4,5 kernel clock source selection
      LPTIM345SEL    : D3CCIPR_LPTIM345SEL_Field := 16#0#;
      --  SAR ADC kernel clock source selection
      ADCSEL         : D3CCIPR_ADCSEL_Field := 16#0#;
      --  unspecified
      Reserved_18_20 : STM32H723.UInt3 := 16#0#;
      --  Sub-Block A of SAI4 kernel clock source selection
      SAI4ASEL       : D3CCIPR_SAI4ASEL_Field := 16#0#;
      --  Sub-Block B of SAI4 kernel clock source selection
      SAI4BSEL       : D3CCIPR_SAI4BSEL_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : STM32H723.Bit := 16#0#;
      --  SPI6 kernel clock source selection
      SPI6SEL        : D3CCIPR_SPI6SEL_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : STM32H723.Bit := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for D3CCIPR_Register_Value use record
      LPUART1SEL     at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      I2C4SEL        at 0 range 8 .. 9;
      LPTIM2SEL      at 0 range 10 .. 12;
      LPTIM345SEL    at 0 range 13 .. 15;
      ADCSEL         at 0 range 16 .. 17;
      Reserved_18_20 at 0 range 18 .. 20;
      SAI4ASEL       at 0 range 21 .. 23;
      SAI4BSEL       at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      SPI6SEL        at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type D3CCIPR_Register is new D3CCIPR_Register_Value
     with Volatile_Full_Access;

   --  RCC Clock Source Interrupt Enable Register
   type CIER_Register_Value is record
      --  LSI ready Interrupt Enable
      LSIRDYIE       : Boolean := False;
      --  LSE ready Interrupt Enable
      LSERDYIE       : Boolean := False;
      --  HSI ready Interrupt Enable
      HSIRDYIE       : Boolean := False;
      --  HSE ready Interrupt Enable
      HSERDYIE       : Boolean := False;
      --  CSI ready Interrupt Enable
      CSIRDYIE       : Boolean := False;
      --  RC48 ready Interrupt Enable
      RC48RDYIE      : Boolean := False;
      --  PLL1 ready Interrupt Enable
      PLL1RDYIE      : Boolean := False;
      --  PLL2 ready Interrupt Enable
      PLL2RDYIE      : Boolean := False;
      --  PLL3 ready Interrupt Enable
      PLL3RDYIE      : Boolean := False;
      --  LSE clock security system Interrupt Enable
      LSECSSIE       : Boolean := False;
      --  unspecified
      Reserved_10_31 : STM32H723.UInt22 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CIER_Register_Value use record
      LSIRDYIE       at 0 range 0 .. 0;
      LSERDYIE       at 0 range 1 .. 1;
      HSIRDYIE       at 0 range 2 .. 2;
      HSERDYIE       at 0 range 3 .. 3;
      CSIRDYIE       at 0 range 4 .. 4;
      RC48RDYIE      at 0 range 5 .. 5;
      PLL1RDYIE      at 0 range 6 .. 6;
      PLL2RDYIE      at 0 range 7 .. 7;
      PLL3RDYIE      at 0 range 8 .. 8;
      LSECSSIE       at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   type CIER_Register is new CIER_Register_Value
     with Volatile_Full_Access;

   --  RCC Clock Source Interrupt Flag Register
   type CIFR_Register_Value is record
      --  LSI ready Interrupt Flag
      LSIRDYF        : Boolean := False;
      --  LSE ready Interrupt Flag
      LSERDYF        : Boolean := False;
      --  HSI ready Interrupt Flag
      HSIRDYF        : Boolean := False;
      --  HSE ready Interrupt Flag
      HSERDYF        : Boolean := False;
      --  CSI ready Interrupt Flag
      CSIRDY         : Boolean := False;
      --  RC48 ready Interrupt Flag
      RC48RDYF       : Boolean := False;
      --  PLL1 ready Interrupt Flag
      PLL1RDYF       : Boolean := False;
      --  PLL2 ready Interrupt Flag
      PLL2RDYF       : Boolean := False;
      --  PLL3 ready Interrupt Flag
      PLL3RDYF       : Boolean := False;
      --  LSE clock security system Interrupt Flag
      LSECSSF        : Boolean := False;
      --  HSE clock security system Interrupt Flag
      HSECSSF        : Boolean := False;
      --  unspecified
      Reserved_11_31 : STM32H723.UInt21 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CIFR_Register_Value use record
      LSIRDYF        at 0 range 0 .. 0;
      LSERDYF        at 0 range 1 .. 1;
      HSIRDYF        at 0 range 2 .. 2;
      HSERDYF        at 0 range 3 .. 3;
      CSIRDY         at 0 range 4 .. 4;
      RC48RDYF       at 0 range 5 .. 5;
      PLL1RDYF       at 0 range 6 .. 6;
      PLL2RDYF       at 0 range 7 .. 7;
      PLL3RDYF       at 0 range 8 .. 8;
      LSECSSF        at 0 range 9 .. 9;
      HSECSSF        at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   type CIFR_Register is new CIFR_Register_Value
     with Volatile_Full_Access;

   --  RCC Clock Source Interrupt Clear Register
   type CICR_Register_Value is record
      --  LSI ready Interrupt Clear
      LSIRDYC                   : Boolean := False;
      --  LSE ready Interrupt Clear
      LSERDYC                   : Boolean := False;
      --  HSI ready Interrupt Clear
      HSIRDYC                   : Boolean := False;
      --  HSE ready Interrupt Clear
      HSERDYC                   : Boolean := False;
      --  CSI ready Interrupt Clear
      HSE_ready_Interrupt_Clear : Boolean := False;
      --  RC48 ready Interrupt Clear
      RC48RDYC                  : Boolean := False;
      --  PLL1 ready Interrupt Clear
      PLL1RDYC                  : Boolean := False;
      --  PLL2 ready Interrupt Clear
      PLL2RDYC                  : Boolean := False;
      --  PLL3 ready Interrupt Clear
      PLL3RDYC                  : Boolean := False;
      --  LSE clock security system Interrupt Clear
      LSECSSC                   : Boolean := False;
      --  HSE clock security system Interrupt Clear
      HSECSSC                   : Boolean := False;
      --  unspecified
      Reserved_11_31            : STM32H723.UInt21 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CICR_Register_Value use record
      LSIRDYC                   at 0 range 0 .. 0;
      LSERDYC                   at 0 range 1 .. 1;
      HSIRDYC                   at 0 range 2 .. 2;
      HSERDYC                   at 0 range 3 .. 3;
      HSE_ready_Interrupt_Clear at 0 range 4 .. 4;
      RC48RDYC                  at 0 range 5 .. 5;
      PLL1RDYC                  at 0 range 6 .. 6;
      PLL2RDYC                  at 0 range 7 .. 7;
      PLL3RDYC                  at 0 range 8 .. 8;
      LSECSSC                   at 0 range 9 .. 9;
      HSECSSC                   at 0 range 10 .. 10;
      Reserved_11_31            at 0 range 11 .. 31;
   end record;

   type CICR_Register is new CICR_Register_Value
     with Volatile_Full_Access;

   subtype BDCR_LSEDRV_Field is STM32H723.UInt2;
   subtype BDCR_RTCSEL_Field is STM32H723.UInt2;

   --  RCC Backup Domain Control Register
   type BDCR_Register_Value is record
      --  LSE oscillator enabled
      LSEON          : Boolean := False;
      --  LSE oscillator ready
      LSERDY         : Boolean := False;
      --  LSE oscillator bypass
      LSEBYP         : Boolean := False;
      --  LSE oscillator driving capability
      LSEDRV         : BDCR_LSEDRV_Field := 16#0#;
      --  LSE clock security system enable
      LSECSSON       : Boolean := False;
      --  LSE clock security system failure detection
      LSECSSD        : Boolean := False;
      --  unspecified
      Reserved_7_7   : STM32H723.Bit := 16#0#;
      --  RTC clock source selection
      RTCSEL         : BDCR_RTCSEL_Field := 16#0#;
      --  unspecified
      Reserved_10_14 : STM32H723.UInt5 := 16#0#;
      --  RTC clock enable
      RTCEN          : Boolean := False;
      --  Backup domain software reset
      BDRST          : Boolean := False;
      --  unspecified
      Reserved_17_31 : STM32H723.UInt15 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for BDCR_Register_Value use record
      LSEON          at 0 range 0 .. 0;
      LSERDY         at 0 range 1 .. 1;
      LSEBYP         at 0 range 2 .. 2;
      LSEDRV         at 0 range 3 .. 4;
      LSECSSON       at 0 range 5 .. 5;
      LSECSSD        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RTCSEL         at 0 range 8 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      RTCEN          at 0 range 15 .. 15;
      BDRST          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   type BDCR_Register is new BDCR_Register_Value
     with Volatile_Full_Access;

   --  RCC Clock Control and Status Register
   type CSR_Register_Value is record
      --  LSI oscillator enable
      LSION         : Boolean := False;
      --  LSI oscillator ready
      LSIRDY        : Boolean := False;
      --  unspecified
      Reserved_2_31 : STM32H723.UInt30 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CSR_Register_Value use record
      LSION         at 0 range 0 .. 0;
      LSIRDY        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   type CSR_Register is new CSR_Register_Value
     with Volatile_Full_Access;

   --  RCC AHB3 Reset Register
   type AHB3RSTR_Register_Value is record
      --  MDMA block reset
      MDMARST        : Boolean := False;
      --  unspecified
      Reserved_1_3   : STM32H723.UInt3 := 16#0#;
      --  DMA2D block reset
      DMA2DRST       : Boolean := False;
      --  unspecified
      Reserved_5_11  : STM32H723.UInt7 := 16#0#;
      --  FMC block reset
      FMCRST         : Boolean := False;
      --  unspecified
      Reserved_13_13 : STM32H723.Bit := 16#0#;
      --  QUADSPI and QUADSPI delay block reset
      OCTOSPI1RST    : Boolean := False;
      --  unspecified
      Reserved_15_15 : STM32H723.Bit := 16#0#;
      --  SDMMC1 and SDMMC1 delay block reset
      SDMMC1RST      : Boolean := False;
      --  unspecified
      Reserved_17_18 : STM32H723.UInt2 := 16#0#;
      --  OCTOSPI2 and OCTOSPI2 delay block reset Set and reset by software
      OCTOSPI2RST    : Boolean := False;
      --  unspecified
      Reserved_20_20 : STM32H723.Bit := 16#0#;
      --  OCTOSPIM reset Set and reset by software
      IOMNGRRST      : Boolean := False;
      --  OTFD1 reset Set and reset by software Take care that resetting the
      --  OTFD means loosing the decryption key loaded during secure boot.
      OTFD1RST       : Boolean := False;
      --  OTFD2 reset Set and reset by software Take care that resetting the
      --  OTFD means loosing the decryption key loaded during secure boot.
      OTFD2RST       : Boolean := False;
      --  unspecified
      Reserved_24_30 : STM32H723.UInt7 := 16#0#;
      --  CPU reset
      CPURST         : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for AHB3RSTR_Register_Value use record
      MDMARST        at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      DMA2DRST       at 0 range 4 .. 4;
      Reserved_5_11  at 0 range 5 .. 11;
      FMCRST         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      OCTOSPI1RST    at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SDMMC1RST      at 0 range 16 .. 16;
      Reserved_17_18 at 0 range 17 .. 18;
      OCTOSPI2RST    at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      IOMNGRRST      at 0 range 21 .. 21;
      OTFD1RST       at 0 range 22 .. 22;
      OTFD2RST       at 0 range 23 .. 23;
      Reserved_24_30 at 0 range 24 .. 30;
      CPURST         at 0 range 31 .. 31;
   end record;

   type AHB3RSTR_Register is new AHB3RSTR_Register_Value
     with Volatile_Full_Access;

   --  RCC AHB1 Peripheral Reset Register
   type AHB1RSTR_Register_Value is record
      --  DMA1 block reset
      DMA1RST        : Boolean := False;
      --  DMA2 block reset
      DMA2RST        : Boolean := False;
      --  unspecified
      Reserved_2_4   : STM32H723.UInt3 := 16#0#;
      --  ADC1&2 block reset
      ADC12RST       : Boolean := False;
      --  unspecified
      Reserved_6_14  : STM32H723.UInt9 := 16#0#;
      --  ETH1MAC block reset
      ETH1MACRST     : Boolean := False;
      --  unspecified
      Reserved_16_24 : STM32H723.UInt9 := 16#0#;
      --  USB1OTG block reset
      USB1OTGRST     : Boolean := False;
      --  unspecified
      Reserved_26_31 : STM32H723.UInt6 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for AHB1RSTR_Register_Value use record
      DMA1RST        at 0 range 0 .. 0;
      DMA2RST        at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      ADC12RST       at 0 range 5 .. 5;
      Reserved_6_14  at 0 range 6 .. 14;
      ETH1MACRST     at 0 range 15 .. 15;
      Reserved_16_24 at 0 range 16 .. 24;
      USB1OTGRST     at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   type AHB1RSTR_Register is new AHB1RSTR_Register_Value
     with Volatile_Full_Access;

   --  RCC AHB2 Peripheral Reset Register
   type AHB2RSTR_Register_Value is record
      --  DCMI_PSSIRST
      DCMI_PSSIRST   : Boolean := False;
      --  unspecified
      Reserved_1_3   : STM32H723.UInt3 := 16#0#;
      --  Cryptography block reset
      CRYPTRST       : Boolean := False;
      --  Hash block reset
      HASHRST        : Boolean := False;
      --  Random Number Generator block reset
      RNGRST         : Boolean := False;
      --  unspecified
      Reserved_7_8   : STM32H723.UInt2 := 16#0#;
      --  SDMMC2 and SDMMC2 Delay block reset
      SDMMC2RST      : Boolean := False;
      --  unspecified
      Reserved_10_15 : STM32H723.UInt6 := 16#0#;
      --  FMAC reset
      FMACRST        : Boolean := False;
      --  CORDIC coprocessor block reset
      CORDICRST      : Boolean := False;
      --  unspecified
      Reserved_18_31 : STM32H723.UInt14 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for AHB2RSTR_Register_Value use record
      DCMI_PSSIRST   at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      CRYPTRST       at 0 range 4 .. 4;
      HASHRST        at 0 range 5 .. 5;
      RNGRST         at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      SDMMC2RST      at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      FMACRST        at 0 range 16 .. 16;
      CORDICRST      at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   type AHB2RSTR_Register is new AHB2RSTR_Register_Value
     with Volatile_Full_Access;

   --  RCC AHB4 Peripheral Reset Register
   type AHB4RSTR_Register_Value is record
      --  GPIO block reset
      GPIOARST       : Boolean := False;
      --  GPIO block reset
      GPIOBRST       : Boolean := False;
      --  GPIO block reset
      GPIOCRST       : Boolean := False;
      --  GPIO block reset
      GPIODRST       : Boolean := False;
      --  GPIO block reset
      GPIOERST       : Boolean := False;
      --  GPIO block reset
      GPIOFRST       : Boolean := False;
      --  GPIO block reset
      GPIOGRST       : Boolean := False;
      --  GPIO block reset
      GPIOHRST       : Boolean := False;
      --  unspecified
      Reserved_8_8   : STM32H723.Bit := 16#0#;
      --  GPIO block reset
      GPIOJRST       : Boolean := False;
      --  GPIO block reset
      GPIOKRST       : Boolean := False;
      --  unspecified
      Reserved_11_18 : STM32H723.Byte := 16#0#;
      --  CRC block reset
      CRCRST         : Boolean := False;
      --  unspecified
      Reserved_20_20 : STM32H723.Bit := 16#0#;
      --  BDMA block reset
      BDMARST        : Boolean := False;
      --  unspecified
      Reserved_22_23 : STM32H723.UInt2 := 16#0#;
      --  ADC3 block reset
      ADC3RST        : Boolean := False;
      --  HSEM block reset
      HSEMRST        : Boolean := False;
      --  unspecified
      Reserved_26_31 : STM32H723.UInt6 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for AHB4RSTR_Register_Value use record
      GPIOARST       at 0 range 0 .. 0;
      GPIOBRST       at 0 range 1 .. 1;
      GPIOCRST       at 0 range 2 .. 2;
      GPIODRST       at 0 range 3 .. 3;
      GPIOERST       at 0 range 4 .. 4;
      GPIOFRST       at 0 range 5 .. 5;
      GPIOGRST       at 0 range 6 .. 6;
      GPIOHRST       at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      GPIOJRST       at 0 range 9 .. 9;
      GPIOKRST       at 0 range 10 .. 10;
      Reserved_11_18 at 0 range 11 .. 18;
      CRCRST         at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      BDMARST        at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      ADC3RST        at 0 range 24 .. 24;
      HSEMRST        at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   type AHB4RSTR_Register is new AHB4RSTR_Register_Value
     with Volatile_Full_Access;

   --  RCC APB3 Peripheral Reset Register
   type APB3RSTR_Register_Value is record
      --  unspecified
      Reserved_0_2  : STM32H723.UInt3 := 16#0#;
      --  LTDC block reset
      LTDCRST       : Boolean := False;
      --  unspecified
      Reserved_4_31 : STM32H723.UInt28 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for APB3RSTR_Register_Value use record
      Reserved_0_2  at 0 range 0 .. 2;
      LTDCRST       at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   type APB3RSTR_Register is new APB3RSTR_Register_Value
     with Volatile_Full_Access;

   --  RCC APB1 Peripheral Reset Register
   type APB1LRSTR_Register_Value is record
      --  TIM block reset
      TIM2RST        : Boolean := False;
      --  TIM block reset
      TIM3RST        : Boolean := False;
      --  TIM block reset
      TIM4RST        : Boolean := False;
      --  TIM block reset
      TIM5RST        : Boolean := False;
      --  TIM block reset
      TIM6RST        : Boolean := False;
      --  TIM block reset
      TIM7RST        : Boolean := False;
      --  TIM block reset
      TIM12RST       : Boolean := False;
      --  TIM block reset
      TIM13RST       : Boolean := False;
      --  TIM block reset
      TIM14RST       : Boolean := False;
      --  TIM block reset
      LPTIM1RST      : Boolean := False;
      --  unspecified
      Reserved_10_13 : STM32H723.UInt4 := 16#0#;
      --  SPI2 block reset
      SPI2RST        : Boolean := False;
      --  SPI3 block reset
      SPI3RST        : Boolean := False;
      --  SPDIFRX block reset
      SPDIFRXRST     : Boolean := False;
      --  USART2 block reset
      USART2RST      : Boolean := False;
      --  USART3 block reset
      USART3RST      : Boolean := False;
      --  UART4 block reset
      UART4RST       : Boolean := False;
      --  UART5 block reset
      UART5RST       : Boolean := False;
      --  I2C1 block reset
      I2C1RST        : Boolean := False;
      --  I2C2 block reset
      I2C2RST        : Boolean := False;
      --  I2C3 block reset
      I2C3RST        : Boolean := False;
      --  unspecified
      Reserved_24_24 : STM32H723.Bit := 16#0#;
      --  I2C5 block reset
      I2C5RST        : Boolean := False;
      --  unspecified
      Reserved_26_26 : STM32H723.Bit := 16#0#;
      --  HDMI-CEC block reset
      CECRST         : Boolean := False;
      --  unspecified
      Reserved_28_28 : STM32H723.Bit := 16#0#;
      --  DAC1 and 2 Blocks Reset
      DAC12RST       : Boolean := False;
      --  USART7 block reset
      USART7RST      : Boolean := False;
      --  USART8 block reset
      USART8RST      : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for APB1LRSTR_Register_Value use record
      TIM2RST        at 0 range 0 .. 0;
      TIM3RST        at 0 range 1 .. 1;
      TIM4RST        at 0 range 2 .. 2;
      TIM5RST        at 0 range 3 .. 3;
      TIM6RST        at 0 range 4 .. 4;
      TIM7RST        at 0 range 5 .. 5;
      TIM12RST       at 0 range 6 .. 6;
      TIM13RST       at 0 range 7 .. 7;
      TIM14RST       at 0 range 8 .. 8;
      LPTIM1RST      at 0 range 9 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      SPI2RST        at 0 range 14 .. 14;
      SPI3RST        at 0 range 15 .. 15;
      SPDIFRXRST     at 0 range 16 .. 16;
      USART2RST      at 0 range 17 .. 17;
      USART3RST      at 0 range 18 .. 18;
      UART4RST       at 0 range 19 .. 19;
      UART5RST       at 0 range 20 .. 20;
      I2C1RST        at 0 range 21 .. 21;
      I2C2RST        at 0 range 22 .. 22;
      I2C3RST        at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      I2C5RST        at 0 range 25 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      CECRST         at 0 range 27 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      DAC12RST       at 0 range 29 .. 29;
      USART7RST      at 0 range 30 .. 30;
      USART8RST      at 0 range 31 .. 31;
   end record;

   type APB1LRSTR_Register is new APB1LRSTR_Register_Value
     with Volatile_Full_Access;

   --  RCC APB1 Peripheral Reset Register
   type APB1HRSTR_Register_Value is record
      --  unspecified
      Reserved_0_0   : STM32H723.Bit := 16#0#;
      --  Clock Recovery System reset
      CRSRST         : Boolean := False;
      --  SWPMI block reset
      SWPMIRST       : Boolean := False;
      --  unspecified
      Reserved_3_3   : STM32H723.Bit := 16#0#;
      --  OPAMP block reset
      OPAMPRST       : Boolean := False;
      --  MDIOS block reset
      MDIOSRST       : Boolean := False;
      --  unspecified
      Reserved_6_7   : STM32H723.UInt2 := 16#0#;
      --  FDCAN block reset
      FDCANRST       : Boolean := False;
      --  unspecified
      Reserved_9_23  : STM32H723.UInt15 := 16#0#;
      --  TIM23 block reset
      TIM23RST       : Boolean := False;
      --  TIM24 block resett
      TIM24RST       : Boolean := False;
      --  unspecified
      Reserved_26_31 : STM32H723.UInt6 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for APB1HRSTR_Register_Value use record
      Reserved_0_0   at 0 range 0 .. 0;
      CRSRST         at 0 range 1 .. 1;
      SWPMIRST       at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      OPAMPRST       at 0 range 4 .. 4;
      MDIOSRST       at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      FDCANRST       at 0 range 8 .. 8;
      Reserved_9_23  at 0 range 9 .. 23;
      TIM23RST       at 0 range 24 .. 24;
      TIM24RST       at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   type APB1HRSTR_Register is new APB1HRSTR_Register_Value
     with Volatile_Full_Access;

   --  RCC APB2 Peripheral Reset Register
   type APB2RSTR_Register_Value is record
      --  TIM1 block reset
      TIM1RST        : Boolean := False;
      --  TIM8 block reset
      TIM8RST        : Boolean := False;
      --  unspecified
      Reserved_2_3   : STM32H723.UInt2 := 16#0#;
      --  USART1 block reset
      USART1RST      : Boolean := False;
      --  USART6 block reset
      USART6RST      : Boolean := False;
      --  UART9 block reset Set and reset by software.
      UART9RST       : Boolean := False;
      --  USART10 block reset Set and reset by software.
      USART10RST     : Boolean := False;
      --  unspecified
      Reserved_8_11  : STM32H723.UInt4 := 16#0#;
      --  SPI1 block reset
      SPI1RST        : Boolean := False;
      --  SPI4 block reset
      SPI4RST        : Boolean := False;
      --  unspecified
      Reserved_14_15 : STM32H723.UInt2 := 16#0#;
      --  TIM15 block reset
      TIM15RST       : Boolean := False;
      --  TIM16 block reset
      TIM16RST       : Boolean := False;
      --  TIM17 block reset
      TIM17RST       : Boolean := False;
      --  unspecified
      Reserved_19_19 : STM32H723.Bit := 16#0#;
      --  SPI5 block reset
      SPI5RST        : Boolean := False;
      --  unspecified
      Reserved_21_21 : STM32H723.Bit := 16#0#;
      --  SAI1 block reset
      SAI1RST        : Boolean := False;
      --  unspecified
      Reserved_23_29 : STM32H723.UInt7 := 16#0#;
      --  DFSDM1 block reset Set and reset by software.
      DFSDM1RST      : Boolean := False;
      --  unspecified
      Reserved_31_31 : STM32H723.Bit := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for APB2RSTR_Register_Value use record
      TIM1RST        at 0 range 0 .. 0;
      TIM8RST        at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      USART1RST      at 0 range 4 .. 4;
      USART6RST      at 0 range 5 .. 5;
      UART9RST       at 0 range 6 .. 6;
      USART10RST     at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      SPI1RST        at 0 range 12 .. 12;
      SPI4RST        at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      TIM15RST       at 0 range 16 .. 16;
      TIM16RST       at 0 range 17 .. 17;
      TIM17RST       at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      SPI5RST        at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      SAI1RST        at 0 range 22 .. 22;
      Reserved_23_29 at 0 range 23 .. 29;
      DFSDM1RST      at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type APB2RSTR_Register is new APB2RSTR_Register_Value
     with Volatile_Full_Access;

   --  RCC APB4 Peripheral Reset Register
   type APB4RSTR_Register_Value is record
      --  unspecified
      Reserved_0_0   : STM32H723.Bit := 16#0#;
      --  SYSCFG block reset
      SYSCFGRST      : Boolean := False;
      --  unspecified
      Reserved_2_2   : STM32H723.Bit := 16#0#;
      --  LPUART1 block reset
      LPUART1RST     : Boolean := False;
      --  unspecified
      Reserved_4_4   : STM32H723.Bit := 16#0#;
      --  SPI6 block reset
      SPI6RST        : Boolean := False;
      --  unspecified
      Reserved_6_6   : STM32H723.Bit := 16#0#;
      --  I2C4 block reset
      I2C4RST        : Boolean := False;
      --  unspecified
      Reserved_8_8   : STM32H723.Bit := 16#0#;
      --  LPTIM2 block reset
      LPTIM2RST      : Boolean := False;
      --  LPTIM3 block reset
      LPTIM3RST      : Boolean := False;
      --  LPTIM4 block reset
      LPTIM4RST      : Boolean := False;
      --  LPTIM5 block reset
      LPTIM5RST      : Boolean := False;
      --  unspecified
      Reserved_13_13 : STM32H723.Bit := 16#0#;
      --  COMP12 Blocks Reset
      COMP12RST      : Boolean := False;
      --  VREF block reset
      VREFRST        : Boolean := False;
      --  unspecified
      Reserved_16_20 : STM32H723.UInt5 := 16#0#;
      --  SAI4 block reset
      SAI4RST        : Boolean := False;
      --  unspecified
      Reserved_22_25 : STM32H723.UInt4 := 16#0#;
      --  Digital temperature sensor block reset Set and reset by software.
      DTSRST         : Boolean := False;
      --  unspecified
      Reserved_27_31 : STM32H723.UInt5 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for APB4RSTR_Register_Value use record
      Reserved_0_0   at 0 range 0 .. 0;
      SYSCFGRST      at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      LPUART1RST     at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      SPI6RST        at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      I2C4RST        at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      LPTIM2RST      at 0 range 9 .. 9;
      LPTIM3RST      at 0 range 10 .. 10;
      LPTIM4RST      at 0 range 11 .. 11;
      LPTIM5RST      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      COMP12RST      at 0 range 14 .. 14;
      VREFRST        at 0 range 15 .. 15;
      Reserved_16_20 at 0 range 16 .. 20;
      SAI4RST        at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      DTSRST         at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   type APB4RSTR_Register is new APB4RSTR_Register_Value
     with Volatile_Full_Access;

   --  RCC Global Control Register
   type GCR_Register_Value is record
      --  WWDG1 reset scope control
      WW1RSC        : Boolean := False;
      --  unspecified
      Reserved_1_31 : STM32H723.UInt31 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for GCR_Register_Value use record
      WW1RSC        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   type GCR_Register is new GCR_Register_Value
     with Volatile_Full_Access;

   --  RCC D3 Autonomous mode Register
   type D3AMR_Register_Value is record
      --  BDMA and DMAMUX Autonomous mode enable
      BDMAAMEN       : Boolean := False;
      --  unspecified
      Reserved_1_2   : STM32H723.UInt2 := 16#0#;
      --  LPUART1 Autonomous mode enable
      LPUART1AMEN    : Boolean := False;
      --  unspecified
      Reserved_4_4   : STM32H723.Bit := 16#0#;
      --  SPI6 Autonomous mode enable
      SPI6AMEN       : Boolean := False;
      --  unspecified
      Reserved_6_6   : STM32H723.Bit := 16#0#;
      --  I2C4 Autonomous mode enable
      I2C4AMEN       : Boolean := False;
      --  unspecified
      Reserved_8_8   : STM32H723.Bit := 16#0#;
      --  LPTIM2 Autonomous mode enable
      LPTIM2AMEN     : Boolean := False;
      --  LPTIM3 Autonomous mode enable
      LPTIM3AMEN     : Boolean := False;
      --  LPTIM4 Autonomous mode enable
      LPTIM4AMEN     : Boolean := False;
      --  LPTIM5 Autonomous mode enable
      LPTIM5AMEN     : Boolean := False;
      --  unspecified
      Reserved_13_13 : STM32H723.Bit := 16#0#;
      --  COMP12 Autonomous mode enable
      COMP12AMEN     : Boolean := False;
      --  VREF Autonomous mode enable
      VREFAMEN       : Boolean := False;
      --  RTC Autonomous mode enable
      RTCAMEN        : Boolean := False;
      --  unspecified
      Reserved_17_18 : STM32H723.UInt2 := 16#0#;
      --  CRC Autonomous mode enable
      CRCAMEN        : Boolean := False;
      --  unspecified
      Reserved_20_20 : STM32H723.Bit := 16#0#;
      --  SAI4 Autonomous mode enable
      SAI4AMEN       : Boolean := False;
      --  unspecified
      Reserved_22_23 : STM32H723.UInt2 := 16#0#;
      --  ADC3 Autonomous mode enable
      ADC3AMEN       : Boolean := False;
      --  unspecified
      Reserved_25_25 : STM32H723.Bit := 16#0#;
      --  Digital temperature sensor Autonomous mode enable Set and reset by
      --  software. Refer to for additional information.
      DTSAMEN        : Boolean := False;
      --  unspecified
      Reserved_27_27 : STM32H723.Bit := 16#0#;
      --  Backup RAM Autonomous mode enable
      BKPSRAMAMEN    : Boolean := False;
      --  SRAM4 Autonomous mode enable
      SRAM4AMEN      : Boolean := False;
      --  unspecified
      Reserved_30_31 : STM32H723.UInt2 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for D3AMR_Register_Value use record
      BDMAAMEN       at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      LPUART1AMEN    at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      SPI6AMEN       at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      I2C4AMEN       at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      LPTIM2AMEN     at 0 range 9 .. 9;
      LPTIM3AMEN     at 0 range 10 .. 10;
      LPTIM4AMEN     at 0 range 11 .. 11;
      LPTIM5AMEN     at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      COMP12AMEN     at 0 range 14 .. 14;
      VREFAMEN       at 0 range 15 .. 15;
      RTCAMEN        at 0 range 16 .. 16;
      Reserved_17_18 at 0 range 17 .. 18;
      CRCAMEN        at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      SAI4AMEN       at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      ADC3AMEN       at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      DTSAMEN        at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      BKPSRAMAMEN    at 0 range 28 .. 28;
      SRAM4AMEN      at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   type D3AMR_Register is new D3AMR_Register_Value
     with Volatile_Full_Access;

   --  RCC Reset Status Register
   type RSR_Register_Value is record
      --  unspecified
      Reserved_0_15  : STM32H723.UInt16 := 16#0#;
      --  Remove reset flag
      RMVF           : Boolean := False;
      --  CPU reset flag
      CPURSTF        : Boolean := False;
      --  unspecified
      Reserved_18_18 : STM32H723.Bit := 16#0#;
      --  D1 domain power switch reset flag
      D1RSTF         : Boolean := False;
      --  D2 domain power switch reset flag
      D2RSTF         : Boolean := False;
      --  BOR reset flag
      BORRSTF        : Boolean := False;
      --  Pin reset flag (NRST)
      PINRSTF        : Boolean := False;
      --  POR/PDR reset flag
      PORRSTF        : Boolean := False;
      --  System reset from CPU reset flag
      SFTRSTF        : Boolean := False;
      --  unspecified
      Reserved_25_25 : STM32H723.Bit := 16#0#;
      --  Independent Watchdog reset flag
      IWDG1RSTF      : Boolean := False;
      --  unspecified
      Reserved_27_27 : STM32H723.Bit := 16#0#;
      --  Window Watchdog reset flag
      WWDG1RSTF      : Boolean := False;
      --  unspecified
      Reserved_29_29 : STM32H723.Bit := 16#0#;
      --  Reset due to illegal D1 DStandby or CPU CStop flag
      LPWRRSTF       : Boolean := False;
      --  unspecified
      Reserved_31_31 : STM32H723.Bit := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for RSR_Register_Value use record
      Reserved_0_15  at 0 range 0 .. 15;
      RMVF           at 0 range 16 .. 16;
      CPURSTF        at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      D1RSTF         at 0 range 19 .. 19;
      D2RSTF         at 0 range 20 .. 20;
      BORRSTF        at 0 range 21 .. 21;
      PINRSTF        at 0 range 22 .. 22;
      PORRSTF        at 0 range 23 .. 23;
      SFTRSTF        at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      IWDG1RSTF      at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      WWDG1RSTF      at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      LPWRRSTF       at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type RSR_Register is new RSR_Register_Value
     with Volatile_Full_Access;

   --  RCC AHB3 Clock Register
   type AHB3ENR_Register_Value is record
      --  MDMA Peripheral Clock Enable
      MDMAEN         : Boolean := False;
      --  unspecified
      Reserved_1_3   : STM32H723.UInt3 := 16#0#;
      --  DMA2D Peripheral Clock Enable
      DMA2DEN        : Boolean := False;
      --  unspecified
      Reserved_5_11  : STM32H723.UInt7 := 16#0#;
      --  FMC Peripheral Clocks Enable
      FMCEN          : Boolean := False;
      --  unspecified
      Reserved_13_13 : STM32H723.Bit := 16#0#;
      --  OCTOSPI1 and OCTOSPI1 delay clock enable
      OCTOSPI1EN     : Boolean := False;
      --  unspecified
      Reserved_15_15 : STM32H723.Bit := 16#0#;
      --  SDMMC1 and SDMMC1 Delay Clock Enable
      SDMMC1EN       : Boolean := False;
      --  unspecified
      Reserved_17_18 : STM32H723.UInt2 := 16#0#;
      --  OCTOSPI2 clock enable Set and reset by software.
      OCTOSPI2EN     : Boolean := False;
      --  unspecified
      Reserved_20_20 : STM32H723.Bit := 16#0#;
      --  OCTOSPIM clock enable Set and reset by software.
      IOMNGREN       : Boolean := False;
      --  OTFD1 clock enable Set and reset by software.
      OTFD1EN        : Boolean := False;
      --  OTFD2 clock enable Set and reset by software.
      OTFD2EN        : Boolean := False;
      --  unspecified
      Reserved_24_31 : STM32H723.Byte := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for AHB3ENR_Register_Value use record
      MDMAEN         at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      DMA2DEN        at 0 range 4 .. 4;
      Reserved_5_11  at 0 range 5 .. 11;
      FMCEN          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      OCTOSPI1EN     at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SDMMC1EN       at 0 range 16 .. 16;
      Reserved_17_18 at 0 range 17 .. 18;
      OCTOSPI2EN     at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      IOMNGREN       at 0 range 21 .. 21;
      OTFD1EN        at 0 range 22 .. 22;
      OTFD2EN        at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   type AHB3ENR_Register is new AHB3ENR_Register_Value
     with Volatile_Full_Access;

   --  RCC AHB1 Clock Register
   type AHB1ENR_Register_Value is record
      --  DMA1 Clock Enable
      DMA1EN          : Boolean := False;
      --  DMA2 Clock Enable
      DMA2EN          : Boolean := False;
      --  unspecified
      Reserved_2_4    : STM32H723.UInt3 := 16#0#;
      --  ADC1/2 Peripheral Clocks Enable
      ADC12EN         : Boolean := False;
      --  unspecified
      Reserved_6_14   : STM32H723.UInt9 := 16#0#;
      --  Ethernet MAC bus interface Clock Enable
      ETH1MACEN       : Boolean := False;
      --  Ethernet Transmission Clock Enable
      ETH1TXEN        : Boolean := False;
      --  Ethernet Reception Clock Enable
      ETH1RXEN        : Boolean := False;
      --  unspecified
      Reserved_18_24  : STM32H723.UInt7 := 16#0#;
      --  USB1OTG Peripheral Clocks Enable
      USB1OTGHSEN     : Boolean := False;
      --  USB_PHY1 Clocks Enable
      USB1OTGHSULPIEN : Boolean := False;
      --  unspecified
      Reserved_27_31  : STM32H723.UInt5 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for AHB1ENR_Register_Value use record
      DMA1EN          at 0 range 0 .. 0;
      DMA2EN          at 0 range 1 .. 1;
      Reserved_2_4    at 0 range 2 .. 4;
      ADC12EN         at 0 range 5 .. 5;
      Reserved_6_14   at 0 range 6 .. 14;
      ETH1MACEN       at 0 range 15 .. 15;
      ETH1TXEN        at 0 range 16 .. 16;
      ETH1RXEN        at 0 range 17 .. 17;
      Reserved_18_24  at 0 range 18 .. 24;
      USB1OTGHSEN     at 0 range 25 .. 25;
      USB1OTGHSULPIEN at 0 range 26 .. 26;
      Reserved_27_31  at 0 range 27 .. 31;
   end record;

   type AHB1ENR_Register is new AHB1ENR_Register_Value
     with Volatile_Full_Access;

   --  RCC AHB2 Clock Register
   type AHB2ENR_Register_Value is record
      --  CAMITF peripheral clock enable
      DCMI_PSSIEN    : Boolean := False;
      --  unspecified
      Reserved_1_3   : STM32H723.UInt3 := 16#0#;
      --  CRYPT peripheral clock enable
      CRYPTEN        : Boolean := False;
      --  HASH peripheral clock enable
      HASHEN         : Boolean := False;
      --  RNG peripheral clocks enable
      RNGEN          : Boolean := False;
      --  unspecified
      Reserved_7_8   : STM32H723.UInt2 := 16#0#;
      --  SDMMC2 and SDMMC2 delay clock enable
      SDMMC2EN       : Boolean := False;
      --  unspecified
      Reserved_10_15 : STM32H723.UInt6 := 16#0#;
      --  FMAC clock enable
      FMACEN         : Boolean := False;
      --  CORDIC clock enable
      CORDICEN       : Boolean := False;
      --  unspecified
      Reserved_18_28 : STM32H723.UInt11 := 16#0#;
      --  SRAM1 block enable
      SRAM1EN        : Boolean := False;
      --  SRAM2 block enable
      SRAM2EN        : Boolean := False;
      --  unspecified
      Reserved_31_31 : STM32H723.Bit := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for AHB2ENR_Register_Value use record
      DCMI_PSSIEN    at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      CRYPTEN        at 0 range 4 .. 4;
      HASHEN         at 0 range 5 .. 5;
      RNGEN          at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      SDMMC2EN       at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      FMACEN         at 0 range 16 .. 16;
      CORDICEN       at 0 range 17 .. 17;
      Reserved_18_28 at 0 range 18 .. 28;
      SRAM1EN        at 0 range 29 .. 29;
      SRAM2EN        at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type AHB2ENR_Register is new AHB2ENR_Register_Value
     with Volatile_Full_Access;

   --  RCC AHB4 Clock Register
   type AHB4ENR_Register_Value is record
      --  0GPIO peripheral clock enable
      GPIOAEN        : Boolean := False;
      --  0GPIO peripheral clock enable
      GPIOBEN        : Boolean := False;
      --  0GPIO peripheral clock enable
      GPIOCEN        : Boolean := False;
      --  0GPIO peripheral clock enable
      GPIODEN        : Boolean := False;
      --  0GPIO peripheral clock enable
      GPIOEEN        : Boolean := False;
      --  0GPIO peripheral clock enable
      GPIOFEN        : Boolean := False;
      --  0GPIO peripheral clock enable
      GPIOGEN        : Boolean := False;
      --  0GPIO peripheral clock enable
      GPIOHEN        : Boolean := False;
      --  unspecified
      Reserved_8_8   : STM32H723.Bit := 16#0#;
      --  0GPIO peripheral clock enable
      GPIOJEN        : Boolean := False;
      --  0GPIO peripheral clock enable
      GPIOKEN        : Boolean := False;
      --  unspecified
      Reserved_11_18 : STM32H723.Byte := 16#0#;
      --  CRC peripheral clock enable
      CRCEN          : Boolean := False;
      --  unspecified
      Reserved_20_20 : STM32H723.Bit := 16#0#;
      --  BDMA and DMAMUX2 Clock Enable
      BDMAEN         : Boolean := False;
      --  unspecified
      Reserved_22_23 : STM32H723.UInt2 := 16#0#;
      --  ADC3 Peripheral Clocks Enable
      ADC3EN         : Boolean := False;
      --  HSEM peripheral clock enable
      HSEMEN         : Boolean := False;
      --  unspecified
      Reserved_26_27 : STM32H723.UInt2 := 16#0#;
      --  Backup RAM Clock Enable
      BKPRAMEN       : Boolean := False;
      --  unspecified
      Reserved_29_31 : STM32H723.UInt3 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for AHB4ENR_Register_Value use record
      GPIOAEN        at 0 range 0 .. 0;
      GPIOBEN        at 0 range 1 .. 1;
      GPIOCEN        at 0 range 2 .. 2;
      GPIODEN        at 0 range 3 .. 3;
      GPIOEEN        at 0 range 4 .. 4;
      GPIOFEN        at 0 range 5 .. 5;
      GPIOGEN        at 0 range 6 .. 6;
      GPIOHEN        at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      GPIOJEN        at 0 range 9 .. 9;
      GPIOKEN        at 0 range 10 .. 10;
      Reserved_11_18 at 0 range 11 .. 18;
      CRCEN          at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      BDMAEN         at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      ADC3EN         at 0 range 24 .. 24;
      HSEMEN         at 0 range 25 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      BKPRAMEN       at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   type AHB4ENR_Register is new AHB4ENR_Register_Value
     with Volatile_Full_Access;

   --  RCC APB3 Clock Register
   type APB3ENR_Register_Value is record
      --  unspecified
      Reserved_0_2  : STM32H723.UInt3 := 16#0#;
      --  LTDC peripheral clock enable
      LTDCEN        : Boolean := False;
      --  unspecified
      Reserved_4_5  : STM32H723.UInt2 := 16#0#;
      --  WWDG1 Clock Enable
      WWDG1EN       : Boolean := False;
      --  unspecified
      Reserved_7_31 : STM32H723.UInt25 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for APB3ENR_Register_Value use record
      Reserved_0_2  at 0 range 0 .. 2;
      LTDCEN        at 0 range 3 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      WWDG1EN       at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   type APB3ENR_Register is new APB3ENR_Register_Value
     with Volatile_Full_Access;

   --  RCC APB1 Clock Register
   type APB1LENR_Register_Value is record
      --  TIM peripheral clock enable
      TIM2EN         : Boolean := False;
      --  TIM peripheral clock enable
      TIM3EN         : Boolean := False;
      --  TIM peripheral clock enable
      TIM4EN         : Boolean := False;
      --  TIM peripheral clock enable
      TIM5EN         : Boolean := False;
      --  TIM peripheral clock enable
      TIM6EN         : Boolean := False;
      --  TIM peripheral clock enable
      TIM7EN         : Boolean := False;
      --  TIM peripheral clock enable
      TIM12EN        : Boolean := False;
      --  TIM peripheral clock enable
      TIM13EN        : Boolean := False;
      --  TIM peripheral clock enable
      TIM14EN        : Boolean := False;
      --  LPTIM1 Peripheral Clocks Enable
      LPTIM1EN       : Boolean := False;
      --  unspecified
      Reserved_10_13 : STM32H723.UInt4 := 16#0#;
      --  SPI2 Peripheral Clocks Enable
      SPI2EN         : Boolean := False;
      --  SPI3 Peripheral Clocks Enable
      SPI3EN         : Boolean := False;
      --  SPDIFRX Peripheral Clocks Enable
      SPDIFRXEN      : Boolean := False;
      --  USART2 Peripheral Clocks Enable
      USART2EN       : Boolean := False;
      --  USART3 Peripheral Clocks Enable
      USART3EN       : Boolean := False;
      --  UART4 Peripheral Clocks Enable
      UART4EN        : Boolean := False;
      --  UART5 Peripheral Clocks Enable
      UART5EN        : Boolean := False;
      --  I2C1 Peripheral Clocks Enable
      I2C1EN         : Boolean := False;
      --  I2C2 Peripheral Clocks Enable
      I2C2EN         : Boolean := False;
      --  I2C3 Peripheral Clocks Enable
      I2C3EN         : Boolean := False;
      --  unspecified
      Reserved_24_24 : STM32H723.Bit := 16#0#;
      --  I2C5 Peripheral Clocks Enable
      I2C5EN         : Boolean := False;
      --  unspecified
      Reserved_26_26 : STM32H723.Bit := 16#0#;
      --  HDMI-CEC peripheral clock enable
      CECEN          : Boolean := False;
      --  unspecified
      Reserved_28_28 : STM32H723.Bit := 16#0#;
      --  DAC1 and 2 peripheral clock enable
      DAC12EN        : Boolean := False;
      --  UART7 Peripheral Clocks Enable
      UART7EN        : Boolean := False;
      --  UART8 Peripheral Clocks Enable
      UART8EN        : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for APB1LENR_Register_Value use record
      TIM2EN         at 0 range 0 .. 0;
      TIM3EN         at 0 range 1 .. 1;
      TIM4EN         at 0 range 2 .. 2;
      TIM5EN         at 0 range 3 .. 3;
      TIM6EN         at 0 range 4 .. 4;
      TIM7EN         at 0 range 5 .. 5;
      TIM12EN        at 0 range 6 .. 6;
      TIM13EN        at 0 range 7 .. 7;
      TIM14EN        at 0 range 8 .. 8;
      LPTIM1EN       at 0 range 9 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      SPI2EN         at 0 range 14 .. 14;
      SPI3EN         at 0 range 15 .. 15;
      SPDIFRXEN      at 0 range 16 .. 16;
      USART2EN       at 0 range 17 .. 17;
      USART3EN       at 0 range 18 .. 18;
      UART4EN        at 0 range 19 .. 19;
      UART5EN        at 0 range 20 .. 20;
      I2C1EN         at 0 range 21 .. 21;
      I2C2EN         at 0 range 22 .. 22;
      I2C3EN         at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      I2C5EN         at 0 range 25 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      CECEN          at 0 range 27 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      DAC12EN        at 0 range 29 .. 29;
      UART7EN        at 0 range 30 .. 30;
      UART8EN        at 0 range 31 .. 31;
   end record;

   type APB1LENR_Register is new APB1LENR_Register_Value
     with Volatile_Full_Access;

   --  RCC APB1 Clock Register
   type APB1HENR_Register_Value is record
      --  unspecified
      Reserved_0_0   : STM32H723.Bit := 16#0#;
      --  Clock Recovery System peripheral clock enable
      CRSEN          : Boolean := False;
      --  SWPMI Peripheral Clocks Enable
      SWPMIEN        : Boolean := False;
      --  unspecified
      Reserved_3_3   : STM32H723.Bit := 16#0#;
      --  OPAMP peripheral clock enable
      OPAMPEN        : Boolean := False;
      --  MDIOS peripheral clock enable
      MDIOSEN        : Boolean := False;
      --  unspecified
      Reserved_6_7   : STM32H723.UInt2 := 16#0#;
      --  FDCAN Peripheral Clocks Enable
      FDCANEN        : Boolean := False;
      --  unspecified
      Reserved_9_23  : STM32H723.UInt15 := 16#0#;
      --  TIM23 Peripheral Clocks Enable
      TIM23EN        : Boolean := False;
      --  TIM24 Peripheral Clocks Enable
      TIM24EN        : Boolean := False;
      --  unspecified
      Reserved_26_31 : STM32H723.UInt6 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for APB1HENR_Register_Value use record
      Reserved_0_0   at 0 range 0 .. 0;
      CRSEN          at 0 range 1 .. 1;
      SWPMIEN        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      OPAMPEN        at 0 range 4 .. 4;
      MDIOSEN        at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      FDCANEN        at 0 range 8 .. 8;
      Reserved_9_23  at 0 range 9 .. 23;
      TIM23EN        at 0 range 24 .. 24;
      TIM24EN        at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   type APB1HENR_Register is new APB1HENR_Register_Value
     with Volatile_Full_Access;

   --  RCC APB2 Clock Register
   type APB2ENR_Register_Value is record
      --  TIM1 peripheral clock enable
      TIM1EN         : Boolean := False;
      --  TIM8 peripheral clock enable
      TIM8EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : STM32H723.UInt2 := 16#0#;
      --  USART1 Peripheral Clocks Enable
      USART1EN       : Boolean := False;
      --  USART6 Peripheral Clocks Enable
      USART6EN       : Boolean := False;
      --  UART9 peripheral clocks enable Set and reset by software. The
      --  peripheral clocks of the UART9 are the kernel clock selected by
      --  USART16910SEL and provided to UCKL input, and the rcc_pclk2 bus
      --  interface clock.
      UART9EN        : Boolean := False;
      --  USART10 peripheral clocks enable Set and reset by software. The
      --  peripheral clocks of the USART10 are the kernel clock selected by
      --  USART16910SEL and provided to UCKL input, and the rcc_pclk2 bus
      --  interface clock.
      USART10EN      : Boolean := False;
      --  unspecified
      Reserved_8_11  : STM32H723.UInt4 := 16#0#;
      --  SPI1 Peripheral Clocks Enable
      SPI1EN         : Boolean := False;
      --  SPI4 Peripheral Clocks Enable
      SPI4EN         : Boolean := False;
      --  unspecified
      Reserved_14_15 : STM32H723.UInt2 := 16#0#;
      --  TIM15 peripheral clock enable Set and reset by software.
      TIM15EN        : Boolean := False;
      --  TIM16 peripheral clock enable
      TIM16EN        : Boolean := False;
      --  TIM17 peripheral clock enable
      TIM17EN        : Boolean := False;
      --  unspecified
      Reserved_19_19 : STM32H723.Bit := 16#0#;
      --  SPI5 Peripheral Clocks Enable
      SPI5EN         : Boolean := False;
      --  unspecified
      Reserved_21_21 : STM32H723.Bit := 16#0#;
      --  SAI1 Peripheral Clocks Enable
      SAI1EN         : Boolean := False;
      --  unspecified
      Reserved_23_29 : STM32H723.UInt7 := 16#0#;
      --  DFSDM1 peripheral clocks enable Set and reset by software. DFSDM1
      --  peripheral clocks are the kernel clocks selected by SAI1SEL and
      --  DFSDM1SEL and provided to Aclk and clk inputs respectively,
      DFSDM1EN       : Boolean := False;
      --  unspecified
      Reserved_31_31 : STM32H723.Bit := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for APB2ENR_Register_Value use record
      TIM1EN         at 0 range 0 .. 0;
      TIM8EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      USART1EN       at 0 range 4 .. 4;
      USART6EN       at 0 range 5 .. 5;
      UART9EN        at 0 range 6 .. 6;
      USART10EN      at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      SPI1EN         at 0 range 12 .. 12;
      SPI4EN         at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      TIM15EN        at 0 range 16 .. 16;
      TIM16EN        at 0 range 17 .. 17;
      TIM17EN        at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      SPI5EN         at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      SAI1EN         at 0 range 22 .. 22;
      Reserved_23_29 at 0 range 23 .. 29;
      DFSDM1EN       at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type APB2ENR_Register is new APB2ENR_Register_Value
     with Volatile_Full_Access;

   --  RCC APB4 Clock Register
   type APB4ENR_Register_Value is record
      --  unspecified
      Reserved_0_0   : STM32H723.Bit := 16#0#;
      --  SYSCFG peripheral clock enable
      SYSCFGEN       : Boolean := False;
      --  unspecified
      Reserved_2_2   : STM32H723.Bit := 16#0#;
      --  LPUART1 Peripheral Clocks Enable
      LPUART1EN      : Boolean := False;
      --  unspecified
      Reserved_4_4   : STM32H723.Bit := 16#0#;
      --  SPI6 Peripheral Clocks Enable
      SPI6EN         : Boolean := False;
      --  unspecified
      Reserved_6_6   : STM32H723.Bit := 16#0#;
      --  I2C4 Peripheral Clocks Enable
      I2C4EN         : Boolean := False;
      --  unspecified
      Reserved_8_8   : STM32H723.Bit := 16#0#;
      --  LPTIM2 Peripheral Clocks Enable
      LPTIM2EN       : Boolean := False;
      --  LPTIM3 Peripheral Clocks Enable
      LPTIM3EN       : Boolean := False;
      --  LPTIM4 Peripheral Clocks Enable
      LPTIM4EN       : Boolean := False;
      --  LPTIM5 Peripheral Clocks Enable
      LPTIM5EN       : Boolean := False;
      --  unspecified
      Reserved_13_13 : STM32H723.Bit := 16#0#;
      --  COMP1/2 peripheral clock enable
      COMP12EN       : Boolean := False;
      --  VREF peripheral clock enable
      VREFEN         : Boolean := False;
      --  RTC APB Clock Enable
      RTCAPBEN       : Boolean := False;
      --  unspecified
      Reserved_17_20 : STM32H723.UInt4 := 16#0#;
      --  SAI4 Peripheral Clocks Enable
      SAI4EN         : Boolean := False;
      --  unspecified
      Reserved_22_25 : STM32H723.UInt4 := 16#0#;
      --  Digital temperature sensor peripheral clock enable Set and reset by
      --  software.
      DTSEN          : Boolean := False;
      --  unspecified
      Reserved_27_31 : STM32H723.UInt5 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for APB4ENR_Register_Value use record
      Reserved_0_0   at 0 range 0 .. 0;
      SYSCFGEN       at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      LPUART1EN      at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      SPI6EN         at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      I2C4EN         at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      LPTIM2EN       at 0 range 9 .. 9;
      LPTIM3EN       at 0 range 10 .. 10;
      LPTIM4EN       at 0 range 11 .. 11;
      LPTIM5EN       at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      COMP12EN       at 0 range 14 .. 14;
      VREFEN         at 0 range 15 .. 15;
      RTCAPBEN       at 0 range 16 .. 16;
      Reserved_17_20 at 0 range 17 .. 20;
      SAI4EN         at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      DTSEN          at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   type APB4ENR_Register is new APB4ENR_Register_Value
     with Volatile_Full_Access;

   --  RCC AHB3 Sleep Clock Register
   type AHB3LPENR_Register_Value is record
      --  MDMA Clock Enable During CSleep Mode
      MDMALPEN       : Boolean := False;
      --  unspecified
      Reserved_1_3   : STM32H723.UInt3 := 16#0#;
      --  DMA2D Clock Enable During CSleep Mode
      DMA2DLPEN      : Boolean := False;
      --  unspecified
      Reserved_5_7   : STM32H723.UInt3 := 16#0#;
      --  Flash interface Clock Enable During CSleep Mode
      FLASHLPEN      : Boolean := False;
      --  unspecified
      Reserved_9_11  : STM32H723.UInt3 := 16#0#;
      --  FMC Peripheral Clocks Enable During CSleep Mode
      FMCLPEN        : Boolean := False;
      --  unspecified
      Reserved_13_13 : STM32H723.Bit := 16#0#;
      --  QUADSPI and QUADSPI Delay Clock Enable During CSleep Mode
      OCTO1LPEN      : Boolean := False;
      --  unspecified
      Reserved_15_15 : STM32H723.Bit := 16#0#;
      --  SDMMC1 and SDMMC1 Delay Clock Enable During CSleep Mode
      SDMMC1LPEN     : Boolean := False;
      --  unspecified
      Reserved_17_18 : STM32H723.UInt2 := 16#0#;
      --  OCTOSPI2 and OCTOSPI2 delay clock enable during CSleep mode Set and
      --  reset by software.
      OCTO2LPEN      : Boolean := False;
      --  unspecified
      Reserved_20_20 : STM32H723.Bit := 16#0#;
      --  OCTOSPIM block clock enable during CSleep mode Set and reset by
      --  software.
      IOMNGRLPEN     : Boolean := False;
      --  OTFD1 block clock enable during CSleep mode Set and reset by
      --  software.
      OTFD1LPEN      : Boolean := False;
      --  OTFD2 block clock enable during CSleep mode Set and reset by
      --  software.
      OTFD2LPEN      : Boolean := False;
      --  unspecified
      Reserved_24_27 : STM32H723.UInt4 := 16#0#;
      --  D1DTCM1 Block Clock Enable During CSleep mode
      DTCM1LPEN      : Boolean := False;
      --  D1 DTCM2 Block Clock Enable During CSleep mode
      DTCM2LPEN      : Boolean := False;
      --  D1ITCM Block Clock Enable During CSleep mode
      ITCMLPEN       : Boolean := False;
      --  AXISRAM Block Clock Enable During CSleep mode
      AXISRAMLPEN    : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for AHB3LPENR_Register_Value use record
      MDMALPEN       at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      DMA2DLPEN      at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      FLASHLPEN      at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      FMCLPEN        at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      OCTO1LPEN      at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SDMMC1LPEN     at 0 range 16 .. 16;
      Reserved_17_18 at 0 range 17 .. 18;
      OCTO2LPEN      at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      IOMNGRLPEN     at 0 range 21 .. 21;
      OTFD1LPEN      at 0 range 22 .. 22;
      OTFD2LPEN      at 0 range 23 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      DTCM1LPEN      at 0 range 28 .. 28;
      DTCM2LPEN      at 0 range 29 .. 29;
      ITCMLPEN       at 0 range 30 .. 30;
      AXISRAMLPEN    at 0 range 31 .. 31;
   end record;

   type AHB3LPENR_Register is new AHB3LPENR_Register_Value
     with Volatile_Full_Access;

   --  RCC AHB1 Sleep Clock Register
   type AHB1LPENR_Register_Value is record
      --  DMA1 Clock Enable During CSleep Mode
      DMA1LPEN          : Boolean := False;
      --  DMA2 Clock Enable During CSleep Mode
      DMA2LPEN          : Boolean := False;
      --  unspecified
      Reserved_2_4      : STM32H723.UInt3 := 16#0#;
      --  ADC1/2 Peripheral Clocks Enable During CSleep Mode
      ADC12LPEN         : Boolean := False;
      --  unspecified
      Reserved_6_14     : STM32H723.UInt9 := 16#0#;
      --  Ethernet MAC bus interface Clock Enable During CSleep Mode
      ETH1MACLPEN       : Boolean := False;
      --  Ethernet Transmission Clock Enable During CSleep Mode
      ETH1TXLPEN        : Boolean := False;
      --  Ethernet Reception Clock Enable During CSleep Mode
      ETH1RXLPEN        : Boolean := False;
      --  unspecified
      Reserved_18_24    : STM32H723.UInt7 := 16#0#;
      --  USB1OTG peripheral clock enable during CSleep mode
      USB1OTGHSLPEN     : Boolean := False;
      --  USB_PHY1 clock enable during CSleep mode
      USB1OTGHSULPILPEN : Boolean := False;
      --  unspecified
      Reserved_27_31    : STM32H723.UInt5 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for AHB1LPENR_Register_Value use record
      DMA1LPEN          at 0 range 0 .. 0;
      DMA2LPEN          at 0 range 1 .. 1;
      Reserved_2_4      at 0 range 2 .. 4;
      ADC12LPEN         at 0 range 5 .. 5;
      Reserved_6_14     at 0 range 6 .. 14;
      ETH1MACLPEN       at 0 range 15 .. 15;
      ETH1TXLPEN        at 0 range 16 .. 16;
      ETH1RXLPEN        at 0 range 17 .. 17;
      Reserved_18_24    at 0 range 18 .. 24;
      USB1OTGHSLPEN     at 0 range 25 .. 25;
      USB1OTGHSULPILPEN at 0 range 26 .. 26;
      Reserved_27_31    at 0 range 27 .. 31;
   end record;

   type AHB1LPENR_Register is new AHB1LPENR_Register_Value
     with Volatile_Full_Access;

   --  RCC AHB2 Sleep Clock Register
   type AHB2LPENR_Register_Value is record
      --  DCMI_PSSILPEN
      DCMI_PSSILPEN  : Boolean := True;
      --  unspecified
      Reserved_1_3   : STM32H723.UInt3 := 16#0#;
      --  CRYPT peripheral clock enable during CSleep mode
      CRYPTLPEN      : Boolean := True;
      --  HASH peripheral clock enable during CSleep mode
      HASHLPEN       : Boolean := True;
      --  RNG peripheral clock enable during CSleep mode
      RNGLPEN        : Boolean := True;
      --  unspecified
      Reserved_7_8   : STM32H723.UInt2 := 16#0#;
      --  SDMMC2 and SDMMC2 Delay Clock Enable During CSleep Mode
      SDMMC2LPEN     : Boolean := True;
      --  unspecified
      Reserved_10_15 : STM32H723.UInt6 := 16#0#;
      --  FMAC peripheral clock enable during CSleep mode
      FMACLPEN       : Boolean := True;
      --  CORDIC peripheral clock enable during CSleep mode
      CORDICLPEN     : Boolean := True;
      --  unspecified
      Reserved_18_28 : STM32H723.UInt11 := 16#0#;
      --  SRAM1 Clock Enable During CSleep Mode
      SRAM1LPEN      : Boolean := True;
      --  SRAM2 Clock Enable During CSleep Mode
      SRAM2LPEN      : Boolean := True;
      --  unspecified
      Reserved_31_31 : STM32H723.Bit := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for AHB2LPENR_Register_Value use record
      DCMI_PSSILPEN  at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      CRYPTLPEN      at 0 range 4 .. 4;
      HASHLPEN       at 0 range 5 .. 5;
      RNGLPEN        at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      SDMMC2LPEN     at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      FMACLPEN       at 0 range 16 .. 16;
      CORDICLPEN     at 0 range 17 .. 17;
      Reserved_18_28 at 0 range 18 .. 28;
      SRAM1LPEN      at 0 range 29 .. 29;
      SRAM2LPEN      at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type AHB2LPENR_Register is new AHB2LPENR_Register_Value
     with Volatile_Full_Access;

   --  RCC AHB4 Sleep Clock Register
   type AHB4LPENR_Register_Value is record
      --  GPIO peripheral clock enable during CSleep mode
      GPIOALPEN      : Boolean := False;
      --  GPIO peripheral clock enable during CSleep mode
      GPIOBLPEN      : Boolean := False;
      --  GPIO peripheral clock enable during CSleep mode
      GPIOCLPEN      : Boolean := False;
      --  GPIO peripheral clock enable during CSleep mode
      GPIODLPEN      : Boolean := False;
      --  GPIO peripheral clock enable during CSleep mode
      GPIOELPEN      : Boolean := False;
      --  GPIO peripheral clock enable during CSleep mode
      GPIOFLPEN      : Boolean := False;
      --  GPIO peripheral clock enable during CSleep mode
      GPIOGLPEN      : Boolean := False;
      --  GPIO peripheral clock enable during CSleep mode
      GPIOHLPEN      : Boolean := False;
      --  unspecified
      Reserved_8_8   : STM32H723.Bit := 16#0#;
      --  GPIO peripheral clock enable during CSleep mode
      GPIOJLPEN      : Boolean := False;
      --  GPIO peripheral clock enable during CSleep mode
      GPIOKLPEN      : Boolean := False;
      --  unspecified
      Reserved_11_18 : STM32H723.Byte := 16#0#;
      --  CRC peripheral clock enable during CSleep mode
      CRCLPEN        : Boolean := False;
      --  unspecified
      Reserved_20_20 : STM32H723.Bit := 16#0#;
      --  BDMA Clock Enable During CSleep Mode
      BDMALPEN       : Boolean := False;
      --  unspecified
      Reserved_22_23 : STM32H723.UInt2 := 16#0#;
      --  ADC3 Peripheral Clocks Enable During CSleep Mode
      ADC3LPEN       : Boolean := False;
      --  unspecified
      Reserved_25_27 : STM32H723.UInt3 := 16#0#;
      --  Backup RAM Clock Enable During CSleep Mode
      BKPRAMLPEN     : Boolean := False;
      --  SRAM4 Clock Enable During CSleep Mode
      SRAM4LPEN      : Boolean := False;
      --  unspecified
      Reserved_30_31 : STM32H723.UInt2 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for AHB4LPENR_Register_Value use record
      GPIOALPEN      at 0 range 0 .. 0;
      GPIOBLPEN      at 0 range 1 .. 1;
      GPIOCLPEN      at 0 range 2 .. 2;
      GPIODLPEN      at 0 range 3 .. 3;
      GPIOELPEN      at 0 range 4 .. 4;
      GPIOFLPEN      at 0 range 5 .. 5;
      GPIOGLPEN      at 0 range 6 .. 6;
      GPIOHLPEN      at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      GPIOJLPEN      at 0 range 9 .. 9;
      GPIOKLPEN      at 0 range 10 .. 10;
      Reserved_11_18 at 0 range 11 .. 18;
      CRCLPEN        at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      BDMALPEN       at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      ADC3LPEN       at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      BKPRAMLPEN     at 0 range 28 .. 28;
      SRAM4LPEN      at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   type AHB4LPENR_Register is new AHB4LPENR_Register_Value
     with Volatile_Full_Access;

   --  RCC APB3 Sleep Clock Register
   type APB3LPENR_Register_Value is record
      --  unspecified
      Reserved_0_2  : STM32H723.UInt3 := 16#0#;
      --  LTDC peripheral clock enable during CSleep mode
      LTDCLPEN      : Boolean := False;
      --  unspecified
      Reserved_4_5  : STM32H723.UInt2 := 16#0#;
      --  WWDG1 Clock Enable During CSleep Mode
      WWDG1LPEN     : Boolean := False;
      --  unspecified
      Reserved_7_31 : STM32H723.UInt25 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for APB3LPENR_Register_Value use record
      Reserved_0_2  at 0 range 0 .. 2;
      LTDCLPEN      at 0 range 3 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      WWDG1LPEN     at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   type APB3LPENR_Register is new APB3LPENR_Register_Value
     with Volatile_Full_Access;

   --  RCC APB1 Low Sleep Clock Register
   type APB1LLPENR_Register_Value is record
      --  TIM2 peripheral clock enable during CSleep mode
      TIM2LPEN       : Boolean := False;
      --  TIM3 peripheral clock enable during CSleep mode
      TIM3LPEN       : Boolean := False;
      --  TIM4 peripheral clock enable during CSleep mode
      TIM4LPEN       : Boolean := False;
      --  TIM5 peripheral clock enable during CSleep mode
      TIM5LPEN       : Boolean := False;
      --  TIM6 peripheral clock enable during CSleep mode
      TIM6LPEN       : Boolean := False;
      --  TIM7 peripheral clock enable during CSleep mode
      TIM7LPEN       : Boolean := False;
      --  TIM12 peripheral clock enable during CSleep mode
      TIM12LPEN      : Boolean := False;
      --  TIM13 peripheral clock enable during CSleep mode
      TIM13LPEN      : Boolean := False;
      --  TIM14 peripheral clock enable during CSleep mode
      TIM14LPEN      : Boolean := False;
      --  LPTIM1 Peripheral Clocks Enable During CSleep Mode
      LPTIM1LPEN     : Boolean := False;
      --  unspecified
      Reserved_10_13 : STM32H723.UInt4 := 16#0#;
      --  SPI2 Peripheral Clocks Enable During CSleep Mode
      SPI2LPEN       : Boolean := False;
      --  SPI3 Peripheral Clocks Enable During CSleep Mode
      SPI3LPEN       : Boolean := False;
      --  SPDIFRX Peripheral Clocks Enable During CSleep Mode
      SPDIFRXLPEN    : Boolean := False;
      --  USART2 Peripheral Clocks Enable During CSleep Mode
      USART2LPEN     : Boolean := False;
      --  USART3 Peripheral Clocks Enable During CSleep Mode
      USART3LPEN     : Boolean := False;
      --  UART4 Peripheral Clocks Enable During CSleep Mode
      UART4LPEN      : Boolean := False;
      --  UART5 Peripheral Clocks Enable During CSleep Mode
      UART5LPEN      : Boolean := False;
      --  I2C1 Peripheral Clocks Enable During CSleep Mode
      I2C1LPEN       : Boolean := False;
      --  I2C2 Peripheral Clocks Enable During CSleep Mode
      I2C2LPEN       : Boolean := False;
      --  I2C3 Peripheral Clocks Enable During CSleep Mode
      I2C3LPEN       : Boolean := False;
      --  unspecified
      Reserved_24_24 : STM32H723.Bit := 16#0#;
      --  I2C5 Peripheral Clocks Enable During CSleep Mode
      I2C5LPEN       : Boolean := False;
      --  unspecified
      Reserved_26_26 : STM32H723.Bit := 16#0#;
      --  CEC Peripheral Clocks Enable During CSleep Mode
      CECLPEN        : Boolean := False;
      --  unspecified
      Reserved_28_28 : STM32H723.Bit := 16#0#;
      --  DAC1/2 peripheral clock enable during CSleep mode
      DAC12LPEN      : Boolean := False;
      --  USART7 Peripheral Clocks Enable During CSleep Mode
      USART7LPEN     : Boolean := False;
      --  USART8 Peripheral Clocks Enable During CSleep Mode
      USART8LPEN     : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for APB1LLPENR_Register_Value use record
      TIM2LPEN       at 0 range 0 .. 0;
      TIM3LPEN       at 0 range 1 .. 1;
      TIM4LPEN       at 0 range 2 .. 2;
      TIM5LPEN       at 0 range 3 .. 3;
      TIM6LPEN       at 0 range 4 .. 4;
      TIM7LPEN       at 0 range 5 .. 5;
      TIM12LPEN      at 0 range 6 .. 6;
      TIM13LPEN      at 0 range 7 .. 7;
      TIM14LPEN      at 0 range 8 .. 8;
      LPTIM1LPEN     at 0 range 9 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      SPI2LPEN       at 0 range 14 .. 14;
      SPI3LPEN       at 0 range 15 .. 15;
      SPDIFRXLPEN    at 0 range 16 .. 16;
      USART2LPEN     at 0 range 17 .. 17;
      USART3LPEN     at 0 range 18 .. 18;
      UART4LPEN      at 0 range 19 .. 19;
      UART5LPEN      at 0 range 20 .. 20;
      I2C1LPEN       at 0 range 21 .. 21;
      I2C2LPEN       at 0 range 22 .. 22;
      I2C3LPEN       at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      I2C5LPEN       at 0 range 25 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      CECLPEN        at 0 range 27 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      DAC12LPEN      at 0 range 29 .. 29;
      USART7LPEN     at 0 range 30 .. 30;
      USART8LPEN     at 0 range 31 .. 31;
   end record;

   type APB1LLPENR_Register is new APB1LLPENR_Register_Value
     with Volatile_Full_Access;

   --  RCC APB1 High Sleep Clock Register
   type APB1HLPENR_Register_Value is record
      --  unspecified
      Reserved_0_0   : STM32H723.Bit := 16#0#;
      --  Clock Recovery System peripheral clock enable during CSleep mode
      CRSLPEN        : Boolean := False;
      --  SWPMI Peripheral Clocks Enable During CSleep Mode
      SWPMILPEN      : Boolean := False;
      --  unspecified
      Reserved_3_3   : STM32H723.Bit := 16#0#;
      --  OPAMP peripheral clock enable during CSleep mode
      OPAMPLPEN      : Boolean := False;
      --  MDIOS peripheral clock enable during CSleep mode
      MDIOSLPEN      : Boolean := False;
      --  unspecified
      Reserved_6_7   : STM32H723.UInt2 := 16#0#;
      --  FDCAN Peripheral Clocks Enable During CSleep Mode
      FDCANLPEN      : Boolean := False;
      --  unspecified
      Reserved_9_23  : STM32H723.UInt15 := 16#0#;
      --  TIM23 Peripheral Clocks Enable During CSleep Mode
      TIM23LPEN      : Boolean := False;
      --  TIM24 Peripheral Clocks Enable During CSleep Mode
      TIM24LPEN      : Boolean := False;
      --  unspecified
      Reserved_26_31 : STM32H723.UInt6 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for APB1HLPENR_Register_Value use record
      Reserved_0_0   at 0 range 0 .. 0;
      CRSLPEN        at 0 range 1 .. 1;
      SWPMILPEN      at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      OPAMPLPEN      at 0 range 4 .. 4;
      MDIOSLPEN      at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      FDCANLPEN      at 0 range 8 .. 8;
      Reserved_9_23  at 0 range 9 .. 23;
      TIM23LPEN      at 0 range 24 .. 24;
      TIM24LPEN      at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   type APB1HLPENR_Register is new APB1HLPENR_Register_Value
     with Volatile_Full_Access;

   --  RCC APB2 Sleep Clock Register
   type APB2LPENR_Register_Value is record
      --  TIM1 peripheral clock enable during CSleep mode
      TIM1LPEN       : Boolean := False;
      --  TIM8 peripheral clock enable during CSleep mode
      TIM8LPEN       : Boolean := False;
      --  unspecified
      Reserved_2_3   : STM32H723.UInt2 := 16#0#;
      --  USART1 Peripheral Clocks Enable During CSleep Mode
      USART1LPEN     : Boolean := False;
      --  USART6 Peripheral Clocks Enable During CSleep Mode
      USART6LPEN     : Boolean := False;
      --  UART9 peripheral clock enable during CSleep mode Set and reset by
      --  software. The peripheral clocks of the UART9 are the kernel clock
      --  selected by USART16910SEL and provided to usart_ker_ck input, and the
      --  rcc_pclk2 bus interface clock.
      UART9LPEN      : Boolean := False;
      --  USART10 peripheral clock enable during CSleep mode Set and reset by
      --  software. The peripheral clocks of the USART10 are the kernel clock
      --  selected by USART16910SEL and provided to usart_ker_ck input, and the
      --  rcc_pclk2 bus interface clock.
      USART10LPEN    : Boolean := False;
      --  unspecified
      Reserved_8_11  : STM32H723.UInt4 := 16#0#;
      --  SPI1 Peripheral Clocks Enable During CSleep Mode
      SPI1LPEN       : Boolean := False;
      --  SPI4 Peripheral Clocks Enable During CSleep Mode
      SPI4LPEN       : Boolean := False;
      --  unspecified
      Reserved_14_15 : STM32H723.UInt2 := 16#0#;
      --  TIM15 peripheral clock enable during CSleep mode
      TIM15LPEN      : Boolean := False;
      --  TIM16 peripheral clock enable during CSleep mode
      TIM16LPEN      : Boolean := False;
      --  TIM17 peripheral clock enable during CSleep mode
      TIM17LPEN      : Boolean := False;
      --  unspecified
      Reserved_19_19 : STM32H723.Bit := 16#0#;
      --  SPI5 Peripheral Clocks Enable During CSleep Mode
      SPI5LPEN       : Boolean := False;
      --  unspecified
      Reserved_21_21 : STM32H723.Bit := 16#0#;
      --  SAI1 Peripheral Clocks Enable During CSleep Mode
      SAI1LPEN       : Boolean := False;
      --  unspecified
      Reserved_23_29 : STM32H723.UInt7 := 16#0#;
      --  DFSDM1 peripheral clocks enable during CSleep mode Set and reset by
      --  software. DFSDM1 peripheral clocks are the kernel clocks selected by
      --  SAI1SEL and DFSDM1SEL and provided to Aclk and clk inputs
      --  respectively, and the rcc_pclk2 bus interface clock.
      DFSDM1LPEN     : Boolean := False;
      --  unspecified
      Reserved_31_31 : STM32H723.Bit := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for APB2LPENR_Register_Value use record
      TIM1LPEN       at 0 range 0 .. 0;
      TIM8LPEN       at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      USART1LPEN     at 0 range 4 .. 4;
      USART6LPEN     at 0 range 5 .. 5;
      UART9LPEN      at 0 range 6 .. 6;
      USART10LPEN    at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      SPI1LPEN       at 0 range 12 .. 12;
      SPI4LPEN       at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      TIM15LPEN      at 0 range 16 .. 16;
      TIM16LPEN      at 0 range 17 .. 17;
      TIM17LPEN      at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      SPI5LPEN       at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      SAI1LPEN       at 0 range 22 .. 22;
      Reserved_23_29 at 0 range 23 .. 29;
      DFSDM1LPEN     at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type APB2LPENR_Register is new APB2LPENR_Register_Value
     with Volatile_Full_Access;

   --  RCC APB4 Sleep Clock Register
   type APB4LPENR_Register_Value is record
      --  unspecified
      Reserved_0_0   : STM32H723.Bit := 16#0#;
      --  SYSCFG peripheral clock enable during CSleep mode
      SYSCFGLPEN     : Boolean := False;
      --  unspecified
      Reserved_2_2   : STM32H723.Bit := 16#0#;
      --  LPUART1 Peripheral Clocks Enable During CSleep Mode
      LPUART1LPEN    : Boolean := False;
      --  unspecified
      Reserved_4_4   : STM32H723.Bit := 16#0#;
      --  SPI6 Peripheral Clocks Enable During CSleep Mode
      SPI6LPEN       : Boolean := False;
      --  unspecified
      Reserved_6_6   : STM32H723.Bit := 16#0#;
      --  I2C4 Peripheral Clocks Enable During CSleep Mode
      I2C4LPEN       : Boolean := False;
      --  unspecified
      Reserved_8_8   : STM32H723.Bit := 16#0#;
      --  LPTIM2 Peripheral Clocks Enable During CSleep Mode
      LPTIM2LPEN     : Boolean := False;
      --  LPTIM3 Peripheral Clocks Enable During CSleep Mode
      LPTIM3LPEN     : Boolean := False;
      --  LPTIM4 Peripheral Clocks Enable During CSleep Mode
      LPTIM4LPEN     : Boolean := False;
      --  LPTIM5 Peripheral Clocks Enable During CSleep Mode
      LPTIM5LPEN     : Boolean := False;
      --  unspecified
      Reserved_13_13 : STM32H723.Bit := 16#0#;
      --  COMP1/2 peripheral clock enable during CSleep mode
      COMP12LPEN     : Boolean := False;
      --  VREF peripheral clock enable during CSleep mode
      VREFLPEN       : Boolean := False;
      --  RTC APB Clock Enable During CSleep Mode
      RTCAPBLPEN     : Boolean := False;
      --  unspecified
      Reserved_17_20 : STM32H723.UInt4 := 16#0#;
      --  SAI4 Peripheral Clocks Enable During CSleep Mode
      SAI4LPEN       : Boolean := False;
      --  unspecified
      Reserved_22_25 : STM32H723.UInt4 := 16#0#;
      --  Digital temperature sensor peripheral clock enable during CSleep mode
      DTSLPEN        : Boolean := False;
      --  unspecified
      Reserved_27_31 : STM32H723.UInt5 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for APB4LPENR_Register_Value use record
      Reserved_0_0   at 0 range 0 .. 0;
      SYSCFGLPEN     at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      LPUART1LPEN    at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      SPI6LPEN       at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      I2C4LPEN       at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      LPTIM2LPEN     at 0 range 9 .. 9;
      LPTIM3LPEN     at 0 range 10 .. 10;
      LPTIM4LPEN     at 0 range 11 .. 11;
      LPTIM5LPEN     at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      COMP12LPEN     at 0 range 14 .. 14;
      VREFLPEN       at 0 range 15 .. 15;
      RTCAPBLPEN     at 0 range 16 .. 16;
      Reserved_17_20 at 0 range 17 .. 20;
      SAI4LPEN       at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      DTSLPEN        at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   type APB4LPENR_Register is new APB4LPENR_Register_Value
     with Volatile_Full_Access;

   --  RCC Reset Status Register
   type C1_RSR_Register_Value is record
      --  unspecified
      Reserved_0_15  : STM32H723.UInt16 := 16#0#;
      --  Remove reset flag
      RMVF           : Boolean := False;
      --  CPU reset flag
      CPURSTF        : Boolean := False;
      --  unspecified
      Reserved_18_18 : STM32H723.Bit := 16#0#;
      --  D1 domain power switch reset flag
      D1RSTF         : Boolean := False;
      --  D2 domain power switch reset flag
      D2RSTF         : Boolean := False;
      --  BOR reset flag
      BORRSTF        : Boolean := False;
      --  Pin reset flag (NRST)
      PINRSTF        : Boolean := False;
      --  POR/PDR reset flag
      PORRSTF        : Boolean := False;
      --  System reset from CPU reset flag
      SFTRSTF        : Boolean := False;
      --  unspecified
      Reserved_25_25 : STM32H723.Bit := 16#0#;
      --  Independent Watchdog reset flag
      IWDG1RSTF      : Boolean := False;
      --  unspecified
      Reserved_27_27 : STM32H723.Bit := 16#0#;
      --  Window Watchdog reset flag
      WWDG1RSTF      : Boolean := False;
      --  unspecified
      Reserved_29_29 : STM32H723.Bit := 16#0#;
      --  Reset due to illegal D1 DStandby or CPU CStop flag
      LPWRRSTF       : Boolean := False;
      --  unspecified
      Reserved_31_31 : STM32H723.Bit := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for C1_RSR_Register_Value use record
      Reserved_0_15  at 0 range 0 .. 15;
      RMVF           at 0 range 16 .. 16;
      CPURSTF        at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      D1RSTF         at 0 range 19 .. 19;
      D2RSTF         at 0 range 20 .. 20;
      BORRSTF        at 0 range 21 .. 21;
      PINRSTF        at 0 range 22 .. 22;
      PORRSTF        at 0 range 23 .. 23;
      SFTRSTF        at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      IWDG1RSTF      at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      WWDG1RSTF      at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      LPWRRSTF       at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type C1_RSR_Register is new C1_RSR_Register_Value
     with Volatile_Full_Access;

   --  RCC AHB3 Clock Register
   type C1_AHB3ENR_Register_Value is record
      --  MDMA Peripheral Clock Enable
      MDMAEN         : Boolean := False;
      --  unspecified
      Reserved_1_3   : STM32H723.UInt3 := 16#0#;
      --  DMA2D Peripheral Clock Enable
      DMA2DEN        : Boolean := False;
      --  unspecified
      Reserved_5_11  : STM32H723.UInt7 := 16#0#;
      --  FMC Peripheral Clocks Enable
      FMCEN          : Boolean := False;
      --  unspecified
      Reserved_13_13 : STM32H723.Bit := 16#0#;
      --  OCTOSPI1 and OCTOSPI1 delay clock enable
      OCTOSPI1EN     : Boolean := False;
      --  unspecified
      Reserved_15_15 : STM32H723.Bit := 16#0#;
      --  SDMMC1 and SDMMC1 Delay Clock Enable
      SDMMC1EN       : Boolean := False;
      --  unspecified
      Reserved_17_18 : STM32H723.UInt2 := 16#0#;
      --  OCTOSPI2 clock enable Set and reset by software.
      OCTOSPI2EN     : Boolean := False;
      --  unspecified
      Reserved_20_20 : STM32H723.Bit := 16#0#;
      --  OCTOSPIM clock enable Set and reset by software.
      IOMNGREN       : Boolean := False;
      --  OTFD1 clock enable Set and reset by software.
      OTFD1EN        : Boolean := False;
      --  OTFD2 clock enable Set and reset by software.
      OTFD2EN        : Boolean := False;
      --  unspecified
      Reserved_24_31 : STM32H723.Byte := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for C1_AHB3ENR_Register_Value use record
      MDMAEN         at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      DMA2DEN        at 0 range 4 .. 4;
      Reserved_5_11  at 0 range 5 .. 11;
      FMCEN          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      OCTOSPI1EN     at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SDMMC1EN       at 0 range 16 .. 16;
      Reserved_17_18 at 0 range 17 .. 18;
      OCTOSPI2EN     at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      IOMNGREN       at 0 range 21 .. 21;
      OTFD1EN        at 0 range 22 .. 22;
      OTFD2EN        at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   type C1_AHB3ENR_Register is new C1_AHB3ENR_Register_Value
     with Volatile_Full_Access;

   --  RCC AHB1 Clock Register
   type C1_AHB1ENR_Register_Value is record
      --  DMA1 Clock Enable
      DMA1EN          : Boolean := False;
      --  DMA2 Clock Enable
      DMA2EN          : Boolean := False;
      --  unspecified
      Reserved_2_4    : STM32H723.UInt3 := 16#0#;
      --  ADC1/2 Peripheral Clocks Enable
      ADC12EN         : Boolean := False;
      --  unspecified
      Reserved_6_14   : STM32H723.UInt9 := 16#0#;
      --  Ethernet MAC bus interface Clock Enable
      ETH1MACEN       : Boolean := False;
      --  Ethernet Transmission Clock Enable
      ETH1TXEN        : Boolean := False;
      --  Ethernet Reception Clock Enable
      ETH1RXEN        : Boolean := False;
      --  unspecified
      Reserved_18_24  : STM32H723.UInt7 := 16#0#;
      --  USB1OTG Peripheral Clocks Enable
      USB1OTGHSEN     : Boolean := False;
      --  USB_PHY1 Clocks Enable
      USB1OTGHSULPIEN : Boolean := False;
      --  unspecified
      Reserved_27_31  : STM32H723.UInt5 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for C1_AHB1ENR_Register_Value use record
      DMA1EN          at 0 range 0 .. 0;
      DMA2EN          at 0 range 1 .. 1;
      Reserved_2_4    at 0 range 2 .. 4;
      ADC12EN         at 0 range 5 .. 5;
      Reserved_6_14   at 0 range 6 .. 14;
      ETH1MACEN       at 0 range 15 .. 15;
      ETH1TXEN        at 0 range 16 .. 16;
      ETH1RXEN        at 0 range 17 .. 17;
      Reserved_18_24  at 0 range 18 .. 24;
      USB1OTGHSEN     at 0 range 25 .. 25;
      USB1OTGHSULPIEN at 0 range 26 .. 26;
      Reserved_27_31  at 0 range 27 .. 31;
   end record;

   type C1_AHB1ENR_Register is new C1_AHB1ENR_Register_Value
     with Volatile_Full_Access;

   --  RCC AHB2 Clock Register
   type C1_AHB2ENR_Register_Value is record
      --  CAMITF peripheral clock enable
      DCMI_PSSIEN    : Boolean := False;
      --  unspecified
      Reserved_1_3   : STM32H723.UInt3 := 16#0#;
      --  CRYPT peripheral clock enable
      CRYPTEN        : Boolean := False;
      --  HASH peripheral clock enable
      HASHEN         : Boolean := False;
      --  RNG peripheral clocks enable
      RNGEN          : Boolean := False;
      --  unspecified
      Reserved_7_8   : STM32H723.UInt2 := 16#0#;
      --  SDMMC2 and SDMMC2 delay clock enable
      SDMMC2EN       : Boolean := False;
      --  unspecified
      Reserved_10_15 : STM32H723.UInt6 := 16#0#;
      --  FMAC clock enable
      FMACEN         : Boolean := False;
      --  CORDIC clock enable
      CORDICEN       : Boolean := False;
      --  unspecified
      Reserved_18_28 : STM32H723.UInt11 := 16#0#;
      --  SRAM1 block enable
      SRAM1EN        : Boolean := False;
      --  SRAM2 block enable
      SRAM2EN        : Boolean := False;
      --  unspecified
      Reserved_31_31 : STM32H723.Bit := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for C1_AHB2ENR_Register_Value use record
      DCMI_PSSIEN    at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      CRYPTEN        at 0 range 4 .. 4;
      HASHEN         at 0 range 5 .. 5;
      RNGEN          at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      SDMMC2EN       at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      FMACEN         at 0 range 16 .. 16;
      CORDICEN       at 0 range 17 .. 17;
      Reserved_18_28 at 0 range 18 .. 28;
      SRAM1EN        at 0 range 29 .. 29;
      SRAM2EN        at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type C1_AHB2ENR_Register is new C1_AHB2ENR_Register_Value
     with Volatile_Full_Access;

   --  RCC AHB4 Clock Register
   type C1_AHB4ENR_Register_Value is record
      --  0GPIO peripheral clock enable
      GPIOAEN        : Boolean := False;
      --  0GPIO peripheral clock enable
      GPIOBEN        : Boolean := False;
      --  0GPIO peripheral clock enable
      GPIOCEN        : Boolean := False;
      --  0GPIO peripheral clock enable
      GPIODEN        : Boolean := False;
      --  0GPIO peripheral clock enable
      GPIOEEN        : Boolean := False;
      --  0GPIO peripheral clock enable
      GPIOFEN        : Boolean := False;
      --  0GPIO peripheral clock enable
      GPIOGEN        : Boolean := False;
      --  0GPIO peripheral clock enable
      GPIOHEN        : Boolean := False;
      --  unspecified
      Reserved_8_8   : STM32H723.Bit := 16#0#;
      --  0GPIO peripheral clock enable
      GPIOJEN        : Boolean := False;
      --  0GPIO peripheral clock enable
      GPIOKEN        : Boolean := False;
      --  unspecified
      Reserved_11_18 : STM32H723.Byte := 16#0#;
      --  CRC peripheral clock enable
      CRCEN          : Boolean := False;
      --  unspecified
      Reserved_20_20 : STM32H723.Bit := 16#0#;
      --  BDMA and DMAMUX2 Clock Enable
      BDMAEN         : Boolean := False;
      --  unspecified
      Reserved_22_23 : STM32H723.UInt2 := 16#0#;
      --  ADC3 Peripheral Clocks Enable
      ADC3EN         : Boolean := False;
      --  HSEM peripheral clock enable
      HSEMEN         : Boolean := False;
      --  unspecified
      Reserved_26_27 : STM32H723.UInt2 := 16#0#;
      --  Backup RAM Clock Enable
      BKPRAMEN       : Boolean := False;
      --  unspecified
      Reserved_29_31 : STM32H723.UInt3 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for C1_AHB4ENR_Register_Value use record
      GPIOAEN        at 0 range 0 .. 0;
      GPIOBEN        at 0 range 1 .. 1;
      GPIOCEN        at 0 range 2 .. 2;
      GPIODEN        at 0 range 3 .. 3;
      GPIOEEN        at 0 range 4 .. 4;
      GPIOFEN        at 0 range 5 .. 5;
      GPIOGEN        at 0 range 6 .. 6;
      GPIOHEN        at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      GPIOJEN        at 0 range 9 .. 9;
      GPIOKEN        at 0 range 10 .. 10;
      Reserved_11_18 at 0 range 11 .. 18;
      CRCEN          at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      BDMAEN         at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      ADC3EN         at 0 range 24 .. 24;
      HSEMEN         at 0 range 25 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      BKPRAMEN       at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   type C1_AHB4ENR_Register is new C1_AHB4ENR_Register_Value
     with Volatile_Full_Access;

   --  RCC APB3 Clock Register
   type C1_APB3ENR_Register_Value is record
      --  unspecified
      Reserved_0_2  : STM32H723.UInt3 := 16#0#;
      --  LTDC peripheral clock enable
      LTDCEN        : Boolean := False;
      --  unspecified
      Reserved_4_5  : STM32H723.UInt2 := 16#0#;
      --  WWDG1 Clock Enable
      WWDG1EN       : Boolean := False;
      --  unspecified
      Reserved_7_31 : STM32H723.UInt25 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for C1_APB3ENR_Register_Value use record
      Reserved_0_2  at 0 range 0 .. 2;
      LTDCEN        at 0 range 3 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      WWDG1EN       at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   type C1_APB3ENR_Register is new C1_APB3ENR_Register_Value
     with Volatile_Full_Access;

   --  RCC APB1 Clock Register
   type C1_APB1LENR_Register_Value is record
      --  TIM peripheral clock enable
      TIM2EN         : Boolean := False;
      --  TIM peripheral clock enable
      TIM3EN         : Boolean := False;
      --  TIM peripheral clock enable
      TIM4EN         : Boolean := False;
      --  TIM peripheral clock enable
      TIM5EN         : Boolean := False;
      --  TIM peripheral clock enable
      TIM6EN         : Boolean := False;
      --  TIM peripheral clock enable
      TIM7EN         : Boolean := False;
      --  TIM peripheral clock enable
      TIM12EN        : Boolean := False;
      --  TIM peripheral clock enable
      TIM13EN        : Boolean := False;
      --  TIM peripheral clock enable
      TIM14EN        : Boolean := False;
      --  LPTIM1 Peripheral Clocks Enable
      LPTIM1EN       : Boolean := False;
      --  unspecified
      Reserved_10_13 : STM32H723.UInt4 := 16#0#;
      --  SPI2 Peripheral Clocks Enable
      SPI2EN         : Boolean := False;
      --  SPI3 Peripheral Clocks Enable
      SPI3EN         : Boolean := False;
      --  SPDIFRX Peripheral Clocks Enable
      SPDIFRXEN      : Boolean := False;
      --  USART2 Peripheral Clocks Enable
      USART2EN       : Boolean := False;
      --  USART3 Peripheral Clocks Enable
      USART3EN       : Boolean := False;
      --  UART4 Peripheral Clocks Enable
      UART4EN        : Boolean := False;
      --  UART5 Peripheral Clocks Enable
      UART5EN        : Boolean := False;
      --  I2C1 Peripheral Clocks Enable
      I2C1EN         : Boolean := False;
      --  I2C2 Peripheral Clocks Enable
      I2C2EN         : Boolean := False;
      --  I2C3 Peripheral Clocks Enable
      I2C3EN         : Boolean := False;
      --  unspecified
      Reserved_24_24 : STM32H723.Bit := 16#0#;
      --  I2C5 Peripheral Clocks Enable
      I2C5EN         : Boolean := False;
      --  unspecified
      Reserved_26_26 : STM32H723.Bit := 16#0#;
      --  HDMI-CEC peripheral clock enable
      CECEN          : Boolean := False;
      --  unspecified
      Reserved_28_28 : STM32H723.Bit := 16#0#;
      --  DAC1 and 2 peripheral clock enable
      DAC12EN        : Boolean := False;
      --  UART7 Peripheral Clocks Enable
      UART7EN        : Boolean := False;
      --  UART8 Peripheral Clocks Enable
      UART8EN        : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for C1_APB1LENR_Register_Value use record
      TIM2EN         at 0 range 0 .. 0;
      TIM3EN         at 0 range 1 .. 1;
      TIM4EN         at 0 range 2 .. 2;
      TIM5EN         at 0 range 3 .. 3;
      TIM6EN         at 0 range 4 .. 4;
      TIM7EN         at 0 range 5 .. 5;
      TIM12EN        at 0 range 6 .. 6;
      TIM13EN        at 0 range 7 .. 7;
      TIM14EN        at 0 range 8 .. 8;
      LPTIM1EN       at 0 range 9 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      SPI2EN         at 0 range 14 .. 14;
      SPI3EN         at 0 range 15 .. 15;
      SPDIFRXEN      at 0 range 16 .. 16;
      USART2EN       at 0 range 17 .. 17;
      USART3EN       at 0 range 18 .. 18;
      UART4EN        at 0 range 19 .. 19;
      UART5EN        at 0 range 20 .. 20;
      I2C1EN         at 0 range 21 .. 21;
      I2C2EN         at 0 range 22 .. 22;
      I2C3EN         at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      I2C5EN         at 0 range 25 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      CECEN          at 0 range 27 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      DAC12EN        at 0 range 29 .. 29;
      UART7EN        at 0 range 30 .. 30;
      UART8EN        at 0 range 31 .. 31;
   end record;

   type C1_APB1LENR_Register is new C1_APB1LENR_Register_Value
     with Volatile_Full_Access;

   --  RCC APB1 Clock Register
   type C1_APB1HENR_Register_Value is record
      --  unspecified
      Reserved_0_0   : STM32H723.Bit := 16#0#;
      --  Clock Recovery System peripheral clock enable
      CRSEN          : Boolean := False;
      --  SWPMI Peripheral Clocks Enable
      SWPMIEN        : Boolean := False;
      --  unspecified
      Reserved_3_3   : STM32H723.Bit := 16#0#;
      --  OPAMP peripheral clock enable
      OPAMPEN        : Boolean := False;
      --  MDIOS peripheral clock enable
      MDIOSEN        : Boolean := False;
      --  unspecified
      Reserved_6_7   : STM32H723.UInt2 := 16#0#;
      --  FDCAN Peripheral Clocks Enable
      FDCANEN        : Boolean := False;
      --  unspecified
      Reserved_9_23  : STM32H723.UInt15 := 16#0#;
      --  TIM23 Peripheral Clocks Enable
      TIM23EN        : Boolean := False;
      --  TIM24 Peripheral Clocks Enable
      TIM24EN        : Boolean := False;
      --  unspecified
      Reserved_26_31 : STM32H723.UInt6 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for C1_APB1HENR_Register_Value use record
      Reserved_0_0   at 0 range 0 .. 0;
      CRSEN          at 0 range 1 .. 1;
      SWPMIEN        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      OPAMPEN        at 0 range 4 .. 4;
      MDIOSEN        at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      FDCANEN        at 0 range 8 .. 8;
      Reserved_9_23  at 0 range 9 .. 23;
      TIM23EN        at 0 range 24 .. 24;
      TIM24EN        at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   type C1_APB1HENR_Register is new C1_APB1HENR_Register_Value
     with Volatile_Full_Access;

   --  RCC APB2 Clock Register
   type C1_APB2ENR_Register_Value is record
      --  TIM1 peripheral clock enable
      TIM1EN         : Boolean := False;
      --  TIM8 peripheral clock enable
      TIM8EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : STM32H723.UInt2 := 16#0#;
      --  USART1 Peripheral Clocks Enable
      USART1EN       : Boolean := False;
      --  USART6 Peripheral Clocks Enable
      USART6EN       : Boolean := False;
      --  UART9 peripheral clocks enable Set and reset by software. The
      --  peripheral clocks of the UART9 are the kernel clock selected by
      --  USART16910SEL and provided to UCKL input, and the rcc_pclk2 bus
      --  interface clock.
      UART9EN        : Boolean := False;
      --  USART10 peripheral clocks enable Set and reset by software. The
      --  peripheral clocks of the USART10 are the kernel clock selected by
      --  USART16910SEL and provided to UCKL input, and the rcc_pclk2 bus
      --  interface clock.
      USART10EN      : Boolean := False;
      --  unspecified
      Reserved_8_11  : STM32H723.UInt4 := 16#0#;
      --  SPI1 Peripheral Clocks Enable
      SPI1EN         : Boolean := False;
      --  SPI4 Peripheral Clocks Enable
      SPI4EN         : Boolean := False;
      --  unspecified
      Reserved_14_15 : STM32H723.UInt2 := 16#0#;
      --  TIM15 peripheral clock enable Set and reset by software.
      TIM15EN        : Boolean := False;
      --  TIM16 peripheral clock enable
      TIM16EN        : Boolean := False;
      --  TIM17 peripheral clock enable
      TIM17EN        : Boolean := False;
      --  unspecified
      Reserved_19_19 : STM32H723.Bit := 16#0#;
      --  SPI5 Peripheral Clocks Enable
      SPI5EN         : Boolean := False;
      --  unspecified
      Reserved_21_21 : STM32H723.Bit := 16#0#;
      --  SAI1 Peripheral Clocks Enable
      SAI1EN         : Boolean := False;
      --  unspecified
      Reserved_23_29 : STM32H723.UInt7 := 16#0#;
      --  DFSDM1 peripheral clocks enable Set and reset by software. DFSDM1
      --  peripheral clocks are the kernel clocks selected by SAI1SEL and
      --  DFSDM1SEL and provided to Aclk and clk inputs respectively,
      DFSDM1EN       : Boolean := False;
      --  unspecified
      Reserved_31_31 : STM32H723.Bit := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for C1_APB2ENR_Register_Value use record
      TIM1EN         at 0 range 0 .. 0;
      TIM8EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      USART1EN       at 0 range 4 .. 4;
      USART6EN       at 0 range 5 .. 5;
      UART9EN        at 0 range 6 .. 6;
      USART10EN      at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      SPI1EN         at 0 range 12 .. 12;
      SPI4EN         at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      TIM15EN        at 0 range 16 .. 16;
      TIM16EN        at 0 range 17 .. 17;
      TIM17EN        at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      SPI5EN         at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      SAI1EN         at 0 range 22 .. 22;
      Reserved_23_29 at 0 range 23 .. 29;
      DFSDM1EN       at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type C1_APB2ENR_Register is new C1_APB2ENR_Register_Value
     with Volatile_Full_Access;

   --  RCC APB4 Clock Register
   type C1_APB4ENR_Register_Value is record
      --  unspecified
      Reserved_0_0   : STM32H723.Bit := 16#0#;
      --  SYSCFG peripheral clock enable
      SYSCFGEN       : Boolean := False;
      --  unspecified
      Reserved_2_2   : STM32H723.Bit := 16#0#;
      --  LPUART1 Peripheral Clocks Enable
      LPUART1EN      : Boolean := False;
      --  unspecified
      Reserved_4_4   : STM32H723.Bit := 16#0#;
      --  SPI6 Peripheral Clocks Enable
      SPI6EN         : Boolean := False;
      --  unspecified
      Reserved_6_6   : STM32H723.Bit := 16#0#;
      --  I2C4 Peripheral Clocks Enable
      I2C4EN         : Boolean := False;
      --  unspecified
      Reserved_8_8   : STM32H723.Bit := 16#0#;
      --  LPTIM2 Peripheral Clocks Enable
      LPTIM2EN       : Boolean := False;
      --  LPTIM3 Peripheral Clocks Enable
      LPTIM3EN       : Boolean := False;
      --  LPTIM4 Peripheral Clocks Enable
      LPTIM4EN       : Boolean := False;
      --  LPTIM5 Peripheral Clocks Enable
      LPTIM5EN       : Boolean := False;
      --  unspecified
      Reserved_13_13 : STM32H723.Bit := 16#0#;
      --  COMP1/2 peripheral clock enable
      COMP12EN       : Boolean := False;
      --  VREF peripheral clock enable
      VREFEN         : Boolean := False;
      --  RTC APB Clock Enable
      RTCAPBEN       : Boolean := False;
      --  unspecified
      Reserved_17_20 : STM32H723.UInt4 := 16#0#;
      --  SAI4 Peripheral Clocks Enable
      SAI4EN         : Boolean := False;
      --  unspecified
      Reserved_22_25 : STM32H723.UInt4 := 16#0#;
      --  Digital temperature sensor peripheral clock enable Set and reset by
      --  software.
      DTSEN          : Boolean := False;
      --  unspecified
      Reserved_27_31 : STM32H723.UInt5 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for C1_APB4ENR_Register_Value use record
      Reserved_0_0   at 0 range 0 .. 0;
      SYSCFGEN       at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      LPUART1EN      at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      SPI6EN         at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      I2C4EN         at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      LPTIM2EN       at 0 range 9 .. 9;
      LPTIM3EN       at 0 range 10 .. 10;
      LPTIM4EN       at 0 range 11 .. 11;
      LPTIM5EN       at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      COMP12EN       at 0 range 14 .. 14;
      VREFEN         at 0 range 15 .. 15;
      RTCAPBEN       at 0 range 16 .. 16;
      Reserved_17_20 at 0 range 17 .. 20;
      SAI4EN         at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      DTSEN          at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   type C1_APB4ENR_Register is new C1_APB4ENR_Register_Value
     with Volatile_Full_Access;

   --  RCC AHB3 Sleep Clock Register
   type C1_AHB3LPENR_Register_Value is record
      --  MDMA Clock Enable During CSleep Mode
      MDMALPEN       : Boolean := False;
      --  unspecified
      Reserved_1_3   : STM32H723.UInt3 := 16#0#;
      --  DMA2D Clock Enable During CSleep Mode
      DMA2DLPEN      : Boolean := False;
      --  unspecified
      Reserved_5_7   : STM32H723.UInt3 := 16#0#;
      --  Flash interface Clock Enable During CSleep Mode
      FLASHLPEN      : Boolean := False;
      --  unspecified
      Reserved_9_11  : STM32H723.UInt3 := 16#0#;
      --  FMC Peripheral Clocks Enable During CSleep Mode
      FMCLPEN        : Boolean := False;
      --  unspecified
      Reserved_13_13 : STM32H723.Bit := 16#0#;
      --  QUADSPI and QUADSPI Delay Clock Enable During CSleep Mode
      OCTO1LPEN      : Boolean := False;
      --  unspecified
      Reserved_15_15 : STM32H723.Bit := 16#0#;
      --  SDMMC1 and SDMMC1 Delay Clock Enable During CSleep Mode
      SDMMC1LPEN     : Boolean := False;
      --  unspecified
      Reserved_17_18 : STM32H723.UInt2 := 16#0#;
      --  OCTOSPI2 and OCTOSPI2 delay clock enable during CSleep mode Set and
      --  reset by software.
      OCTO2LPEN      : Boolean := False;
      --  unspecified
      Reserved_20_20 : STM32H723.Bit := 16#0#;
      --  OCTOSPIM block clock enable during CSleep mode Set and reset by
      --  software.
      IOMNGRLPEN     : Boolean := False;
      --  OTFD1 block clock enable during CSleep mode Set and reset by
      --  software.
      OTFD1LPEN      : Boolean := False;
      --  OTFD2 block clock enable during CSleep mode Set and reset by
      --  software.
      OTFD2LPEN      : Boolean := False;
      --  unspecified
      Reserved_24_27 : STM32H723.UInt4 := 16#0#;
      --  D1DTCM1 Block Clock Enable During CSleep mode
      DTCM1LPEN      : Boolean := False;
      --  D1 DTCM2 Block Clock Enable During CSleep mode
      DTCM2LPEN      : Boolean := False;
      --  D1ITCM Block Clock Enable During CSleep mode
      ITCMLPEN       : Boolean := False;
      --  AXISRAM Block Clock Enable During CSleep mode
      AXISRAMLPEN    : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for C1_AHB3LPENR_Register_Value use record
      MDMALPEN       at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      DMA2DLPEN      at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      FLASHLPEN      at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      FMCLPEN        at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      OCTO1LPEN      at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SDMMC1LPEN     at 0 range 16 .. 16;
      Reserved_17_18 at 0 range 17 .. 18;
      OCTO2LPEN      at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      IOMNGRLPEN     at 0 range 21 .. 21;
      OTFD1LPEN      at 0 range 22 .. 22;
      OTFD2LPEN      at 0 range 23 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      DTCM1LPEN      at 0 range 28 .. 28;
      DTCM2LPEN      at 0 range 29 .. 29;
      ITCMLPEN       at 0 range 30 .. 30;
      AXISRAMLPEN    at 0 range 31 .. 31;
   end record;

   type C1_AHB3LPENR_Register is new C1_AHB3LPENR_Register_Value
     with Volatile_Full_Access;

   --  RCC AHB1 Sleep Clock Register
   type C1_AHB1LPENR_Register_Value is record
      --  DMA1 Clock Enable During CSleep Mode
      DMA1LPEN          : Boolean := False;
      --  DMA2 Clock Enable During CSleep Mode
      DMA2LPEN          : Boolean := False;
      --  unspecified
      Reserved_2_4      : STM32H723.UInt3 := 16#0#;
      --  ADC1/2 Peripheral Clocks Enable During CSleep Mode
      ADC12LPEN         : Boolean := False;
      --  unspecified
      Reserved_6_14     : STM32H723.UInt9 := 16#0#;
      --  Ethernet MAC bus interface Clock Enable During CSleep Mode
      ETH1MACLPEN       : Boolean := False;
      --  Ethernet Transmission Clock Enable During CSleep Mode
      ETH1TXLPEN        : Boolean := False;
      --  Ethernet Reception Clock Enable During CSleep Mode
      ETH1RXLPEN        : Boolean := False;
      --  unspecified
      Reserved_18_24    : STM32H723.UInt7 := 16#0#;
      --  USB1OTG peripheral clock enable during CSleep mode
      USB1OTGHSLPEN     : Boolean := False;
      --  USB_PHY1 clock enable during CSleep mode
      USB1OTGHSULPILPEN : Boolean := False;
      --  unspecified
      Reserved_27_31    : STM32H723.UInt5 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for C1_AHB1LPENR_Register_Value use record
      DMA1LPEN          at 0 range 0 .. 0;
      DMA2LPEN          at 0 range 1 .. 1;
      Reserved_2_4      at 0 range 2 .. 4;
      ADC12LPEN         at 0 range 5 .. 5;
      Reserved_6_14     at 0 range 6 .. 14;
      ETH1MACLPEN       at 0 range 15 .. 15;
      ETH1TXLPEN        at 0 range 16 .. 16;
      ETH1RXLPEN        at 0 range 17 .. 17;
      Reserved_18_24    at 0 range 18 .. 24;
      USB1OTGHSLPEN     at 0 range 25 .. 25;
      USB1OTGHSULPILPEN at 0 range 26 .. 26;
      Reserved_27_31    at 0 range 27 .. 31;
   end record;

   type C1_AHB1LPENR_Register is new C1_AHB1LPENR_Register_Value
     with Volatile_Full_Access;

   --  RCC AHB2 Sleep Clock Register
   type C1_AHB2LPENR_Register_Value is record
      --  DCMI_PSSILPEN
      DCMI_PSSILPEN  : Boolean := True;
      --  unspecified
      Reserved_1_3   : STM32H723.UInt3 := 16#0#;
      --  CRYPT peripheral clock enable during CSleep mode
      CRYPTLPEN      : Boolean := True;
      --  HASH peripheral clock enable during CSleep mode
      HASHLPEN       : Boolean := True;
      --  RNG peripheral clock enable during CSleep mode
      RNGLPEN        : Boolean := True;
      --  unspecified
      Reserved_7_8   : STM32H723.UInt2 := 16#0#;
      --  SDMMC2 and SDMMC2 Delay Clock Enable During CSleep Mode
      SDMMC2LPEN     : Boolean := True;
      --  unspecified
      Reserved_10_15 : STM32H723.UInt6 := 16#0#;
      --  FMAC peripheral clock enable during CSleep mode
      FMACLPEN       : Boolean := True;
      --  CORDIC peripheral clock enable during CSleep mode
      CORDICLPEN     : Boolean := True;
      --  unspecified
      Reserved_18_28 : STM32H723.UInt11 := 16#0#;
      --  SRAM1 Clock Enable During CSleep Mode
      SRAM1LPEN      : Boolean := True;
      --  SRAM2 Clock Enable During CSleep Mode
      SRAM2LPEN      : Boolean := True;
      --  unspecified
      Reserved_31_31 : STM32H723.Bit := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for C1_AHB2LPENR_Register_Value use record
      DCMI_PSSILPEN  at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      CRYPTLPEN      at 0 range 4 .. 4;
      HASHLPEN       at 0 range 5 .. 5;
      RNGLPEN        at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      SDMMC2LPEN     at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      FMACLPEN       at 0 range 16 .. 16;
      CORDICLPEN     at 0 range 17 .. 17;
      Reserved_18_28 at 0 range 18 .. 28;
      SRAM1LPEN      at 0 range 29 .. 29;
      SRAM2LPEN      at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type C1_AHB2LPENR_Register is new C1_AHB2LPENR_Register_Value
     with Volatile_Full_Access;

   --  RCC AHB4 Sleep Clock Register
   type C1_AHB4LPENR_Register_Value is record
      --  GPIO peripheral clock enable during CSleep mode
      GPIOALPEN      : Boolean := False;
      --  GPIO peripheral clock enable during CSleep mode
      GPIOBLPEN      : Boolean := False;
      --  GPIO peripheral clock enable during CSleep mode
      GPIOCLPEN      : Boolean := False;
      --  GPIO peripheral clock enable during CSleep mode
      GPIODLPEN      : Boolean := False;
      --  GPIO peripheral clock enable during CSleep mode
      GPIOELPEN      : Boolean := False;
      --  GPIO peripheral clock enable during CSleep mode
      GPIOFLPEN      : Boolean := False;
      --  GPIO peripheral clock enable during CSleep mode
      GPIOGLPEN      : Boolean := False;
      --  GPIO peripheral clock enable during CSleep mode
      GPIOHLPEN      : Boolean := False;
      --  unspecified
      Reserved_8_8   : STM32H723.Bit := 16#0#;
      --  GPIO peripheral clock enable during CSleep mode
      GPIOJLPEN      : Boolean := False;
      --  GPIO peripheral clock enable during CSleep mode
      GPIOKLPEN      : Boolean := False;
      --  unspecified
      Reserved_11_18 : STM32H723.Byte := 16#0#;
      --  CRC peripheral clock enable during CSleep mode
      CRCLPEN        : Boolean := False;
      --  unspecified
      Reserved_20_20 : STM32H723.Bit := 16#0#;
      --  BDMA Clock Enable During CSleep Mode
      BDMALPEN       : Boolean := False;
      --  unspecified
      Reserved_22_23 : STM32H723.UInt2 := 16#0#;
      --  ADC3 Peripheral Clocks Enable During CSleep Mode
      ADC3LPEN       : Boolean := False;
      --  unspecified
      Reserved_25_27 : STM32H723.UInt3 := 16#0#;
      --  Backup RAM Clock Enable During CSleep Mode
      BKPRAMLPEN     : Boolean := False;
      --  SRAM4 Clock Enable During CSleep Mode
      SRAM4LPEN      : Boolean := False;
      --  unspecified
      Reserved_30_31 : STM32H723.UInt2 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for C1_AHB4LPENR_Register_Value use record
      GPIOALPEN      at 0 range 0 .. 0;
      GPIOBLPEN      at 0 range 1 .. 1;
      GPIOCLPEN      at 0 range 2 .. 2;
      GPIODLPEN      at 0 range 3 .. 3;
      GPIOELPEN      at 0 range 4 .. 4;
      GPIOFLPEN      at 0 range 5 .. 5;
      GPIOGLPEN      at 0 range 6 .. 6;
      GPIOHLPEN      at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      GPIOJLPEN      at 0 range 9 .. 9;
      GPIOKLPEN      at 0 range 10 .. 10;
      Reserved_11_18 at 0 range 11 .. 18;
      CRCLPEN        at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      BDMALPEN       at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      ADC3LPEN       at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      BKPRAMLPEN     at 0 range 28 .. 28;
      SRAM4LPEN      at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   type C1_AHB4LPENR_Register is new C1_AHB4LPENR_Register_Value
     with Volatile_Full_Access;

   --  RCC APB3 Sleep Clock Register
   type C1_APB3LPENR_Register_Value is record
      --  unspecified
      Reserved_0_2  : STM32H723.UInt3 := 16#0#;
      --  LTDC peripheral clock enable during CSleep mode
      LTDCLPEN      : Boolean := False;
      --  unspecified
      Reserved_4_5  : STM32H723.UInt2 := 16#0#;
      --  WWDG1 Clock Enable During CSleep Mode
      WWDG1LPEN     : Boolean := False;
      --  unspecified
      Reserved_7_31 : STM32H723.UInt25 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for C1_APB3LPENR_Register_Value use record
      Reserved_0_2  at 0 range 0 .. 2;
      LTDCLPEN      at 0 range 3 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      WWDG1LPEN     at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   type C1_APB3LPENR_Register is new C1_APB3LPENR_Register_Value
     with Volatile_Full_Access;

   --  RCC APB1 Low Sleep Clock Register
   type C1_APB1LLPENR_Register_Value is record
      --  TIM2 peripheral clock enable during CSleep mode
      TIM2LPEN       : Boolean := False;
      --  TIM3 peripheral clock enable during CSleep mode
      TIM3LPEN       : Boolean := False;
      --  TIM4 peripheral clock enable during CSleep mode
      TIM4LPEN       : Boolean := False;
      --  TIM5 peripheral clock enable during CSleep mode
      TIM5LPEN       : Boolean := False;
      --  TIM6 peripheral clock enable during CSleep mode
      TIM6LPEN       : Boolean := False;
      --  TIM7 peripheral clock enable during CSleep mode
      TIM7LPEN       : Boolean := False;
      --  TIM12 peripheral clock enable during CSleep mode
      TIM12LPEN      : Boolean := False;
      --  TIM13 peripheral clock enable during CSleep mode
      TIM13LPEN      : Boolean := False;
      --  TIM14 peripheral clock enable during CSleep mode
      TIM14LPEN      : Boolean := False;
      --  LPTIM1 Peripheral Clocks Enable During CSleep Mode
      LPTIM1LPEN     : Boolean := False;
      --  unspecified
      Reserved_10_13 : STM32H723.UInt4 := 16#0#;
      --  SPI2 Peripheral Clocks Enable During CSleep Mode
      SPI2LPEN       : Boolean := False;
      --  SPI3 Peripheral Clocks Enable During CSleep Mode
      SPI3LPEN       : Boolean := False;
      --  SPDIFRX Peripheral Clocks Enable During CSleep Mode
      SPDIFRXLPEN    : Boolean := False;
      --  USART2 Peripheral Clocks Enable During CSleep Mode
      USART2LPEN     : Boolean := False;
      --  USART3 Peripheral Clocks Enable During CSleep Mode
      USART3LPEN     : Boolean := False;
      --  UART4 Peripheral Clocks Enable During CSleep Mode
      UART4LPEN      : Boolean := False;
      --  UART5 Peripheral Clocks Enable During CSleep Mode
      UART5LPEN      : Boolean := False;
      --  I2C1 Peripheral Clocks Enable During CSleep Mode
      I2C1LPEN       : Boolean := False;
      --  I2C2 Peripheral Clocks Enable During CSleep Mode
      I2C2LPEN       : Boolean := False;
      --  I2C3 Peripheral Clocks Enable During CSleep Mode
      I2C3LPEN       : Boolean := False;
      --  unspecified
      Reserved_24_24 : STM32H723.Bit := 16#0#;
      --  I2C5 Peripheral Clocks Enable During CSleep Mode
      I2C5LPEN       : Boolean := False;
      --  unspecified
      Reserved_26_26 : STM32H723.Bit := 16#0#;
      --  CEC Peripheral Clocks Enable During CSleep Mode
      CECLPEN        : Boolean := False;
      --  unspecified
      Reserved_28_28 : STM32H723.Bit := 16#0#;
      --  DAC1/2 peripheral clock enable during CSleep mode
      DAC12LPEN      : Boolean := False;
      --  USART7 Peripheral Clocks Enable During CSleep Mode
      USART7LPEN     : Boolean := False;
      --  USART8 Peripheral Clocks Enable During CSleep Mode
      USART8LPEN     : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for C1_APB1LLPENR_Register_Value use record
      TIM2LPEN       at 0 range 0 .. 0;
      TIM3LPEN       at 0 range 1 .. 1;
      TIM4LPEN       at 0 range 2 .. 2;
      TIM5LPEN       at 0 range 3 .. 3;
      TIM6LPEN       at 0 range 4 .. 4;
      TIM7LPEN       at 0 range 5 .. 5;
      TIM12LPEN      at 0 range 6 .. 6;
      TIM13LPEN      at 0 range 7 .. 7;
      TIM14LPEN      at 0 range 8 .. 8;
      LPTIM1LPEN     at 0 range 9 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      SPI2LPEN       at 0 range 14 .. 14;
      SPI3LPEN       at 0 range 15 .. 15;
      SPDIFRXLPEN    at 0 range 16 .. 16;
      USART2LPEN     at 0 range 17 .. 17;
      USART3LPEN     at 0 range 18 .. 18;
      UART4LPEN      at 0 range 19 .. 19;
      UART5LPEN      at 0 range 20 .. 20;
      I2C1LPEN       at 0 range 21 .. 21;
      I2C2LPEN       at 0 range 22 .. 22;
      I2C3LPEN       at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      I2C5LPEN       at 0 range 25 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      CECLPEN        at 0 range 27 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      DAC12LPEN      at 0 range 29 .. 29;
      USART7LPEN     at 0 range 30 .. 30;
      USART8LPEN     at 0 range 31 .. 31;
   end record;

   type C1_APB1LLPENR_Register is new C1_APB1LLPENR_Register_Value
     with Volatile_Full_Access;

   --  RCC APB1 High Sleep Clock Register
   type C1_APB1HLPENR_Register_Value is record
      --  unspecified
      Reserved_0_0   : STM32H723.Bit := 16#0#;
      --  Clock Recovery System peripheral clock enable during CSleep mode
      CRSLPEN        : Boolean := False;
      --  SWPMI Peripheral Clocks Enable During CSleep Mode
      SWPMILPEN      : Boolean := False;
      --  unspecified
      Reserved_3_3   : STM32H723.Bit := 16#0#;
      --  OPAMP peripheral clock enable during CSleep mode
      OPAMPLPEN      : Boolean := False;
      --  MDIOS peripheral clock enable during CSleep mode
      MDIOSLPEN      : Boolean := False;
      --  unspecified
      Reserved_6_7   : STM32H723.UInt2 := 16#0#;
      --  FDCAN Peripheral Clocks Enable During CSleep Mode
      FDCANLPEN      : Boolean := False;
      --  unspecified
      Reserved_9_23  : STM32H723.UInt15 := 16#0#;
      --  TIM23 Peripheral Clocks Enable During CSleep Mode
      TIM23LPEN      : Boolean := False;
      --  TIM24 Peripheral Clocks Enable During CSleep Mode
      TIM24LPEN      : Boolean := False;
      --  unspecified
      Reserved_26_31 : STM32H723.UInt6 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for C1_APB1HLPENR_Register_Value use record
      Reserved_0_0   at 0 range 0 .. 0;
      CRSLPEN        at 0 range 1 .. 1;
      SWPMILPEN      at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      OPAMPLPEN      at 0 range 4 .. 4;
      MDIOSLPEN      at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      FDCANLPEN      at 0 range 8 .. 8;
      Reserved_9_23  at 0 range 9 .. 23;
      TIM23LPEN      at 0 range 24 .. 24;
      TIM24LPEN      at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   type C1_APB1HLPENR_Register is new C1_APB1HLPENR_Register_Value
     with Volatile_Full_Access;

   --  RCC APB2 Sleep Clock Register
   type C1_APB2LPENR_Register_Value is record
      --  TIM1 peripheral clock enable during CSleep mode
      TIM1LPEN       : Boolean := False;
      --  TIM8 peripheral clock enable during CSleep mode
      TIM8LPEN       : Boolean := False;
      --  unspecified
      Reserved_2_3   : STM32H723.UInt2 := 16#0#;
      --  USART1 Peripheral Clocks Enable During CSleep Mode
      USART1LPEN     : Boolean := False;
      --  USART6 Peripheral Clocks Enable During CSleep Mode
      USART6LPEN     : Boolean := False;
      --  UART9 peripheral clock enable during CSleep mode Set and reset by
      --  software. The peripheral clocks of the UART9 are the kernel clock
      --  selected by USART16910SEL and provided to usart_ker_ck input, and the
      --  rcc_pclk2 bus interface clock.
      UART9LPEN      : Boolean := False;
      --  USART10 peripheral clock enable during CSleep mode Set and reset by
      --  software. The peripheral clocks of the USART10 are the kernel clock
      --  selected by USART16910SEL and provided to usart_ker_ck input, and the
      --  rcc_pclk2 bus interface clock.
      USART10LPEN    : Boolean := False;
      --  unspecified
      Reserved_8_11  : STM32H723.UInt4 := 16#0#;
      --  SPI1 Peripheral Clocks Enable During CSleep Mode
      SPI1LPEN       : Boolean := False;
      --  SPI4 Peripheral Clocks Enable During CSleep Mode
      SPI4LPEN       : Boolean := False;
      --  unspecified
      Reserved_14_15 : STM32H723.UInt2 := 16#0#;
      --  TIM15 peripheral clock enable during CSleep mode
      TIM15LPEN      : Boolean := False;
      --  TIM16 peripheral clock enable during CSleep mode
      TIM16LPEN      : Boolean := False;
      --  TIM17 peripheral clock enable during CSleep mode
      TIM17LPEN      : Boolean := False;
      --  unspecified
      Reserved_19_19 : STM32H723.Bit := 16#0#;
      --  SPI5 Peripheral Clocks Enable During CSleep Mode
      SPI5LPEN       : Boolean := False;
      --  unspecified
      Reserved_21_21 : STM32H723.Bit := 16#0#;
      --  SAI1 Peripheral Clocks Enable During CSleep Mode
      SAI1LPEN       : Boolean := False;
      --  unspecified
      Reserved_23_29 : STM32H723.UInt7 := 16#0#;
      --  DFSDM1 peripheral clocks enable during CSleep mode Set and reset by
      --  software. DFSDM1 peripheral clocks are the kernel clocks selected by
      --  SAI1SEL and DFSDM1SEL and provided to Aclk and clk inputs
      --  respectively, and the rcc_pclk2 bus interface clock.
      DFSDM1LPEN     : Boolean := False;
      --  unspecified
      Reserved_31_31 : STM32H723.Bit := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for C1_APB2LPENR_Register_Value use record
      TIM1LPEN       at 0 range 0 .. 0;
      TIM8LPEN       at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      USART1LPEN     at 0 range 4 .. 4;
      USART6LPEN     at 0 range 5 .. 5;
      UART9LPEN      at 0 range 6 .. 6;
      USART10LPEN    at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      SPI1LPEN       at 0 range 12 .. 12;
      SPI4LPEN       at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      TIM15LPEN      at 0 range 16 .. 16;
      TIM16LPEN      at 0 range 17 .. 17;
      TIM17LPEN      at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      SPI5LPEN       at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      SAI1LPEN       at 0 range 22 .. 22;
      Reserved_23_29 at 0 range 23 .. 29;
      DFSDM1LPEN     at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type C1_APB2LPENR_Register is new C1_APB2LPENR_Register_Value
     with Volatile_Full_Access;

   --  RCC APB4 Sleep Clock Register
   type C1_APB4LPENR_Register_Value is record
      --  unspecified
      Reserved_0_0   : STM32H723.Bit := 16#0#;
      --  SYSCFG peripheral clock enable during CSleep mode
      SYSCFGLPEN     : Boolean := False;
      --  unspecified
      Reserved_2_2   : STM32H723.Bit := 16#0#;
      --  LPUART1 Peripheral Clocks Enable During CSleep Mode
      LPUART1LPEN    : Boolean := False;
      --  unspecified
      Reserved_4_4   : STM32H723.Bit := 16#0#;
      --  SPI6 Peripheral Clocks Enable During CSleep Mode
      SPI6LPEN       : Boolean := False;
      --  unspecified
      Reserved_6_6   : STM32H723.Bit := 16#0#;
      --  I2C4 Peripheral Clocks Enable During CSleep Mode
      I2C4LPEN       : Boolean := False;
      --  unspecified
      Reserved_8_8   : STM32H723.Bit := 16#0#;
      --  LPTIM2 Peripheral Clocks Enable During CSleep Mode
      LPTIM2LPEN     : Boolean := False;
      --  LPTIM3 Peripheral Clocks Enable During CSleep Mode
      LPTIM3LPEN     : Boolean := False;
      --  LPTIM4 Peripheral Clocks Enable During CSleep Mode
      LPTIM4LPEN     : Boolean := False;
      --  LPTIM5 Peripheral Clocks Enable During CSleep Mode
      LPTIM5LPEN     : Boolean := False;
      --  unspecified
      Reserved_13_13 : STM32H723.Bit := 16#0#;
      --  COMP1/2 peripheral clock enable during CSleep mode
      COMP12LPEN     : Boolean := False;
      --  VREF peripheral clock enable during CSleep mode
      VREFLPEN       : Boolean := False;
      --  RTC APB Clock Enable During CSleep Mode
      RTCAPBLPEN     : Boolean := False;
      --  unspecified
      Reserved_17_20 : STM32H723.UInt4 := 16#0#;
      --  SAI4 Peripheral Clocks Enable During CSleep Mode
      SAI4LPEN       : Boolean := False;
      --  unspecified
      Reserved_22_25 : STM32H723.UInt4 := 16#0#;
      --  Digital temperature sensor peripheral clock enable during CSleep mode
      DTSLPEN        : Boolean := False;
      --  unspecified
      Reserved_27_31 : STM32H723.UInt5 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for C1_APB4LPENR_Register_Value use record
      Reserved_0_0   at 0 range 0 .. 0;
      SYSCFGLPEN     at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      LPUART1LPEN    at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      SPI6LPEN       at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      I2C4LPEN       at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      LPTIM2LPEN     at 0 range 9 .. 9;
      LPTIM3LPEN     at 0 range 10 .. 10;
      LPTIM4LPEN     at 0 range 11 .. 11;
      LPTIM5LPEN     at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      COMP12LPEN     at 0 range 14 .. 14;
      VREFLPEN       at 0 range 15 .. 15;
      RTCAPBLPEN     at 0 range 16 .. 16;
      Reserved_17_20 at 0 range 17 .. 20;
      SAI4LPEN       at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      DTSLPEN        at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   type C1_APB4LPENR_Register is new C1_APB4LPENR_Register_Value
     with Volatile_Full_Access;

   -----------------
   -- Peripherals --
   -----------------

   --  Reset and clock control
   type RCC_Peripheral is record
      --  clock control register
      CR            : aliased CR_Register;
      --  RCC HSI calibration register
      HSICFGR       : aliased HSICFGR_Register;
      --  RCC clock recovery RC register
      CRRCR         : aliased CRRCR_Register;
      --  RCC CSI calibration register
      CSICFGR       : aliased CSICFGR_Register;
      --  RCC Clock Configuration Register
      CFGR          : aliased CFGR_Register;
      --  RCC Domain 1 Clock Configuration Register
      D1CFGR        : aliased D1CFGR_Register;
      --  RCC Domain 2 Clock Configuration Register
      D2CFGR        : aliased D2CFGR_Register;
      --  RCC Domain 3 Clock Configuration Register
      D3CFGR        : aliased D3CFGR_Register;
      --  RCC PLLs Clock Source Selection Register
      PLLCKSELR     : aliased PLLCKSELR_Register;
      --  RCC PLLs Configuration Register
      PLLCFGR       : aliased PLLCFGR_Register;
      --  RCC PLL1 Dividers Configuration Register
      PLL1DIVR      : aliased PLL1DIVR_Register;
      --  RCC PLL1 Fractional Divider Register
      PLL1FRACR     : aliased PLL1FRACR_Register;
      --  RCC PLL2 Dividers Configuration Register
      PLL2DIVR      : aliased PLL2DIVR_Register;
      --  RCC PLL2 Fractional Divider Register
      PLL2FRACR     : aliased PLL2FRACR_Register;
      --  RCC PLL3 Dividers Configuration Register
      PLL3DIVR      : aliased PLL3DIVR_Register;
      --  RCC PLL3 Fractional Divider Register
      PLL3FRACR     : aliased PLL3FRACR_Register;
      --  RCC Domain 1 Kernel Clock Configuration Register
      D1CCIPR       : aliased D1CCIPR_Register;
      --  RCC Domain 2 Kernel Clock Configuration Register
      D2CCIP1R      : aliased D2CCIP1R_Register;
      --  RCC Domain 2 Kernel Clock Configuration Register
      D2CCIP2R      : aliased D2CCIP2R_Register;
      --  RCC Domain 3 Kernel Clock Configuration Register
      D3CCIPR       : aliased D3CCIPR_Register;
      --  RCC Clock Source Interrupt Enable Register
      CIER          : aliased CIER_Register;
      --  RCC Clock Source Interrupt Flag Register
      CIFR          : aliased CIFR_Register;
      --  RCC Clock Source Interrupt Clear Register
      CICR          : aliased CICR_Register;
      --  RCC Backup Domain Control Register
      BDCR          : aliased BDCR_Register;
      --  RCC Clock Control and Status Register
      CSR           : aliased CSR_Register;
      --  RCC AHB3 Reset Register
      AHB3RSTR      : aliased AHB3RSTR_Register;
      --  RCC AHB1 Peripheral Reset Register
      AHB1RSTR      : aliased AHB1RSTR_Register;
      --  RCC AHB2 Peripheral Reset Register
      AHB2RSTR      : aliased AHB2RSTR_Register;
      --  RCC AHB4 Peripheral Reset Register
      AHB4RSTR      : aliased AHB4RSTR_Register;
      --  RCC APB3 Peripheral Reset Register
      APB3RSTR      : aliased APB3RSTR_Register;
      --  RCC APB1 Peripheral Reset Register
      APB1LRSTR     : aliased APB1LRSTR_Register;
      --  RCC APB1 Peripheral Reset Register
      APB1HRSTR     : aliased APB1HRSTR_Register;
      --  RCC APB2 Peripheral Reset Register
      APB2RSTR      : aliased APB2RSTR_Register;
      --  RCC APB4 Peripheral Reset Register
      APB4RSTR      : aliased APB4RSTR_Register;
      --  RCC Global Control Register
      GCR           : aliased GCR_Register;
      --  RCC D3 Autonomous mode Register
      D3AMR         : aliased D3AMR_Register;
      --  RCC Reset Status Register
      RSR           : aliased RSR_Register;
      --  RCC AHB3 Clock Register
      AHB3ENR       : aliased AHB3ENR_Register;
      --  RCC AHB1 Clock Register
      AHB1ENR       : aliased AHB1ENR_Register;
      --  RCC AHB2 Clock Register
      AHB2ENR       : aliased AHB2ENR_Register;
      --  RCC AHB4 Clock Register
      AHB4ENR       : aliased AHB4ENR_Register;
      --  RCC APB3 Clock Register
      APB3ENR       : aliased APB3ENR_Register;
      --  RCC APB1 Clock Register
      APB1LENR      : aliased APB1LENR_Register;
      --  RCC APB1 Clock Register
      APB1HENR      : aliased APB1HENR_Register;
      --  RCC APB2 Clock Register
      APB2ENR       : aliased APB2ENR_Register;
      --  RCC APB4 Clock Register
      APB4ENR       : aliased APB4ENR_Register;
      --  RCC AHB3 Sleep Clock Register
      AHB3LPENR     : aliased AHB3LPENR_Register;
      --  RCC AHB1 Sleep Clock Register
      AHB1LPENR     : aliased AHB1LPENR_Register;
      --  RCC AHB2 Sleep Clock Register
      AHB2LPENR     : aliased AHB2LPENR_Register;
      --  RCC AHB4 Sleep Clock Register
      AHB4LPENR     : aliased AHB4LPENR_Register;
      --  RCC APB3 Sleep Clock Register
      APB3LPENR     : aliased APB3LPENR_Register;
      --  RCC APB1 Low Sleep Clock Register
      APB1LLPENR    : aliased APB1LLPENR_Register;
      --  RCC APB1 High Sleep Clock Register
      APB1HLPENR    : aliased APB1HLPENR_Register;
      --  RCC APB2 Sleep Clock Register
      APB2LPENR     : aliased APB2LPENR_Register;
      --  RCC APB4 Sleep Clock Register
      APB4LPENR     : aliased APB4LPENR_Register;
      --  RCC Reset Status Register
      C1_RSR        : aliased C1_RSR_Register;
      --  RCC AHB3 Clock Register
      C1_AHB3ENR    : aliased C1_AHB3ENR_Register;
      --  RCC AHB1 Clock Register
      C1_AHB1ENR    : aliased C1_AHB1ENR_Register;
      --  RCC AHB2 Clock Register
      C1_AHB2ENR    : aliased C1_AHB2ENR_Register;
      --  RCC AHB4 Clock Register
      C1_AHB4ENR    : aliased C1_AHB4ENR_Register;
      --  RCC APB3 Clock Register
      C1_APB3ENR    : aliased C1_APB3ENR_Register;
      --  RCC APB1 Clock Register
      C1_APB1LENR   : aliased C1_APB1LENR_Register;
      --  RCC APB1 Clock Register
      C1_APB1HENR   : aliased C1_APB1HENR_Register;
      --  RCC APB2 Clock Register
      C1_APB2ENR    : aliased C1_APB2ENR_Register;
      --  RCC APB4 Clock Register
      C1_APB4ENR    : aliased C1_APB4ENR_Register;
      --  RCC AHB3 Sleep Clock Register
      C1_AHB3LPENR  : aliased C1_AHB3LPENR_Register;
      --  RCC AHB1 Sleep Clock Register
      C1_AHB1LPENR  : aliased C1_AHB1LPENR_Register;
      --  RCC AHB2 Sleep Clock Register
      C1_AHB2LPENR  : aliased C1_AHB2LPENR_Register;
      --  RCC AHB4 Sleep Clock Register
      C1_AHB4LPENR  : aliased C1_AHB4LPENR_Register;
      --  RCC APB3 Sleep Clock Register
      C1_APB3LPENR  : aliased C1_APB3LPENR_Register;
      --  RCC APB1 Low Sleep Clock Register
      C1_APB1LLPENR : aliased C1_APB1LLPENR_Register;
      --  RCC APB1 High Sleep Clock Register
      C1_APB1HLPENR : aliased C1_APB1HLPENR_Register;
      --  RCC APB2 Sleep Clock Register
      C1_APB2LPENR  : aliased C1_APB2LPENR_Register;
      --  RCC APB4 Sleep Clock Register
      C1_APB4LPENR  : aliased C1_APB4LPENR_Register;
   end record
     with Volatile;

   for RCC_Peripheral use record
      CR            at 16#0# range 0 .. 31;
      HSICFGR       at 16#4# range 0 .. 31;
      CRRCR         at 16#8# range 0 .. 31;
      CSICFGR       at 16#C# range 0 .. 31;
      CFGR          at 16#10# range 0 .. 31;
      D1CFGR        at 16#18# range 0 .. 31;
      D2CFGR        at 16#1C# range 0 .. 31;
      D3CFGR        at 16#20# range 0 .. 31;
      PLLCKSELR     at 16#28# range 0 .. 31;
      PLLCFGR       at 16#2C# range 0 .. 31;
      PLL1DIVR      at 16#30# range 0 .. 31;
      PLL1FRACR     at 16#34# range 0 .. 31;
      PLL2DIVR      at 16#38# range 0 .. 31;
      PLL2FRACR     at 16#3C# range 0 .. 31;
      PLL3DIVR      at 16#40# range 0 .. 31;
      PLL3FRACR     at 16#44# range 0 .. 31;
      D1CCIPR       at 16#4C# range 0 .. 31;
      D2CCIP1R      at 16#50# range 0 .. 31;
      D2CCIP2R      at 16#54# range 0 .. 31;
      D3CCIPR       at 16#58# range 0 .. 31;
      CIER          at 16#60# range 0 .. 31;
      CIFR          at 16#64# range 0 .. 31;
      CICR          at 16#68# range 0 .. 31;
      BDCR          at 16#70# range 0 .. 31;
      CSR           at 16#74# range 0 .. 31;
      AHB3RSTR      at 16#7C# range 0 .. 31;
      AHB1RSTR      at 16#80# range 0 .. 31;
      AHB2RSTR      at 16#84# range 0 .. 31;
      AHB4RSTR      at 16#88# range 0 .. 31;
      APB3RSTR      at 16#8C# range 0 .. 31;
      APB1LRSTR     at 16#90# range 0 .. 31;
      APB1HRSTR     at 16#94# range 0 .. 31;
      APB2RSTR      at 16#98# range 0 .. 31;
      APB4RSTR      at 16#9C# range 0 .. 31;
      GCR           at 16#A0# range 0 .. 31;
      D3AMR         at 16#A8# range 0 .. 31;
      RSR           at 16#D0# range 0 .. 31;
      AHB3ENR       at 16#D4# range 0 .. 31;
      AHB1ENR       at 16#D8# range 0 .. 31;
      AHB2ENR       at 16#DC# range 0 .. 31;
      AHB4ENR       at 16#E0# range 0 .. 31;
      APB3ENR       at 16#E4# range 0 .. 31;
      APB1LENR      at 16#E8# range 0 .. 31;
      APB1HENR      at 16#EC# range 0 .. 31;
      APB2ENR       at 16#F0# range 0 .. 31;
      APB4ENR       at 16#F4# range 0 .. 31;
      AHB3LPENR     at 16#FC# range 0 .. 31;
      AHB1LPENR     at 16#100# range 0 .. 31;
      AHB2LPENR     at 16#104# range 0 .. 31;
      AHB4LPENR     at 16#108# range 0 .. 31;
      APB3LPENR     at 16#10C# range 0 .. 31;
      APB1LLPENR    at 16#110# range 0 .. 31;
      APB1HLPENR    at 16#114# range 0 .. 31;
      APB2LPENR     at 16#118# range 0 .. 31;
      APB4LPENR     at 16#11C# range 0 .. 31;
      C1_RSR        at 16#130# range 0 .. 31;
      C1_AHB3ENR    at 16#134# range 0 .. 31;
      C1_AHB1ENR    at 16#138# range 0 .. 31;
      C1_AHB2ENR    at 16#13C# range 0 .. 31;
      C1_AHB4ENR    at 16#140# range 0 .. 31;
      C1_APB3ENR    at 16#144# range 0 .. 31;
      C1_APB1LENR   at 16#148# range 0 .. 31;
      C1_APB1HENR   at 16#14C# range 0 .. 31;
      C1_APB2ENR    at 16#150# range 0 .. 31;
      C1_APB4ENR    at 16#154# range 0 .. 31;
      C1_AHB3LPENR  at 16#15C# range 0 .. 31;
      C1_AHB1LPENR  at 16#160# range 0 .. 31;
      C1_AHB2LPENR  at 16#164# range 0 .. 31;
      C1_AHB4LPENR  at 16#168# range 0 .. 31;
      C1_APB3LPENR  at 16#16C# range 0 .. 31;
      C1_APB1LLPENR at 16#170# range 0 .. 31;
      C1_APB1HLPENR at 16#174# range 0 .. 31;
      C1_APB2LPENR  at 16#178# range 0 .. 31;
      C1_APB4LPENR  at 16#17C# range 0 .. 31;
   end record;

   --  Reset and clock control
   RCC_Periph : aliased RCC_Peripheral
     with Import, Address => RCC_Base;

end STM32H723.RCC;
