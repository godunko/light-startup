--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

pragma Restrictions (No_Elaboration_Code);

with System;

with A0B.STM32F401;

with System_ARMv7M;

package body System_STM32F401 is

   use A0B.STM32F401;

   procedure Dummy_Interrupt_Handler
     with Export, Convention => C, External_Name => "Dummy_Interrupt_Handler";

   procedure WWDG_Handler is null
     with Export, Convention => C, External_Name => "WWDG_Handler";
   pragma Weak_External (WWDG_Handler);
   pragma Linker_Alias (WWDG_Handler, "Dummy_Interrupt_Handler");

   procedure EXTI16_PVD_Handler is null
     with Export, Convention => C, External_Name => "EXTI16_PVD_Handler";
   pragma Weak_External (EXTI16_PVD_Handler);
   pragma Linker_Alias (EXTI16_PVD_Handler, "Dummy_Interrupt_Handler");

   procedure EXTI21_TAMP_STAMP_Handler is null
     with Export, Convention => C, External_Name => "EXTI21_TAMP_STAMP_Handler";
   pragma Weak_External (EXTI21_TAMP_STAMP_Handler);
   pragma Linker_Alias (EXTI21_TAMP_STAMP_Handler, "Dummy_Interrupt_Handler");

   procedure EXTI22_RTC_WKUP_Handler is null
     with Export, Convention => C, External_Name => "EXTI22_RTC_WKUP_Handler";
   pragma Weak_External (EXTI22_RTC_WKUP_Handler);
   pragma Linker_Alias (EXTI22_RTC_WKUP_Handler, "Dummy_Interrupt_Handler");

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

   procedure EXTI9_5_Handler is null
     with Export, Convention => C, External_Name => "EXTI9_5_Handler";
   pragma Weak_External (EXTI9_5_Handler);
   pragma Linker_Alias (EXTI9_5_Handler, "Dummy_Interrupt_Handler");

   procedure TIM1_BRK_TIM9_Handler is null
     with Export, Convention => C, External_Name => "TIM1_BRK_TIM9_Handler";
   pragma Weak_External (TIM1_BRK_TIM9_Handler);
   pragma Linker_Alias (TIM1_BRK_TIM9_Handler, "Dummy_Interrupt_Handler");

   procedure TIM1_UP_TIM10_Handler is null
     with Export, Convention => C, External_Name => "TIM1_UP_TIM10_Handler";
   pragma Weak_External (TIM1_UP_TIM10_Handler);
   pragma Linker_Alias (TIM1_UP_TIM10_Handler, "Dummy_Interrupt_Handler");

   procedure TIM1_TRG_COM_TIM11_Handler is null
     with Export, Convention => C, External_Name => "TIM1_TRG_COM_TIM11_Handler";
   pragma Weak_External (TIM1_TRG_COM_TIM11_Handler);
   pragma Linker_Alias (TIM1_TRG_COM_TIM11_Handler, "Dummy_Interrupt_Handler");

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

   procedure EXTI15_10_Handler is null
     with Export, Convention => C, External_Name => "EXTI15_10_Handler";
   pragma Weak_External (EXTI15_10_Handler);
   pragma Linker_Alias (EXTI15_10_Handler, "Dummy_Interrupt_Handler");

   procedure EXTI17_RTC_Alarm_Handler is null
     with Export, Convention => C, External_Name => "EXTI17_RTC_Alarm_Handler";
   pragma Weak_External (EXTI17_RTC_Alarm_Handler);
   pragma Linker_Alias (EXTI17_RTC_Alarm_Handler, "Dummy_Interrupt_Handler");

   procedure EXTI18_OTG_FS_Wakeup_Handler is null
     with Export, Convention => C, External_Name => "EXTI18_OTG_FS_Wakeup_Handler";
   pragma Weak_External (EXTI18_OTG_FS_Wakeup_Handler);
   pragma Linker_Alias (EXTI18_OTG_FS_Wakeup_Handler, "Dummy_Interrupt_Handler");

   procedure DMA1_Stream7_Handler is null
     with Export, Convention => C, External_Name => "DMA1_Stream7_Handler";
   pragma Weak_External (DMA1_Stream7_Handler);
   pragma Linker_Alias (DMA1_Stream7_Handler, "Dummy_Interrupt_Handler");

   procedure SDIO_Handler is null
     with Export, Convention => C, External_Name => "SDIO_Handler";
   pragma Weak_External (SDIO_Handler);
   pragma Linker_Alias (SDIO_Handler, "Dummy_Interrupt_Handler");

   procedure TIM5_Handler is null
     with Export, Convention => C, External_Name => "TIM5_Handler";
   pragma Weak_External (TIM5_Handler);
   pragma Linker_Alias (TIM5_Handler, "Dummy_Interrupt_Handler");

   procedure SPI3_Handler is null
     with Export, Convention => C, External_Name => "SPI3_Handler";
   pragma Weak_External (SPI3_Handler);
   pragma Linker_Alias (SPI3_Handler, "Dummy_Interrupt_Handler");

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

   procedure FPU_Handler is null
     with Export, Convention => C, External_Name => "FPU_Handler";
   pragma Weak_External (FPU_Handler);
   pragma Linker_Alias (FPU_Handler, "Dummy_Interrupt_Handler");

   procedure SPI4_Handler is null
     with Export, Convention => C, External_Name => "SPI4_Handler";
   pragma Weak_External (SPI4_Handler);
   pragma Linker_Alias (SPI4_Handler, "Dummy_Interrupt_Handler");

   Interrupt_Vectors :
     constant array (A0B.STM32F401.Interrupt_Number) of System.Address :=
     (
      WWDG                 => WWDG_Handler'Address,                  --  Window WatchDog
      EXTI16_PVD           => EXTI16_PVD_Handler'Address,            --  EXTI Line 16 / PVD through EXTI line detection
      EXTI21_TAMP_STAMP    => EXTI21_TAMP_STAMP_Handler'Address,     --  EXTI Line 21 / Tamper and TimeStamp through the EXTI line
      EXTI22_RTC_WKUP      => EXTI22_RTC_WKUP_Handler'Address,       --  EXTI Line 22 / RTC Wakeup through the EXTI line
      FLASH                => FLASH_Handler'Address,                 --  Flash global
      RCC                  => RCC_Handler'Address,                   --  RCC global
      EXTI0                => EXTI0_Handler'Address,                 --  EXTI Line0
      EXTI1                => EXTI1_Handler'Address,                 --  EXTI Line1
      EXTI2                => EXTI2_Handler'Address,                 --  EXTI Line2
      EXTI3                => EXTI3_Handler'Address,                 --  EXTI Line3
      EXTI4                => EXTI4_Handler'Address,                 --  EXTI Line4
      DMA1_Stream0         => DMA1_Stream0_Handler'Address,          --  DMA1 Stream 0 global
      DMA1_Stream1         => DMA1_Stream1_Handler'Address,          --  DMA1 Stream 1 global
      DMA1_Stream2         => DMA1_Stream2_Handler'Address,          --  DMA1 Stream 2 global
      DMA1_Stream3         => DMA1_Stream3_Handler'Address,          --  DMA1 Stream 3 global
      DMA1_Stream4         => DMA1_Stream4_Handler'Address,          --  DMA1 Stream 4 global
      DMA1_Stream5         => DMA1_Stream5_Handler'Address,          --  DMA1 Stream 5 global
      DMA1_Stream6         => DMA1_Stream6_Handler'Address,          --  DMA1 Stream 6 global
      ADC                  => ADC_Handler'Address,                   --  ADC1 global
      19                   => System.Null_Address,                   --  Reserved
      20                   => System.Null_Address,                   --  Reserved
      21                   => System.Null_Address,                   --  Reserved
      22                   => System.Null_Address,                   --  Reserved
      EXTI9_5              => EXTI9_5_Handler'Address,               --  External Line[9:5]s
      TIM1_BRK_TIM9        => TIM1_BRK_TIM9_Handler'Address,         --  TIM1 Break and TIM9 global
      TIM1_UP_TIM10        => TIM1_UP_TIM10_Handler'Address,         --  TIM1 Update and TIM10 global
      TIM1_TRG_COM_TIM11   => TIM1_TRG_COM_TIM11_Handler'Address,    --  TIM1 Trigger and Commutation and TIM11 global
      TIM1_CC              => TIM1_CC_Handler'Address,               --  TIM1 Capture Compare
      TIM2                 => TIM2_Handler'Address,                  --  TIM2 global
      TIM3                 => TIM3_Handler'Address,                  --  TIM3 global
      TIM4                 => TIM4_Handler'Address,                  --  TIM4 global
      I2C1_EV              => I2C1_EV_Handler'Address,               --  I2C1 event
      I2C1_ER              => I2C1_ER_Handler'Address,               --  I2C1 error
      I2C2_EV              => I2C2_EV_Handler'Address,               --  I2C2 event
      I2C2_ER              => I2C2_ER_Handler'Address,               --  I2C2 error
      SPI1                 => SPI1_Handler'Address,                  --  SPI1 global
      SPI2                 => SPI2_Handler'Address,                  --  SPI2 global
      USART1               => USART1_Handler'Address,                --  USART1 global
      USART2               => USART2_Handler'Address,                --  USART2 global
      39                   => System.Null_Address,                   --  Reserved
      EXTI15_10            => EXTI15_10_Handler'Address,             --  External Line[15:10]s
      EXTI17_RTC_Alarm     => EXTI17_RTC_Alarm_Handler'Address,      --  EXTI Line 17 / RTC Alarms (A and B) through EXTI line
      EXTI18_OTG_FS_Wakeup => EXTI18_OTG_FS_Wakeup_Handler'Address,  --  EXTI Line 18 / USB On-The-Go FS Wakeup through EXTI line
      43                   => System.Null_Address,                   --  Reserved
      44                   => System.Null_Address,                   --  Reserved
      45                   => System.Null_Address,                   --  Reserved
      46                   => System.Null_Address,                   --  Reserved
      DMA1_Stream7         => DMA1_Stream7_Handler'Address,          --  DMA1 Stream7
      48                   => System.Null_Address,                   --  Reserved
      SDIO                 => SDIO_Handler'Address,                  --  SDIO global
      TIM5                 => TIM5_Handler'Address,                  --  TIM5 global
      SPI3                 => SPI3_Handler'Address,                  --  SPI3 global
      52                   => System.Null_Address,                   --  Reserved
      53                   => System.Null_Address,                   --  Reserved
      54                   => System.Null_Address,                   --  Reserved
      55                   => System.Null_Address,                   --  Reserved
      DMA2_Stream0         => DMA2_Stream0_Handler'Address,          --  DMA2 Stream 0 global
      DMA2_Stream1         => DMA2_Stream1_Handler'Address,          --  DMA2 Stream 1 global
      DMA2_Stream2         => DMA2_Stream2_Handler'Address,          --  DMA2 Stream 2 global
      DMA2_Stream3         => DMA2_Stream3_Handler'Address,          --  DMA2 Stream 3 global
      DMA2_Stream4         => DMA2_Stream4_Handler'Address,          --  DMA2 Stream 4 global
      61                   => System.Null_Address,                   --  Reserved
      62                   => System.Null_Address,                   --  Reserved
      63                   => System.Null_Address,                   --  Reserved
      64                   => System.Null_Address,                   --  Reserved
      65                   => System.Null_Address,                   --  Reserved
      66                   => System.Null_Address,                   --  Reserved
      OTG_FS               => OTG_FS_Handler'Address,                --  USB On The Go FS global
      DMA2_Stream5         => DMA2_Stream5_Handler'Address,          --  DMA2 Stream 5 global
      DMA2_Stream6         => DMA2_Stream6_Handler'Address,          --  DMA2 Stream 6 global
      DMA2_Stream7         => DMA2_Stream7_Handler'Address,          --  DMA2 Stream 7 global
      USART6               => USART6_Handler'Address,                --  USART6 global
      I2C3_EV              => I2C3_EV_Handler'Address,               --  I2C3 event
      I2C3_ER              => I2C3_ER_Handler'Address,               --  I2C3 error
      74                   => System.Null_Address,                   --  Reserved
      75                   => System.Null_Address,                   --  Reserved
      76                   => System.Null_Address,                   --  Reserved
      77                   => System.Null_Address,                   --  Reserved
      78                   => System.Null_Address,                   --  Reserved
      79                   => System.Null_Address,                   --  Reserved
      80                   => System.Null_Address,                   --  Reserved
      FPU                  => FPU_Handler'Address,                   --  FPU global
      82                   => System.Null_Address,                   --  Reserved
      83                   => System.Null_Address,                   --  Reserved
      SPI4                 => SPI4_Handler'Address                   --  SPI 4 global
     )
     with Export,
          Linker_Section => ".vectors.interrupts.stm32f401",
          External_Name  => "__light_interrupts_vector";

   -----------------------------
   -- Dummy_Interrupt_Handler --
   -----------------------------

   procedure Dummy_Interrupt_Handler
     renames System_ARMv7M.Dummy_Exception_Handler;

end System_STM32F401;
