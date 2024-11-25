/*
 *  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
 *
 *  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
 */

/* STM32F401_E */

MEMORY
{
    flash (rx) : ORIGIN = 0x08000000, LENGTH = 512K /* Flash, 512K */
    ram (rwx)  : ORIGIN = 0x20000000, LENGTH = 96K /* SRAM, 96K */
}

INCLUDE stm32f401__-flash.ld
