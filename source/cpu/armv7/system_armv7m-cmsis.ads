--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Various subprograms provided by CMSIS

pragma Restrictions (No_Elaboration_Code);

package System_ARMv7M.CMSIS is

   procedure Data_Synchronization_Barrier with Inline_Always;
   --  Data Synchronization Barrier
   --
   --  Acts as a special kind of Data Memory Barrier. It completes when all
   --  explicit memory accesses before this instruction complete.

   procedure Instruction_Synchronization_Barrier with Inline_Always;
   --  Instruction Synchronization Barrier
   --
   --  Instruction Synchronization Barrier flushes the pipeline in the
   --  processor, so that all instructions following the ISB are fetched from
   --  cache or memory, after the instruction has been completed.

end System_ARMv7M.CMSIS;