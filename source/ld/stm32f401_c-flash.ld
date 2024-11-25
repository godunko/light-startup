/*
 *  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
 *
 *  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
 */

/* STM32F401_C */

MEMORY
{
    flash (rx) : ORIGIN = 0x08000000, LENGTH = 256K /* Flash, 256K */
    ram (rwx)  : ORIGIN = 0x20000000, LENGTH = 64K /* SRAM, 64K */
}

INCLUDE stm32f401__-flash.ld
