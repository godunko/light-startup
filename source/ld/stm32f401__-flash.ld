/*
 *  Copyright (C) 2024-2025, Vadim Godunko <vgodunko@gmail.com>
 *
 *  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
 */

/* STM32F401__ */

/* Aliases to map default sections to the memory regions */

REGION_ALIAS("DEFAULT_VECTORS", flash);
REGION_ALIAS("DEFAULT_TEXT",    flash);
REGION_ALIAS("DEFAULT_RODATA",  flash);
REGION_ALIAS("DEFAULT_DATA",    ram);
REGION_ALIAS("DEFAULT_IDATA",   flash);  /* info to initialize DEFAULT_DATA */
REGION_ALIAS("DEFAULT_BSS",     ram);
REGION_ALIAS("DEFAULT_STACK",   ram);

REGION_ALIAS ("ITCM_TEXT", flash);
REGION_ALIAS ("ITCM_ITEXT", flash);
REGION_ALIAS ("DTCM_DATA", ram);
REGION_ALIAS ("DTCM_IDATA", flash);
REGION_ALIAS ("DTCM_BSS", ram);

INCLUDE armv7.ld
