--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  SAM3X8E

pragma Restrictions (No_Elaboration_Code);

private with System;

with System_CM3;

package System_SAM3X8E is

   pragma Elaborate_Body;

   subtype SAM3X8E_Interrupt_Event_Identifier is
     System_CM3.Interrupt_Event_Identifier range 0 .. 44;

private

   procedure Dummy_Interrupt_Handler
     with Export, Convention => C, External_Name => "Dummy_Interrupt_Handler";

   procedure SUPC_Handler is null
     with Export, Convention => C, External_Name => "SUPC_Handler";
   pragma Weak_External (SUPC_Handler);
   pragma Linker_Alias (SUPC_Handler, "Dummy_Interrupt_Handler");

   procedure RSTC_Handler is null
     with Export, Convention => C, External_Name => "RSTC_Handler";
   pragma Weak_External (RSTC_Handler);
   pragma Linker_Alias (RSTC_Handler, "Dummy_Interrupt_Handler");

   procedure RTC_Handler is null
     with Export, Convention => C, External_Name => "RTC_Handler";
   pragma Weak_External (RTC_Handler);
   pragma Linker_Alias (RTC_Handler, "Dummy_Interrupt_Handler");

   procedure RTT_Handler is null
     with Export, Convention => C, External_Name => "RTT_Handler";
   pragma Weak_External (RTT_Handler);
   pragma Linker_Alias (RTT_Handler, "Dummy_Interrupt_Handler");

   procedure WDT_Handler is null
     with Export, Convention => C, External_Name => "WDT_Handler";
   pragma Weak_External (WDT_Handler);
   pragma Linker_Alias (WDT_Handler, "Dummy_Interrupt_Handler");

   procedure PMC_Handler is null
     with Export, Convention => C, External_Name => "PMC_Handler";
   pragma Weak_External (PMC_Handler);
   pragma Linker_Alias (PMC_Handler, "Dummy_Interrupt_Handler");

   procedure EFC0_Handler is null
     with Export, Convention => C, External_Name => "EFC0_Handler";
   pragma Weak_External (EFC0_Handler);
   pragma Linker_Alias (EFC0_Handler, "Dummy_Interrupt_Handler");

   procedure EFC1_Handler is null
     with Export, Convention => C, External_Name => "EFC1_Handler";
   pragma Weak_External (EFC1_Handler);
   pragma Linker_Alias (EFC1_Handler, "Dummy_Interrupt_Handler");

   procedure UART_Handler is null
     with Export, Convention => C, External_Name => "UART_Handler";
   pragma Weak_External (UART_Handler);
   pragma Linker_Alias (UART_Handler, "Dummy_Interrupt_Handler");

   procedure SMC_Handler is null
     with Export, Convention => C, External_Name => "SMC_Handler";
   pragma Weak_External (SMC_Handler);
   pragma Linker_Alias (SMC_Handler, "Dummy_Interrupt_Handler");

   procedure PIOA_Handler is null
     with Export, Convention => C, External_Name => "PIOA_Handler";
   pragma Weak_External (PIOA_Handler);
   pragma Linker_Alias (PIOA_Handler, "Dummy_Interrupt_Handler");

   procedure PIOB_Handler is null
     with Export, Convention => C, External_Name => "PIOB_Handler";
   pragma Weak_External (PIOB_Handler);
   pragma Linker_Alias (PIOB_Handler, "Dummy_Interrupt_Handler");

   procedure PIOC_Handler is null
     with Export, Convention => C, External_Name => "PIOC_Handler";
   pragma Weak_External (PIOC_Handler);
   pragma Linker_Alias (PIOC_Handler, "Dummy_Interrupt_Handler");

   procedure PIOD_Handler is null
     with Export, Convention => C, External_Name => "PIOD_Handler";
   pragma Weak_External (PIOD_Handler);
   pragma Linker_Alias (PIOD_Handler, "Dummy_Interrupt_Handler");

   procedure USART0_Handler is null
     with Export, Convention => C, External_Name => "USART0_Handler";
   pragma Weak_External (USART0_Handler);
   pragma Linker_Alias (USART0_Handler, "Dummy_Interrupt_Handler");

   procedure USART1_Handler is null
     with Export, Convention => C, External_Name => "USART1_Handler";
   pragma Weak_External (USART1_Handler);
   pragma Linker_Alias (USART1_Handler, "Dummy_Interrupt_Handler");

   procedure USART2_Handler is null
     with Export, Convention => C, External_Name => "USART2_Handler";
   pragma Weak_External (USART2_Handler);
   pragma Linker_Alias (USART2_Handler, "Dummy_Interrupt_Handler");

   procedure USART3_Handler is null
     with Export, Convention => C, External_Name => "USART3_Handler";
   pragma Weak_External (USART3_Handler);
   pragma Linker_Alias (USART3_Handler, "Dummy_Interrupt_Handler");

   procedure HSMCI_Handler is null
     with Export, Convention => C, External_Name => "HSMCI_Handler";
   pragma Weak_External (HSMCI_Handler);
   pragma Linker_Alias (HSMCI_Handler, "Dummy_Interrupt_Handler");

   procedure TWI0_Handler is null
     with Export, Convention => C, External_Name => "TWI0_Handler";
   pragma Weak_External (TWI0_Handler);
   pragma Linker_Alias (TWI0_Handler, "Dummy_Interrupt_Handler");

   procedure TWI1_Handler is null
     with Export, Convention => C, External_Name => "TWI1_Handler";
   pragma Weak_External (TWI1_Handler);
   pragma Linker_Alias (TWI1_Handler, "Dummy_Interrupt_Handler");

   procedure SPI0_Handler is null
     with Export, Convention => C, External_Name => "SPI0_Handler";
   pragma Weak_External (SPI0_Handler);
   pragma Linker_Alias (SPI0_Handler, "Dummy_Interrupt_Handler");

   procedure SSC_Handler is null
     with Export, Convention => C, External_Name => "SSC_Handler";
   pragma Weak_External (SSC_Handler);
   pragma Linker_Alias (SSC_Handler, "Dummy_Interrupt_Handler");

   procedure TC0_Handler is null
     with Export, Convention => C, External_Name => "TC0_Handler";
   pragma Weak_External (TC0_Handler);
   pragma Linker_Alias (TC0_Handler, "Dummy_Interrupt_Handler");

   procedure TC1_Handler is null
     with Export, Convention => C, External_Name => "TC1_Handler";
   pragma Weak_External (TC1_Handler);
   pragma Linker_Alias (TC1_Handler, "Dummy_Interrupt_Handler");

   procedure TC2_Handler is null
     with Export, Convention => C, External_Name => "TC2_Handler";
   pragma Weak_External (TC2_Handler);
   pragma Linker_Alias (TC2_Handler, "Dummy_Interrupt_Handler");

   procedure TC3_Handler is null
     with Export, Convention => C, External_Name => "TC3_Handler";
   pragma Weak_External (TC3_Handler);
   pragma Linker_Alias (TC3_Handler, "Dummy_Interrupt_Handler");

   procedure TC4_Handler is null
     with Export, Convention => C, External_Name => "TC4_Handler";
   pragma Weak_External (TC4_Handler);
   pragma Linker_Alias (TC4_Handler, "Dummy_Interrupt_Handler");

   procedure TC5_Handler is null
     with Export, Convention => C, External_Name => "TC5_Handler";
   pragma Weak_External (TC5_Handler);
   pragma Linker_Alias (TC5_Handler, "Dummy_Interrupt_Handler");

   procedure TC6_Handler is null
     with Export, Convention => C, External_Name => "TC6_Handler";
   pragma Weak_External (TC6_Handler);
   pragma Linker_Alias (TC6_Handler, "Dummy_Interrupt_Handler");

   procedure TC7_Handler is null
     with Export, Convention => C, External_Name => "TC7_Handler";
   pragma Weak_External (TC7_Handler);
   pragma Linker_Alias (TC7_Handler, "Dummy_Interrupt_Handler");

   procedure TC8_Handler is null
     with Export, Convention => C, External_Name => "TC8_Handler";
   pragma Weak_External (TC8_Handler);
   pragma Linker_Alias (TC8_Handler, "Dummy_Interrupt_Handler");

   procedure PWM_Handler is null
     with Export, Convention => C, External_Name => "PWM_Handler";
   pragma Weak_External (PWM_Handler);
   pragma Linker_Alias (PWM_Handler, "Dummy_Interrupt_Handler");

   procedure ADC_Handler is null
     with Export, Convention => C, External_Name => "ADC_Handler";
   pragma Weak_External (ADC_Handler);
   pragma Linker_Alias (ADC_Handler, "Dummy_Interrupt_Handler");

   procedure DACC_Handler is null
     with Export, Convention => C, External_Name => "DACC_Handler";
   pragma Weak_External (DACC_Handler);
   pragma Linker_Alias (DACC_Handler, "Dummy_Interrupt_Handler");

   procedure DMAC_Handler is null
     with Export, Convention => C, External_Name => "DMAC_Handler";
   pragma Weak_External (DMAC_Handler);
   pragma Linker_Alias (DMAC_Handler, "Dummy_Interrupt_Handler");

   procedure UOTGHS_Handler is null
     with Export, Convention => C, External_Name => "UOTGHS_Handler";
   pragma Weak_External (UOTGHS_Handler);
   pragma Linker_Alias (UOTGHS_Handler, "Dummy_Interrupt_Handler");

   procedure TRNG_Handler is null
     with Export, Convention => C, External_Name => "TRNG_Handler";
   pragma Weak_External (TRNG_Handler);
   pragma Linker_Alias (TRNG_Handler, "Dummy_Interrupt_Handler");

   procedure EMAC_Handler is null
     with Export, Convention => C, External_Name => "EMAC_Handler";
   pragma Weak_External (EMAC_Handler);
   pragma Linker_Alias (EMAC_Handler, "Dummy_Interrupt_Handler");

   procedure CAN0_Handler is null
     with Export, Convention => C, External_Name => "CAN0_Handler";
   pragma Weak_External (CAN0_Handler);
   pragma Linker_Alias (CAN0_Handler, "Dummy_Interrupt_Handler");

   procedure CAN1_Handler is null
     with Export, Convention => C, External_Name => "CAN1_Handler";
   pragma Weak_External (CAN1_Handler);
   pragma Linker_Alias (CAN1_Handler, "Dummy_Interrupt_Handler");

   Interrupt_Vectors :
     constant array (SAM3X8E_Interrupt_Event_Identifier) of System.Address :=
     (
      --  SAM3X8E interrupts table
      0   => SUPC_Handler'Address,    --   0  Supply Controller
      1   => RSTC_Handler'Address,    --   1  Reset Controller
      2   => RTC_Handler'Address,     --   2  Real Time Clock
      3   => RTT_Handler'Address,     --   3  Real Time Timer
      4   => WDT_Handler'Address,     --   4  Watchdog Timer
      5   => PMC_Handler'Address,     --   5  PMC
      6   => EFC0_Handler'Address,    --   6  EFC 0
      7   => EFC1_Handler'Address,    --   7  EFC 1
      8   => UART_Handler'Address,    --   8  UART
      9   => SMC_Handler'Address,     --   9  SMC
      10  => System.Null_Address,     --  10  Reserved
      11  => PIOA_Handler'Address,    --  11  Parallel IO Controller A
      12  => PIOB_Handler'Address,    --  12  Parallel IO Controller B
      13  => PIOC_Handler'Address,    --  13  Parallel IO Controller C
      14  => PIOD_Handler'Address,    --  14  Parallel IO Controller D
      15  => System.Null_Address,     --  15  Reserved
      16  => System.Null_Address,     --  16  Reserved
      17  => USART0_Handler'Address,  --  17  USART 0
      18  => USART1_Handler'Address,  --  18  USART 1
      19  => USART2_Handler'Address,  --  19  USART 2
      20  => USART3_Handler'Address,  --  20  USART 3
      21  => HSMCI_Handler'Address,   --  21  MCI
      22  => TWI0_Handler'Address,    --  22  TWI 0
      23  => TWI1_Handler'Address,    --  23  TWI 1
      24  => SPI0_Handler'Address,    --  24  SPI 0
      25  => System.Null_Address,     --  25  Reserved
      26  => SSC_Handler'Address,     --  26  SSC
      27  => TC0_Handler'Address,     --  27  Timer Counter 0
      28  => TC1_Handler'Address,     --  28  Timer Counter 1
      29  => TC2_Handler'Address,     --  29  Timer Counter 2
      30  => TC3_Handler'Address,     --  30  Timer Counter 3
      31  => TC4_Handler'Address,     --  31  Timer Counter 4
      32  => TC5_Handler'Address,     --  32  Timer Counter 5
      33  => TC6_Handler'Address,     --  33  Timer Counter 6
      34  => TC7_Handler'Address,     --  34  Timer Counter 7
      35  => TC8_Handler'Address,     --  35  Timer Counter 8
      36  => PWM_Handler'Address,     --  36  PWM
      37  => ADC_Handler'Address,     --  37  ADC Controller
      38  => DACC_Handler'Address,    --  38  DAC Controller
      39  => DMAC_Handler'Address,    --  39  DMA Controller
      40  => UOTGHS_Handler'Address,  --  40  USB OTG High Speed
      41  => TRNG_Handler'Address,    --  41  True Random Number Generator
      42  => EMAC_Handler'Address,    --  42  Ethernet MAC
      43  => CAN0_Handler'Address,    --  43  CAN Controller 0
      44  => CAN1_Handler'Address)    --  44  CAN Controller 1
     with Export,
          Linker_Section => ".vectors.sam3x8e",
          External_Name  => "__light_interrupts_vector";

end System_SAM3X8E;
