--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Platform independend types declarations.

pragma Restrictions (No_Elaboration_Code);

package System_Types is

   type Unsigned_24 is mod 2 ** 24 with Size => 24;

   type Unsigned_32 is mod 2 ** 32 with Size => 32;

   type Unsigned_64 is mod 2 ** 64 with Size => 64;

   type Reserved_6 is private;

   type Reserved_8 is private;

   type Reserved_13 is private;

   type Reserved_15 is private;

private

   type Reserved_6 is mod 2 ** 6 with Size => 6;

   type Reserved_8 is mod 2 ** 8 with Size => 8;

   type Reserved_13 is mod 2 ** 13 with Size => 13;

   type Reserved_15 is mod 2 ** 15 with Size => 15;

end System_Types;