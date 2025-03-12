--
--  Copyright (C) 2025, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

pragma Restrictions (No_Elaboration_Code);

with System;

with A0B.STM32G4.G474;

with System_ARMv7M;

package body System_STM32G474 is

   use A0B.STM32G4.G474;

   procedure Dummy_Interrupt_Handler
     with Export, Convention => C, External_Name => "Dummy_Interrupt_Handler";

   procedure WWDG_Handler is null
     with Export, Convention => C, External_Name => "WWDG_Handler";
   pragma Weak_External (WWDG_Handler);
   pragma Linker_Alias (WWDG_Handler, "Dummy_Interrupt_Handler");

   procedure PVD_PVM_Handler is null
     with Export, Convention => C, External_Name => "PVD_PVM_Handler";
   pragma Weak_External (PVD_PVM_Handler);
   pragma Linker_Alias (PVD_PVM_Handler, "Dummy_Interrupt_Handler");

   procedure RTC_TAMP_CSS_LSE_Handler is null
     with Export, Convention => C, External_Name => "RTC_TAMP_CSS_LSE_Handler";
   pragma Weak_External (RTC_TAMP_CSS_LSE_Handler);
   pragma Linker_Alias (RTC_TAMP_CSS_LSE_Handler, "Dummy_Interrupt_Handler");

   procedure RTC_WKUP_Handler is null
     with Export, Convention => C, External_Name => "RTC_WKUP_Handler";
   pragma Weak_External (RTC_WKUP_Handler);
   pragma Linker_Alias (RTC_WKUP_Handler, "Dummy_Interrupt_Handler");

   procedure FLASH_Handler is null
     with Export, Convention => C, External_Name => "FLASH_Handler";
   pragma Weak_External (FLASH_Handler);
   pragma Linker_Alias (FLASH_Handler, "Dummy_Interrupt_Handler");

   procedure RCC_Handler is null
     with Export, Convention => C, External_Name => "RCC_Handler";
   pragma Weak_External (RCC_Handler);
   pragma Linker_Alias (RCC_Handler, "Dummy_Interrupt_Handler");

   procedure EXTI0_Handler is null
     with Export, Convention => C, External_Name => "EXTI0_Handler";
   pragma Weak_External (EXTI0_Handler);
   pragma Linker_Alias (EXTI0_Handler, "Dummy_Interrupt_Handler");

   procedure EXTI1_Handler is null
     with Export, Convention => C, External_Name => "EXTI1_Handler";
   pragma Weak_External (EXTI1_Handler);
   pragma Linker_Alias (EXTI1_Handler, "Dummy_Interrupt_Handler");

   procedure EXTI2_Handler is null
     with Export, Convention => C, External_Name => "EXTI2_Handler";
   pragma Weak_External (EXTI2_Handler);
   pragma Linker_Alias (EXTI2_Handler, "Dummy_Interrupt_Handler");

   procedure EXTI3_Handler is null
     with Export, Convention => C, External_Name => "EXTI3_Handler";
   pragma Weak_External (EXTI3_Handler);
   pragma Linker_Alias (EXTI3_Handler, "Dummy_Interrupt_Handler");

   procedure EXTI4_Handler is null
     with Export, Convention => C, External_Name => "EXTI4_Handler";
   pragma Weak_External (EXTI4_Handler);
   pragma Linker_Alias (EXTI4_Handler, "Dummy_Interrupt_Handler");

   procedure DMA1_CH1_Handler is null
     with Export, Convention => C, External_Name => "DMA1_CH1_Handler";
   pragma Weak_External (DMA1_CH1_Handler);
   pragma Linker_Alias (DMA1_CH1_Handler, "Dummy_Interrupt_Handler");

   procedure DMA1_CH2_Handler is null
     with Export, Convention => C, External_Name => "DMA1_CH2_Handler";
   pragma Weak_External (DMA1_CH2_Handler);
   pragma Linker_Alias (DMA1_CH2_Handler, "Dummy_Interrupt_Handler");

   procedure DMA1_CH3_Handler is null
     with Export, Convention => C, External_Name => "DMA1_CH3_Handler";
   pragma Weak_External (DMA1_CH3_Handler);
   pragma Linker_Alias (DMA1_CH3_Handler, "Dummy_Interrupt_Handler");

   procedure DMA1_CH4_Handler is null
     with Export, Convention => C, External_Name => "DMA1_CH4_Handler";
   pragma Weak_External (DMA1_CH4_Handler);
   pragma Linker_Alias (DMA1_CH4_Handler, "Dummy_Interrupt_Handler");

   procedure DMA1_CH5_Handler is null
     with Export, Convention => C, External_Name => "DMA1_CH5_Handler";
   pragma Weak_External (DMA1_CH5_Handler);
   pragma Linker_Alias (DMA1_CH5_Handler, "Dummy_Interrupt_Handler");

   procedure DMA1_CH6_Handler is null
     with Export, Convention => C, External_Name => "DMA1_CH6_Handler";
   pragma Weak_External (DMA1_CH6_Handler);
   pragma Linker_Alias (DMA1_CH6_Handler, "Dummy_Interrupt_Handler");

   procedure DMA1_CH7_Handler is null
     with Export, Convention => C, External_Name => "DMA1_CH7_Handler";
   pragma Weak_External (DMA1_CH7_Handler);
   pragma Linker_Alias (DMA1_CH7_Handler, "Dummy_Interrupt_Handler");

   procedure ADC1_2_Handler is null
     with Export, Convention => C, External_Name => "ADC1_2_Handler";
   pragma Weak_External (ADC1_2_Handler);
   pragma Linker_Alias (ADC1_2_Handler, "Dummy_Interrupt_Handler");

   procedure USB_HP_Handler is null
     with Export, Convention => C, External_Name => "USB_HP_Handler";
   pragma Weak_External (USB_HP_Handler);
   pragma Linker_Alias (USB_HP_Handler, "Dummy_Interrupt_Handler");

   procedure USB_LP_Handler is null
     with Export, Convention => C, External_Name => "USB_LP_Handler";
   pragma Weak_External (USB_LP_Handler);
   pragma Linker_Alias (USB_LP_Handler, "Dummy_Interrupt_Handler");

   procedure FDCAN1_IT0_Handler is null
     with Export, Convention => C, External_Name => "FDCAN1_IT0_Handler";
   pragma Weak_External (FDCAN1_IT0_Handler);
   pragma Linker_Alias (FDCAN1_IT0_Handler, "Dummy_Interrupt_Handler");

   procedure FDCAN1_IT1_Handler is null
     with Export, Convention => C, External_Name => "FDCAN1_IT1_Handler";
   pragma Weak_External (FDCAN1_IT1_Handler);
   pragma Linker_Alias (FDCAN1_IT1_Handler, "Dummy_Interrupt_Handler");

   procedure EXTI9_5_Handler is null
     with Export, Convention => C, External_Name => "EXTI9_5_Handler";
   pragma Weak_External (EXTI9_5_Handler);
   pragma Linker_Alias (EXTI9_5_Handler, "Dummy_Interrupt_Handler");

   procedure TIM1_BRK_TIM15_Handler is null
     with Export, Convention => C, External_Name => "TIM1_BRK_TIM15_Handler";
   pragma Weak_External (TIM1_BRK_TIM15_Handler);
   pragma Linker_Alias (TIM1_BRK_TIM15_Handler, "Dummy_Interrupt_Handler");

   procedure TIM1_UP_TIM16_Handler is null
     with Export, Convention => C, External_Name => "TIM1_UP_TIM16_Handler";
   pragma Weak_External (TIM1_UP_TIM16_Handler);
   pragma Linker_Alias (TIM1_UP_TIM16_Handler, "Dummy_Interrupt_Handler");

   procedure TIM1_TRG_COM_TIM17_TIM1_DIR_TIM1_IDX_Handler is null
     with Export, Convention => C, External_Name => "TIM1_TRG_COM_TIM17_TIM1_DIR_TIM1_IDX_Handler";
   pragma Weak_External (TIM1_TRG_COM_TIM17_TIM1_DIR_TIM1_IDX_Handler);
   pragma Linker_Alias (TIM1_TRG_COM_TIM17_TIM1_DIR_TIM1_IDX_Handler, "Dummy_Interrupt_Handler");

   procedure TIM1_CC_Handler is null
     with Export, Convention => C, External_Name => "TIM1_CC_Handler";
   pragma Weak_External (TIM1_CC_Handler);
   pragma Linker_Alias (TIM1_CC_Handler, "Dummy_Interrupt_Handler");

   procedure TIM2_Handler is null
     with Export, Convention => C, External_Name => "TIM2_Handler";
   pragma Weak_External (TIM2_Handler);
   pragma Linker_Alias (TIM2_Handler, "Dummy_Interrupt_Handler");

   procedure TIM3_Handler is null
     with Export, Convention => C, External_Name => "TIM3_Handler";
   pragma Weak_External (TIM3_Handler);
   pragma Linker_Alias (TIM3_Handler, "Dummy_Interrupt_Handler");

   procedure TIM4_Handler is null
     with Export, Convention => C, External_Name => "TIM4_Handler";
   pragma Weak_External (TIM4_Handler);
   pragma Linker_Alias (TIM4_Handler, "Dummy_Interrupt_Handler");

   procedure I2C1_EV_Handler is null
     with Export, Convention => C, External_Name => "I2C1_EV_Handler";
   pragma Weak_External (I2C1_EV_Handler);
   pragma Linker_Alias (I2C1_EV_Handler, "Dummy_Interrupt_Handler");

   procedure I2C1_ER_Handler is null
     with Export, Convention => C, External_Name => "I2C1_ER_Handler";
   pragma Weak_External (I2C1_ER_Handler);
   pragma Linker_Alias (I2C1_ER_Handler, "Dummy_Interrupt_Handler");

   procedure I2C2_EV_Handler is null
     with Export, Convention => C, External_Name => "I2C2_EV_Handler";
   pragma Weak_External (I2C2_EV_Handler);
   pragma Linker_Alias (I2C2_EV_Handler, "Dummy_Interrupt_Handler");

   procedure I2C2_ER_Handler is null
     with Export, Convention => C, External_Name => "I2C2_ER_Handler";
   pragma Weak_External (I2C2_ER_Handler);
   pragma Linker_Alias (I2C2_ER_Handler, "Dummy_Interrupt_Handler");

   procedure SPI1_Handler is null
     with Export, Convention => C, External_Name => "SPI1_Handler";
   pragma Weak_External (SPI1_Handler);
   pragma Linker_Alias (SPI1_Handler, "Dummy_Interrupt_Handler");

   procedure SPI2_Handler is null
     with Export, Convention => C, External_Name => "SPI2_Handler";
   pragma Weak_External (SPI2_Handler);
   pragma Linker_Alias (SPI2_Handler, "Dummy_Interrupt_Handler");

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

   procedure EXTI15_10_Handler is null
     with Export, Convention => C, External_Name => "EXTI15_10_Handler";
   pragma Weak_External (EXTI15_10_Handler);
   pragma Linker_Alias (EXTI15_10_Handler, "Dummy_Interrupt_Handler");

   procedure RTC_ALARM_Handler is null
     with Export, Convention => C, External_Name => "RTC_ALARM_Handler";
   pragma Weak_External (RTC_ALARM_Handler);
   pragma Linker_Alias (RTC_ALARM_Handler, "Dummy_Interrupt_Handler");

   procedure USBWakeUP_Handler is null
     with Export, Convention => C, External_Name => "USBWakeUP_Handler";
   pragma Weak_External (USBWakeUP_Handler);
   pragma Linker_Alias (USBWakeUP_Handler, "Dummy_Interrupt_Handler");

   procedure TIM8_BRK_TIM8_TERR_TIM8_BRK_TIM8_IERR_Handler is null
     with Export, Convention => C, External_Name => "TIM8_BRK_TIM8_TERR_TIM8_BRK_TIM8_IERR_Handler";
   pragma Weak_External (TIM8_BRK_TIM8_TERR_TIM8_BRK_TIM8_IERR_Handler);
   pragma Linker_Alias (TIM8_BRK_TIM8_TERR_TIM8_BRK_TIM8_IERR_Handler, "Dummy_Interrupt_Handler");

   procedure TIM8_UP_Handler is null
     with Export, Convention => C, External_Name => "TIM8_UP_Handler";
   pragma Weak_External (TIM8_UP_Handler);
   pragma Linker_Alias (TIM8_UP_Handler, "Dummy_Interrupt_Handler");

   procedure TIM8_TRG_COM_TIM8_DIR_TIM8_IDX_Handler is null
     with Export, Convention => C, External_Name => "TIM8_TRG_COM_TIM8_DIR_TIM8_IDX_Handler";
   pragma Weak_External (TIM8_TRG_COM_TIM8_DIR_TIM8_IDX_Handler);
   pragma Linker_Alias (TIM8_TRG_COM_TIM8_DIR_TIM8_IDX_Handler, "Dummy_Interrupt_Handler");

   procedure TIM8_CC_Handler is null
     with Export, Convention => C, External_Name => "TIM8_CC_Handler";
   pragma Weak_External (TIM8_CC_Handler);
   pragma Linker_Alias (TIM8_CC_Handler, "Dummy_Interrupt_Handler");

   procedure ADC3_Handler is null
     with Export, Convention => C, External_Name => "ADC3_Handler";
   pragma Weak_External (ADC3_Handler);
   pragma Linker_Alias (ADC3_Handler, "Dummy_Interrupt_Handler");

   procedure FSMC_Handler is null
     with Export, Convention => C, External_Name => "FSMC_Handler";
   pragma Weak_External (FSMC_Handler);
   pragma Linker_Alias (FSMC_Handler, "Dummy_Interrupt_Handler");

   procedure LPTIM1_Handler is null
     with Export, Convention => C, External_Name => "LPTIM1_Handler";
   pragma Weak_External (LPTIM1_Handler);
   pragma Linker_Alias (LPTIM1_Handler, "Dummy_Interrupt_Handler");

   procedure TIM5_Handler is null
     with Export, Convention => C, External_Name => "TIM5_Handler";
   pragma Weak_External (TIM5_Handler);
   pragma Linker_Alias (TIM5_Handler, "Dummy_Interrupt_Handler");

   procedure SPI3_Handler is null
     with Export, Convention => C, External_Name => "SPI3_Handler";
   pragma Weak_External (SPI3_Handler);
   pragma Linker_Alias (SPI3_Handler, "Dummy_Interrupt_Handler");

   procedure UART4_Handler is null
     with Export, Convention => C, External_Name => "UART4_Handler";
   pragma Weak_External (UART4_Handler);
   pragma Linker_Alias (UART4_Handler, "Dummy_Interrupt_Handler");

   procedure UART5_Handler is null
     with Export, Convention => C, External_Name => "UART5_Handler";
   pragma Weak_External (UART5_Handler);
   pragma Linker_Alias (UART5_Handler, "Dummy_Interrupt_Handler");

   procedure TIM6_DACUNDER_Handler is null
     with Export, Convention => C, External_Name => "TIM6_DACUNDER_Handler";
   pragma Weak_External (TIM6_DACUNDER_Handler);
   pragma Linker_Alias (TIM6_DACUNDER_Handler, "Dummy_Interrupt_Handler");

   procedure TIM7_DACUNDER_Handler is null
     with Export, Convention => C, External_Name => "TIM7_DACUNDER_Handler";
   pragma Weak_External (TIM7_DACUNDER_Handler);
   pragma Linker_Alias (TIM7_DACUNDER_Handler, "Dummy_Interrupt_Handler");

   procedure DMA2_CH1_Handler is null
     with Export, Convention => C, External_Name => "DMA2_CH1_Handler";
   pragma Weak_External (DMA2_CH1_Handler);
   pragma Linker_Alias (DMA2_CH1_Handler, "Dummy_Interrupt_Handler");

   procedure DMA2_CH2_Handler is null
     with Export, Convention => C, External_Name => "DMA2_CH2_Handler";
   pragma Weak_External (DMA2_CH2_Handler);
   pragma Linker_Alias (DMA2_CH2_Handler, "Dummy_Interrupt_Handler");

   procedure DMA2_CH3_Handler is null
     with Export, Convention => C, External_Name => "DMA2_CH3_Handler";
   pragma Weak_External (DMA2_CH3_Handler);
   pragma Linker_Alias (DMA2_CH3_Handler, "Dummy_Interrupt_Handler");

   procedure DMA2_CH4_Handler is null
     with Export, Convention => C, External_Name => "DMA2_CH4_Handler";
   pragma Weak_External (DMA2_CH4_Handler);
   pragma Linker_Alias (DMA2_CH4_Handler, "Dummy_Interrupt_Handler");

   procedure DMA2_CH5_Handler is null
     with Export, Convention => C, External_Name => "DMA2_CH5_Handler";
   pragma Weak_External (DMA2_CH5_Handler);
   pragma Linker_Alias (DMA2_CH5_Handler, "Dummy_Interrupt_Handler");

   procedure ADC4_Handler is null
     with Export, Convention => C, External_Name => "ADC4_Handler";
   pragma Weak_External (ADC4_Handler);
   pragma Linker_Alias (ADC4_Handler, "Dummy_Interrupt_Handler");

   procedure ADC5_Handler is null
     with Export, Convention => C, External_Name => "ADC5_Handler";
   pragma Weak_External (ADC5_Handler);
   pragma Linker_Alias (ADC5_Handler, "Dummy_Interrupt_Handler");

   procedure UCPD1_Handler is null
     with Export, Convention => C, External_Name => "UCPD1_Handler";
   pragma Weak_External (UCPD1_Handler);
   pragma Linker_Alias (UCPD1_Handler, "Dummy_Interrupt_Handler");

   procedure COMP1_2_3_Handler is null
     with Export, Convention => C, External_Name => "COMP1_2_3_Handler";
   pragma Weak_External (COMP1_2_3_Handler);
   pragma Linker_Alias (COMP1_2_3_Handler, "Dummy_Interrupt_Handler");

   procedure COMP4_5_6_Handler is null
     with Export, Convention => C, External_Name => "COMP4_5_6_Handler";
   pragma Weak_External (COMP4_5_6_Handler);
   pragma Linker_Alias (COMP4_5_6_Handler, "Dummy_Interrupt_Handler");

   procedure COMP7_Handler is null
     with Export, Convention => C, External_Name => "COMP7_Handler";
   pragma Weak_External (COMP7_Handler);
   pragma Linker_Alias (COMP7_Handler, "Dummy_Interrupt_Handler");

   procedure HRTIM_Master_IRQn_Handler is null
     with Export, Convention => C, External_Name => "HRTIM_Master_IRQn_Handler";
   pragma Weak_External (HRTIM_Master_IRQn_Handler);
   pragma Linker_Alias (HRTIM_Master_IRQn_Handler, "Dummy_Interrupt_Handler");

   procedure HRTIM_TIMA_IRQn_Handler is null
     with Export, Convention => C, External_Name => "HRTIM_TIMA_IRQn_Handler";
   pragma Weak_External (HRTIM_TIMA_IRQn_Handler);
   pragma Linker_Alias (HRTIM_TIMA_IRQn_Handler, "Dummy_Interrupt_Handler");

   procedure HRTIM_TIMB_IRQn_Handler is null
     with Export, Convention => C, External_Name => "HRTIM_TIMB_IRQn_Handler";
   pragma Weak_External (HRTIM_TIMB_IRQn_Handler);
   pragma Linker_Alias (HRTIM_TIMB_IRQn_Handler, "Dummy_Interrupt_Handler");

   procedure HRTIM_TIMC_IRQn_Handler is null
     with Export, Convention => C, External_Name => "HRTIM_TIMC_IRQn_Handler";
   pragma Weak_External (HRTIM_TIMC_IRQn_Handler);
   pragma Linker_Alias (HRTIM_TIMC_IRQn_Handler, "Dummy_Interrupt_Handler");

   procedure HRTIM_TIMD_IRQn_Handler is null
     with Export, Convention => C, External_Name => "HRTIM_TIMD_IRQn_Handler";
   pragma Weak_External (HRTIM_TIMD_IRQn_Handler);
   pragma Linker_Alias (HRTIM_TIMD_IRQn_Handler, "Dummy_Interrupt_Handler");

   procedure HRTIM_TIME_IRQn_Handler is null
     with Export, Convention => C, External_Name => "HRTIM_TIME_IRQn_Handler";
   pragma Weak_External (HRTIM_TIME_IRQn_Handler);
   pragma Linker_Alias (HRTIM_TIME_IRQn_Handler, "Dummy_Interrupt_Handler");

   procedure HRTIM_TIM_FLT_IRQn_Handler is null
     with Export, Convention => C, External_Name => "HRTIM_TIM_FLT_IRQn_Handler";
   pragma Weak_External (HRTIM_TIM_FLT_IRQn_Handler);
   pragma Linker_Alias (HRTIM_TIM_FLT_IRQn_Handler, "Dummy_Interrupt_Handler");

   procedure HRTIM_TIMF_IRQn_Handler is null
     with Export, Convention => C, External_Name => "HRTIM_TIMF_IRQn_Handler";
   pragma Weak_External (HRTIM_TIMF_IRQn_Handler);
   pragma Linker_Alias (HRTIM_TIMF_IRQn_Handler, "Dummy_Interrupt_Handler");

   procedure CRS_Handler is null
     with Export, Convention => C, External_Name => "CRS_Handler";
   pragma Weak_External (CRS_Handler);
   pragma Linker_Alias (CRS_Handler, "Dummy_Interrupt_Handler");

   procedure SAI_Handler is null
     with Export, Convention => C, External_Name => "SAI_Handler";
   pragma Weak_External (SAI_Handler);
   pragma Linker_Alias (SAI_Handler, "Dummy_Interrupt_Handler");

   procedure TIM20_BRK_TIM20_TERR_TIM20_IERR_Handler is null
     with Export, Convention => C, External_Name => "TIM20_BRK_TIM20_TERR_TIM20_IERR_Handler";
   pragma Weak_External (TIM20_BRK_TIM20_TERR_TIM20_IERR_Handler);
   pragma Linker_Alias (TIM20_BRK_TIM20_TERR_TIM20_IERR_Handler, "Dummy_Interrupt_Handler");

   procedure TIM20_UP_Handler is null
     with Export, Convention => C, External_Name => "TIM20_UP_Handler";
   pragma Weak_External (TIM20_UP_Handler);
   pragma Linker_Alias (TIM20_UP_Handler, "Dummy_Interrupt_Handler");

   procedure TIM20_TRG_COM_TIM20_DIR_TIM20_IDX_Handler is null
     with Export, Convention => C, External_Name => "TIM20_TRG_COM_TIM20_DIR_TIM20_IDX_Handler";
   pragma Weak_External (TIM20_TRG_COM_TIM20_DIR_TIM20_IDX_Handler);
   pragma Linker_Alias (TIM20_TRG_COM_TIM20_DIR_TIM20_IDX_Handler, "Dummy_Interrupt_Handler");

   procedure TIM20_CC_Handler is null
     with Export, Convention => C, External_Name => "TIM20_CC_Handler";
   pragma Weak_External (TIM20_CC_Handler);
   pragma Linker_Alias (TIM20_CC_Handler, "Dummy_Interrupt_Handler");

   procedure FPU_Handler is null
     with Export, Convention => C, External_Name => "FPU_Handler";
   pragma Weak_External (FPU_Handler);
   pragma Linker_Alias (FPU_Handler, "Dummy_Interrupt_Handler");

   procedure I2C4_EV_Handler is null
     with Export, Convention => C, External_Name => "I2C4_EV_Handler";
   pragma Weak_External (I2C4_EV_Handler);
   pragma Linker_Alias (I2C4_EV_Handler, "Dummy_Interrupt_Handler");

   procedure I2C4_ER_Handler is null
     with Export, Convention => C, External_Name => "I2C4_ER_Handler";
   pragma Weak_External (I2C4_ER_Handler);
   pragma Linker_Alias (I2C4_ER_Handler, "Dummy_Interrupt_Handler");

   procedure SPI4_Handler is null
     with Export, Convention => C, External_Name => "SPI4_Handler";
   pragma Weak_External (SPI4_Handler);
   pragma Linker_Alias (SPI4_Handler, "Dummy_Interrupt_Handler");

   procedure FDCAN2_IT0_Handler is null
     with Export, Convention => C, External_Name => "FDCAN2_IT0_Handler";
   pragma Weak_External (FDCAN2_IT0_Handler);
   pragma Linker_Alias (FDCAN2_IT0_Handler, "Dummy_Interrupt_Handler");

   procedure FDCAN2_IT1_Handler is null
     with Export, Convention => C, External_Name => "FDCAN2_IT1_Handler";
   pragma Weak_External (FDCAN2_IT1_Handler);
   pragma Linker_Alias (FDCAN2_IT1_Handler, "Dummy_Interrupt_Handler");

   procedure FDCAN3_IT0_Handler is null
     with Export, Convention => C, External_Name => "FDCAN3_IT0_Handler";
   pragma Weak_External (FDCAN3_IT0_Handler);
   pragma Linker_Alias (FDCAN3_IT0_Handler, "Dummy_Interrupt_Handler");

   procedure FDCAN3_IT1_Handler is null
     with Export, Convention => C, External_Name => "FDCAN3_IT1_Handler";
   pragma Weak_External (FDCAN3_IT1_Handler);
   pragma Linker_Alias (FDCAN3_IT1_Handler, "Dummy_Interrupt_Handler");

   procedure RNG_Handler is null
     with Export, Convention => C, External_Name => "RNG_Handler";
   pragma Weak_External (RNG_Handler);
   pragma Linker_Alias (RNG_Handler, "Dummy_Interrupt_Handler");

   procedure LPUART_Handler is null
     with Export, Convention => C, External_Name => "LPUART_Handler";
   pragma Weak_External (LPUART_Handler);
   pragma Linker_Alias (LPUART_Handler, "Dummy_Interrupt_Handler");

   procedure I2C3_EV_Handler is null
     with Export, Convention => C, External_Name => "I2C3_EV_Handler";
   pragma Weak_External (I2C3_EV_Handler);
   pragma Linker_Alias (I2C3_EV_Handler, "Dummy_Interrupt_Handler");

   procedure I2C3_ER_Handler is null
     with Export, Convention => C, External_Name => "I2C3_ER_Handler";
   pragma Weak_External (I2C3_ER_Handler);
   pragma Linker_Alias (I2C3_ER_Handler, "Dummy_Interrupt_Handler");

   procedure DMAMUX_OVR_Handler is null
     with Export, Convention => C, External_Name => "DMAMUX_OVR_Handler";
   pragma Weak_External (DMAMUX_OVR_Handler);
   pragma Linker_Alias (DMAMUX_OVR_Handler, "Dummy_Interrupt_Handler");

   procedure QUADSPI_Handler is null
     with Export, Convention => C, External_Name => "QUADSPI_Handler";
   pragma Weak_External (QUADSPI_Handler);
   pragma Linker_Alias (QUADSPI_Handler, "Dummy_Interrupt_Handler");

   procedure DMA1_CH8_Handler is null
     with Export, Convention => C, External_Name => "DMA1_CH8_Handler";
   pragma Weak_External (DMA1_CH8_Handler);
   pragma Linker_Alias (DMA1_CH8_Handler, "Dummy_Interrupt_Handler");

   procedure DMA2_CH6_Handler is null
     with Export, Convention => C, External_Name => "DMA2_CH6_Handler";
   pragma Weak_External (DMA2_CH6_Handler);
   pragma Linker_Alias (DMA2_CH6_Handler, "Dummy_Interrupt_Handler");

   procedure DMA2_CH7_Handler is null
     with Export, Convention => C, External_Name => "DMA2_CH7_Handler";
   pragma Weak_External (DMA2_CH7_Handler);
   pragma Linker_Alias (DMA2_CH7_Handler, "Dummy_Interrupt_Handler");

   procedure DMA2_CH8_Handler is null
     with Export, Convention => C, External_Name => "DMA2_CH8_Handler";
   pragma Weak_External (DMA2_CH8_Handler);
   pragma Linker_Alias (DMA2_CH8_Handler, "Dummy_Interrupt_Handler");

   procedure CORDIC_Handler is null
     with Export, Convention => C, External_Name => "CORDIC_Handler";
   pragma Weak_External (CORDIC_Handler);
   pragma Linker_Alias (CORDIC_Handler, "Dummy_Interrupt_Handler");

   procedure FMAC_Handler is null
     with Export, Convention => C, External_Name => "FMAC_Handler";
   pragma Weak_External (FMAC_Handler);
   pragma Linker_Alias (FMAC_Handler, "Dummy_Interrupt_Handler");

   Interrupt_Vectors :
     constant array (A0B.STM32G4.G474.Interrupt_Number) of System.Address :=
     (WWDG                              => WWDG_Handler'Address,
      --  Window Watchdog interrupt
      PVD_PVM                           => PVD_PVM_Handler'Address,
      --  PVD through EXTI line 16 interrupt
      RTC_TAMP_CSS_LSE                  => RTC_TAMP_CSS_LSE_Handler'Address,
      --  RTC/TAMP/CSS on LSE through EXTI line 19 interrupt
      RTC_WKUP                          => RTC_WKUP_Handler'Address,
      --  RTC wake-up timer through EXTI line 20 interrupt
      FLASH                             => FLASH_Handler'Address,
      --  Flash global interrupt
      RCC                               => RCC_Handler'Address,
      --  RCC global interrupt
      EXTI0                             => EXTI0_Handler'Address,
      --  EXTI Line0 interrupt
      EXTI1                             => EXTI1_Handler'Address,
      --  EXTI Line1 interrupt
      EXTI2                             => EXTI2_Handler'Address,
      --  EXTI Line2 interrupt
      EXTI3                             => EXTI3_Handler'Address,
      --  EXTI Line3 interrupt
      EXTI4                             => EXTI4_Handler'Address,
      --  EXTI Line4 interrupt
      DMA1_CH1                          => DMA1_CH1_Handler'Address,
      --  DMA1 channel 1 interrupt
      DMA1_CH2                          => DMA1_CH2_Handler'Address,
      --  DMA1 channel 2 interrupt
      DMA1_CH3                          => DMA1_CH3_Handler'Address,
      --  DMA1 channel 3 interrupt
      DMA1_CH4                          => DMA1_CH4_Handler'Address,
      --  DMA1 channel 4 interrupt
      DMA1_CH5                          => DMA1_CH5_Handler'Address,
      --  DMA1 channel 5 interrupt
      DMA1_CH6                          => DMA1_CH6_Handler'Address,
      --  DMA1 channel 6 interrupt
      DMA1_CH7                          => DMA1_CH7_Handler'Address,
      --  DMA1 channel 7 interrupt
      ADC1_2                            => ADC1_2_Handler'Address,
      --  ADC1 and ADC2 global interrupt
      USB_HP                            => USB_HP_Handler'Address,
      --  USB High priority interrupts
      USB_LP                            => USB_LP_Handler'Address,
      --  USB Low priority interrupts
      FDCAN1_IT0                        => FDCAN1_IT0_Handler'Address,
      --  FDCAN1 interrupt 0
      FDCAN1_IT1                        => FDCAN1_IT1_Handler'Address,
      --  FDCAN1 interrupt1
      EXTI9_5                           => EXTI9_5_Handler'Address,
      --  EXTI Line[9:5] interrupts
      TIM1_BRK_TIM15                    => TIM1_BRK_TIM15_Handler'Address,
      --  TIM1 Break/TIM15 global interrupts
      TIM1_UP_TIM16                     => TIM1_UP_TIM16_Handler'Address,
      --  TIM1 Update/TIM16 global interrupts
      TIM1_TRG_COM_TIM17_TIM1_DIR_TIM1_IDX =>
        TIM1_TRG_COM_TIM17_TIM1_DIR_TIM1_IDX_Handler'Address,
      --  TIM1 trigger and commutation/TIM17 interupts/TIM1 Direction Change
      --  interrupt/TIM1 Index
      TIM1_CC                           => TIM1_CC_Handler'Address,
      --  TIM1 capture compare interrupt
      TIM2                              => TIM2_Handler'Address,
      --  TIM2 global interrupt
      TIM3                              => TIM3_Handler'Address,
      --  TIM3 global interrupt
      TIM4                              => TIM4_Handler'Address,
      --  TIM4 global interrupt
      I2C1_EV                           => I2C1_EV_Handler'Address,
      --  I2C1 event interrupt and EXTI line 23 interrupt
      I2C1_ER                           => I2C1_ER_Handler'Address,
      --  I2C1 error interrupt
      I2C2_EV                           => I2C2_EV_Handler'Address,
      --  I2C2 event interrupt and EXTI line 24 interrupt
      I2C2_ER                           => I2C2_ER_Handler'Address,
      --  I2C2 error interrupt
      SPI1                              => SPI1_Handler'Address,
      --  SPI1 global interrupt
      SPI2                              => SPI2_Handler'Address,
      --  SPI2 global interrupt
      USART1                            => USART1_Handler'Address,
      --  USART1 global interrupt and EXTI line 25
      USART2                            => USART2_Handler'Address,
      --  USART2 global interrupt and EXTI line 26
      USART3                            => USART3_Handler'Address,
      --  USART3 global interrupt and EXTI line 28
      EXTI15_10                         => EXTI15_10'Address,
      --  EXTI line[15:10] interrupts
      RTC_ALARM                         => RTC_ALARM_Handler'Address,
      --  RTC alarms interrupts
      USBWakeUP                         => USBWakeUP_Handler'Address,
      --  USB wake-up from suspend (EXTI line 18)
      TIM8_BRK_TIM8_TERR_TIM8_BRK_TIM8_IERR =>
        TIM8_BRK_TIM8_TERR_TIM8_BRK_TIM8_IERR_Handler'Address,
      --  TIM8 Break interrupt/TIM8 Transition error/TIM8 Index error
      TIM8_UP                           => TIM8_UP_Handler'Address,
      --  TIM8 Update interrupt
      TIM8_TRG_COM_TIM8_DIR_TIM8_IDX    =>
        TIM8_TRG_COM_TIM8_DIR_TIM8_IDX_Handler'Address,
      --  TIM8 trigger and commutation interrupt/TIM8 Direction Change
      --  interrupt/TIM8 Index
      TIM8_CC                           => TIM8_CC_Handler'Address,
      --  TIM8 capture compare interrupt
      ADC3                              => ADC3_Handler'Address,
      --  ADC3 global interrupt
      FSMC                              => FSMC_Handler'Address,
      --  FSMC global interrupt
      LPTIM1                            => LPTIM1_Handler'Address,
      --  LPTIM1 global interrupt
      TIM5                              => TIM5_Handler'Address,
      --  TIM5 global interrupt
      SPI3                              => SPI3_Handler'Address,
      --  SPI3 global interrupt
      UART4                             => UART4_Handler'Address,
      --  UART4 global interrupt and EXTI line 34 interrupts
      UART5                             => UART5_Handler'Address,
      --  UART5 global interrupt and EXTI line 35 interrupts
      TIM6_DACUNDER                     => TIM6_DACUNDER_Handler'Address,
      --  TIM6 and DAC1/3 underrun global interrupts
      TIM7_DACUNDER                     => TIM7_DACUNDER_Handler'Address,
      --  TIM7 and DAC2/4 underrun global interrupts
      DMA2_CH1                          => DMA2_CH1_Handler'Address,
      --  DMA2 channel 1 interrupt
      DMA2_CH2                          => DMA2_CH2_Handler'Address,
      --  DMA2 channel 2 interrupt
      DMA2_CH3                          => DMA2_CH3_Handler'Address,
      --  DMA2 channel 3 interrupt
      DMA2_CH4                          => DMA2_CH4_Handler'Address,
      --  DMA2 channel 4 interrupt
      DMA2_CH5                          => DMA2_CH5_Handler'Address,
      --  DMA2 channel 5 interrupt
      ADC4                              => ADC4_Handler'Address,
      --  ADC4 global interrupt
      ADC5                              => ADC5_Handler'Address,
      --  ADC5 global interrupt
      UCPD1                             => UCPD1_Handler'Address,
      --  UCPD1 global interrupt and EXTI line 43
      COMP1_2_3                         => COMP1_2_3_Handler'Address,
      --  COMP1/COMP2/COMP3 through EXTI lines 21/22/29 interrupts
      COMP4_5_6                         => COMP4_5_6_Handler'Address,
      --  COMP4/COMP5/COMP6 through EXTI lines 30/31/32 interrupts
      COMP7                             => COMP7_Handler'Address,
      --  Global interrupt COMP7 through EXTI line 33
      HRTIM_Master_IRQn                 => HRTIM_Master_IRQn_Handler'Address,
      --  HRTIM master timer interrupt (hrtim_it1)
      HRTIM_TIMA_IRQn                   => HRTIM_TIMA_IRQn_Handler'Address,
      --  HRTIM timer A interrupt (hrtim_it2)
      HRTIM_TIMB_IRQn                   => HRTIM_TIMB_IRQn_Handler'Address,
      --  HRTIM timer B interrupt (hrtim_it3)
      HRTIM_TIMC_IRQn                   => HRTIM_TIMC_IRQn_Handler'Address,
      --  HRTIM timer C interrupt (hrtim_it4)
      HRTIM_TIMD_IRQn                   => HRTIM_TIMD_IRQn_Handler'Address,
      --  HRTIM timer D interrupt (hrtim_it5)
      HRTIM_TIME_IRQn                   => HRTIM_TIME_IRQn_Handler'Address,
      --  HRTIM timer E interrupt (hrtim_it6)
      HRTIM_TIM_FLT_IRQn                => HRTIM_TIM_FLT_IRQn_Handler'Address,
      --  HRTIM fault interrupt (hrtim_it8)
      HRTIM_TIMF_IRQn                   => HRTIM_TIMF_IRQn_Handler'Address,
      --  hrtim_it7 / HRTIM timer F interrupt
      CRS                               => CRS_Handler'Address,
      --  CRS interrupt
      SAI                               => SAI_Handler'Address,
      --  SAI
      TIM20_BRK_TIM20_TERR_TIM20_IERR   =>
        TIM20_BRK_TIM20_TERR_TIM20_IERR_Handler'Address,
      --  TIM20 Break interrupt/TIM20 Transition error/TIM20 Index error
      TIM20_UP                          => TIM20_UP_Handler'Address,
      --  TIM20 Update interrupt
      TIM20_TRG_COM_TIM20_DIR_TIM20_IDX =>
        TIM20_TRG_COM_TIM20_DIR_TIM20_IDX_Handler'Address,
      --  TIM20 Trigger and commutation interrupt/TIM20 Direction Change
      --  interrupt/TIM20 Index
      TIM20_CC                          => TIM20_CC_Handler'Address,
      --  TIM20 capture compare interrupt
      FPU                               => FPU_Handler'Address,
      --  Floating point interrupt
      I2C4_EV                           => I2C4_EV_Handler'Address,
      --  I2C4 event interrupt and EXTI line 42
      I2C4_ER                           => I2C4_ER_Handler'Address,
      --  I2C4 error interrupt
      SPI4                              => SPI4_Handler'Address,
      --  SPI4 global interrupt
      85                                => System.Null_Address,
      FDCAN2_IT0                        => FDCAN2_IT0_Handler'Address,
      --  FDCAN2 Interrupt 0
      FDCAN2_IT1                        => FDCAN2_IT1_Handler'Address,
      --  FDCAN2 Interrupt 1
      FDCAN3_IT0                        => FDCAN3_IT0_Handler'Address,
      --  FDCAN3 Interrupt 0
      FDCAN3_IT1                        => FDCAN3_IT1_Handler'Address,
      --  FDCAN3 Interrupt 1
      RNG                               => RNG_Handler'Address,
      --  RNG global interrupt
      LPUART                            => LPUART_Handler'Address,
      --  LPUART global interrupt
      I2C3_EV                           => I2C3_EV_Handler'Address,
      --  I2C3 event and EXTI line 27 interrupts
      I2C3_ER                           => I2C3_ER_Handler'Address,
      --  I2C3 error interrupt
      DMAMUX_OVR                        => DMAMUX_OVR_Handler'Address,
      --  DMAMUX overrun interrupt
      QUADSPI                           => QUADSPI_Handler'Address,
      --  QUADSPI global interrupt
      DMA1_CH8                          => DMA1_CH8_Handler'Address,
      --  DMA1 channel 8 interrupt
      DMA2_CH6                          => DMA2_CH6_Handler'Address,
      --  DMA2 channel 6 interrupt
      DMA2_CH7                          => DMA2_CH7_Handler'Address,
      --  DMA2 channel 7 interrupt
      DMA2_CH8                          => DMA2_CH8_Handler'Address,
      --  DMA2 channel 8 interrupt
      CORDIC                            => CORDIC_Handler'Address,
      --  CORDIC interrupt
      FMAC                              => FMAC_Handler'Address)
      --  FMAC interrupt
     with Export,
          Linker_Section => ".vectors.interrupts.stm32g474",
          External_Name  => "__light_interrupts_vector";

   -----------------------------
   -- Dummy_Interrupt_Handler --
   -----------------------------

   procedure Dummy_Interrupt_Handler
     renames System_ARMv7M.Dummy_Exception_Handler;

end System_STM32G474;
