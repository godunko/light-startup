--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  ATSAM3X8E
--
--  Various subprograms to be used by startup code.

package System_ATSAM3X8E.Startup_Utilities
  with No_Elaboration_Code_All
is

   procedure Setup_External_Oscillator;
   --  Start external oscillator, configure PLL, and configure to use PLL as
   --  Master Clock. It configure FLASH memory wait state to allow to execute
   --  code from the FLASH memory.
   --
   --  Implementation assumes use of 12MHz external crystal oscillator, and
   --  configure processor to use 84MHz frequency from the PLL. It is case of
   --  Arduino Due board, it need to be modified for other use cases
   --  (internal RC oscillator, different frequency of the external
   --  oscillator, or external clock)

end System_ATSAM3X8E.Startup_Utilities;
