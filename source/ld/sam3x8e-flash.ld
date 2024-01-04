/*
 *  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
 *
 *  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
 */

/* SAM3X8E */

MEMORY
{
    flash (rx) : ORIGIN = 0x00080000, LENGTH = 0x00080000 /* Flash, 512K */
    ram (rwx)  : ORIGIN = 0x20070000, LENGTH = 0x00018000 /* SRAM, 96K */
}

/* Aliases to map default sections to the memory regions */

REGION_ALIAS("DEFAULT_VECTORS", flash);
REGION_ALIAS("DEFAULT_TEXT",    flash);
REGION_ALIAS("DEFAULT_RODATA",  flash);
REGION_ALIAS("DEFAULT_DATA",    ram);
REGION_ALIAS("DEFAULT_IDATA",   flash);  /* info to initialize DEFAULT_DATA */
REGION_ALIAS("DEFAULT_BSS",     ram);
REGION_ALIAS("DEFAULT_STACK",   ram);

INCLUDE armv7.ld
