--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2022;

with System_ARMv7M.CMSIS; use System_ARMv7M.CMSIS;
with System_ARMv7M.SCB;   use System_ARMv7M.SCB;
with System_Types;        use System_Types;

package body System_ARMv7M.CM7 is

   function clz
     (Item : System_Types.Unsigned_32) return System_Types.Unsigned_32
        with Import, Convention => Intrinsic, External_Name => "__builtin_clz";

   function Shift_Left
     (Value  : Unsigned_32;
      Amount : Natural) return Unsigned_32
      with Import, Convention => Intrinsic;

   -------------------
   -- Enable_DCache --
   -------------------

   procedure Enable_DCache is
      --  Ways      : System_Types.Unsigned_10;
      --  Sets      : System_Types.Unsigned_15;
      Ways      : System_Types.Unsigned_32;
      Sets      : System_Types.Unsigned_32;
      Way       : System_Types.Unsigned_32;
      Set       : System_Types.Unsigned_32;
      Way_Shift : Natural;
      Set_Shift : Natural;
      CCSIDR    : SCB_CCSIDR_Register;

   begin
      --  Select Level 1 Data cache.

      declare
         Aux : SCB_CSSELR_Register := SCB.SCB.CSSELR;

      begin
         Aux.InD   := False;
         Aux.Level := 0;

         SCB.SCB.CSSELR := Aux;
      end;

      Data_Synchronization_Barrier;

      --  Compute data cache parameters and shifts of fields in DCISW
      --  regisger.

      CCSIDR := SCB.SCB.CCSIDR;

      Ways := Unsigned_32 (CCSIDR.Associativity);
      Sets := Unsigned_32 (CCSIDR.NumSets);

      Set_Shift := Natural (CCSIDR.LineSize) + 4;
      --    LineSize  = Log2 (LineLen / 4) - 2
      --  and
      --    Set_Shift = Log2 (LineLen)
      --  thus
      --    Set_Shift = LineSize + Log2 (4) + 2

      Way_Shift := Natural (clz (Unsigned_32 (Ways)));

      --  Invalidate data cache line by line.

      Way := Unsigned_32 (Ways);

      loop
         Set := Unsigned_32 (Sets);

         loop
            declare
               Aux : Unsigned_32 :=
                 Shift_Left (Way, Way_Shift)
                   or Shift_Left (Set, Set_Shift);

            begin
               SCB.SCB_Cache.DCISW := Aux;
            end;

            exit when Set = 0;

            Set := @ - 1;
         end loop;

         exit when Way = 0;

         Way := @ - 1;
      end loop;

      Data_Synchronization_Barrier;

      SCB.SCB.CCR.DC := True;
      --  Enable instruction cache

      Data_Synchronization_Barrier;
      Instruction_Synchronization_Barrier;
   end Enable_DCache;

   -------------------
   -- Enable_ICache --
   -------------------

   procedure Enable_ICache is
   begin
      Data_Synchronization_Barrier;
      Instruction_Synchronization_Barrier;

      SCB_Cache.ICIALLU := 0;
      --  Invalidate instructions cache

      Data_Synchronization_Barrier;
      Instruction_Synchronization_Barrier;

      SCB.SCB.CCR.IC := True;
      --  Enable instruction cache

      Data_Synchronization_Barrier;
      Instruction_Synchronization_Barrier;
   end Enable_ICache;

end System_ARMv7M.CM7;
