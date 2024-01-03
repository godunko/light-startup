--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  ARMv7
--
--  This package provides exceptions part of the vector table for ARMv7
--  architecture. It use following external symbols to construct vector
--  table:
--
--   - Reset_Handler
--   - NMI_Handler
--   - HardFault_Handler
--   - MemManage_Handler
--   - BusFault_Handler
--   - UsageFault_Handler
--   - SVC_Handler
--   - DebugMon_Handler
--   - PendSV_Handler
--   - SysTick_Handler
--
--  and _estack external symbol to set initial value of the stack pointer.

pragma Restrictions (No_Elaboration_Code);

package System_ARMv7 is

   type Exception_Event_Identifier is range -16 .. -1;

   type Interrupt_Event_Identifier is range 0 .. 255;

   procedure Dummy_Exception_Handler
     with Export, Convention => C, External_Name => "Dummy_Exception_Handler";

end System_ARMv7;