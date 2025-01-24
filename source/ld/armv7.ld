/*
 *  Copyright (C) 2024-2025, Vadim Godunko <vgodunko@gmail.com>
 *
 *  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
 */

/*
 * Common mapping of sections to memory regions. Following memory regions
 * should defined:
 *   DEFAULT_VECTORS
 *   DEFAULT_TEXT
 *   DEFAULT_RODATA
 *   DEFAULT_DATA
 *   DEFAULT_IDATA
 *   DEFAULT_BSS
 *   DEFAULT_STACK
 *   ITCM_TEXT
 *   ITCM_ITEXT
 *   DTCM_DATA
 *   DTCM_IDATA
 *   DTCM_BSS
 *
 * This script exports following symbols to be used by startup code:
 *   _sdata    start of the preinitialized data (in RAM)
 *   _edata    end of the preinitialized data (in RAM)
 *   _sidata   start of the preinitialized data secrion in ROM
 *   _sbss     start of the uninitialized data (in RAM)
 *   _ebss     start of the uninitialized data (in RAM)
 *   _estack   address of the initial stack pointer
 */

_estack = ORIGIN(DEFAULT_STACK) + LENGTH (DEFAULT_STACK);

SECTIONS
{
    /* Events vector is composed from the exceptions vector of the CPU and
       the interrupts vector of the MCU, they are declared in the different
       sections */
    .vectors :
    {
        KEEP(*(.vectors.exceptions.*))
        KEEP(*(.vectors.interrupts.*))
    } > DEFAULT_VECTORS

    .text :
    {
        *(.text .text.*)
    } > DEFAULT_TEXT

    .rodata :
    {
        *(.rodata .rodata.*)
    } > DEFAULT_RODATA

    .data : ALIGN(4)  /* Ensure that the start of the section is word aligned */
    {
        _sdata = .;       /* Global symbol at data start */

        *(.data .data.*)

        . = ALIGN(4);     /* Ensure that the end of the section is word aligned */
        _edata = .;       /* Global symbol at data end */
    } > DEFAULT_DATA AT > DEFAULT_IDATA
    _sidata = LOADADDR(.data);

    .bss (NOLOAD) : ALIGN(4)  /* Ensure that the start of the section is word aligned */
    {
        _sbss = .;        /* Global symbol at bss start */

        *(.bss .bss.*)

        . = ALIGN(4);     /* Ensure that the end of the section is word aligned */
        _ebss = .;        /* Global symbol at bss end */
    } > DEFAULT_BSS

}

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
}
INSERT AFTER .text;

SECTIONS
{
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
