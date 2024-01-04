--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

pragma Restrictions (No_Elaboration_Code);

with System;

package body System_STM32H723 is

   procedure Dummy_Interrupt_Handler
     with Export, Convention => C, External_Name => "Dummy_Interrupt_Handler";

   procedure WWDG_Handler is null
     with Export, Convention => C, External_Name => "WWDG_Handler";
   pragma Weak_External (WWDG_Handler);
   pragma Linker_Alias (WWDG_Handler, "Dummy_Interrupt_Handler");

   procedure PVD_AVD_Handler is null
     with Export, Convention => C, External_Name => "PVD_AVD_Handler";
   pragma Weak_External (PVD_AVD_Handler);
   pragma Linker_Alias (PVD_AVD_Handler, "Dummy_Interrupt_Handler");

   procedure TAMP_STAMP_Handler is null
     with Export, Convention => C, External_Name => "TAMP_STAMP_Handler";
   pragma Weak_External (TAMP_STAMP_Handler);
   pragma Linker_Alias (TAMP_STAMP_Handler, "Dummy_Interrupt_Handler");

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

   procedure DMA1_Stream0_Handler is null
     with Export, Convention => C, External_Name => "DMA1_Stream0_Handler";
   pragma Weak_External (DMA1_Stream0_Handler);
   pragma Linker_Alias (DMA1_Stream0_Handler, "Dummy_Interrupt_Handler");

   procedure DMA1_Stream1_Handler is null
     with Export, Convention => C, External_Name => "DMA1_Stream1_Handler";
   pragma Weak_External (DMA1_Stream1_Handler);
   pragma Linker_Alias (DMA1_Stream1_Handler, "Dummy_Interrupt_Handler");

   procedure DMA1_Stream2_Handler is null
     with Export, Convention => C, External_Name => "DMA1_Stream2_Handler";
   pragma Weak_External (DMA1_Stream2_Handler);
   pragma Linker_Alias (DMA1_Stream2_Handler, "Dummy_Interrupt_Handler");

   procedure DMA1_Stream3_Handler is null
     with Export, Convention => C, External_Name => "DMA1_Stream3_Handler";
   pragma Weak_External (DMA1_Stream3_Handler);
   pragma Linker_Alias (DMA1_Stream3_Handler, "Dummy_Interrupt_Handler");

   procedure DMA1_Stream4_Handler is null
     with Export, Convention => C, External_Name => "DMA1_Stream4_Handler";
   pragma Weak_External (DMA1_Stream4_Handler);
   pragma Linker_Alias (DMA1_Stream4_Handler, "Dummy_Interrupt_Handler");

   procedure DMA1_Stream5_Handler is null
     with Export, Convention => C, External_Name => "DMA1_Stream5_Handler";
   pragma Weak_External (DMA1_Stream5_Handler);
   pragma Linker_Alias (DMA1_Stream5_Handler, "Dummy_Interrupt_Handler");

   procedure DMA1_Stream6_Handler is null
     with Export, Convention => C, External_Name => "DMA1_Stream6_Handler";
   pragma Weak_External (DMA1_Stream6_Handler);
   pragma Linker_Alias (DMA1_Stream6_Handler, "Dummy_Interrupt_Handler");

   procedure ADC_Handler is null
     with Export, Convention => C, External_Name => "ADC_Handler";
   pragma Weak_External (ADC_Handler);
   pragma Linker_Alias (ADC_Handler, "Dummy_Interrupt_Handler");

   procedure FDCAN1_IT0_Handler is null
     with Export, Convention => C, External_Name => "FDCAN1_IT0_Handler";
   pragma Weak_External (FDCAN1_IT0_Handler);
   pragma Linker_Alias (FDCAN1_IT0_Handler, "Dummy_Interrupt_Handler");

   procedure FDCAN2_IT0_Handler is null
     with Export, Convention => C, External_Name => "FDCAN2_IT0_Handler";
   pragma Weak_External (FDCAN2_IT0_Handler);
   pragma Linker_Alias (FDCAN2_IT0_Handler, "Dummy_Interrupt_Handler");

   procedure FDCAN1_IT1_Handler is null
     with Export, Convention => C, External_Name => "FDCAN1_IT1_Handler";
   pragma Weak_External (FDCAN1_IT1_Handler);
   pragma Linker_Alias (FDCAN1_IT1_Handler, "Dummy_Interrupt_Handler");

   procedure FDCAN2_IT1_Handler is null
     with Export, Convention => C, External_Name => "FDCAN2_IT1_Handler";
   pragma Weak_External (FDCAN2_IT1_Handler);
   pragma Linker_Alias (FDCAN2_IT1_Handler, "Dummy_Interrupt_Handler");

   procedure EXTI9_5_Handler is null
     with Export, Convention => C, External_Name => "EXTI9_5_Handler";
   pragma Weak_External (EXTI9_5_Handler);
   pragma Linker_Alias (EXTI9_5_Handler, "Dummy_Interrupt_Handler");

   procedure TIM1_BRK_Handler is null
     with Export, Convention => C, External_Name => "TIM1_BRK_Handler";
   pragma Weak_External (TIM1_BRK_Handler);
   pragma Linker_Alias (TIM1_BRK_Handler, "Dummy_Interrupt_Handler");

   procedure TIM1_UP_Handler is null
     with Export, Convention => C, External_Name => "TIM1_UP_Handler";
   pragma Weak_External (TIM1_UP_Handler);
   pragma Linker_Alias (TIM1_UP_Handler, "Dummy_Interrupt_Handler");

   procedure TIM1_TRG_COM_Handler is null
     with Export, Convention => C, External_Name => "TIM1_TRG_COM_Handler";
   pragma Weak_External (TIM1_TRG_COM_Handler);
   pragma Linker_Alias (TIM1_TRG_COM_Handler, "Dummy_Interrupt_Handler");

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

   procedure RTC_Alarm_Handler is null
     with Export, Convention => C, External_Name => "RTC_Alarm_Handler";
   pragma Weak_External (RTC_Alarm_Handler);
   pragma Linker_Alias (RTC_Alarm_Handler, "Dummy_Interrupt_Handler");

   procedure TIM8_BRK_TIM12_Handler is null
     with Export, Convention => C, External_Name => "TIM8_BRK_TIM12_Handler";
   pragma Weak_External (TIM8_BRK_TIM12_Handler);
   pragma Linker_Alias (TIM8_BRK_TIM12_Handler, "Dummy_Interrupt_Handler");

   procedure TIM8_UP_TIM13_Handler is null
     with Export, Convention => C, External_Name => "TIM8_UP_TIM13_Handler";
   pragma Weak_External (TIM8_UP_TIM13_Handler);
   pragma Linker_Alias (TIM8_UP_TIM13_Handler, "Dummy_Interrupt_Handler");

   procedure TIM8_TRG_COM_TIM14_Handler is null
     with Export, Convention => C, External_Name => "TIM8_TRG_COM_TIM14_Handler";
   pragma Weak_External (TIM8_TRG_COM_TIM14_Handler);
   pragma Linker_Alias (TIM8_TRG_COM_TIM14_Handler, "Dummy_Interrupt_Handler");

   procedure TIM8_CC_Handler is null
     with Export, Convention => C, External_Name => "TIM8_CC_Handler";
   pragma Weak_External (TIM8_CC_Handler);
   pragma Linker_Alias (TIM8_CC_Handler, "Dummy_Interrupt_Handler");

   procedure DMA1_Stream7_Handler is null
     with Export, Convention => C, External_Name => "DMA1_Stream7_Handler";
   pragma Weak_External (DMA1_Stream7_Handler);
   pragma Linker_Alias (DMA1_Stream7_Handler, "Dummy_Interrupt_Handler");

   procedure FMC_Handler is null
     with Export, Convention => C, External_Name => "FMC_Handler";
   pragma Weak_External (FMC_Handler);
   pragma Linker_Alias (FMC_Handler, "Dummy_Interrupt_Handler");

   procedure SDMMC1_Handler is null
     with Export, Convention => C, External_Name => "SDMMC1_Handler";
   pragma Weak_External (SDMMC1_Handler);
   pragma Linker_Alias (SDMMC1_Handler, "Dummy_Interrupt_Handler");

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

   procedure TIM6_DAC_Handler is null
     with Export, Convention => C, External_Name => "TIM6_DAC_Handler";
   pragma Weak_External (TIM6_DAC_Handler);
   pragma Linker_Alias (TIM6_DAC_Handler, "Dummy_Interrupt_Handler");

   procedure TIM7_Handler is null
     with Export, Convention => C, External_Name => "TIM7_Handler";
   pragma Weak_External (TIM7_Handler);
   pragma Linker_Alias (TIM7_Handler, "Dummy_Interrupt_Handler");

   procedure DMA2_Stream0_Handler is null
     with Export, Convention => C, External_Name => "DMA2_Stream0_Handler";
   pragma Weak_External (DMA2_Stream0_Handler);
   pragma Linker_Alias (DMA2_Stream0_Handler, "Dummy_Interrupt_Handler");

   procedure DMA2_Stream1_Handler is null
     with Export, Convention => C, External_Name => "DMA2_Stream1_Handler";
   pragma Weak_External (DMA2_Stream1_Handler);
   pragma Linker_Alias (DMA2_Stream1_Handler, "Dummy_Interrupt_Handler");

   procedure DMA2_Stream2_Handler is null
     with Export, Convention => C, External_Name => "DMA2_Stream2_Handler";
   pragma Weak_External (DMA2_Stream2_Handler);
   pragma Linker_Alias (DMA2_Stream2_Handler, "Dummy_Interrupt_Handler");

   procedure DMA2_Stream3_Handler is null
     with Export, Convention => C, External_Name => "DMA2_Stream3_Handler";
   pragma Weak_External (DMA2_Stream3_Handler);
   pragma Linker_Alias (DMA2_Stream3_Handler, "Dummy_Interrupt_Handler");

   procedure DMA2_Stream4_Handler is null
     with Export, Convention => C, External_Name => "DMA2_Stream4_Handler";
   pragma Weak_External (DMA2_Stream4_Handler);
   pragma Linker_Alias (DMA2_Stream4_Handler, "Dummy_Interrupt_Handler");

   procedure ETH_Handler is null
     with Export, Convention => C, External_Name => "ETH_Handler";
   pragma Weak_External (ETH_Handler);
   pragma Linker_Alias (ETH_Handler, "Dummy_Interrupt_Handler");

   procedure ETH_WKUP_Handler is null
     with Export, Convention => C, External_Name => "ETH_WKUP_Handler";
   pragma Weak_External (ETH_WKUP_Handler);
   pragma Linker_Alias (ETH_WKUP_Handler, "Dummy_Interrupt_Handler");

   procedure FDCAN_CAL_Handler is null
     with Export, Convention => C, External_Name => "FDCAN_CAL_Handler";
   pragma Weak_External (FDCAN_CAL_Handler);
   pragma Linker_Alias (FDCAN_CAL_Handler, "Dummy_Interrupt_Handler");

   procedure DMA2_Stream5_Handler is null
     with Export, Convention => C, External_Name => "DMA2_Stream5_Handler";
   pragma Weak_External (DMA2_Stream5_Handler);
   pragma Linker_Alias (DMA2_Stream5_Handler, "Dummy_Interrupt_Handler");

   procedure DMA2_Stream6_Handler is null
     with Export, Convention => C, External_Name => "DMA2_Stream6_Handler";
   pragma Weak_External (DMA2_Stream6_Handler);
   pragma Linker_Alias (DMA2_Stream6_Handler, "Dummy_Interrupt_Handler");

   procedure DMA2_Stream7_Handler is null
     with Export, Convention => C, External_Name => "DMA2_Stream7_Handler";
   pragma Weak_External (DMA2_Stream7_Handler);
   pragma Linker_Alias (DMA2_Stream7_Handler, "Dummy_Interrupt_Handler");

   procedure USART6_Handler is null
     with Export, Convention => C, External_Name => "USART6_Handler";
   pragma Weak_External (USART6_Handler);
   pragma Linker_Alias (USART6_Handler, "Dummy_Interrupt_Handler");

   procedure I2C3_EV_Handler is null
     with Export, Convention => C, External_Name => "I2C3_EV_Handler";
   pragma Weak_External (I2C3_EV_Handler);
   pragma Linker_Alias (I2C3_EV_Handler, "Dummy_Interrupt_Handler");

   procedure I2C3_ER_Handler is null
     with Export, Convention => C, External_Name => "I2C3_ER_Handler";
   pragma Weak_External (I2C3_ER_Handler);
   pragma Linker_Alias (I2C3_ER_Handler, "Dummy_Interrupt_Handler");

   procedure OTG_HS_EP1_OUT_Handler is null
     with Export, Convention => C, External_Name => "OTG_HS_EP1_OUT_Handler";
   pragma Weak_External (OTG_HS_EP1_OUT_Handler);
   pragma Linker_Alias (OTG_HS_EP1_OUT_Handler, "Dummy_Interrupt_Handler");

   procedure OTG_HS_EP1_IN_Handler is null
     with Export, Convention => C, External_Name => "OTG_HS_EP1_IN_Handler";
   pragma Weak_External (OTG_HS_EP1_IN_Handler);
   pragma Linker_Alias (OTG_HS_EP1_IN_Handler, "Dummy_Interrupt_Handler");

   procedure OTG_HS_WKUP_Handler is null
     with Export, Convention => C, External_Name => "OTG_HS_WKUP_Handler";
   pragma Weak_External (OTG_HS_WKUP_Handler);
   pragma Linker_Alias (OTG_HS_WKUP_Handler, "Dummy_Interrupt_Handler");

   procedure OTG_HS_Handler is null
     with Export, Convention => C, External_Name => "OTG_HS_Handler";
   pragma Weak_External (OTG_HS_Handler);
   pragma Linker_Alias (OTG_HS_Handler, "Dummy_Interrupt_Handler");

   procedure DCMI_PSSI_Handler is null
     with Export, Convention => C, External_Name => "DCMI_PSSI_Handler";
   pragma Weak_External (DCMI_PSSI_Handler);
   pragma Linker_Alias (DCMI_PSSI_Handler, "Dummy_Interrupt_Handler");

   procedure RNG_Handler is null
     with Export, Convention => C, External_Name => "RNG_Handler";
   pragma Weak_External (RNG_Handler);
   pragma Linker_Alias (RNG_Handler, "Dummy_Interrupt_Handler");

   procedure FPU_Handler is null
     with Export, Convention => C, External_Name => "FPU_Handler";
   pragma Weak_External (FPU_Handler);
   pragma Linker_Alias (FPU_Handler, "Dummy_Interrupt_Handler");

   procedure UART7_Handler is null
     with Export, Convention => C, External_Name => "UART7_Handler";
   pragma Weak_External (UART7_Handler);
   pragma Linker_Alias (UART7_Handler, "Dummy_Interrupt_Handler");

   procedure UART8_Handler is null
     with Export, Convention => C, External_Name => "UART8_Handler";
   pragma Weak_External (UART8_Handler);
   pragma Linker_Alias (UART8_Handler, "Dummy_Interrupt_Handler");

   procedure SPI4_Handler is null
     with Export, Convention => C, External_Name => "SPI4_Handler";
   pragma Weak_External (SPI4_Handler);
   pragma Linker_Alias (SPI4_Handler, "Dummy_Interrupt_Handler");

   procedure SPI5_Handler is null
     with Export, Convention => C, External_Name => "SPI5_Handler";
   pragma Weak_External (SPI5_Handler);
   pragma Linker_Alias (SPI5_Handler, "Dummy_Interrupt_Handler");

   procedure SPI6_Handler is null
     with Export, Convention => C, External_Name => "SPI6_Handler";
   pragma Weak_External (SPI6_Handler);
   pragma Linker_Alias (SPI6_Handler, "Dummy_Interrupt_Handler");

   procedure SAI1_Handler is null
     with Export, Convention => C, External_Name => "SAI1_Handler";
   pragma Weak_External (SAI1_Handler);
   pragma Linker_Alias (SAI1_Handler, "Dummy_Interrupt_Handler");

   procedure LTDC_Handler is null
     with Export, Convention => C, External_Name => "LTDC_Handler";
   pragma Weak_External (LTDC_Handler);
   pragma Linker_Alias (LTDC_Handler, "Dummy_Interrupt_Handler");

   procedure LTDC_ER_Handler is null
     with Export, Convention => C, External_Name => "LTDC_ER_Handler";
   pragma Weak_External (LTDC_ER_Handler);
   pragma Linker_Alias (LTDC_ER_Handler, "Dummy_Interrupt_Handler");

   procedure DMA2D_Handler is null
     with Export, Convention => C, External_Name => "DMA2D_Handler";
   pragma Weak_External (DMA2D_Handler);
   pragma Linker_Alias (DMA2D_Handler, "Dummy_Interrupt_Handler");

   procedure OCTOSPI1_Handler is null
     with Export, Convention => C, External_Name => "OCTOSPI1_Handler";
   pragma Weak_External (OCTOSPI1_Handler);
   pragma Linker_Alias (OCTOSPI1_Handler, "Dummy_Interrupt_Handler");

   procedure LPTIM1_Handler is null
     with Export, Convention => C, External_Name => "LPTIM1_Handler";
   pragma Weak_External (LPTIM1_Handler);
   pragma Linker_Alias (LPTIM1_Handler, "Dummy_Interrupt_Handler");

   procedure CEC_Handler is null
     with Export, Convention => C, External_Name => "CEC_Handler";
   pragma Weak_External (CEC_Handler);
   pragma Linker_Alias (CEC_Handler, "Dummy_Interrupt_Handler");

   procedure I2C4_EV_Handler is null
     with Export, Convention => C, External_Name => "I2C4_EV_Handler";
   pragma Weak_External (I2C4_EV_Handler);
   pragma Linker_Alias (I2C4_EV_Handler, "Dummy_Interrupt_Handler");

   procedure I2C4_ER_Handler is null
     with Export, Convention => C, External_Name => "I2C4_ER_Handler";
   pragma Weak_External (I2C4_ER_Handler);
   pragma Linker_Alias (I2C4_ER_Handler, "Dummy_Interrupt_Handler");

   procedure SPDIF_RX_Handler is null
     with Export, Convention => C, External_Name => "SPDIF_RX_Handler";
   pragma Weak_External (SPDIF_RX_Handler);
   pragma Linker_Alias (SPDIF_RX_Handler, "Dummy_Interrupt_Handler");

   procedure DMAMUX1_OVR_Handler is null
     with Export, Convention => C, External_Name => "DMAMUX1_OVR_Handler";
   pragma Weak_External (DMAMUX1_OVR_Handler);
   pragma Linker_Alias (DMAMUX1_OVR_Handler, "Dummy_Interrupt_Handler");

   procedure DFSDM1_FLT0_Handler is null
     with Export, Convention => C, External_Name => "DFSDM1_FLT0_Handler";
   pragma Weak_External (DFSDM1_FLT0_Handler);
   pragma Linker_Alias (DFSDM1_FLT0_Handler, "Dummy_Interrupt_Handler");

   procedure DFSDM1_FLT1_Handler is null
     with Export, Convention => C, External_Name => "DFSDM1_FLT1_Handler";
   pragma Weak_External (DFSDM1_FLT1_Handler);
   pragma Linker_Alias (DFSDM1_FLT1_Handler, "Dummy_Interrupt_Handler");

   procedure DFSDM1_FLT2_Handler is null
     with Export, Convention => C, External_Name => "DFSDM1_FLT2_Handler";
   pragma Weak_External (DFSDM1_FLT2_Handler);
   pragma Linker_Alias (DFSDM1_FLT2_Handler, "Dummy_Interrupt_Handler");

   procedure DFSDM1_FLT3_Handler is null
     with Export, Convention => C, External_Name => "DFSDM1_FLT3_Handler";
   pragma Weak_External (DFSDM1_FLT3_Handler);
   pragma Linker_Alias (DFSDM1_FLT3_Handler, "Dummy_Interrupt_Handler");

   procedure SWPMI1_Handler is null
     with Export, Convention => C, External_Name => "SWPMI1_Handler";
   pragma Weak_External (SWPMI1_Handler);
   pragma Linker_Alias (SWPMI1_Handler, "Dummy_Interrupt_Handler");

   procedure TIM15_Handler is null
     with Export, Convention => C, External_Name => "TIM15_Handler";
   pragma Weak_External (TIM15_Handler);
   pragma Linker_Alias (TIM15_Handler, "Dummy_Interrupt_Handler");

   procedure TIM16_Handler is null
     with Export, Convention => C, External_Name => "TIM16_Handler";
   pragma Weak_External (TIM16_Handler);
   pragma Linker_Alias (TIM16_Handler, "Dummy_Interrupt_Handler");

   procedure TIM17_Handler is null
     with Export, Convention => C, External_Name => "TIM17_Handler";
   pragma Weak_External (TIM17_Handler);
   pragma Linker_Alias (TIM17_Handler, "Dummy_Interrupt_Handler");

   procedure MDIOS_WKUP_Handler is null
     with Export, Convention => C, External_Name => "MDIOS_WKUP_Handler";
   pragma Weak_External (MDIOS_WKUP_Handler);
   pragma Linker_Alias (MDIOS_WKUP_Handler, "Dummy_Interrupt_Handler");

   procedure MDIOS_Handler is null
     with Export, Convention => C, External_Name => "MDIOS_Handler";
   pragma Weak_External (MDIOS_Handler);
   pragma Linker_Alias (MDIOS_Handler, "Dummy_Interrupt_Handler");

   procedure MDMA_Handler is null
     with Export, Convention => C, External_Name => "MDMA_Handler";
   pragma Weak_External (MDMA_Handler);
   pragma Linker_Alias (MDMA_Handler, "Dummy_Interrupt_Handler");

   procedure SDMMC2_Handler is null
     with Export, Convention => C, External_Name => "SDMMC2_Handler";
   pragma Weak_External (SDMMC2_Handler);
   pragma Linker_Alias (SDMMC2_Handler, "Dummy_Interrupt_Handler");

   procedure HSEM1_Handler is null
     with Export, Convention => C, External_Name => "HSEM1_Handler";
   pragma Weak_External (HSEM1_Handler);
   pragma Linker_Alias (HSEM1_Handler, "Dummy_Interrupt_Handler");

   procedure ADC3_Handler is null
     with Export, Convention => C, External_Name => "ADC3_Handler";
   pragma Weak_External (ADC3_Handler);
   pragma Linker_Alias (ADC3_Handler, "Dummy_Interrupt_Handler");

   procedure DMAMUX2_OVR_Handler is null
     with Export, Convention => C, External_Name => "DMAMUX2_OVR_Handler";
   pragma Weak_External (DMAMUX2_OVR_Handler);
   pragma Linker_Alias (DMAMUX2_OVR_Handler, "Dummy_Interrupt_Handler");

   procedure BDMA_Channel0_Handler is null
     with Export, Convention => C, External_Name => "BDMA_Channel0_Handler";
   pragma Weak_External (BDMA_Channel0_Handler);
   pragma Linker_Alias (BDMA_Channel0_Handler, "Dummy_Interrupt_Handler");

   procedure BDMA_Channel1_Handler is null
     with Export, Convention => C, External_Name => "BDMA_Channel1_Handler";
   pragma Weak_External (BDMA_Channel1_Handler);
   pragma Linker_Alias (BDMA_Channel1_Handler, "Dummy_Interrupt_Handler");

   procedure BDMA_Channel2_Handler is null
     with Export, Convention => C, External_Name => "BDMA_Channel2_Handler";
   pragma Weak_External (BDMA_Channel2_Handler);
   pragma Linker_Alias (BDMA_Channel2_Handler, "Dummy_Interrupt_Handler");

   procedure BDMA_Channel3_Handler is null
     with Export, Convention => C, External_Name => "BDMA_Channel3_Handler";
   pragma Weak_External (BDMA_Channel3_Handler);
   pragma Linker_Alias (BDMA_Channel3_Handler, "Dummy_Interrupt_Handler");

   procedure BDMA_Channel4_Handler is null
     with Export, Convention => C, External_Name => "BDMA_Channel4_Handler";
   pragma Weak_External (BDMA_Channel4_Handler);
   pragma Linker_Alias (BDMA_Channel4_Handler, "Dummy_Interrupt_Handler");

   procedure BDMA_Channel5_Handler is null
     with Export, Convention => C, External_Name => "BDMA_Channel5_Handler";
   pragma Weak_External (BDMA_Channel5_Handler);
   pragma Linker_Alias (BDMA_Channel5_Handler, "Dummy_Interrupt_Handler");

   procedure BDMA_Channel6_Handler is null
     with Export, Convention => C, External_Name => "BDMA_Channel6_Handler";
   pragma Weak_External (BDMA_Channel6_Handler);
   pragma Linker_Alias (BDMA_Channel6_Handler, "Dummy_Interrupt_Handler");

   procedure BDMA_Channel7_Handler is null
     with Export, Convention => C, External_Name => "BDMA_Channel7_Handler";
   pragma Weak_External (BDMA_Channel7_Handler);
   pragma Linker_Alias (BDMA_Channel7_Handler, "Dummy_Interrupt_Handler");

   procedure COMP1_Handler is null
     with Export, Convention => C, External_Name => "COMP1_Handler";
   pragma Weak_External (COMP1_Handler);
   pragma Linker_Alias (COMP1_Handler, "Dummy_Interrupt_Handler");

   procedure LPTIM2_Handler is null
     with Export, Convention => C, External_Name => "LPTIM2_Handler";
   pragma Weak_External (LPTIM2_Handler);
   pragma Linker_Alias (LPTIM2_Handler, "Dummy_Interrupt_Handler");

   procedure LPTIM3_Handler is null
     with Export, Convention => C, External_Name => "LPTIM3_Handler";
   pragma Weak_External (LPTIM3_Handler);
   pragma Linker_Alias (LPTIM3_Handler, "Dummy_Interrupt_Handler");

   procedure LPTIM4_Handler is null
     with Export, Convention => C, External_Name => "LPTIM4_Handler";
   pragma Weak_External (LPTIM4_Handler);
   pragma Linker_Alias (LPTIM4_Handler, "Dummy_Interrupt_Handler");

   procedure LPTIM5_Handler is null
     with Export, Convention => C, External_Name => "LPTIM5_Handler";
   pragma Weak_External (LPTIM5_Handler);
   pragma Linker_Alias (LPTIM5_Handler, "Dummy_Interrupt_Handler");

   procedure LPUART1_Handler is null
     with Export, Convention => C, External_Name => "LPUART1_Handler";
   pragma Weak_External (LPUART1_Handler);
   pragma Linker_Alias (LPUART1_Handler, "Dummy_Interrupt_Handler");

   procedure CRS_Handler is null
     with Export, Convention => C, External_Name => "CRS_Handler";
   pragma Weak_External (CRS_Handler);
   pragma Linker_Alias (CRS_Handler, "Dummy_Interrupt_Handler");

   procedure ECC_Handler is null
     with Export, Convention => C, External_Name => "ECC_Handler";
   pragma Weak_External (ECC_Handler);
   pragma Linker_Alias (ECC_Handler, "Dummy_Interrupt_Handler");

   procedure SAI4_Handler is null
     with Export, Convention => C, External_Name => "SAI4_Handler";
   pragma Weak_External (SAI4_Handler);
   pragma Linker_Alias (SAI4_Handler, "Dummy_Interrupt_Handler");

   procedure DTS_Handler is null
     with Export, Convention => C, External_Name => "DTS_Handler";
   pragma Weak_External (DTS_Handler);
   pragma Linker_Alias (DTS_Handler, "Dummy_Interrupt_Handler");

   procedure WAKEUP_PIN_Handler is null
     with Export, Convention => C, External_Name => "WAKEUP_PIN_Handler";
   pragma Weak_External (WAKEUP_PIN_Handler);
   pragma Linker_Alias (WAKEUP_PIN_Handler, "Dummy_Interrupt_Handler");

   procedure OCTOSPI2_Handler is null
     with Export, Convention => C, External_Name => "OCTOSPI2_Handler";
   pragma Weak_External (OCTOSPI2_Handler);
   pragma Linker_Alias (OCTOSPI2_Handler, "Dummy_Interrupt_Handler");

   procedure FMAC_Handler is null
     with Export, Convention => C, External_Name => "FMAC_Handler";
   pragma Weak_External (FMAC_Handler);
   pragma Linker_Alias (FMAC_Handler, "Dummy_Interrupt_Handler");

   procedure CORDIC_Handler is null
     with Export, Convention => C, External_Name => "CORDIC_Handler";
   pragma Weak_External (CORDIC_Handler);
   pragma Linker_Alias (CORDIC_Handler, "Dummy_Interrupt_Handler");

   procedure UART9_Handler is null
     with Export, Convention => C, External_Name => "UART9_Handler";
   pragma Weak_External (UART9_Handler);
   pragma Linker_Alias (UART9_Handler, "Dummy_Interrupt_Handler");

   procedure USART10_Handler is null
     with Export, Convention => C, External_Name => "USART10_Handler";
   pragma Weak_External (USART10_Handler);
   pragma Linker_Alias (USART10_Handler, "Dummy_Interrupt_Handler");

   procedure I2C5_EV_Handler is null
     with Export, Convention => C, External_Name => "I2C5_EV_Handler";
   pragma Weak_External (I2C5_EV_Handler);
   pragma Linker_Alias (I2C5_EV_Handler, "Dummy_Interrupt_Handler");

   procedure I2C5_ER_Handler is null
     with Export, Convention => C, External_Name => "I2C5_ER_Handler";
   pragma Weak_External (I2C5_ER_Handler);
   pragma Linker_Alias (I2C5_ER_Handler, "Dummy_Interrupt_Handler");

   procedure FDCAN3_IT0_Handler is null
     with Export, Convention => C, External_Name => "FDCAN3_IT0_Handler";
   pragma Weak_External (FDCAN3_IT0_Handler);
   pragma Linker_Alias (FDCAN3_IT0_Handler, "Dummy_Interrupt_Handler");

   procedure FDCAN3_IT1_Handler is null
     with Export, Convention => C, External_Name => "FDCAN3_IT1_Handler";
   pragma Weak_External (FDCAN3_IT1_Handler);
   pragma Linker_Alias (FDCAN3_IT1_Handler, "Dummy_Interrupt_Handler");

   procedure TIM23_Handler is null
     with Export, Convention => C, External_Name => "TIM23_Handler";
   pragma Weak_External (TIM23_Handler);
   pragma Linker_Alias (TIM23_Handler, "Dummy_Interrupt_Handler");

   procedure TIM24_Handler is null
     with Export, Convention => C, External_Name => "TIM24_Handler";
   pragma Weak_External (TIM24_Handler);
   pragma Linker_Alias (TIM24_Handler, "Dummy_Interrupt_Handler");

   Interrupt_Vectors :
     constant array (STM32H723_Interrupt_Event_Identifier) of System.Address :=
     (
      0   => WWDG_Handler'Address,                --  Window WatchDog
      1   => PVD_AVD_Handler'Address,             --  PVD/AVD through EXTI Line detection
      2   => TAMP_STAMP_Handler'Address,          --  Tamper and TimeStamps through the EXTI line
      3   => RTC_WKUP_Handler'Address,            --  RTC Wakeup through the EXTI line
      4   => FLASH_Handler'Address,               --  FLASH
      5   => RCC_Handler'Address,                 --  RCC
      6   => EXTI0_Handler'Address,               --  EXTI Line0
      7   => EXTI1_Handler'Address,               --  EXTI Line1
      8   => EXTI2_Handler'Address,               --  EXTI Line2
      9   => EXTI3_Handler'Address,               --  EXTI Line3
      10  => EXTI4_Handler'Address,               --  EXTI Line4
      11  => DMA1_Stream0_Handler'Address,        --  DMA1 Stream 0
      12  => DMA1_Stream1_Handler'Address,        --  DMA1 Stream 1
      13  => DMA1_Stream2_Handler'Address,        --  DMA1 Stream 2
      14  => DMA1_Stream3_Handler'Address,        --  DMA1 Stream 3
      15  => DMA1_Stream4_Handler'Address,        --  DMA1 Stream 4
      16  => DMA1_Stream5_Handler'Address,        --  DMA1 Stream 5
      17  => DMA1_Stream6_Handler'Address,        --  DMA1 Stream 6
      18  => ADC_Handler'Address,                 --  ADC1, ADC2 and ADC3s
      19  => FDCAN1_IT0_Handler'Address,          --  FDCAN1 interrupt line 0
      20  => FDCAN2_IT0_Handler'Address,          --  FDCAN2 interrupt line 0
      21  => FDCAN1_IT1_Handler'Address,          --  FDCAN1 interrupt line 1
      22  => FDCAN2_IT1_Handler'Address,          --  FDCAN2 interrupt line 1
      23  => EXTI9_5_Handler'Address,             --  External Line[9:5]s
      24  => TIM1_BRK_Handler'Address,            --  TIM1 Break interrupt
      25  => TIM1_UP_Handler'Address,             --  TIM1 Update interrupt
      26  => TIM1_TRG_COM_Handler'Address,        --  TIM1 Trigger and Commutation interrupt
      27  => TIM1_CC_Handler'Address,             --  TIM1 Capture Compare
      28  => TIM2_Handler'Address,                --  TIM2
      29  => TIM3_Handler'Address,                --  TIM3
      30  => TIM4_Handler'Address,                --  TIM4
      31  => I2C1_EV_Handler'Address,             --  I2C1 Event
      32  => I2C1_ER_Handler'Address,             --  I2C1 Error
      33  => I2C2_EV_Handler'Address,             --  I2C2 Event
      34  => I2C2_ER_Handler'Address,             --  I2C2 Error
      35  => SPI1_Handler'Address,                --  SPI1
      36  => SPI2_Handler'Address,                --  SPI2
      37  => USART1_Handler'Address,              --  USART1
      38  => USART2_Handler'Address,              --  USART2
      39  => USART3_Handler'Address,              --  USART3
      40  => EXTI15_10_Handler'Address,           --  External Line[15:10]s
      41  => RTC_Alarm_Handler'Address,           --  RTC Alarm (A and B) through EXTI Line
      42  => System.Null_Address,                 --  Reserved
      43  => TIM8_BRK_TIM12_Handler'Address,      --  TIM8 Break and TIM12
      44  => TIM8_UP_TIM13_Handler'Address,       --  TIM8 Update and TIM13
      45  => TIM8_TRG_COM_TIM14_Handler'Address,  --  TIM8 Trigger and Commutation and TIM14
      46  => TIM8_CC_Handler'Address,             --  TIM8 Capture Compare
      47  => DMA1_Stream7_Handler'Address,        --  DMA1 Stream7
      48  => FMC_Handler'Address,                 --  FMC
      49  => SDMMC1_Handler'Address,              --  SDMMC1
      50  => TIM5_Handler'Address,                --  TIM5
      51  => SPI3_Handler'Address,                --  SPI3
      52  => UART4_Handler'Address,               --  UART4
      53  => UART5_Handler'Address,               --  UART5
      54  => TIM6_DAC_Handler'Address,            --  TIM6 and DAC1&2 underrun errors
      55  => TIM7_Handler'Address,                --  TIM7
      56  => DMA2_Stream0_Handler'Address,        --  DMA2 Stream 0
      57  => DMA2_Stream1_Handler'Address,        --  DMA2 Stream 1
      58  => DMA2_Stream2_Handler'Address,        --  DMA2 Stream 2
      59  => DMA2_Stream3_Handler'Address,        --  DMA2 Stream 3
      60  => DMA2_Stream4_Handler'Address,        --  DMA2 Stream 4
      61  => ETH_Handler'Address,                 --  Ethernet
      62  => ETH_WKUP_Handler'Address,            --  Ethernet Wakeup through EXTI line
      63  => FDCAN_CAL_Handler'Address,           --  FDCAN calibration unit interrupt
      64  => System.Null_Address,                 --  Reserved
      65  => System.Null_Address,                 --  Reserved
      66  => System.Null_Address,                 --  Reserved
      67  => System.Null_Address,                 --  Reserved
      68  => DMA2_Stream5_Handler'Address,        --  DMA2 Stream 5
      69  => DMA2_Stream6_Handler'Address,        --  DMA2 Stream 6
      70  => DMA2_Stream7_Handler'Address,        --  DMA2 Stream 7
      71  => USART6_Handler'Address,              --  USART6
      72  => I2C3_EV_Handler'Address,             --  I2C3 event
      73  => I2C3_ER_Handler'Address,             --  I2C3 error
      74  => OTG_HS_EP1_OUT_Handler'Address,      --  USB OTG HS End Point 1 Out
      75  => OTG_HS_EP1_IN_Handler'Address,       --  USB OTG HS End Point 1 In
      76  => OTG_HS_WKUP_Handler'Address,         --  USB OTG HS Wakeup through EXTI
      77  => OTG_HS_Handler'Address,              --  USB OTG HS
      78  => DCMI_PSSI_Handler'Address,           --  DCMI, PSSI
      79  => System.Null_Address,                 --  Reserved (CRYP global interrupt)
      80  => RNG_Handler'Address,                 --  Rng
      81  => FPU_Handler'Address,                 --  FPU
      82  => UART7_Handler'Address,               --  UART7
      83  => UART8_Handler'Address,               --  UART8
      84  => SPI4_Handler'Address,                --  SPI4
      85  => SPI5_Handler'Address,                --  SPI5
      86  => SPI6_Handler'Address,                --  SPI6
      87  => SAI1_Handler'Address,                --  SAI1
      88  => LTDC_Handler'Address,                --  LTDC
      89  => LTDC_ER_Handler'Address,             --  LTDC error
      90  => DMA2D_Handler'Address,               --  DMA2D
      91  => System.Null_Address,                 --  Reserved
      92  => OCTOSPI1_Handler'Address,            --  OCTOSPI1
      93  => LPTIM1_Handler'Address,              --  LPTIM1
      94  => CEC_Handler'Address,                 --  HDMI_CEC
      95  => I2C4_EV_Handler'Address,             --  I2C4 Event
      96  => I2C4_ER_Handler'Address,             --  I2C4 Error
      97  => SPDIF_RX_Handler'Address,            --  SPDIF_RX
      98  => System.Null_Address,                 --  Reserved
      99  => System.Null_Address,                 --  Reserved
      100 => System.Null_Address,                 --  Reserved
      101 => System.Null_Address,                 --  Reserved
      102 => DMAMUX1_OVR_Handler'Address,         --  DMAMUX1 Overrun interrupt
      103 => System.Null_Address,                 --  Reserved
      104 => System.Null_Address,                 --  Reserved
      105 => System.Null_Address,                 --  Reserved
      106 => System.Null_Address,                 --  Reserved
      107 => System.Null_Address,                 --  Reserved
      108 => System.Null_Address,                 --  Reserved
      109 => System.Null_Address,                 --  Reserved
      110 => DFSDM1_FLT0_Handler'Address,         --  DFSDM Filter0 Interrupt
      111 => DFSDM1_FLT1_Handler'Address,         --  DFSDM Filter1 Interrupt
      112 => DFSDM1_FLT2_Handler'Address,         --  DFSDM Filter2 Interrupt
      113 => DFSDM1_FLT3_Handler'Address,         --  DFSDM Filter3 Interrupt
      114 => System.Null_Address,                 --  Reserved
      115 => SWPMI1_Handler'Address,              --  Serial Wire Interface 1 global interrupt
      116 => TIM15_Handler'Address,               --  TIM15 global Interrupt
      117 => TIM16_Handler'Address,               --  TIM16 global Interrupt
      118 => TIM17_Handler'Address,               --  TIM17 global Interrupt
      119 => MDIOS_WKUP_Handler'Address,          --  MDIOS Wakeup  Interrupt
      120 => MDIOS_Handler'Address,               --  MDIOS global Interrupt
      121 => System.Null_Address,                 --  Reserved
      122 => MDMA_Handler'Address,                --  MDMA global Interrupt
      123 => System.Null_Address,                 --  Reserved
      124 => SDMMC2_Handler'Address,              --  SDMMC2 global Interrupt
      125 => HSEM1_Handler'Address,               --  HSEM1 global Interrupt
      126 => System.Null_Address,                 --  Reserved
      127 => ADC3_Handler'Address,                --  ADC3 global Interrupt
      128 => DMAMUX2_OVR_Handler'Address,         --  DMAMUX Overrun interrupt
      129 => BDMA_Channel0_Handler'Address,       --  BDMA Channel 0 global Interrupt
      130 => BDMA_Channel1_Handler'Address,       --  BDMA Channel 1 global Interrupt
      131 => BDMA_Channel2_Handler'Address,       --  BDMA Channel 2 global Interrupt
      132 => BDMA_Channel3_Handler'Address,       --  BDMA Channel 3 global Interrupt
      133 => BDMA_Channel4_Handler'Address,       --  BDMA Channel 4 global Interrupt
      134 => BDMA_Channel5_Handler'Address,       --  BDMA Channel 5 global Interrupt
      135 => BDMA_Channel6_Handler'Address,       --  BDMA Channel 6 global Interrupt
      136 => BDMA_Channel7_Handler'Address,       --  BDMA Channel 7 global Interrupt
      137 => COMP1_Handler'Address,               --  COMP1 global Interrupt
      138 => LPTIM2_Handler'Address,              --  LP TIM2 global interrupt
      139 => LPTIM3_Handler'Address,              --  LP TIM3 global interrupt
      140 => LPTIM4_Handler'Address,              --  LP TIM4 global interrupt
      141 => LPTIM5_Handler'Address,              --  LP TIM5 global interrupt
      142 => LPUART1_Handler'Address,             --  LP UART1 interrupt
      143 => System.Null_Address,                 --  Reserved
      144 => CRS_Handler'Address,                 --  Clock Recovery Global Interrupt
      145 => ECC_Handler'Address,                 --  ECC diagnostic Global Interrupt
      146 => SAI4_Handler'Address,                --  SAI4 global interrupt
      147 => DTS_Handler'Address,                 --  Digital Temperature Sensor  interrupt
      148 => System.Null_Address,                 --  Reserved
      149 => WAKEUP_PIN_Handler'Address,          --  Interrupt for all 6 wake-up pins
      150 => OCTOSPI2_Handler'Address,            --  OCTOSPI2 Interrupt
      151 => System.Null_Address,                 --  Reserved (OTFDEC1 interrupt)
      152 => System.Null_Address,                 --  Reserved (OTFDEC2 interrupt)
      153 => FMAC_Handler'Address,                --  FMAC Interrupt
      154 => CORDIC_Handler'Address,              --  CORDIC Interrupt
      155 => UART9_Handler'Address,               --  UART9 Interrupt
      156 => USART10_Handler'Address,             --  UART10 Interrupt
      157 => I2C5_EV_Handler'Address,             --  I2C5 Event Interrupt
      158 => I2C5_ER_Handler'Address,             --  I2C5 Error Interrupt
      159 => FDCAN3_IT0_Handler'Address,          --  FDCAN3 interrupt line 0
      160 => FDCAN3_IT1_Handler'Address,          --  FDCAN3 interrupt line 1
      161 => TIM23_Handler'Address,               --  TIM23 global interrupt
      162 => TIM24_Handler'Address                --  TIM24 global interrupt
     )
     with Export,
          Linker_Section => ".vectors.interrupts.stm32h723",
          External_Name  => "__light_interrupts_vector";

   -----------------------------
   -- Dummy_Interrupt_Handler --
   -----------------------------

   procedure Dummy_Interrupt_Handler
     renames System_ARMv7.Dummy_Exception_Handler;

end System_STM32H723;
