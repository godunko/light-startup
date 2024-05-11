--
--  Copyright (C) 2024, Yuri Veretelnikov <yuri.veretelnikov@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

pragma Restrictions (No_Elaboration_Code);

with System;

package body System_STM32F407 is

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

   procedure CAN1_TX_Handler is null
     with Export, Convention => C, External_Name => "CAN1_TX_Handler";
   pragma Weak_External (CAN1_TX_Handler);
   pragma Linker_Alias (CAN1_TX_Handler, "Dummy_Interrupt_Handler");

   procedure CAN1_RX0_Handler is null
     with Export, Convention => C, External_Name => "CAN1_RX0_Handler";
   pragma Weak_External (CAN1_RX0_Handler);
   pragma Linker_Alias (CAN1_RX0_Handler, "Dummy_Interrupt_Handler");

    procedure CAN1_RX1_Handler is null
     with Export, Convention => C, External_Name => "CAN1_RX1_Handler";
   pragma Weak_External (CAN1_RX1_Handler);
   pragma Linker_Alias (CAN1_RX1_Handler, "Dummy_Interrupt_Handler");

   procedure CAN1_SCE_Handler is null
     with Export, Convention => C, External_Name => "CAN1_SCE_Handler";
   pragma Weak_External (CAN1_SCE_Handler);
   pragma Linker_Alias (CAN1_SCE_Handler, "Dummy_Interrupt_Handler");

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

   procedure OTG_FS_Wakeup_Handler is null
     with Export, Convention => C, External_Name => "OTG_FS_Wakeup_Handler";
   pragma Weak_External (OTG_FS_Wakeup_Handler);
   pragma Linker_Alias (OTG_FS_Wakeup_Handler, "Dummy_Interrupt_Handler");

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

   procedure CAN2_TX_Handler is null
     with Export, Convention => C, External_Name => "CAN2_TX_Handler";
   pragma Weak_External (CAN2_TX_Handler);
   pragma Linker_Alias (CAN2_TX_Handler, "Dummy_Interrupt_Handler");

   procedure CAN2_RX0_Handler is null
     with Export, Convention => C, External_Name => "CAN2_RX0_Handler";
   pragma Weak_External (CAN2_RX0_Handler);
   pragma Linker_Alias (CAN2_RX0_Handler, "Dummy_Interrupt_Handler");

   procedure CAN2_RX1_Handler is null
     with Export, Convention => C, External_Name => "CAN2_RX1_Handler";
   pragma Weak_External (CAN2_RX1_Handler);
   pragma Linker_Alias (CAN2_RX1_Handler, "Dummy_Interrupt_Handler");

   procedure CAN2_SCE_Handler is null
     with Export, Convention => C, External_Name => "CAN2_SCE_Handler";
   pragma Weak_External (CAN2_SCE_Handler);
   pragma Linker_Alias (CAN2_SCE_Handler, "Dummy_Interrupt_Handler");

   procedure OTG_FS_Handler is null
     with Export, Convention => C, External_Name => "OTG_FS_Handler";
   pragma Weak_External (OTG_FS_Handler);
   pragma Linker_Alias (OTG_FS_Handler, "Dummy_Interrupt_Handler");

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

   procedure CRYPT_Handler is null
     with Export, Convention => C, External_Name => "CRYPT_Handler";
   pragma Weak_External (CRYPT_Handler);
   pragma Linker_Alias (CRYPT_Handler, "Dummy_Interrupt_Handler");

   procedure RNG_Handler is null
     with Export, Convention => C, External_Name => "RNG_Handler";
   pragma Weak_External (RNG_Handler);
   pragma Linker_Alias (RNG_Handler, "Dummy_Interrupt_Handler");

   procedure FPU_Handler is null
     with Export, Convention => C, External_Name => "FPU_Handler";
   pragma Weak_External (FPU_Handler);
   pragma Linker_Alias (FPU_Handler, "Dummy_Interrupt_Handler");

   Interrupt_Vectors :
     constant array (STM32F407_Interrupt_Event_Identifier) of System.Address :=
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
      19  => CAN1_TX_Handler'Address,          --  FDCAN1 interrupt line 0
      20  => CAN1_RX0_Handler'Address,          --  FDCAN2 interrupt line 0
      21  => CAN1_RX1_Handler'Address,          --  FDCAN1 interrupt line 1
      22  => CAN1_SCE_Handler'Address,          --  FDCAN2 interrupt line 1
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
      42  => OTG_FS_Wakeup_Handler'Address,                 --  Reserved
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
      63  => CAN2_TX_Handler'Address,           --  FDCAN calibration unit interrupt
      64  => CAN2_RX0_Handler'Address,                 --  Reserved
      65  => CAN2_RX1_Handler'Address,                 --  Reserved
      66  => CAN2_SCE_Handler'Address,                 --  Reserved
      67  => OTG_FS_Handler'Address,                 --  Reserved
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
      79  => CRYPT_Handler'Address,                 --  Reserved (CRYP global interrupt)
      80  => RNG_Handler'Address,                 --  Rng
      81  => FPU_Handler'Address
     )
     with Export,
          Linker_Section => ".vectors.interrupts.stm32f407",
          External_Name  => "__light_interrupts_vector";

   -----------------------------
   -- Dummy_Interrupt_Handler --
   -----------------------------

   procedure Dummy_Interrupt_Handler
     renames System_ARMv7M.Dummy_Exception_Handler;

end System_STM32F407;
