/*
 *  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
 *
 *  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
 */

/* SAM3X8E */

/*
 * This script exports following symbols to be used by startup code:
 *   _sdata    start of the preinitialized data (in RAM)
 *   _edata    end of the preinitialized data (in RAM)
 *   _sidata   start of the preinitialized data secrion in ROM
 *   _sbss     start of the uninitialized data (in RAM)
 *   _ebss     start of the uninitialized data (in RAM)
 *   _estack   address of the initial stack pointer
 */

MEMORY
{
    rom (rx)    : ORIGIN = 0x00080000, LENGTH = 0x00080000 /* Flash, 512K */
    ram (rwx)   : ORIGIN = 0x20070000, LENGTH = 0x00018000 /* SRAM, 96K */
}

_estack = ORIGIN(ram) + LENGTH (ram);

SECTIONS
{
    /* Events vector is composed from the exceptions vector of the CPU and
       the interrupts vector of the MCU, they are declared in the different
       sections */
    .vectors :
    {
        KEEP(*(.vectors.exceptions.*))
        KEEP(*(.vectors.interrupts.*))
    } > rom

    .text :
    {
        *(.text .text.*)
    } > rom

    .rodata :
    {
        . = ALIGN(4);     /* Ensure that the start of the section is word aligned */

        *(.rodata .rodata.*)

        . = ALIGN(4);     /* Ensure that the end of the section is word aligned */
    }

    .data :
    {
        . = ALIGN(4);     /* Ensure that the start of the section is word aligned */
        _sdata = .;       /* Global symbol at data start */

        *(.data .data.*)

        . = ALIGN(4);     /* Ensure that the end of the section is word aligned */
        _edata = .;       /* Global symbol at data end */
    } > ram AT > rom
    _sidata = LOADADDR(.data);

    .bss :
    {
        . = ALIGN(4);     /* Ensure that the start of the section is word aligned */
        _sbss = .;        /* Global symbol at bss start */

        *(.bss .bss.*)

        . = ALIGN(4);     /* Ensure that the end of the section is word aligned */
        _ebss = .;        /* Global symbol at bss end */
    } > ram

}
