--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Various subprograms to be used by startup code.

pragma Restrictions (No_Elaboration_Code);

package System_ARMv7M.Startup_Utilities is

   procedure Enable_FPU;
   --  Enables floating point coprocessor.

   procedure Copy_Data_Section;
   --  Copy '.data' from the flash to the RAM region.
   --
   --  It uses external symbols generated by the linker:
   --   - _sidata
   --   - _sdata
   --   - _edata

   procedure Fill_BSS_Section;
   --  Fill '.bss' section by zeros.
   --
   --  It uses external symbols generated by the linker:
   --   - _sbss
   --   - _ebss

   procedure Copy_ITCM_Text_Section;
   --  Copy '.itcm.text' from the flash to the ITCM RAM region.
   --
   --  It uses external symbols generated by the linker:
   --   - _siitcmtext
   --   - _sitcmtext
   --   - _eitcmtext
   --
   --  This subprogram is intended to be used on Cortex-M7 only. ITCM RAM
   --  must be enabled and configured by the System_Init subprogram.

   procedure Copy_DTCM_Data_Section;
   --  Copy '.dtcm.data' from the flash to the DTCM RAM region.
   --
   --  It uses external symbols generated by the linker:
   --   - _sidtcmdata
   --   - _sdtcmdata
   --   - _edtcmdata
   --
   --  This subprogram is intended to be used on Cortex-M7 only. DTCM RAM
   --  must be enabled and configured by the System_Init subprogram.

   procedure Fill_DTCM_BSS_Section;
   --  Fill '.dtcm.bss' section by zeros.
   --
   --  It uses external symbols generated by the linker:
   --   - _sdtcmbss
   --   - _edtcmbss
   --
   --  This subprogram is intended to be used on Cortex-M7 only. DTCM RAM
   --  must be enabled and configured by the System_Init subprogram.

end System_ARMv7M.Startup_Utilities;