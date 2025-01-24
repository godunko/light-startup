/*
 *  Copyright (C) 2024-2025, Vadim Godunko <vgodunko@gmail.com>
 *
 *  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
 */

/*
 * Data sections mapping to DTCM memory regions. Following memory regions
 * should defined:
 *   DTCM_DATA
 *   DTCM_IDATA
 *   DTCM_BSS
 *
 * This script exports following symbols to be used by startup code:
 *   _sdtcmdata    start of the preinitialized data (in RAM)
 *   _edtcmdata    end of the preinitialized data (in RAM)
 *   _sidtcmdata   start of the preinitialized data secrion in ROM
 *   _sdtcmbss     start of the uninitialized data (in RAM)
 *   _edtcmbss     start of the uninitialized data (in RAM)
 */

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
