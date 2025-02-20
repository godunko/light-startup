--
--  Copyright (C) 2025, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  STM32F401xx system initialization utilities.

with A0B.Types;

package System_STM32F401.Startup_Utilities
  with No_Elaboration_Code_All
is

   procedure System_Init
     (FLASH_LATENCY : A0B.Types.Unsigned_3;
      VOS_SCALE     : A0B.Types.Unsigned_2;
      PLL_M         : A0B.Types.Unsigned_6;
      PLL_N         : A0B.Types.Unsigned_9;
      PLL_P         : A0B.Types.Unsigned_2;
      PLL_Q         : A0B.Types.Unsigned_4;
      HPRE          : A0B.Types.Unsigned_4;
      PPRE          : A0B.Types.Unsigned_6) with Inline_Always;
   --  Do system initialization:
   --   - enable FPU
   --   - configure FLASH
   --   - configure VOS
   --   - enable HSE
   --   - configure PLL
   --   - enable PLL
   --   - configure AHB/APB clocks
   --   - enable HSE+PLL as system clock
   --   - enable instruction and data cache in FLASH controller

end System_STM32F401.Startup_Utilities;
