pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32H723.svd

pragma Restrictions (No_Elaboration_Code);

with Interfaces;
with System;

--  STM32H723
package STM32H723 is
   pragma Preelaborate;

   ---------------
   -- Base type --
   ---------------

   type UInt32 is new Interfaces.Unsigned_32;
   type UInt16 is new Interfaces.Unsigned_16;
   type Byte is new Interfaces.Unsigned_8;
   type Bit is mod 2**1
     with Size => 1;
   type UInt2 is mod 2**2
     with Size => 2;
   type UInt3 is mod 2**3
     with Size => 3;
   type UInt4 is mod 2**4
     with Size => 4;
   type UInt5 is mod 2**5
     with Size => 5;
   type UInt6 is mod 2**6
     with Size => 6;
   type UInt7 is mod 2**7
     with Size => 7;
   type UInt9 is mod 2**9
     with Size => 9;
   type UInt10 is mod 2**10
     with Size => 10;
   type UInt11 is mod 2**11
     with Size => 11;
   type UInt12 is mod 2**12
     with Size => 12;
   type UInt13 is mod 2**13
     with Size => 13;
   type UInt14 is mod 2**14
     with Size => 14;
   type UInt15 is mod 2**15
     with Size => 15;
   type UInt17 is mod 2**17
     with Size => 17;
   type UInt18 is mod 2**18
     with Size => 18;
   type UInt19 is mod 2**19
     with Size => 19;
   type UInt20 is mod 2**20
     with Size => 20;
   type UInt21 is mod 2**21
     with Size => 21;
   type UInt22 is mod 2**22
     with Size => 22;
   type UInt23 is mod 2**23
     with Size => 23;
   type UInt24 is mod 2**24
     with Size => 24;
   type UInt25 is mod 2**25
     with Size => 25;
   type UInt26 is mod 2**26
     with Size => 26;
   type UInt27 is mod 2**27
     with Size => 27;
   type UInt28 is mod 2**28
     with Size => 28;
   type UInt29 is mod 2**29
     with Size => 29;
   type UInt30 is mod 2**30
     with Size => 30;
   type UInt31 is mod 2**31
     with Size => 31;

   --------------------
   -- Base addresses --
   --------------------

   ADC1_Base : constant System.Address := System'To_Address (16#40022000#);
   ADC2_Base : constant System.Address := System'To_Address (16#40022100#);
   ADC12_Common_Base : constant System.Address := System'To_Address (16#40022300#);
   ADC3_Base : constant System.Address := System'To_Address (16#58026000#);
   ADC3_Common_Base : constant System.Address := System'To_Address (16#58026300#);
   AXI_Base : constant System.Address := System'To_Address (16#51000000#);
   BDMA_Base : constant System.Address := System'To_Address (16#58025400#);
   CAN_CCU_Base : constant System.Address := System'To_Address (16#4000A800#);
   CEC_Base : constant System.Address := System'To_Address (16#40006C00#);
   COMP1_Base : constant System.Address := System'To_Address (16#58003800#);
   CORDIC_Base : constant System.Address := System'To_Address (16#48024400#);
   CRC_Base : constant System.Address := System'To_Address (16#58024C00#);
   CRS_Base : constant System.Address := System'To_Address (16#40008400#);
   DAC_Base : constant System.Address := System'To_Address (16#40007400#);
   DBGMCU_Base : constant System.Address := System'To_Address (16#5C001000#);
   DCMI_Base : constant System.Address := System'To_Address (16#48020000#);
   DELAY_Block_SDMMC1_Base : constant System.Address := System'To_Address (16#52008000#);
   DELAY_Block_SDMMC2_Base : constant System.Address := System'To_Address (16#48022800#);
   DFSDM_Base : constant System.Address := System'To_Address (16#40017800#);
   DMA1_Base : constant System.Address := System'To_Address (16#40020000#);
   DMA2_Base : constant System.Address := System'To_Address (16#40020400#);
   DMA2D_Base : constant System.Address := System'To_Address (16#52001000#);
   DMAMUX1_Base : constant System.Address := System'To_Address (16#40020800#);
   DMAMUX2_Base : constant System.Address := System'To_Address (16#58025800#);
   Delay_Block_OCTOSPI1_Base : constant System.Address := System'To_Address (16#52006000#);
   Delay_Block_OCTOSPI2_Base : constant System.Address := System'To_Address (16#5200B000#);
   EXTI_Base : constant System.Address := System'To_Address (16#58000000#);
   Ethernet_MAC_Base : constant System.Address := System'To_Address (16#40028000#);
   FDCAN1_Base : constant System.Address := System'To_Address (16#4000A000#);
   FDCAN2_Base : constant System.Address := System'To_Address (16#4000A400#);
   FDCAN3_Base : constant System.Address := System'To_Address (16#4000D400#);
   FMAC_Base : constant System.Address := System'To_Address (16#48024000#);
   FMC_Base : constant System.Address := System'To_Address (16#52004000#);
   Flash_Base : constant System.Address := System'To_Address (16#52002000#);
   GPIOA_Base : constant System.Address := System'To_Address (16#58020000#);
   GPIOB_Base : constant System.Address := System'To_Address (16#58020400#);
   GPIOC_Base : constant System.Address := System'To_Address (16#58020800#);
   GPIOD_Base : constant System.Address := System'To_Address (16#58020C00#);
   GPIOE_Base : constant System.Address := System'To_Address (16#58021000#);
   GPIOF_Base : constant System.Address := System'To_Address (16#58021400#);
   GPIOG_Base : constant System.Address := System'To_Address (16#58021800#);
   GPIOH_Base : constant System.Address := System'To_Address (16#58021C00#);
   GPIOJ_Base : constant System.Address := System'To_Address (16#58022400#);
   GPIOK_Base : constant System.Address := System'To_Address (16#58022800#);
   HSEM_Base : constant System.Address := System'To_Address (16#58026400#);
   I2C1_Base : constant System.Address := System'To_Address (16#40005400#);
   I2C2_Base : constant System.Address := System'To_Address (16#40005800#);
   I2C3_Base : constant System.Address := System'To_Address (16#40005C00#);
   I2C4_Base : constant System.Address := System'To_Address (16#58001C00#);
   I2C5_Base : constant System.Address := System'To_Address (16#40006400#);
   IWDG1_Base : constant System.Address := System'To_Address (16#58004800#);
   LPTIM1_Base : constant System.Address := System'To_Address (16#40002400#);
   LPTIM2_Base : constant System.Address := System'To_Address (16#58002400#);
   LPTIM3_Base : constant System.Address := System'To_Address (16#58002800#);
   LPTIM4_Base : constant System.Address := System'To_Address (16#58002C00#);
   LPTIM5_Base : constant System.Address := System'To_Address (16#58003000#);
   LPUART1_Base : constant System.Address := System'To_Address (16#58000C00#);
   LTDC_Base : constant System.Address := System'To_Address (16#50001000#);
   MDIOS_Base : constant System.Address := System'To_Address (16#40009400#);
   MDMA_Base : constant System.Address := System'To_Address (16#52000000#);
   OCTOSPI1_Base : constant System.Address := System'To_Address (16#52005000#);
   OCTOSPI2_Base : constant System.Address := System'To_Address (16#5200A000#);
   OPAMP_Base : constant System.Address := System'To_Address (16#40009000#);
   OTG1_HS_DEVICE_Base : constant System.Address := System'To_Address (16#40040800#);
   OTG2_HS_DEVICE_Base : constant System.Address := System'To_Address (16#40080800#);
   OTG1_HS_GLOBAL_Base : constant System.Address := System'To_Address (16#40040000#);
   OTG1_HS_HOST_Base : constant System.Address := System'To_Address (16#40040400#);
   OTG2_HS_HOST_Base : constant System.Address := System'To_Address (16#40080400#);
   OTG1_HS_PWRCLK_Base : constant System.Address := System'To_Address (16#40040E00#);
   OTG2_HS_PWRCLK_Base : constant System.Address := System'To_Address (16#40080E00#);
   OctoSPII_O_Manager_Base : constant System.Address := System'To_Address (16#5200B400#);
   PSSI_Base : constant System.Address := System'To_Address (16#48020400#);
   PWR_Base : constant System.Address := System'To_Address (16#58024800#);
   RAMECC1_Base : constant System.Address := System'To_Address (16#52009000#);
   RAMECC2_Base : constant System.Address := System'To_Address (16#48023000#);
   RAMECC3_Base : constant System.Address := System'To_Address (16#58027000#);
   RCC_Base : constant System.Address := System'To_Address (16#58024400#);
   RNG_Base : constant System.Address := System'To_Address (16#48021800#);
   RTC_Base : constant System.Address := System'To_Address (16#58004000#);
   SAI1_Base : constant System.Address := System'To_Address (16#40015800#);
   SAI4_Base : constant System.Address := System'To_Address (16#58005400#);
   SDMMC1_Base : constant System.Address := System'To_Address (16#52007000#);
   SDMMC2_Base : constant System.Address := System'To_Address (16#48022400#);
   SPDIFRX_Base : constant System.Address := System'To_Address (16#40004000#);
   SPI1_Base : constant System.Address := System'To_Address (16#40013000#);
   SPI2_Base : constant System.Address := System'To_Address (16#40003800#);
   SPI3_Base : constant System.Address := System'To_Address (16#40003C00#);
   SPI4_Base : constant System.Address := System'To_Address (16#40013400#);
   SPI5_Base : constant System.Address := System'To_Address (16#40015000#);
   SPI6_Base : constant System.Address := System'To_Address (16#58001400#);
   SWPMI_Base : constant System.Address := System'To_Address (16#40008800#);
   SYSCFG_Base : constant System.Address := System'To_Address (16#58000400#);
   TIM1_Base : constant System.Address := System'To_Address (16#40010000#);
   TIM2_Base : constant System.Address := System'To_Address (16#40000000#);
   TIM3_Base : constant System.Address := System'To_Address (16#40000400#);
   TIM4_Base : constant System.Address := System'To_Address (16#40000800#);
   TIM5_Base : constant System.Address := System'To_Address (16#40000C00#);
   TIM6_Base : constant System.Address := System'To_Address (16#40001000#);
   TIM7_Base : constant System.Address := System'To_Address (16#40001400#);
   TIM8_Base : constant System.Address := System'To_Address (16#40010400#);
   TIM12_Base : constant System.Address := System'To_Address (16#40001800#);
   TIM13_Base : constant System.Address := System'To_Address (16#40001C00#);
   TIM14_Base : constant System.Address := System'To_Address (16#40002000#);
   TIM15_Base : constant System.Address := System'To_Address (16#40014000#);
   TIM16_Base : constant System.Address := System'To_Address (16#40014400#);
   TIM17_Base : constant System.Address := System'To_Address (16#40014800#);
   TIM23_Base : constant System.Address := System'To_Address (16#4000E000#);
   TIM24_Base : constant System.Address := System'To_Address (16#4000E400#);
   USART1_Base : constant System.Address := System'To_Address (16#40011000#);
   USART2_Base : constant System.Address := System'To_Address (16#40004400#);
   USART3_Base : constant System.Address := System'To_Address (16#40004800#);
   UART4_Base : constant System.Address := System'To_Address (16#40004C00#);
   UART5_Base : constant System.Address := System'To_Address (16#40005000#);
   USART6_Base : constant System.Address := System'To_Address (16#40011400#);
   UART7_Base : constant System.Address := System'To_Address (16#40007800#);
   UART8_Base : constant System.Address := System'To_Address (16#40007C00#);
   UART9_Base : constant System.Address := System'To_Address (16#40011800#);
   USART10_Base : constant System.Address := System'To_Address (16#40011C00#);
   VREFBUF_Base : constant System.Address := System'To_Address (16#58003C00#);
   WWDG1_Base : constant System.Address := System'To_Address (16#50003000#);

end STM32H723;
