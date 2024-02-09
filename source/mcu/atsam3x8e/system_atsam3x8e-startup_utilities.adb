--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

pragma Restrictions (No_Elaboration_Code);

with A0B.SVD.ATSAM3X8E.EFC; use A0B.SVD.ATSAM3X8E.EFC;
with A0B.SVD.ATSAM3X8E.PMC; use A0B.SVD.ATSAM3X8E.PMC;

package body System_ATSAM3X8E.Startup_Utilities is

   X_OSC_Frequency          : constant := 12_000_000;
   --  Extrenal oscillator frequency.

   Startup_Main_Clock       : constant := 84_000_000;
   --  Default startup main clock frequency.

   Oscillator_Startup_Count : constant := 8;
   --  Main crystal oscillator start-up time.
   --
   --  This value is taken from the ASF 3 code.

   -------------------------------
   -- Setup_External_Oscillator --
   -------------------------------

   procedure Setup_External_Oscillator is
   begin
      --  Configure FWS for CPU frequency less than 90 MHz

      EFC0_Periph.FMR.FWS := 4;
      EFC1_Periph.FMR.FWS := 4;

      --  [SAM3X Datasheet] 28.12 Programming sequence
      --
      --  "1. Enabling the Main Oscillator
      --
      --  The main oscillator is enabled by setting the MOSCXTEN field in the
      --  Main Oscillator Register (CKGR_MOR). The user can define a start-up
      --  time. This can be achieved by writing a value in the MOSCXTST field
      --  in CKGR_MOR. Once this register has been correctly configured, the
      --  user must wait for MOSCXTS field in the PMC_SR register to be set.
      --  This can be done either by polling the status register, or by
      --  waiting the interrupt line to be raised if the associated interrupt
      --  to MOSCXTS has been enabled in the PMC_IER register."

      if not PMC_Periph.CKGR_MOR.MOSCSEL then
         declare
            Aux : CKGR_MOR_Register := PMC_Periph.CKGR_MOR;

         begin
            Aux.KEY      := A0B.SVD.ATSAM3X8E.PMC.PASSWD;
            Aux.MOSCXTEN := True;
            Aux.MOSCXTBY := False;
            Aux.MOSCXTST := Oscillator_Startup_Count;

            PMC_Periph.CKGR_MOR := Aux;
         end;

         while not PMC_Periph.PMC_SR.MOSCXTS loop
            null;
         end loop;
      end if;

      --  Switch Main Clock to use the external oscillator, and wait till
      --  operation is completed.

      declare
         Aux : CKGR_MOR_Register := PMC_Periph.CKGR_MOR;

      begin
         Aux.KEY     := A0B.SVD.ATSAM3X8E.PMC.PASSWD;
         Aux.MOSCSEL := True;

         PMC_Periph.CKGR_MOR := Aux;
      end;

      while not PMC_Periph.PMC_SR.MOSCSELS loop
         null;
      end loop;

      --  [SAM3X Datasheet] 28.12 Programming sequence
      --
      --  "3. Setting PLL and Divider:
      --
      --  All parameters needed to configure PLLA and the divider are located
      --  in CKGR_PLLAR.
      --
      --  The DIV field is used to control the divider itself. It must be set
      --  to 1 when PLL is used. By default, DIV parameter is set to 0 which
      --  means that the divider is turned off.
      --
      --  The MUL field is the PLL multiplier factor. This parameter can be
      --  programmed between 0 and 2047. If MUL is set to 0, PLL will be
      --  turned off, otherwise the PLL output frequency is PLL input
      --  frequency multiplied by (MUL + 1).
      --
      --  The PLLCOUNT field specifies the number of slow clock cycles before
      --  the LOCK bit is set in PMC_SR, after CKGR_PLLAR has been written.
      --
      --  Once the CKGR_PLL register has been written, the user must wait for
      --  the LOCK bit to be set in the PMC_SR. This can be done either by
      --  polling the status register or by waiting the interrupt line to be
      --  raised if the associated interrupt to LOCK has been enabled in
      --  PMC_IER. All parameters in CKGR_PLLAR can be programmed in a single
      --  write operation. If at some stage one of the following parameters,
      --  MUL or DIV is modified, the LOCK bit will go low to indicate that
      --  PLL is not ready yet. When PLL is locked, LOCK will be set again.
      --  The user is constrained to wait for LOCK bit to be set before using
      --  the PLL output clock."

      PMC_Periph.CKGR_PLLAR :=
        (ONE       => True,
         MULA      => 16#0D#,
         DIVA      => 16#01#,
         PLLACOUNT => 16#3F#,
         others    => <>);

      while not PMC_Periph.PMC_SR.LOCKA loop
         null;
      end loop;

      --  [SAM3X Datasheet] 28.12 Programming sequence
      --
      --  "4. Selection of Master Clock and Processor Clock
      --
      --  The Master Clock and the Processor Clock are configurable via the
      --  Master Clock Register (PMC_MCKR).
      --
      --  The CSS field is used to select the Master Clock divider source. By
      --  default, the selected clock source is main clock.
      --
      --  The PRES field is used to control the Master Clock prescaler. The
      --  user can choose between different values (1, 2, 3, 4, 8, 16, 32,
      --  64). Master Clock output is prescaler input divided by PRES
      --  parameter. By default, PRES parameter is set to 1 which means that
      --  master clock is equal to main clock.
      --
      --  Once PMC_MCKR has been written, the user must wait for the MCKRDY
      --  bit to be set in PMC_SR. This can be done either by polling the
      --  status register or by waiting for the interrupt line to be raised
      --  if the associated interrupt to MCKRDY has been enabled in the
      --  PMC_IER register.
      --
      --  The PMC_MCKR must not be programmed in a single write operation.
      --  The preferred programming sequence for PMC_MCKR is as follows:
      --
      --  * If a new value for CSS field corresponds to PLL Clock,
      --    ̶ Program the PRES field in PMC_MCKR.
      --    ̶ Wait for the MCKRDY bit to be set in PMC_SR.
      --    ̶ Program the CSS field in PMC_MCKR.
      --    ̶ Wait for the MCKRDY bit to be set in PMC_SR.
      --
      --  * If a new value for CSS field corresponds to Main Clock or Slow
      --    Clock,
      --    ̶ Program the CSS field in PMC_MCKR.
      --    ̶ Wait for the MCKRDY bit to be set in the PMC_SR.
      --    ̶ Program the PRES field in PMC_MCKR.
      --    ̶ Wait for the MCKRDY bit to be set in PMC_SR.
      --
      --  If at some stage one of the following parameters, CSS or PRES is
      --  modified, the MCKRDY bit will go low to indicate that the Master
      --  Clock and the Processor Clock are not ready yet. The user must wait
      --  for MCKRDY bit to be set again before using the Master and Processor
      --  Clocks.
      --
      --  Note: If PLLx clock was selected as the Master Clock and the user
      --  decides to modify it by writing in CKGR_PLLR, the MCKRDY flag will go
      --  low while PLL is unlocked. Once PLL is locked again, LOCK goes high
      --  and MCKRDY is set. While PLL is unlocked, the Master Clock selection
      --  is automatically changed to Slow Clock. For further information, see
      --  Section 28.13.0.2 “Clock Switching Waveforms” on page 535."

      PMC_Periph.PMC_MCKR.PRES := CLK_2;

      while not PMC_Periph.PMC_SR.MCKRDY loop
         null;
      end loop;

      PMC_Periph.PMC_MCKR.CSS := PLLA_CLK;

      while not PMC_Periph.PMC_SR.MCKRDY loop
         null;
      end loop;
   end Setup_External_Oscillator;

end System_ATSAM3X8E.Startup_Utilities;
