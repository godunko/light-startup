--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--
--  STM32F401x
--
--  This package provides interrupts part of the vector table. It uses
--  following external symbols to construct vector table:
--
--   - WWDG_Handler
--   - EXTI16_PVD_Handler
--   - EXTI21_TAMP_STAMP_Handler
--   - EXTI22_RTC_WKUP_Handler
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
--   - EXTI9_5_Handler
--   - TIM1_BRK_TIM9_Handler
--   - TIM1_UP_TIM10_Handler
--   - TIM1_TRG_COM_TIM11_Handler
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
--   - EXTI15_10_Handler
--   - EXTI17_RTC_Alarm_Handler
--   - EXTI18_OTG_FS_Wakeup_Handler
--   - DMA1_Stream7_Handler
--   - SDIO_Handler
--   - TIM5_Handler
--   - SPI3_Handler
--   - DMA2_Stream0_Handler
--   - DMA2_Stream1_Handler
--   - DMA2_Stream2_Handler
--   - DMA2_Stream3_Handler
--   - DMA2_Stream4_Handler
--   - OTG_FS_HAndler
--   - DMA2_Stream5_Handler
--   - DMA2_Stream6_Handler
--   - DMA2_Stream7_Handler
--   - USART6_Handler
--   - I2C3_EV_Handler
--   - I2C3_ER_Handler
--   - FPU_Handler
--   - SPI4_Handler

pragma Restrictions (No_Elaboration_Code);

package System_STM32F401 is

   pragma Elaborate_Body;

end System_STM32F401;
