/*
 *  Copyright (C) 2024-2025, Vadim Godunko <vgodunko@gmail.com>
 *
 *  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
 */

/*
 * Text sections mapping to ITCM memory regions. Following memory regions
 * should defined:
 *   ITCM_TEXT
 *   ITCM_ITEXT
 *
 * This script exports following symbols to be used by startup code:
 *   _sitcmtext   start of the preinitialized data (in RAM)
 *   _eitcmtext   end of the preinitialized data (in RAM)
 *   _siitcmtext  start of the preinitialized data secrion in ROM
 */

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
