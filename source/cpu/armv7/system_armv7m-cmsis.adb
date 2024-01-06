--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

pragma Restrictions (No_Elaboration_Code);

with System.Machine_Code;

package body System_ARMv7M.CMSIS is

   ----------------------------------
   -- Data_Synchronization_Barrier --
   ----------------------------------

   procedure Data_Synchronization_Barrier is
   begin
      System.Machine_Code.Asm
        (Template => "dsb 0xF",
         Clobber  => "memory",
         Volatile => True);
   end Data_Synchronization_Barrier;

   -----------------------------------------
   -- Instruction_Synchronization_Barrier --
   -----------------------------------------

   procedure Instruction_Synchronization_Barrier is
   begin
      System.Machine_Code.Asm
        (Template => "isb 0xF",
         Clobber  => "memory",
         Volatile => True);
   end Instruction_Synchronization_Barrier;

end System_ARMv7M.CMSIS;