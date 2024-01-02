--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Cortex-M3

pragma Restrictions (No_Elaboration_Code);

private with System;

package System_CM3 is

   type Exception_Event_Identifier is range -16 .. -1;

   type Interrupt_Event_Identifier is range 0 .. 255;

   procedure Dummy_Exception_Handler
     with Export, Convention => C, External_Name => "Dummy_Exception_Handler";

private

   procedure NMI_Handler is null
     with Export, Convention => C, External_Name => "NMI_Handler";
   pragma Weak_External (NMI_Handler);
   pragma Linker_Alias (NMI_Handler, "Dummy_Exception_Handler");

   procedure HardFault_Handler is null
     with Export, Convention => C, External_Name => "HardFault_Handler";
   pragma Weak_External (HardFault_Handler);
   pragma Linker_Alias (HardFault_Handler, "Dummy_Exception_Handler");

   procedure MemManage_Handler is null
     with Export, Convention => C, External_Name => "MemManage_Handler";
   pragma Weak_External (MemManage_Handler);
   pragma Linker_Alias (MemManage_Handler, "Dummy_Exception_Handler");

   procedure BusFault_Handler is null
     with Export, Convention => C, External_Name => "BusFault_Handler";
   pragma Weak_External (BusFault_Handler);
   pragma Linker_Alias (BusFault_Handler, "Dummy_Exception_Handler");

   procedure UsageFault_Handler is null
     with Export, Convention => C, External_Name => "UsageFault_Handler";
   pragma Weak_External (UsageFault_Handler);
   pragma Linker_Alias (UsageFault_Handler, "Dummy_Exception_Handler");

   procedure SVC_Handler is null
     with Export, Convention => C, External_Name => "SVC_Handler";
   pragma Weak_External (SVC_Handler);
   pragma Linker_Alias (SVC_Handler, "Dummy_Exception_Handler");

   procedure DebugMon_Handler is null
     with Export, Convention => C, External_Name => "DebugMon_Handler";
   pragma Weak_External (DebugMon_Handler);
   pragma Linker_Alias (DebugMon_Handler, "Dummy_Exception_Handler");

   procedure PendSV_Handler is null
     with Export, Convention => C, External_Name => "PendSV_Handler";
   pragma Weak_External (PendSV_Handler);
   pragma Linker_Alias (PendSV_Handler, "Dummy_Exception_Handler");

   procedure SysTick_Handler is null
     with Export, Convention => C, External_Name => "SysTick_Handler";
   pragma Weak_External (SysTick_Handler);
   pragma Linker_Alias (SysTick_Handler, "Dummy_Exception_Handler");

   procedure Reset_Handler
     with Import, Convention => C, External_Name => "Reset_Handler";

   estack : constant System.Address
     with Import, Convention => C, External_Name => "_estack";

   Vector : constant array (Exception_Event_Identifier) of System.Address :=
     (
      --  Initial Stack Pointer
      -16 => estack'Address,

      --  Cortex-M3 events table
      -15 => Reset_Handler'Address,
      -14 => NMI_Handler'Address,
      -13 => HardFault_Handler'Address,
      -12 => MemManage_Handler'Address,
      -11 => BusFault_Handler'Address,
      -10 => UsageFault_Handler'Address,
      -9  => System.Null_Address,         --  Reserved
      -8  => System.Null_Address,         --  Reserved
      -7  => System.Null_Address,         --  Reserved
      -6  => System.Null_Address,         --  Reserved
      -5  => SVC_Handler'Address,
      -4  => DebugMon_Handler'Address,
      -3  => System.Null_Address,         --  Reserved
      -2  => PendSV_Handler'Address,
      -1  => SysTick_Handler'Address)
      with Export,
           Convention     => C,
           Linker_Section => ".vectors",
           External_Name  => "__light_exceptions_vector";

end System_CM3;