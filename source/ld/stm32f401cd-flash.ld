/*
 *  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
 *
 *  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
 */

/* STM32F401CD */

MEMORY
{
    flash (rx) : ORIGIN = 0x08000000, LENGTH = 512K /* Flash, 512K */
    ram (rwx)  : ORIGIN = 0x20000000, LENGTH = 96K /* SRAM, 96K */
}

/* Aliases to map default sections to the memory regions */

REGION_ALIAS("DEFAULT_VECTORS", flash);
REGION_ALIAS("DEFAULT_TEXT",    flash);
REGION_ALIAS("DEFAULT_RODATA",  flash);
REGION_ALIAS("DEFAULT_DATA",    ram);
REGION_ALIAS("DEFAULT_IDATA",   flash);  /* info to initialize DEFAULT_DATA */
REGION_ALIAS("DEFAULT_BSS",     ram);
REGION_ALIAS("DEFAULT_STACK",   ram);

REGION_ALIAS ("ITCM_TEXT", ram);
REGION_ALIAS ("ITCM_ITEXT", flash);
REGION_ALIAS ("DTCM_DATA", ram);
REGION_ALIAS ("DTCM_IDATA", flash);
REGION_ALIAS ("DTCM_BSS", ram);

INCLUDE armv7.ld
