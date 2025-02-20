--
--  Copyright (C) 2025, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  STM32F4DISCOVERY STM32F401 (HSE @8MHz)

with System_STM32F401.Startup_Utilities;

separate (System_ARMv7M)
procedure System_Init is

   VOS_SCALE     : constant := 2#10#;  --  Scale 2
   --  Regulator voltage scaling output to run processor @84 MHz.

   PLL_M         : constant := 6;           --  /6
   PLL_N         : constant := 252;         --  *252
   PLL_P         : constant := 2#01#;       --  /4
   PLL_Q         : constant := 7;           --  /7
   HPRE          : constant := 0;           --  /1 AHB
   PPRE          : constant := 2#000_100#;  --  /1 APB2, /2 APB1
   --  STM32F4DISCOVERY board has 8 MHz HSE resonator. Selected values allow
   --  processor to run @84 MHz, as well as to use USB controller, which
   --  requires 48 MHz frequency.
   --
   --  Note, PLLQ channel need to be enabled when necessary.

   FLASH_LATENCY : constant := 2;
   --  It is recommended value for 3.3V power and to run @84 MHz frequency,
   --  see [RM0368] Table 6.

begin
   System_STM32F401.Startup_Utilities.System_Init
     (FLASH_LATENCY => FLASH_LATENCY,
      VOS_SCALE     => VOS_SCALE,
      PLL_M         => PLL_M,
      PLL_N         => PLL_N,
      PLL_P         => PLL_P,
      PLL_Q         => PLL_Q,
      HPRE          => HPRE,
      PPRE          => PPRE);
end System_Init;
