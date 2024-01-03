--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  SAM3X8E
--
--  This package provides interrupts part of the vector table. It uses
--  following external symbols to construct vector table:
--
--   - SUPC_Handler
--   - RSTC_Handler
--   - RTC_Handler
--   - RTT_Handler
--   - WDT_Handler
--   - PMC_Handler
--   - EFC0_Handler
--   - EFC1_Handler
--   - UART_Handler
--   - SMC_Handler
--   - PIOA_Handler
--   - PIOB_Handler
--   - PIOC_Handler
--   - PIOD_Handler
--   - USART0_Handler
--   - USART1_Handler
--   - USART2_Handler
--   - USART3_Handler
--   - HSMCI_Handler
--   - TWI0_Handler
--   - TWI1_Handler
--   - SPI0_Handler
--   - SSC_Handler
--   - TC0_Handler
--   - TC1_Handler
--   - TC2_Handler
--   - TC3_Handler
--   - TC4_Handler
--   - TC5_Handler
--   - TC6_Handler
--   - TC7_Handler
--   - TC8_Handler
--   - PWM_Handler
--   - ADC_Handler
--   - DACC_Handler
--   - DMAC_Handler
--   - UOTGHS_Handler
--   - TRNG_Handler
--   - EMAC_Handler
--   - CAN0_Handler
--   - CAN1_Handler

pragma Restrictions (No_Elaboration_Code);

with System_ARMv7;

package System_SAM3X8E is

   pragma Elaborate_Body;

   subtype SAM3X8E_Interrupt_Event_Identifier is
     System_ARMv7.Interrupt_Event_Identifier range 0 .. 44;

end System_SAM3X8E;
