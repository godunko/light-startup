/*
 *  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
 *
 *  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
 */

/* STM32H723ZGT6 */

MEMORY
{
    itcm_ram (xrw) : ORIGIN = 0x00000000, LENGTH = 64K
    dtcm_ram (xrw) : ORIGIN = 0x20000000, LENGTH = 128K
    rom     (rx)   : ORIGIN = 0x08000000, LENGTH = 1024K
    d1_ram  (xrw)  : ORIGIN = 0x24000000, LENGTH = 320K
    d2_ram  (xrw)  : ORIGIN = 0x30000000, LENGTH = 32K
    d3_ram  (xrw)  : ORIGIN = 0x38000000, LENGTH = 16K
}

/* Aliases map default sections to memory regions */

REGION_ALIAS("DEFAULT_VECTORS", rom);
REGION_ALIAS("DEFAULT_TEXT", rom);
REGION_ALIAS("DEFAULT_RODATA", rom);
REGION_ALIAS("DEFAULT_DATA", d1_ram);
REGION_ALIAS("DEFAULT_IDATA", rom);    /* info to initialize DEFAULT_DATA */
REGION_ALIAS("DEFAULT_BSS", d1_ram);
REGION_ALIAS("DEFAULT_STACK", d1_ram);

REGION_ALIAS ("ITCM_TEXT", itcm_ram);
REGION_ALIAS ("ITCM_ITEXT", rom);
REGION_ALIAS ("DTCM_DATA", dtcm_ram);
REGION_ALIAS ("DTCM_IDATA", rom);
REGION_ALIAS ("DTCM_BSS", dtcm_ram);

SECTIONS
{
    .itcm.text : ALIGN(4) /* Ensure that the start of the section is word aligned */
    {
        _sitcmtext = .;   /* Global symbol at ITCM text start */

        *(.itcm.text .itcm.text.*)

        . = ALIGN(4);     /* Ensure that the end of the section is word aligned */
        _eitcmtext = .;   /* Global symbol at ITCM text end */
    } > ITCM_TEXT AT > ITCM_ITEXT
    _siitcmtext = LOADADDR(.itcm.text);

    .dtcm.data : ALIGN(4) /* Ensure that the start of the section is word aligned */
    {
        _sdtcmdata = .;   /* Global symbol at DTCM data start */

        *(.dtcm.data .dtcm.data.*)

        . = ALIGN(4);     /* Ensure that the end of the section is word aligned */
        _edtcmdata = .;   /* Global symbol at DTCM data end */
    } > DTCM_DATA AT > DTCM_IDATA
    _sidtcmdata = LOADADDR(.dtcm.data);
}
INSERT AFTER .data;

SECTIONS
{
    .dctm.bss (NOLOAD) : ALIGN(4)  /* Ensure that the start of the section is word aligned */
    {
        _sdtcmbss = .;        /* Global symbol at DTCM bss start */

        *(.dtcm.bss .dtcm.bss.*)

        . = ALIGN(4);     /* Ensure that the end of the section is word aligned */
        _edtcmbss = .;        /* Global symbol at DTCM bss end */
    } > DTCM_BSS
}
INSERT AFTER .bss;

INCLUDE armv7.ld
