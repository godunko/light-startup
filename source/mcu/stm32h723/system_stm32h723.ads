--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--
--  STM32H723
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
--   - FDCAN1_IT0_Handler
--   - FDCAN2_IT0_Handler
--   - FDCAN1_IT1_Handler
--   - FDCAN2_IT1_Handler
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
--   - FDCAN_CAL_Handler
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
--   - RNG_Handler
--   - FPU_Handler
--   - UART7_Handler
--   - UART8_Handler
--   - SPI4_Handler
--   - SPI5_Handler
--   - SPI6_Handler
--   - SAI1_Handler
--   - LTDC_Handler
--   - LTDC_ER_Handler
--   - DMA2D_Handler
--   - OCTOSPI1_Handler
--   - LPTIM1_Handler
--   - CEC_Handler
--   - I2C4_EV_Handler
--   - I2C4_ER_Handler
--   - SPDIF_RX_Handler
--   - DMAMUX1_OVR_Handler
--   - DFSDM1_FLT0_Handler
--   - DFSDM1_FLT1_Handler
--   - DFSDM1_FLT2_Handler
--   - DFSDM1_FLT3_Handler
--   - SWPMI1_Handler
--   - TIM15_Handler
--   - TIM16_Handler
--   - TIM17_Handler
--   - MDIOS_WKUP_Handler
--   - MDIOS_Handler
--   - MDMA_Handler
--   - SDMMC2_Handler
--   - HSEM1_Handler
--   - ADC3_Handler
--   - DMAMUX2_OVR_Handler
--   - BDMA_Channel0_Handler
--   - BDMA_Channel1_Handler
--   - BDMA_Channel2_Handler
--   - BDMA_Channel3_Handler
--   - BDMA_Channel4_Handler
--   - BDMA_Channel5_Handler
--   - BDMA_Channel6_Handler
--   - BDMA_Channel7_Handler
--   - COMP1_Handler
--   - LPTIM2_Handler
--   - LPTIM3_Handler
--   - LPTIM4_Handler
--   - LPTIM5_Handler
--   - LPUART1_Handler
--   - CRS_Handler
--   - ECC_Handler
--   - SAI4_Handler
--   - DTS_Handler
--   - WAKEUP_PIN_Handler
--   - OCTOSPI2_Handler
--   - FMAC_Handler
--   - CORDIC_Handler
--   - UART9_Handler
--   - USART10_Handler
--   - I2C5_EV_Handler
--   - I2C5_ER_Handler
--   - FDCAN3_IT0_Handler
--   - FDCAN3_IT1_Handler
--   - TIM23_Handler
--   - TIM24_Handler

pragma Restrictions (No_Elaboration_Code);

with System_ARMv7M;

package System_STM32H723 is

   pragma Elaborate_Body;

   subtype STM32H723_Interrupt_Event_Identifier is
     System_ARMv7M.Interrupt_Event_Identifier range 0 .. 162;

end System_STM32H723;
