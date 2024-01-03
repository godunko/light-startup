--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Arduino Due

with System_SAM3X8E.Startup_Utilities; use System_SAM3X8E.Startup_Utilities;

separate (System_ARMv7)
procedure System_Init is
begin
   Setup_External_Oscillator;
end System_Init;