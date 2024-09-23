--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  ARMv7/Cortex-M4, STM32F401 doesn't support CCM.

with System_ARMv7M.Startup_Utilities; use System_ARMv7M.Startup_Utilities;

separate (System_ARMv7M)
procedure Memory_Init is
begin
   Copy_Data_Section;
   Fill_BSS_Section;
end Memory_Init;
