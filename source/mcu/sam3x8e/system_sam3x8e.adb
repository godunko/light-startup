--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2022;

with Interfaces;
with System.Storage_Elements;

with System_SAM3X8E.Board;

package body System_SAM3X8E is

   procedure Reset_Handler
     with Export, Convention => C, External_Name => "Reset_Handler";

   procedure Startup_Setup_Clocks
     with Import, Convention => C, External_Name => "Startup_Setup_Clocks";

   procedure Main
     with Import, Convention => C, External_Name => "main";

   procedure Copy_Data_Section;

   procedure Fill_BSS_Section;

   -----------------------
   -- Copy_Data_Section --
   -----------------------

   procedure Copy_Data_Section is

      use type System.Address;
      use type System.Storage_Elements.Storage_Offset;

      sidata : constant System.Storage_Elements.Integer_Address
        with Import, Convention => C, External_Name => "_sidata";
      sdata  : constant System.Storage_Elements.Integer_Address
        with Import, Convention => C, External_Name => "_sdata";
      edata  : constant System.Storage_Elements.Integer_Address
        with Import, Convention => C, External_Name => "_edata";

      Source_Address      : System.Address := sidata'Address;
      Destination_Address : System.Address := sdata'Address;

   begin
      if Source_Address /= Destination_Address then
         while Destination_Address /= edata'Address loop
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
   end Copy_Data_Section;

   -----------------------------
   -- Dummy_Interrupt_Handler --
   -----------------------------

   procedure Dummy_Interrupt_Handler
     renames System_CM3.Dummy_Exception_Handler;

   ----------------------
   -- Fill_BSS_Section --
   ----------------------

   procedure Fill_BSS_Section is

      use type System.Address;
      use type System.Storage_Elements.Storage_Offset;

      sbss : constant System.Storage_Elements.Integer_Address
        with Import, Convention => C, External_Name => "_sbss";
      ebss : constant System.Storage_Elements.Integer_Address
        with Import, Convention => C, External_Name => "_ebss";

      Destination_Address : System.Address := sbss'Address;

   begin
      while Destination_Address /= ebss'Address loop
         declare
            Destination : Interfaces.Unsigned_32
              with Import, Address => Destination_Address;

         begin
            Destination         := 0;

            Destination_Address :=
              @ + Interfaces.Unsigned_32'Max_Size_In_Storage_Elements;
         end;
      end loop;
   end Fill_BSS_Section;

   -------------------
   -- Reset_Handler --
   -------------------

   procedure Reset_Handler is
   begin
      Startup_Setup_Clocks;

      Copy_Data_Section;
      Fill_BSS_Section;

      Main;

      loop
         null;
      end loop;
   end Reset_Handler;

end System_SAM3X8E;