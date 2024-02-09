--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

pragma Restrictions (No_Elaboration_Code);

with System.Storage_Elements;

with A0B.Types;

package System_ARMv7M.SCB is

   type SCB_CCR_Register is record
      NONBASETHRDENA : Boolean;
      USERSETMPEND   : Boolean;
      Reserved_2_2   : A0B.Types.Reserved_1;
      UNALIGN_TRP    : Boolean;
      DIV_0_TRP      : Boolean;
      Reserved_5_7   : A0B.Types.Reserved_3;
      BFHFNMIGN      : Boolean;
      STKALIGN       : Boolean;
      Reserved_10_15 : A0B.Types.Reserved_6;
      DC             : Boolean;
      IC             : Boolean;
      BP             : Boolean;
      Reserved_19_31 : A0B.Types.Reserved_13;
   end record with Object_Size => 32;

   for SCB_CCR_Register use record
      NONBASETHRDENA at 0 range 0 .. 0;
      USERSETMPEND   at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      UNALIGN_TRP    at 0 range 3 .. 3;
      DIV_0_TRP      at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      BFHFNMIGN      at 0 range 8 .. 8;
      STKALIGN       at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      DC             at 0 range 16 .. 16;
      IC             at 0 range 17 .. 17;
      BP             at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   type SCB_CCSIDR_Register is record
      LineSize      : A0B.Types.Unsigned_3;
      Associativity : A0B.Types.Unsigned_10;
      NumSets       : A0B.Types.Unsigned_15;
      WA            : Boolean;
      RA            : Boolean;
      WB            : Boolean;
      WT            : Boolean;
   end record with Object_Size => 32;

   for SCB_CCSIDR_Register use record
      LineSize      at 0 range 0 .. 2;
      Associativity at 0 range 3 .. 12;
      NumSets       at 0 range 13 .. 27;
      WA            at 0 range 28 .. 28;
      RA            at 0 range 29 .. 29;
      WB            at 0 range 30 .. 30;
      WT            at 0 range 31 .. 31;
   end record;

   type SCB_CSSELR_Register is record
      InD           : Boolean;
      Level         : A0B.Types.Unsigned_3;
      Reserved_4_31 : A0B.Types.Reserved_28;
   end record with Object_Size => 32;

   for SCB_CSSELR_Register use record
      InD           at 0 range 0 .. 0;
      Level         at 0 range 1 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   type SCB_CPACR_Register is record
      CP0            : A0B.Types.Unsigned_2 := 0;
      CP1            : A0B.Types.Unsigned_2 := 0;
      CP2            : A0B.Types.Unsigned_2 := 0;
      CP3            : A0B.Types.Unsigned_2 := 0;
      CP4            : A0B.Types.Unsigned_2 := 0;
      CP5            : A0B.Types.Unsigned_2 := 0;
      CP6            : A0B.Types.Unsigned_2 := 0;
      CP7            : A0B.Types.Unsigned_2 := 0;
      Reserved_16_19 : A0B.Types.Reserved_4;
      CP10           : A0B.Types.Unsigned_2 := 0;
      CP11           : A0B.Types.Unsigned_2 := 0;
      Reserved_24_31 : A0B.Types.Reserved_8;
   end record with Object_Size => 32;

   for SCB_CPACR_Register use record
      CP0            at 0 range 0 .. 1;
      CP1            at 0 range 2 .. 3;
      CP2            at 0 range 4 .. 5;
      CP3            at 0 range 6 .. 7;
      CP4            at 0 range 8 .. 9;
      CP5            at 0 range 10 .. 11;
      CP6            at 0 range 12 .. 13;
      CP7            at 0 range 14 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      CP10           at 0 range 20 .. 21;
      CP11           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   type SCB_SHCSR_Register is record
      MEMFAULTACT    : Boolean;
      BUSFAULTACT    : Boolean;
      Reserved_2     : A0B.Types.Reserved_1;
      USGFAULTACT    : Boolean;
      Reserved_4_6   : A0B.Types.Reserved_3;
      SVCALLACT      : Boolean;
      MONITORACT     : Boolean;
      Reserved_9     : A0B.Types.Reserved_1;
      PENDSVACT      : Boolean;
      SYSTICKACT     : Boolean;
      USGFAULTPENDED : Boolean;
      MEMFAULTPENDED : Boolean;
      BUSFAULTPENDED : Boolean;
      SVCALLPENDED   : Boolean;
      MEMFAULTENA    : Boolean;
      BUSFAULTENA    : Boolean;
      USGFAULTENA    : Boolean;
      Reserved_19_31 : A0B.Types.Reserved_13;
   end record with Object_Size => 32;

   for SCB_SHCSR_Register use record
      MEMFAULTACT    at 0 range 0 .. 0;
      BUSFAULTACT    at 0 range 1 .. 1;
      Reserved_2     at 0 range 2 .. 2;
      USGFAULTACT    at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      SVCALLACT      at 0 range 7 .. 7;
      MONITORACT     at 0 range 8 .. 8;
      Reserved_9     at 0 range 9 .. 9;
      PENDSVACT      at 0 range 10 .. 10;
      SYSTICKACT     at 0 range 11 .. 11;
      USGFAULTPENDED at 0 range 12 .. 12;
      MEMFAULTPENDED at 0 range 13 .. 13;
      BUSFAULTPENDED at 0 range 14 .. 14;
      SVCALLPENDED   at 0 range 15 .. 15;
      MEMFAULTENA    at 0 range 16 .. 16;
      BUSFAULTENA    at 0 range 17 .. 17;
      USGFAULTENA    at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   type SCB_Registers is record
      CPUID    : A0B.Types.Reserved_32;
      ICSR     : A0B.Types.Reserved_32;
      VTOR     : A0B.Types.Reserved_32;
      AIRCR    : A0B.Types.Reserved_32;
      SCR      : A0B.Types.Reserved_32;
      CCR      : SCB_CCR_Register    with Volatile_Full_Access;
      SHPR1    : A0B.Types.Reserved_32;
      SHPR2    : A0B.Types.Reserved_32;
      SHPR3    : A0B.Types.Reserved_32;
      SHCSR    : SCB_SHCSR_Register  with Volatile_Full_Access;
      CFSR     : A0B.Types.Reserved_32;
      HFSR     : A0B.Types.Reserved_32;
      DFSR     : A0B.Types.Reserved_32;
      MMFAR    : A0B.Types.Reserved_32;
      BFAR     : A0B.Types.Reserved_32;
      AFSR     : A0B.Types.Reserved_32;

      -- ARMv7-M CPUID subblock begin

      ID_PFR0  : A0B.Types.Reserved_32;
      ID_PFR1  : A0B.Types.Reserved_32;
      ID_DFR0  : A0B.Types.Reserved_32;
      ID_AFR0  : A0B.Types.Reserved_32;
      ID_MMFR0 : A0B.Types.Reserved_32;
      ID_MMFR1 : A0B.Types.Reserved_32;
      ID_MMFR2 : A0B.Types.Reserved_32;
      ID_MMFR3 : A0B.Types.Reserved_32;
      ID_ISAR0 : A0B.Types.Reserved_32;
      ID_ISAR1 : A0B.Types.Reserved_32;
      ID_ISAR2 : A0B.Types.Reserved_32;
      ID_ISAR3 : A0B.Types.Reserved_32;
      ID_ISAR4 : A0B.Types.Reserved_32;
      ID_ISAR5 : A0B.Types.Reserved_32;
      CLIDR    : A0B.Types.Reserved_32;
      CTR      : A0B.Types.Reserved_32;
      CCSIDR   : SCB_CCSIDR_Register with Volatile_Full_Access;
      CSSELR   : SCB_CSSELR_Register with Volatile_Full_Access;

      -- ARMv7-M CPUID subblock end

      CPACR    : SCB_CPACR_Register  with Volatile_Full_Access;
   end record;

   for SCB_Registers use record
      CPUID    at 16#00# range 0 .. 31;
      ICSR     at 16#04# range 0 .. 31;
      VTOR     at 16#08# range 0 .. 31;
      AIRCR    at 16#0C# range 0 .. 31;
      SCR      at 16#10# range 0 .. 31;
      CCR      at 16#14# range 0 .. 31;
      SHPR1    at 16#18# range 0 .. 31;
      SHPR2    at 16#1C# range 0 .. 31;
      SHPR3    at 16#20# range 0 .. 31;
      SHCSR    at 16#24# range 0 .. 31;
      CFSR     at 16#28# range 0 .. 31;
      HFSR     at 16#2C# range 0 .. 31;
      DFSR     at 16#30# range 0 .. 31;
      MMFAR    at 16#34# range 0 .. 31;
      BFAR     at 16#38# range 0 .. 31;
      AFSR     at 16#3C# range 0 .. 31;
      ID_PFR0  at 16#40# range 0 .. 31;
      ID_PFR1  at 16#44# range 0 .. 31;
      ID_DFR0  at 16#48# range 0 .. 31;
      ID_AFR0  at 16#4C# range 0 .. 31;
      ID_MMFR0 at 16#50# range 0 .. 31;
      ID_MMFR1 at 16#54# range 0 .. 31;
      ID_MMFR2 at 16#58# range 0 .. 31;
      ID_MMFR3 at 16#5C# range 0 .. 31;
      ID_ISAR0 at 16#60# range 0 .. 31;
      ID_ISAR1 at 16#64# range 0 .. 31;
      ID_ISAR2 at 16#68# range 0 .. 31;
      ID_ISAR3 at 16#6C# range 0 .. 31;
      ID_ISAR4 at 16#70# range 0 .. 31;
      ID_ISAR5 at 16#74# range 0 .. 31;
      CLIDR    at 16#78# range 0 .. 31;
      CTR      at 16#7C# range 0 .. 31;
      CCSIDR   at 16#80# range 0 .. 31;
      CSSELR   at 16#84# range 0 .. 31;
      CPACR    at 16#88# range 0 .. 31;
   end record;

   type SCB_MVFR0_Register is record
      A_SIMD                : A0B.Types.Unsigned_4;
      Single_Precision      : A0B.Types.Unsigned_4;
      Double_Precision      : A0B.Types.Unsigned_4;
      FP_Exception_Trapping : A0B.Types.Unsigned_4;
      Divide                : A0B.Types.Unsigned_4;
      Square_Root           : A0B.Types.Unsigned_4;
      Short_Vectors         : A0B.Types.Unsigned_4;
      FP_Rounding_Modes     : A0B.Types.Unsigned_4;
   end record with Object_Size => 32;

   for SCB_MVFR0_Register use record
      A_SIMD                at 0 range 0 .. 3;
      Single_Precision      at 0 range 4 .. 7;
      Double_Precision      at 0 range 8 .. 11;
      FP_Exception_Trapping at 0 range 12 .. 15;
      Divide                at 0 range 16 .. 19;
      Square_Root           at 0 range 20 .. 23;
      Short_Vectors         at 0 range 24 .. 27;
      FP_Rounding_Modes     at 0 range 28 .. 31;
   end record;

   type SCB_FP_Registers is record
      FPCCR  : A0B.Types.Reserved_32;
      FPCAR  : A0B.Types.Reserved_32;
      FPDSCR : A0B.Types.Reserved_32;
      MVFR0  : SCB_MVFR0_Register with Volatile_Full_Access;
      MVFR1  : A0B.Types.Reserved_32;
      MVFR2  : A0B.Types.Reserved_32;
   end record;

   for SCB_FP_Registers use record
      FPCCR  at 0 range 0 .. 31;
      FPCAR  at 4 range 0 .. 31;
      FPDSCR at 8 range 0 .. 31;
      MVFR0  at 12 range 0 .. 31;
      MVFR1  at 16 range 0 .. 31;
      MVFR2  at 20 range 0 .. 31;
   end record;

   type SCB_Cache_Registers is record
      ICIALLU : A0B.Types.Unsigned_32 with Volatile_Full_Access;
    --    ICIMVAU
      DCISW   : A0B.Types.Unsigned_32 with Volatile_Full_Access;
      --  This register has "dynamic" strusture.
   end record;

   for SCB_Cache_Registers use record
      ICIALLU at 16#00# range 0 .. 31;
      DCISW   at 16#10# range 0 .. 31;
   end record;

   SCB_Base       : constant System.Address :=
     System.Storage_Elements.To_Address (16#E000_ED00#);
   SCB_FP_Base    : constant System.Address :=
     System.Storage_Elements.To_Address (16#E000_EF34#);
   SCB_Cache_Base : constant System.Address :=
     System.Storage_Elements.To_Address (16#E000_EF50#);

   SCB       : SCB_Registers       with Import, Address => SCB_Base;
   SCB_FP    : SCB_FP_Registers    with Import, Address => SCB_FP_Base;
   SCB_Cache : SCB_Cache_Registers with Import, Address => SCB_Cache_Base;

end System_ARMv7M.SCB;