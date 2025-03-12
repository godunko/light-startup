/*
 *  Copyright (C) 2025, Vadim Godunko <vgodunko@gmail.com>
 *
 *  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
 */

/* STM32G474_E */

MEMORY
{
    flash (rx)     : ORIGIN = 0x08000000, LENGTH = 512K
    ccm_sram (xrw) : ORIGIN = 0x10000000, LENGTH = 32K
    sram1 (xrw)    : ORIGIN = 0x20000000, LENGTH = 80K
    sram2 (xrw)    : ORIGIN = 0x20014000, LENGTH = 16K
}

/* Aliases map default sections to memory regions */

REGION_ALIAS("DEFAULT_VECTORS", flash);
REGION_ALIAS("DEFAULT_TEXT", flash);
REGION_ALIAS("DEFAULT_RODATA", flash);
REGION_ALIAS("DEFAULT_DATA", sram1);
REGION_ALIAS("DEFAULT_IDATA", flash);    /* info to initialize DEFAULT_DATA */
REGION_ALIAS("DEFAULT_BSS", sram1);
REGION_ALIAS("DEFAULT_STACK", sram2);

REGION_ALIAS ("ITCM_TEXT", ccm_sram);
REGION_ALIAS ("ITCM_ITEXT", flash);
REGION_ALIAS ("DTCM_DATA", ccm_sram);
REGION_ALIAS ("DTCM_IDATA", flash);
REGION_ALIAS ("DTCM_BSS", ccm_sram);

INCLUDE armv7-itcm.ld
INCLUDE armv7-dtcm.ld
INCLUDE armv7.ld
