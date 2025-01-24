--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  This version is for MCU with ITCM/DTCM support

with System_ARMv7M.Startup_Utilities; use System_ARMv7M.Startup_Utilities;

separate (System_ARMv7M)
procedure Memory_Init is
begin
   Copy_ITCM_Text_Section;
   Copy_Data_Section;
   Copy_DTCM_Data_Section;
   Fill_BSS_Section;
   Fill_DTCM_BSS_Section;
end Memory_Init;
