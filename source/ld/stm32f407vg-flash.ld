/*
 *  Copyright (C) 2024-2025, Yuri Veretelnikov <yuri.veretelnikov@gmail.com>
 *
 *  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
 */

/* STM32F407VG */

MEMORY
{
    flash (rx) : ORIGIN = 0x08000000, LENGTH = 1024K /* Flash, 1024K */
    ccm (rwx) : ORIGIN = 0x10000000, LENGTH = 64K /* CCM RAM */
    ram (rwx)  : ORIGIN = 0x20000000, LENGTH = 128K /* SRAM, 128K */
}

/* Aliases to map default sections to the memory regions */

REGION_ALIAS("DEFAULT_VECTORS", flash);
REGION_ALIAS("DEFAULT_TEXT",    flash);
REGION_ALIAS("DEFAULT_RODATA",  flash);
REGION_ALIAS("DEFAULT_DATA",    ram);
REGION_ALIAS("DEFAULT_IDATA",   flash);  /* info to initialize DEFAULT_DATA */
REGION_ALIAS("DEFAULT_BSS",     ram);
REGION_ALIAS("DEFAULT_STACK",   ram);

/* STM32F407 can't fetch instructions from the CCM */
REGION_ALIAS ("DTCM_DATA", ccm);
REGION_ALIAS ("DTCM_IDATA", flash);
REGION_ALIAS ("DTCM_BSS", ccm);

INCLUDE armv7-dtcm.ld
INCLUDE armv7.ld
