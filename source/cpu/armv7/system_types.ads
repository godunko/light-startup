--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Platform independend types declarations.

pragma Restrictions (No_Elaboration_Code);

package System_Types is

   type Integer_32 is range -2 ** 31 .. 2 ** 31 - 1 with Size => 32;

   type Unsigned_2 is mod 2 ** 2 with Size => 2;
   type Unsigned_3 is mod 2 ** 3 with Size => 3;
   type Unsigned_4 is mod 2 ** 4 with Size => 4;

   type Unsigned_10 is mod 2 ** 10 with Size => 10;

   type Unsigned_15 is mod 2 ** 15 with Size => 15;

   type Unsigned_24 is mod 2 ** 24 with Size => 24;

   type Unsigned_32 is mod 2 ** 32 with Size => 32;

   type Unsigned_64 is mod 2 ** 64 with Size => 64;

   type Reserved_1 is private;

   type Reserved_3 is private;
   type Reserved_4 is private;

   type Reserved_6 is private;

   type Reserved_8 is private;

   type Reserved_13 is private;

   type Reserved_15 is private;

   type Reserved_28 is private;
   type Reserved_29 is private;

   type Reserved_32 is private;

private

   type Reserved_1 is mod 2 ** 1 with Size => 1;

   type Reserved_3 is mod 2 ** 3 with Size => 3;
   type Reserved_4 is mod 2 ** 4 with Size => 4;

   type Reserved_6 is mod 2 ** 6 with Size => 6;

   type Reserved_8 is mod 2 ** 8 with Size => 8;

   type Reserved_13 is mod 2 ** 13 with Size => 13;

   type Reserved_15 is mod 2 ** 15 with Size => 15;

   type Reserved_28 is mod 2 ** 28 with Size => 28;
   type Reserved_29 is mod 2 ** 29 with Size => 29;

   type Reserved_32 is mod 2 ** 32 with Size => 32;

end System_Types;