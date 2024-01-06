--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Arduino Due

with System_ATSAM3X8E.Startup_Utilities; use System_ATSAM3X8E.Startup_Utilities;

separate (System_ARMv7M)
procedure System_Init is
begin
   Setup_External_Oscillator;
end System_Init;