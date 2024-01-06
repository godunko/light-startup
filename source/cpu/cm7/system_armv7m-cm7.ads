--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Various Cortex-M7 specific subprograms

pragma Restrictions (No_Elaboration_Code);

package System_ARMv7M.CM7 is

   procedure Enable_ICache;
   --  Turns on I-Cache

   procedure Enable_DCache;
   --  Turns on D-Cache
   
end System_ARMv7M.CM7;