--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

pragma Restrictions (No_Elaboration_Code);

with System.Storage_Elements;

with System_Types;

package System_ARMv7M.SysTick is

   type SYST_CSR_Register is record
      ENABLE         : Boolean := False;
      TICKINT        : Boolean := False;
      CLKSOURCE      : Boolean := False;
      Reserved_3_15  : System_Types.Reserved_13;
      COUNTFLAG      : Boolean := False;
      Reserved_17_31 : System_Types.Reserved_15;
   end record with Object_Size => 32;

   for SYST_CSR_Register use record
      ENABLE         at 0 range 0 .. 0;
      TICKINT        at 0 range 1 .. 1;
      CLKSOURCE      at 0 range 2 .. 2;
      Reserved_3_15  at 0 range 3 .. 15;
      COUNTFLAG      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   type SYST_RVR_Register is record
      RELOAD         : System_Types.Unsigned_24 := 0;
      Reserved_24_31 : System_Types.Reserved_8;
   end record with Object_Size => 32;

   for SYST_RVR_Register use record
      RELOAD         at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   type SYST_CVR_Register is record
      CURRENT : System_Types.Unsigned_32;
   end record with Object_Size => 32;

   type SYST_CALIB_Register is record
      TENMS          : System_Types.Unsigned_24;
      Reserved_24_29 : System_Types.Reserved_6;
      SKEW           : Boolean;
      NOREF          : Boolean;
   end record with Object_Size => 32;

   for SYST_CALIB_Register use record
      TENMS          at 0 range 0 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      SKEW           at 0 range 30 .. 30;
      NOREF          at 0 range 31 .. 31;
   end record;

   type SYST_Registers is record
      CSR : SYST_CSR_Register with Volatile_Full_Access;
      RVR : SYST_RVR_Register with Volatile_Full_Access;
      CVR : SYST_CVR_Register with Volatile_Full_Access;
   end record;

   for SYST_Registers use record
      CSR at 0 range 0 .. 31;
      RVR at 4 range 0 .. 31;
      CVR at 8 range 0 .. 31;
   end record;

   SYST_Base : constant System.Address :=
     System.Storage_Elements.To_Address (16#E000E010#);

   SYST : SYST_Registers with Import, Address => SYST_Base;

end System_ARMv7M.SysTick;