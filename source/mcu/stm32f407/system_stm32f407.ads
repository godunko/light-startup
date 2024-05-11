--
--  Copyright (C) 2024, Yuri Veretelnikov <yuri.veretelnikov@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--
--  STM32F407VG
--
--  This package provides interrupts part of the vector table. It uses
--  following external symbols to construct vector table:
--
--   - WWDG_Handler
--   - PVD_AVD_Handler
--   - TAMP_STAMP_Handler
--   - RTC_WKUP_Handler
--   - FLASH_Handler
--   - RCC_Handler
--   - EXTI0_Handler
--   - EXTI1_Handler
--   - EXTI2_Handler
--   - EXTI3_Handler
--   - EXTI4_Handler
--   - DMA1_Stream0_Handler
--   - DMA1_Stream1_Handler
--   - DMA1_Stream2_Handler
--   - DMA1_Stream3_Handler
--   - DMA1_Stream4_Handler
--   - DMA1_Stream5_Handler
--   - DMA1_Stream6_Handler
--   - ADC_Handler
--   - CAN1_TX_Handler
--   - CAN1_RX0_Handler
--   - CAN1_RX1_Handler
--   - CAN1_SCE_Handler
--   - EXTI9_5_Handler
--   - TIM1_BRK_Handler
--   - TIM1_UP_Handler
--   - TIM1_TRG_COM_Handler
--   - TIM1_CC_Handler
--   - TIM2_Handler
--   - TIM3_Handler
--   - TIM4_Handler
--   - I2C1_EV_Handler
--   - I2C1_ER_Handler
--   - I2C2_EV_Handler
--   - I2C2_ER_Handler
--   - SPI1_Handler
--   - SPI2_Handler
--   - USART1_Handler
--   - USART2_Handler
--   - USART3_Handler
--   - EXTI15_10_Handler
--   - RTC_Alarm_Handler
--   - OTG_FS_Wakeup_Handler,
--   - TIM8_BRK_TIM12_Handler
--   - TIM8_UP_TIM13_Handler
--   - TIM8_TRG_COM_TIM14_Handler
--   - TIM8_CC_Handler
--   - DMA1_Stream7_Handler
--   - FMC_Handler
--   - SDMMC1_Handler
--   - TIM5_Handler
--   - SPI3_Handler
--   - UART4_Handler
--   - UART5_Handler
--   - TIM6_DAC_Handler
--   - TIM7_Handler
--   - DMA2_Stream0_Handler
--   - DMA2_Stream1_Handler
--   - DMA2_Stream2_Handler
--   - DMA2_Stream3_Handler
--   - DMA2_Stream4_Handler
--   - ETH_Handler
--   - ETH_WKUP_Handler
--   - CAN2_TX_Handler
--   - CAN2_RX0_Handler
--   - CAN2_RX1_Handler
--   - CAN2_SCE_Handler
--   - OTG_FS_HAndler
--   - DMA2_Stream5_Handler
--   - DMA2_Stream6_Handler
--   - DMA2_Stream7_Handler
--   - USART6_Handler
--   - I2C3_EV_Handler
--   - I2C3_ER_Handler
--   - OTG_HS_EP1_OUT_Handler
--   - OTG_HS_EP1_IN_Handler
--   - OTG_HS_WKUP_Handler
--   - OTG_HS_Handler
--   - DCMI_PSSI_Handler
--   - CRYPT_TX_Handler
--   - RNG_Handler
--   - FPU_Handler

pragma Restrictions (No_Elaboration_Code);

with System_ARMv7M;

package System_STM32F407 is

   pragma Elaborate_Body;

   subtype STM32F407_Interrupt_Event_Identifier is
     System_ARMv7M.Interrupt_Event_Identifier range 0 .. 81;

end System_STM32F407;
