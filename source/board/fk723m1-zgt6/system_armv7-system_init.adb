--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  FK723M1-ZGT6
--
--  XXX Not implemented.

with STM32H723.Flash; use STM32H723.Flash;

separate (System_ARMv7)
procedure System_Init is
begin
   Flash_Periph.ACR.LATENCY := 7;
end System_Init;
