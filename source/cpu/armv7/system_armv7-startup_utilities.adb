--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2022;

with Interfaces;
with System.Storage_Elements;

with System_Types;

package body System_ARMv7.Startup_Utilities is

   procedure Copy
     (Start_Address : System.Address;
      End_Address   : System.Address;
      Load_Address  : System.Address);
   --  Copy data starting from Load_Address to the memory region at
   --  Start_Address .. End_Address-4.

   procedure Fill
     (Start_Address : System.Address;
      End_Address   : System.Address);
   --  Fill memory at Start_Address .. End_Address-4 by zero.

   ----------
   -- Copy --
   ----------

   procedure Copy
     (Start_Address : System.Address;
      End_Address   : System.Address;
      Load_Address  : System.Address)
   is
      use type System.Address;
      use type System.Storage_Elements.Storage_Offset;

      Source_Address      : System.Address := Load_Address;
      Destination_Address : System.Address := Start_Address;

   begin
      if Source_Address /= Destination_Address then
         while Destination_Address /= End_Address loop
            declare
               Source      : constant Interfaces.Unsigned_32
                 with Import, Address => Source_Address;
               Destination : Interfaces.Unsigned_32
                 with Import, Address => Destination_Address;

            begin
               Destination         := Source;

               Source_Address      :=
                 @ + Interfaces.Unsigned_32'Max_Size_In_Storage_Elements;
               Destination_Address :=
                 @ + Interfaces.Unsigned_32'Max_Size_In_Storage_Elements;
            end;
         end loop;
      end if;
   end Copy;

   -----------------------
   -- Copy_Data_Section --
   -----------------------

   procedure Copy_Data_Section is
      sidata : constant System.Storage_Elements.Integer_Address
        with Import, Convention => C, External_Name => "_sidata";
      sdata  : constant System.Storage_Elements.Integer_Address
        with Import, Convention => C, External_Name => "_sdata";
      edata  : constant System.Storage_Elements.Integer_Address
        with Import, Convention => C, External_Name => "_edata";

   begin
      Copy (sdata'Address, edata'Address, sidata'Address);
   end Copy_Data_Section;

   ----------------------------
   -- Copy_DTCM_Data_Section --
   ----------------------------

   procedure Copy_DTCM_Data_Section is
      siitcmtext : constant System_Types.Unsigned_32
        with Import, Convention => C, External_Name => "_siitcmtext";
      sitcmtext  : constant System_Types.Unsigned_32
        with Import, Convention => C, External_Name => "_sitcmtext";
      eitcmtext  : constant System_Types.Unsigned_32
        with Import, Convention => C, External_Name => "_eitcmtext";

   begin
      Copy (sitcmtext'Address, eitcmtext'Address, siitcmtext'Address);
   end Copy_DTCM_Data_Section;

   ----------------------------
   -- Copy_ITCM_Text_Section --
   ----------------------------

   procedure Copy_ITCM_Text_Section is
      sidtcmdata : constant System_Types.Unsigned_32
        with Import, Convention => C, External_Name => "_sidtcmdata";
      sdtcmdata  : constant System_Types.Unsigned_32
        with Import, Convention => C, External_Name => "_sdtcmdata";
      edtcmdata  : constant System_Types.Unsigned_32
        with Import, Convention => C, External_Name => "_edtcmdata";

   begin
      Copy (sdtcmdata'Address, edtcmdata'Address, sidtcmdata'Address);
   end Copy_ITCM_Text_Section;

   ----------
   -- Fill --
   ----------

   procedure Fill
     (Start_Address : System.Address;
      End_Address   : System.Address)
   is

      use type System.Address;
      use type System.Storage_Elements.Storage_Offset;

      Destination_Address : System.Address := Start_Address;

   begin
      while Destination_Address /= End_Address loop
         declare
            Destination : Interfaces.Unsigned_32
              with Import, Address => Destination_Address;

         begin
            Destination         := 0;

            Destination_Address :=
              @ + Interfaces.Unsigned_32'Max_Size_In_Storage_Elements;
         end;
      end loop;
   end Fill;

   ----------------------
   -- Fill_BSS_Section --
   ----------------------

   procedure Fill_BSS_Section is
      sbss : constant System_Types.Unsigned_32
        with Import, Convention => C, External_Name => "_sbss";
      ebss : constant System_Types.Unsigned_32
        with Import, Convention => C, External_Name => "_ebss";

   begin
      Fill (sbss'Address, ebss'Address);
   end Fill_BSS_Section;

   ---------------------------
   -- Fill_DTCM_BSS_Section --
   ---------------------------

   procedure Fill_DTCM_BSS_Section is
      sdtcmbss : constant System_Types.Unsigned_32
        with Import, Convention => C, External_Name => "_sdtcmbss";
      edtcmbss : constant System_Types.Unsigned_32
        with Import, Convention => C, External_Name => "_edtcmbss";

   begin
      Fill (sdtcmbss'Address, edtcmbss'Address);
   end Fill_DTCM_BSS_Section;

end System_ARMv7.Startup_Utilities;