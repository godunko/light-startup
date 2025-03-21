--
--  Copyright (C) 2025, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--
--  STM32G474
--
--  This package provides interrupts part of the vector table. It uses
--  following external symbols to construct vector table:
--
--    WWDG_Handler
--    PVD_PVM_Handler
--    RTC_TAMP_CSS_LSE_Handler
--    RTC_WKUP_Handler
--    FLASH_Handler
--    RCC_Handler
--    EXTI0_Handler
--    EXTI1_Handler
--    EXTI2_Handler
--    EXTI3_Handler
--    EXTI4_Handler
--    DMA1_CH1_Handler
--    DMA1_CH2_Handler
--    DMA1_CH3_Handler
--    DMA1_CH4_Handler
--    DMA1_CH5_Handler
--    DMA1_CH6_Handler
--    DMA1_CH7_Handler
--    ADC1_2_Handler
--    USB_HP_Handler
--    USB_LP_Handler
--    FDCAN1_IT0_Handler
--    FDCAN1_IT1_Handler
--    EXTI9_5_Handler
--    TIM1_BRK_TIM15_Handler
--    TIM1_UP_TIM16_Handler
--    TIM1_TRG_COM_TIM17_TIM1_DIR_TIM1_IDX_Handler
--    TIM1_CC_Handler
--    TIM2_Handler
--    TIM3_Handler
--    TIM4_Handler
--    I2C1_EV_Handler
--    I2C1_ER_Handler
--    I2C2_EV_Handler
--    I2C2_ER_Handler
--    SPI1_Handler
--    SPI2_Handler
--    USART1_Handler
--    USART2_Handler
--    USART3_Handler
--    EXTI15_10
--    RTC_ALARM_Handler
--    USBWakeUP_Handler
--    TIM8_BRK_TIM8_TERR_TIM8_BRK_TIM8_IERR_Handler
--    TIM8_UP_Handler
--    TIM8_TRG_COM_TIM8_DIR_TIM8_IDX_Handler
--    TIM8_CC_Handler
--    ADC3_Handler
--    FSMC_Handler
--    LPTIM1_Handler
--    TIM5_Handler
--    SPI3_Handler
--    UART4_Handler
--    UART5_Handler
--    TIM6_DACUNDER_Handler
--    TIM7_DACUNDER_Handler
--    DMA2_CH1_Handler
--    DMA2_CH2_Handler
--    DMA2_CH3_Handler
--    DMA2_CH4_Handler
--    DMA2_CH5_Handler
--    ADC4_Handler
--    ADC5_Handler
--    UCPD1_Handler
--    COMP1_2_3_Handler
--    COMP4_5_6_Handler
--    COMP7_Handler
--    HRTIM_Master_IRQn_Handler
--    HRTIM_TIMA_IRQn_Handler
--    HRTIM_TIMB_IRQn_Handler
--    HRTIM_TIMC_IRQn_Handler
--    HRTIM_TIMD_IRQn_Handler
--    HRTIM_TIME_IRQn_Handler
--    HRTIM_TIM_FLT_IRQn_Handler
--    HRTIM_TIMF_IRQn_Handler
--    CRS_Handler
--    SAI_Handler
--    TIM20_BRK_TIM20_TERR_TIM20_IERR_Handler
--    TIM20_UP_Handler
--    TIM20_TRG_COM_TIM20_DIR_TIM20_IDX_Handler
--    TIM20_CC_Handler
--    FPU_Handler
--    I2C4_EV_Handler
--    I2C4_ER_Handler
--    SPI4_Handler
--    FDCAN2_IT0_Handler
--    FDCAN2_IT1_Handler
--    FDCAN3_IT0_Handler
--    FDCAN3_IT1_Handler
--    RNG_Handler
--    LPUART_Handler
--    I2C3_EV_Handler
--    I2C3_ER_Handler
--    DMAMUX_OVR_Handler
--    QUADSPI_Handler
--    DMA1_CH8_Handler
--    DMA2_CH6_Handler
--    DMA2_CH7_Handler
--    DMA2_CH8_Handler
--    CORDIC_Handler
--    FMAC_Handler

pragma Restrictions (No_Elaboration_Code);

package System_STM32G474
  with No_Elaboration_Code_All
is

   pragma Elaborate_Body;

end System_STM32G474;
