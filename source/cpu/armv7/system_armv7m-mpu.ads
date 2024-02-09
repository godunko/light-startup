--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

pragma Restrictions (No_Elaboration_Code);

with System.Storage_Elements;

with A0B.Types;

package System_ARMv7M.MPU is

   type MPU_CTRL_Register is record
      ENABLE        : Boolean;
      HFNMIENA      : Boolean;
      PRIVDEFENA    : Boolean;
      Reserved_3_31 : A0B.Types.Reserved_29;
   end record with Object_Size => 32;

   for MPU_CTRL_Register use record
      ENABLE        at 0 range 0 .. 0;
      HFNMIENA      at 0 range 1 .. 1;
      PRIVDEFENA    at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   type MPU_RBAR_Register is record
      --  REGION : A0B.Types.Unsigned_4;
      --  VALID  : Boolean;
      ADDR : System.Address;
   end record with Object_Size => 32;

   for MPU_RBAR_Register use record
      --  REGION at 0 range 0 .. 3;
      --  VALID  at 0 range 4 .. 4;
      ADDR at 0 range 0 .. 31;  --  5 .. 31;
   end record;

   type MPU_RASR_Register is record
      ENABLE         : Boolean;
      SIZE           : A0B.Types.Unsigned_5;
      Reserved_6_7   : A0B.Types.Reserved_2;
      SRD            : A0B.Types.Unsigned_8;  --  array of Boolean?
      B              : Boolean;
      C              : Boolean;
      S              : Boolean;
      TEX            : A0B.Types.Unsigned_3;
      Reserved_22_23 : A0B.Types.Reserved_2;
      AP             : A0B.Types.Unsigned_3;
      Reserved_27    : A0B.Types.Reserved_1;
      XN             : Boolean;
      Reserved_29_31 : A0B.Types.Reserved_3;
   end record with Object_Size => 32;

   for MPU_RASR_Register use record
      ENABLE         at 0 range 0 .. 0;
      SIZE           at 0 range 1 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SRD            at 0 range 8 .. 15;
      B              at 0 range 16 .. 16;
      C              at 0 range 17 .. 17;
      S              at 0 range 18 .. 18;
      TEX            at 0 range 19 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      AP             at 0 range 24 .. 26;
      Reserved_27    at 0 range 27 .. 27;
      XN             at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   type MPU_Registers is record
      MPU_TYPE    : A0B.Types.Unsigned_32;
      MPU_CTRL    : MPU_CTRL_Register with Volatile_Full_Access;
      MPU_RNR     : A0B.Types.Unsigned_32;
      MPU_RBAR    : MPU_RBAR_Register with Volatile_Full_Access;
      MPU_RASR    : MPU_RASR_Register with Volatile_Full_Access;
      MPU_RBAR_A1 : A0B.Types.Unsigned_32;
      MPU_RASR_A1 : A0B.Types.Unsigned_32;
      MPU_RBAR_A2 : A0B.Types.Unsigned_32;
      MPU_RASR_A2 : A0B.Types.Unsigned_32;
      MPU_RBAR_A3 : A0B.Types.Unsigned_32;
      MPU_RASR_A3 : A0B.Types.Unsigned_32;
   end record;

   for MPU_Registers use record
      MPU_TYPE    at 16#00# range 0 .. 31;
      MPU_CTRL    at 16#04# range 0 .. 31;
      MPU_RNR     at 16#08# range 0 .. 31;
      MPU_RBAR    at 16#0C# range 0 .. 31;
      MPU_RASR    at 16#10# range 0 .. 31;
      MPU_RBAR_A1 at 16#14# range 0 .. 31;
      MPU_RASR_A1 at 16#18# range 0 .. 31;
      MPU_RBAR_A2 at 16#1C# range 0 .. 31;
      MPU_RASR_A2 at 16#20# range 0 .. 31;
      MPU_RBAR_A3 at 16#24# range 0 .. 31;
      MPU_RASR_A3 at 16#28# range 0 .. 31;
   end record;

   MPU_Base : constant System.Address :=
     System.Storage_Elements.To_Address (16#E000_ED90#);

   MPU : MPU_Registers with Import, Address => MPU_Base;

end System_ARMv7M.MPU;