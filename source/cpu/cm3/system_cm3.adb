--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

pragma Restrictions (No_Elaboration_Code);

package body System_CM3 is

   -----------------------------
   -- Dummy_Exception_Handler --
   -----------------------------

   procedure Dummy_Exception_Handler is
   begin
      loop
         null;
      end loop;
   end Dummy_Exception_Handler;

end System_CM3;
