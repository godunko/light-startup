pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32H723.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package STM32H723.Flash is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype ACR_LATENCY_Field is STM32H723.UInt4;
   subtype ACR_WRHIGHFREQ_Field is STM32H723.UInt2;

   --  Access control register
   type ACR_Register_Value is record
      --  Read latency
      LATENCY       : ACR_LATENCY_Field := 16#7#;
      --  Flash signal delay
      WRHIGHFREQ    : ACR_WRHIGHFREQ_Field := 16#3#;
      --  unspecified
      Reserved_6_31 : STM32H723.UInt26 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ACR_Register_Value use record
      LATENCY       at 0 range 0 .. 3;
      WRHIGHFREQ    at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   type ACR_Register is new ACR_Register_Value
     with Volatile_Full_Access;

   subtype CR_PSIZE_Field is STM32H723.UInt2;
   subtype CR_SNB_Field is STM32H723.UInt3;

   --  FLASH control register
   type CR_Register_Value is record
      --  configuration lock bit
      LOCK           : Boolean := False;
      --  program enable bit
      PG             : Boolean := False;
      --  sector erase request
      SER            : Boolean := False;
      --  erase request
      BER            : Boolean := False;
      --  program size
      PSIZE          : CR_PSIZE_Field := 16#0#;
      --  write forcing control bit
      FW             : Boolean := False;
      --  bank or sector erase start control bit
      START          : Boolean := False;
      --  sector erase selection number
      SNB            : CR_SNB_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : STM32H723.UInt4 := 16#0#;
      --  CRC control bit
      CRC_EN         : Boolean := False;
      --  end-of-program interrupt control bit
      EOPIE          : Boolean := False;
      --  write protection error interrupt enable bit
      WRPERRIE       : Boolean := False;
      --  programming sequence error interrupt enable bit
      PGSERRIE       : Boolean := False;
      --  strobe error interrupt enable bit
      STRBERRIE      : Boolean := False;
      --  unspecified
      Reserved_20_20 : STM32H723.Bit := 16#0#;
      --  inconsistency error interrupt enable bit
      INCERRIE       : Boolean := False;
      --  write/erase error interrupt enable bit
      OPERRIE        : Boolean := False;
      --  read protection error interrupt enable bit
      RDPERRIE       : Boolean := False;
      --  secure error interrupt enable bit
      RDSERRIE       : Boolean := False;
      --  ECC single correction error interrupt enable bit
      SNECCERRIE     : Boolean := False;
      --  ECC double detection error interrupt enable bit
      DBECCERRIE     : Boolean := False;
      --  end of CRC calculation interrupt enable bit
      CRCENDIE       : Boolean := False;
      --  CRC read error interrupt enable bit When CRCRDERRIE1 bit is set to 1,
      --  an interrupt is generated when a protected area (PCROP or
      --  secure-only) has been detected during the last CRC computation on
      --  bank 1. CRCRDERRIE1 can be programmed only when LOCK1 is cleared to
      --  0.
      CRCRDERRIE     : Boolean := False;
      --  unspecified
      Reserved_29_31 : STM32H723.UInt3 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CR_Register_Value use record
      LOCK           at 0 range 0 .. 0;
      PG             at 0 range 1 .. 1;
      SER            at 0 range 2 .. 2;
      BER            at 0 range 3 .. 3;
      PSIZE          at 0 range 4 .. 5;
      FW             at 0 range 6 .. 6;
      START          at 0 range 7 .. 7;
      SNB            at 0 range 8 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      CRC_EN         at 0 range 15 .. 15;
      EOPIE          at 0 range 16 .. 16;
      WRPERRIE       at 0 range 17 .. 17;
      PGSERRIE       at 0 range 18 .. 18;
      STRBERRIE      at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      INCERRIE       at 0 range 21 .. 21;
      OPERRIE        at 0 range 22 .. 22;
      RDPERRIE       at 0 range 23 .. 23;
      RDSERRIE       at 0 range 24 .. 24;
      SNECCERRIE     at 0 range 25 .. 25;
      DBECCERRIE     at 0 range 26 .. 26;
      CRCENDIE       at 0 range 27 .. 27;
      CRCRDERRIE     at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   type CR_Register is new CR_Register_Value
     with Volatile_Full_Access;

   --  FLASH status register for bank 1
   type SR_Register_Value is record
      --  ongoing program flag
      BSY            : Boolean := False;
      --  write buffer not empty flag
      WBNE           : Boolean := False;
      --  wait queue flag
      QW             : Boolean := False;
      --  CRC busy flag
      CRC_BUSY       : Boolean := False;
      --  unspecified
      Reserved_4_15  : STM32H723.UInt12 := 16#0#;
      --  end-of-program flag
      EOP            : Boolean := False;
      --  write protection error flag
      WRPERR         : Boolean := False;
      --  programming sequence error flag
      PGSERR         : Boolean := False;
      --  strobe error flag
      STRBERR        : Boolean := False;
      --  unspecified
      Reserved_20_20 : STM32H723.Bit := 16#0#;
      --  inconsistency error flag
      INCERR         : Boolean := False;
      --  write/erase error flag
      OPERR          : Boolean := False;
      --  read protection error flag
      RDPERR         : Boolean := False;
      --  secure error flag
      RDSERR         : Boolean := False;
      --  single correction error flag
      SNECCERR       : Boolean := False;
      --  ECC double detection error flag
      DBECCERR       : Boolean := False;
      --  CRC-complete flag
      CRCEND         : Boolean := False;
      --  Read-only. CRC read error flag CRCRDERR1 flag is raised when a word
      --  is found read protected during a CRC operation on bank 1. An
      --  interrupt is generated if CRCRDIE1 and CRCEND1 are set to 1. Writing
      --  1 to CLR_CRCRDERR1 bit in FLASH_CCR1 register clears CRCRDERR1. Note:
      --  This flag is valid only when CRCEND1 bit is set to 1
      CRCRDERR       : Boolean := False;
      --  unspecified
      Reserved_29_31 : STM32H723.UInt3 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SR_Register_Value use record
      BSY            at 0 range 0 .. 0;
      WBNE           at 0 range 1 .. 1;
      QW             at 0 range 2 .. 2;
      CRC_BUSY       at 0 range 3 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      EOP            at 0 range 16 .. 16;
      WRPERR         at 0 range 17 .. 17;
      PGSERR         at 0 range 18 .. 18;
      STRBERR        at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      INCERR         at 0 range 21 .. 21;
      OPERR          at 0 range 22 .. 22;
      RDPERR         at 0 range 23 .. 23;
      RDSERR         at 0 range 24 .. 24;
      SNECCERR       at 0 range 25 .. 25;
      DBECCERR       at 0 range 26 .. 26;
      CRCEND         at 0 range 27 .. 27;
      CRCRDERR       at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   type SR_Register is new SR_Register_Value
     with Volatile_Full_Access;

   --  FLASH clear control register for bank 1
   type CCR_Register_Value is record
      --  unspecified
      Reserved_0_15  : STM32H723.UInt16 := 16#0#;
      --  EOP1 flag clear bit
      CLR_EOP        : Boolean := False;
      --  WRPERR1 flag clear bit
      CLR_WRPERR     : Boolean := False;
      --  PGSERR flag clear bi
      CLR_PGSERR     : Boolean := False;
      --  STRBERR flag clear bit
      CLR_STRBERR    : Boolean := False;
      --  unspecified
      Reserved_20_20 : STM32H723.Bit := 16#0#;
      --  INCERR flag clear bit
      CLR_INCERR     : Boolean := False;
      --  OPERR flag clear bit
      CLR_OPERR      : Boolean := False;
      --  RDPERR flag clear bit
      CLR_RDPERR     : Boolean := False;
      --  RDSERR flag clear bit
      CLR_RDSERR     : Boolean := False;
      --  SNECCERR flag clear bit
      CLR_SNECCERR   : Boolean := False;
      --  DBECCERR flag clear bit
      CLR_DBECCERR   : Boolean := False;
      --  CRCEND flag clear bit
      CLR_CRCEND     : Boolean := False;
      --  Write-only. CRCRDERR1 flag clear bit Setting this bit to 1 resets to
      --  0 CRCRDERR1 flag in FLASH_SR1 register.
      CLR_CRCRDERR   : Boolean := False;
      --  unspecified
      Reserved_29_31 : STM32H723.UInt3 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CCR_Register_Value use record
      Reserved_0_15  at 0 range 0 .. 15;
      CLR_EOP        at 0 range 16 .. 16;
      CLR_WRPERR     at 0 range 17 .. 17;
      CLR_PGSERR     at 0 range 18 .. 18;
      CLR_STRBERR    at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      CLR_INCERR     at 0 range 21 .. 21;
      CLR_OPERR      at 0 range 22 .. 22;
      CLR_RDPERR     at 0 range 23 .. 23;
      CLR_RDSERR     at 0 range 24 .. 24;
      CLR_SNECCERR   at 0 range 25 .. 25;
      CLR_DBECCERR   at 0 range 26 .. 26;
      CLR_CRCEND     at 0 range 27 .. 27;
      CLR_CRCRDERR   at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   type CCR_Register is new CCR_Register_Value
     with Volatile_Full_Access;

   --  FLASH option control register
   type OPTCR_Register_Value is record
      --  FLASH_OPTCR lock option configuration bit
      OPTLOCK        : Boolean := False;
      --  Option byte start change option configuration bit
      OPTSTART       : Boolean := False;
      --  unspecified
      Reserved_2_29  : STM32H723.UInt28 := 16#0#;
      --  Option byte change error interrupt enable bit
      OPTCHANGEERRIE : Boolean := False;
      --  unspecified
      Reserved_31_31 : STM32H723.Bit := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OPTCR_Register_Value use record
      OPTLOCK        at 0 range 0 .. 0;
      OPTSTART       at 0 range 1 .. 1;
      Reserved_2_29  at 0 range 2 .. 29;
      OPTCHANGEERRIE at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type OPTCR_Register is new OPTCR_Register_Value
     with Volatile_Full_Access;

   subtype OPTSR_CUR_BOR_LEV_Field is STM32H723.UInt2;
   subtype OPTSR_CUR_RDP_Field is STM32H723.Byte;
   subtype OPTSR_CUR_ST_RAM_SIZE_Field is STM32H723.UInt2;

   --  FLASH option status register
   type OPTSR_CUR_Register_Value is record
      --  Option byte change ongoing flag
      OPT_BUSY       : Boolean := False;
      --  unspecified
      Reserved_1_1   : STM32H723.Bit := 16#0#;
      --  Brownout level option status bit
      BOR_LEV        : OPTSR_CUR_BOR_LEV_Field := 16#0#;
      --  IWDG1 control option status bit
      IWDG1_SW       : Boolean := False;
      --  unspecified
      Reserved_5_5   : STM32H723.Bit := 16#0#;
      --  D1 DStop entry reset option status bit
      NRST_STOP_D1   : Boolean := False;
      --  D1 DStandby entry reset option status bit
      NRST_STBY_D1   : Boolean := False;
      --  Readout protection level option status byte
      RDP            : OPTSR_CUR_RDP_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : STM32H723.Bit := 16#0#;
      --  IWDG Stop mode freeze option status bit
      IWDG_FZ_STOP   : Boolean := False;
      --  IWDG Standby mode freeze option status bit
      IWDG_FZ_SDBY   : Boolean := False;
      --  DTCM RAM size option status
      ST_RAM_SIZE    : OPTSR_CUR_ST_RAM_SIZE_Field := 16#0#;
      --  Security enable option status bit
      SECURITY       : Boolean := False;
      --  unspecified
      Reserved_22_28 : STM32H723.UInt7 := 16#0#;
      --  I/O high-speed at low-voltage status bit (PRODUCT_BELOW_25V)
      IO_HSLV        : Boolean := False;
      --  Option byte change error flag
      OPTCHANGEERR   : Boolean := False;
      --  unspecified
      Reserved_31_31 : STM32H723.Bit := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OPTSR_CUR_Register_Value use record
      OPT_BUSY       at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      BOR_LEV        at 0 range 2 .. 3;
      IWDG1_SW       at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      NRST_STOP_D1   at 0 range 6 .. 6;
      NRST_STBY_D1   at 0 range 7 .. 7;
      RDP            at 0 range 8 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      IWDG_FZ_STOP   at 0 range 17 .. 17;
      IWDG_FZ_SDBY   at 0 range 18 .. 18;
      ST_RAM_SIZE    at 0 range 19 .. 20;
      SECURITY       at 0 range 21 .. 21;
      Reserved_22_28 at 0 range 22 .. 28;
      IO_HSLV        at 0 range 29 .. 29;
      OPTCHANGEERR   at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type OPTSR_CUR_Register is new OPTSR_CUR_Register_Value
     with Volatile_Full_Access;

   subtype OPTSR_PRG_BOR_LEV_Field is STM32H723.UInt2;
   subtype OPTSR_PRG_RDP_Field is STM32H723.Byte;
   subtype OPTSR_PRG_ST_RAM_SIZE_Field is STM32H723.UInt2;

   --  FLASH option status register
   type OPTSR_PRG_Register_Value is record
      --  unspecified
      Reserved_0_1   : STM32H723.UInt2 := 16#0#;
      --  BOR reset level option configuration bits
      BOR_LEV        : OPTSR_PRG_BOR_LEV_Field := 16#0#;
      --  IWDG1 option configuration bit
      IWDG1_SW       : Boolean := False;
      --  unspecified
      Reserved_5_5   : STM32H723.Bit := 16#0#;
      --  Option byte erase after D1 DStop option configuration bit
      NRST_STOP_D1   : Boolean := False;
      --  Option byte erase after D1 DStandby option configuration bit
      NRST_STBY_D1   : Boolean := False;
      --  Readout protection level option configuration byte
      RDP            : OPTSR_PRG_RDP_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : STM32H723.Bit := 16#0#;
      --  IWDG Stop mode freeze option configuration bit
      IWDG_FZ_STOP   : Boolean := False;
      --  IWDG Standby mode freeze option configuration bit
      IWDG_FZ_SDBY   : Boolean := False;
      --  DTCM size select option configuration bits
      ST_RAM_SIZE    : OPTSR_PRG_ST_RAM_SIZE_Field := 16#0#;
      --  Security option configuration bit
      SECURITY       : Boolean := False;
      --  unspecified
      Reserved_22_28 : STM32H723.UInt7 := 16#0#;
      --  I/O high-speed at low-voltage (PRODUCT_BELOW_25V)
      IO_HSLV        : Boolean := False;
      --  unspecified
      Reserved_30_31 : STM32H723.UInt2 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OPTSR_PRG_Register_Value use record
      Reserved_0_1   at 0 range 0 .. 1;
      BOR_LEV        at 0 range 2 .. 3;
      IWDG1_SW       at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      NRST_STOP_D1   at 0 range 6 .. 6;
      NRST_STBY_D1   at 0 range 7 .. 7;
      RDP            at 0 range 8 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      IWDG_FZ_STOP   at 0 range 17 .. 17;
      IWDG_FZ_SDBY   at 0 range 18 .. 18;
      ST_RAM_SIZE    at 0 range 19 .. 20;
      SECURITY       at 0 range 21 .. 21;
      Reserved_22_28 at 0 range 22 .. 28;
      IO_HSLV        at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   type OPTSR_PRG_Register is new OPTSR_PRG_Register_Value
     with Volatile_Full_Access;

   --  FLASH option clear control register
   type OPTCCR_Register_Value is record
      --  unspecified
      Reserved_0_29    : STM32H723.UInt30 := 16#0#;
      --  Write-only. OPTCHANGEERR reset bit
      CLR_OPTCHANGEERR : Boolean := False;
      --  unspecified
      Reserved_31_31   : STM32H723.Bit := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OPTCCR_Register_Value use record
      Reserved_0_29    at 0 range 0 .. 29;
      CLR_OPTCHANGEERR at 0 range 30 .. 30;
      Reserved_31_31   at 0 range 31 .. 31;
   end record;

   type OPTCCR_Register is new OPTCCR_Register_Value
     with Volatile_Full_Access;

   subtype PRAR_CUR_PROT_AREA_START_Field is STM32H723.UInt12;
   subtype PRAR_CUR_PROT_AREA_END_Field is STM32H723.UInt12;

   --  FLASH protection address for bank 1
   type PRAR_CUR_Register_Value is record
      --  Read-only. lowest PCROP protected address
      PROT_AREA_START : PRAR_CUR_PROT_AREA_START_Field;
      --  unspecified
      Reserved_12_15  : STM32H723.UInt4;
      --  Read-only. highest PCROP protected address
      PROT_AREA_END   : PRAR_CUR_PROT_AREA_END_Field;
      --  unspecified
      Reserved_28_30  : STM32H723.UInt3;
      --  Read-only. PCROP protected erase enable option status bit
      DMEP            : Boolean;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PRAR_CUR_Register_Value use record
      PROT_AREA_START at 0 range 0 .. 11;
      Reserved_12_15  at 0 range 12 .. 15;
      PROT_AREA_END   at 0 range 16 .. 27;
      Reserved_28_30  at 0 range 28 .. 30;
      DMEP            at 0 range 31 .. 31;
   end record;

   type PRAR_CUR_Register is new PRAR_CUR_Register_Value
     with Volatile_Full_Access;

   subtype PRAR_PRG_PROT_AREA_START_Field is STM32H723.UInt12;
   subtype PRAR_PRG_PROT_AREA_END_Field is STM32H723.UInt12;

   --  FLASH protection address for bank 1
   type PRAR_PRG_Register_Value is record
      --  lowest PCROP protected address configuration
      PROT_AREA_START : PRAR_PRG_PROT_AREA_START_Field := 16#0#;
      --  unspecified
      Reserved_12_15  : STM32H723.UInt4 := 16#0#;
      --  highest PCROP protected address configuration
      PROT_AREA_END   : PRAR_PRG_PROT_AREA_END_Field := 16#0#;
      --  unspecified
      Reserved_28_30  : STM32H723.UInt3 := 16#0#;
      --  PCROP protected erase enable option configuration bit
      DMEP            : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PRAR_PRG_Register_Value use record
      PROT_AREA_START at 0 range 0 .. 11;
      Reserved_12_15  at 0 range 12 .. 15;
      PROT_AREA_END   at 0 range 16 .. 27;
      Reserved_28_30  at 0 range 28 .. 30;
      DMEP            at 0 range 31 .. 31;
   end record;

   type PRAR_PRG_Register is new PRAR_PRG_Register_Value
     with Volatile_Full_Access;

   subtype SCAR_CUR_SEC_AREA_START_Field is STM32H723.UInt12;
   subtype SCAR_CUR_SEC_AREA_END_Field is STM32H723.UInt12;

   --  FLASH secure address for bank 1
   type SCAR_CUR_Register_Value is record
      --  lowest secure protected address
      SEC_AREA_START : SCAR_CUR_SEC_AREA_START_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : STM32H723.UInt4 := 16#0#;
      --  highest secure protected address
      SEC_AREA_END   : SCAR_CUR_SEC_AREA_END_Field := 16#0#;
      --  unspecified
      Reserved_28_30 : STM32H723.UInt3 := 16#0#;
      --  secure protected erase enable option status bit
      DMES           : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SCAR_CUR_Register_Value use record
      SEC_AREA_START at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SEC_AREA_END   at 0 range 16 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      DMES           at 0 range 31 .. 31;
   end record;

   type SCAR_CUR_Register is new SCAR_CUR_Register_Value
     with Volatile_Full_Access;

   subtype SCAR_PRG_SEC_AREA_START_Field is STM32H723.UInt12;
   subtype SCAR_PRG_SEC_AREA_END_Field is STM32H723.UInt12;

   --  FLASH secure address for bank 1
   type SCAR_PRG_Register_Value is record
      --  lowest secure protected address configuration
      SEC_AREA_START : SCAR_PRG_SEC_AREA_START_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : STM32H723.UInt4 := 16#0#;
      --  highest secure protected address configuration
      SEC_AREA_END   : SCAR_PRG_SEC_AREA_END_Field := 16#0#;
      --  unspecified
      Reserved_28_30 : STM32H723.UInt3 := 16#0#;
      --  secure protected erase enable option configuration bit
      DMES           : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SCAR_PRG_Register_Value use record
      SEC_AREA_START at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SEC_AREA_END   at 0 range 16 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      DMES           at 0 range 31 .. 31;
   end record;

   type SCAR_PRG_Register is new SCAR_PRG_Register_Value
     with Volatile_Full_Access;

   subtype WPSN_CUR_WRPSn_Field is STM32H723.Byte;

   --  FLASH write sector protection for bank 1
   type WPSN_CUR_Register_Value is record
      --  Read-only. sector write protection option status byte
      WRPSn         : WPSN_CUR_WRPSn_Field;
      --  unspecified
      Reserved_8_31 : STM32H723.UInt24;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for WPSN_CUR_Register_Value use record
      WRPSn         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   type WPSN_CUR_Register is new WPSN_CUR_Register_Value
     with Volatile_Full_Access;

   subtype WPSN_PRG_WRPSn_Field is STM32H723.Byte;

   --  FLASH write sector protection for bank 1
   type WPSN_PRG_Register_Value is record
      --  sector write protection configuration byte
      WRPSn         : WPSN_PRG_WRPSn_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : STM32H723.UInt24 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for WPSN_PRG_Register_Value use record
      WRPSn         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   type WPSN_PRG_Register is new WPSN_PRG_Register_Value
     with Volatile_Full_Access;

--   --  BOOT_CUR_BOOT_CM_ADD array element
--   subtype BOOT_CUR_BOOT_CM_ADD_Element is STM32H723.UInt16;
--
--   --  BOOT_CUR_BOOT_CM_ADD array
--   type BOOT_CUR_BOOT_CM_ADD_Field_Array is array (0 .. 1)
--     of BOOT_CUR_BOOT_CM_ADD_Element
--     with Component_Size => 16, Size => 32;
--
--   --  FLASH register with boot address
--   type BOOT_CUR_Register_Value
--     (As_Array : Boolean := False)
--   is record
--      case As_Array is
--         when False =>
--            --  BOOT_CM_ADD as a value
--            Val : STM32H723.UInt32;
--         when True =>
--            --  BOOT_CM_ADD as an array
--            Arr : BOOT_CUR_BOOT_CM_ADD_Field_Array;
--      end case;
--   end record
--     with Unchecked_Union, Size => 32, Object_Size => 32,
--          Bit_Order => System.Low_Order_First;
--
--   for BOOT_CUR_Register_Value use record
--      Val at 0 range 0 .. 31;
--      Arr at 0 range 0 .. 31;
--   end record;

   subtype BOOT_CUR_BOOT_CM_ADD0_Field is STM32H723.UInt16;
   subtype BOOT_CUR_BOOT_CM_ADD1_Field is STM32H723.UInt16;

   type BOOT_CUR_Register_Value is record
      BOOT_CM_ADD0 : BOOT_CUR_BOOT_CM_ADD0_Field;
      BOOT_CM_ADD1 : BOOT_CUR_BOOT_CM_ADD0_Field;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for BOOT_CUR_Register_Value use record
      BOOT_CM_ADD0 at 0 range 0 .. 15;
      BOOT_CM_ADD1 at 0 range 16 .. 31;
   end record;

   type BOOT_CUR_Register is new BOOT_CUR_Register_Value
     with Volatile_Full_Access;

--   --  BOOT_PRG_BOOT_CM_ADD array element
--   subtype BOOT_PRG_BOOT_CM_ADD_Element is STM32H723.UInt16;
--
--   --  BOOT_PRG_BOOT_CM_ADD array
--   type BOOT_PRG_BOOT_CM_ADD_Field_Array is array (0 .. 1)
--     of BOOT_PRG_BOOT_CM_ADD_Element
--     with Component_Size => 16, Size => 32;
--
--   --  FLASH register with boot address
--   type BOOT_PRG_Register_Value
--     (As_Array : Boolean := False)
--   is record
--      case As_Array is
--         when False =>
--            --  BOOT_CM_ADD as a value
--            Val : STM32H723.UInt32;
--         when True =>
--            --  BOOT_CM_ADD as an array
--            Arr : BOOT_PRG_BOOT_CM_ADD_Field_Array;
--      end case;
--   end record
--     with Unchecked_Union, Size => 32, Object_Size => 32,
--          Bit_Order => System.Low_Order_First;
--
--   for BOOT_PRG_Register_Value use record
--      Val at 0 range 0 .. 31;
--      Arr at 0 range 0 .. 31;
--   end record;

   subtype BOOT_PRG_BOOT_CM_ADD0_Field is STM32H723.UInt16;
   subtype BOOT_PRG_BOOT_CM_ADD1_Field is STM32H723.UInt16;

   type BOOT_PRG_Register_Value is record
      BOOT_CM_ADD0 : BOOT_PRG_BOOT_CM_ADD0_Field;
      BOOT_CM_ADD1 : BOOT_PRG_BOOT_CM_ADD0_Field;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for BOOT_PRG_Register_Value use record
      BOOT_CM_ADD0 at 0 range 0 .. 15;
      BOOT_CM_ADD1 at 0 range 16 .. 31;
   end record;

   type BOOT_PRG_Register is new BOOT_PRG_Register_Value
     with Volatile_Full_Access;

   subtype CRCCR_CRC_SECT_Field is STM32H723.UInt3;
   subtype CRCCR_CRC_BURST_Field is STM32H723.UInt2;

   --  FLASH CRC control register for bank 1
   type CRCCR_Register_Value is record
      --  CRC sector number
      CRC_SECT       : CRCCR_CRC_SECT_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : STM32H723.UInt5 := 16#0#;
      --  CRC sector mode select bit
      CRC_BY_SECT    : Boolean := False;
      --  CRC sector select bit
      ADD_SECT       : Boolean := False;
      --  CRC sector list clear bit
      CLEAN_SECT     : Boolean := False;
      --  unspecified
      Reserved_11_15 : STM32H723.UInt5 := 16#0#;
      --  CRC start bit
      START_CRC      : Boolean := False;
      --  CRC clear bit
      CLEAN_CRC      : Boolean := False;
      --  unspecified
      Reserved_18_19 : STM32H723.UInt2 := 16#0#;
      --  CRC burst size
      CRC_BURST      : CRCCR_CRC_BURST_Field := 16#0#;
      --  Write-only. Bank 1 CRC select bit
      ALL_BANK       : Boolean := False;
      --  unspecified
      Reserved_23_31 : STM32H723.UInt9 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CRCCR_Register_Value use record
      CRC_SECT       at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      CRC_BY_SECT    at 0 range 8 .. 8;
      ADD_SECT       at 0 range 9 .. 9;
      CLEAN_SECT     at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      START_CRC      at 0 range 16 .. 16;
      CLEAN_CRC      at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      CRC_BURST      at 0 range 20 .. 21;
      ALL_BANK       at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   type CRCCR_Register is new CRCCR_Register_Value
     with Volatile_Full_Access;

   subtype CRCSADDR_CRC_START_ADDR_Field is STM32H723.UInt18;

   --  FLASH CRC start address register for bank 1
   type CRCSADDR_Register_Value is record
      --  unspecified
      Reserved_0_1   : STM32H723.UInt2 := 16#0#;
      --  CRC start address on bank 1
      CRC_START_ADDR : CRCSADDR_CRC_START_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : STM32H723.UInt12 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CRCSADDR_Register_Value use record
      Reserved_0_1   at 0 range 0 .. 1;
      CRC_START_ADDR at 0 range 2 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   type CRCSADDR_Register is new CRCSADDR_Register_Value
     with Volatile_Full_Access;

   subtype CRCEADDR_CRC_END_ADDR_Field is STM32H723.UInt18;

   --  FLASH CRC end address register for bank 1
   type CRCEADDR_Register_Value is record
      --  unspecified
      Reserved_0_1   : STM32H723.UInt2 := 16#0#;
      --  CRC end address on bank 1
      CRC_END_ADDR   : CRCEADDR_CRC_END_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : STM32H723.UInt12 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for CRCEADDR_Register_Value use record
      Reserved_0_1   at 0 range 0 .. 1;
      CRC_END_ADDR   at 0 range 2 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   type CRCEADDR_Register is new CRCEADDR_Register_Value
     with Volatile_Full_Access;

   subtype ECC_FAR_FAIL_ECC_ADDR_Field is STM32H723.UInt15;

   --  FLASH ECC fail address for bank 1
   type ECC_FAR_Register_Value is record
      --  Read-only. ECC error address
      FAIL_ECC_ADDR  : ECC_FAR_FAIL_ECC_ADDR_Field;
      --  unspecified
      Reserved_15_31 : STM32H723.UInt17;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for ECC_FAR_Register_Value use record
      FAIL_ECC_ADDR  at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   type ECC_FAR_Register is new ECC_FAR_Register_Value
     with Volatile_Full_Access;

   subtype OPTSR2_CUR_TCM_AXI_SHARED_Field is STM32H723.UInt2;

   --  FLASH ECC fail address for bank 1
   type OPTSR2_CUR_Register_Value is record
      --  Read-only. TCM RAM sharing status bit
      TCM_AXI_SHARED : OPTSR2_CUR_TCM_AXI_SHARED_Field;
      --  Read-only. CPU frequency boost status bit
      CPUFREQ_BOOST  : Boolean;
      --  unspecified
      Reserved_3_31  : STM32H723.UInt29;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OPTSR2_CUR_Register_Value use record
      TCM_AXI_SHARED at 0 range 0 .. 1;
      CPUFREQ_BOOST  at 0 range 2 .. 2;
      Reserved_3_31  at 0 range 3 .. 31;
   end record;

   type OPTSR2_CUR_Register is new OPTSR2_CUR_Register_Value
     with Volatile_Full_Access;

   subtype OPTSR2_PRG_TCM_AXI_SHARED_Field is STM32H723.UInt2;

   --  FLASH ECC fail address for bank 1
   type OPTSR2_PRG_Register_Value is record
      --  TCM RAM sharing status bit
      TCM_AXI_SHARED : OPTSR2_PRG_TCM_AXI_SHARED_Field := 16#0#;
      --  CPU frequency boost status bit
      CPUFREQ_BOOST  : Boolean := False;
      --  unspecified
      Reserved_3_31  : STM32H723.UInt29 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OPTSR2_PRG_Register_Value use record
      TCM_AXI_SHARED at 0 range 0 .. 1;
      CPUFREQ_BOOST  at 0 range 2 .. 2;
      Reserved_3_31  at 0 range 3 .. 31;
   end record;

   type OPTSR2_PRG_Register is new OPTSR2_PRG_Register_Value
     with Volatile_Full_Access;

   -----------------
   -- Peripherals --
   -----------------

   --  Flash
   type Flash_Peripheral is record
      --  Access control register
      ACR        : aliased ACR_Register;
      --  FLASH key register
      KEYR       : aliased STM32H723.UInt32;
      --  FLASH option key register
      OPTKEYR    : aliased STM32H723.UInt32;
      --  FLASH control register
      CR         : aliased CR_Register;
      --  FLASH status register for bank 1
      SR         : aliased SR_Register;
      --  FLASH clear control register for bank 1
      CCR        : aliased CCR_Register;
      --  FLASH option control register
      OPTCR      : aliased OPTCR_Register;
      --  FLASH option status register
      OPTSR_CUR  : aliased OPTSR_CUR_Register;
      --  FLASH option status register
      OPTSR_PRG  : aliased OPTSR_PRG_Register;
      --  FLASH option clear control register
      OPTCCR     : aliased OPTCCR_Register;
      --  FLASH protection address for bank 1
      PRAR_CUR   : aliased PRAR_CUR_Register;
      --  FLASH protection address for bank 1
      PRAR_PRG   : aliased PRAR_PRG_Register;
      --  FLASH secure address for bank 1
      SCAR_CUR   : aliased SCAR_CUR_Register;
      --  FLASH secure address for bank 1
      SCAR_PRG   : aliased SCAR_PRG_Register;
      --  FLASH write sector protection for bank 1
      WPSN_CUR   : aliased WPSN_CUR_Register;
      --  FLASH write sector protection for bank 1
      WPSN_PRG   : aliased WPSN_PRG_Register;
      --  FLASH register with boot address
      BOOT_CUR   : aliased BOOT_CUR_Register;
      --  FLASH register with boot address
      BOOT_PRG   : aliased BOOT_PRG_Register;
      --  FLASH CRC control register for bank 1
      CRCCR      : aliased CRCCR_Register;
      --  FLASH CRC start address register for bank 1
      CRCSADDR   : aliased CRCSADDR_Register;
      --  FLASH CRC end address register for bank 1
      CRCEADDR   : aliased CRCEADDR_Register;
      --  FLASH CRC data register
      CRCDATAR   : aliased STM32H723.UInt32;
      --  FLASH ECC fail address for bank 1
      ECC_FAR    : aliased ECC_FAR_Register;
      --  FLASH ECC fail address for bank 1
      OPTSR2_CUR : aliased OPTSR2_CUR_Register;
      --  FLASH ECC fail address for bank 1
      OPTSR2_PRG : aliased OPTSR2_PRG_Register;
   end record
     with Volatile;

   for Flash_Peripheral use record
      ACR        at 16#0# range 0 .. 31;
      KEYR       at 16#4# range 0 .. 31;
      OPTKEYR    at 16#8# range 0 .. 31;
      CR         at 16#C# range 0 .. 31;
      SR         at 16#10# range 0 .. 31;
      CCR        at 16#14# range 0 .. 31;
      OPTCR      at 16#18# range 0 .. 31;
      OPTSR_CUR  at 16#1C# range 0 .. 31;
      OPTSR_PRG  at 16#20# range 0 .. 31;
      OPTCCR     at 16#24# range 0 .. 31;
      PRAR_CUR   at 16#28# range 0 .. 31;
      PRAR_PRG   at 16#2C# range 0 .. 31;
      SCAR_CUR   at 16#30# range 0 .. 31;
      SCAR_PRG   at 16#34# range 0 .. 31;
      WPSN_CUR   at 16#38# range 0 .. 31;
      WPSN_PRG   at 16#3C# range 0 .. 31;
      BOOT_CUR   at 16#40# range 0 .. 31;
      BOOT_PRG   at 16#44# range 0 .. 31;
      CRCCR      at 16#50# range 0 .. 31;
      CRCSADDR   at 16#54# range 0 .. 31;
      CRCEADDR   at 16#58# range 0 .. 31;
      CRCDATAR   at 16#5C# range 0 .. 31;
      ECC_FAR    at 16#60# range 0 .. 31;
      OPTSR2_CUR at 16#70# range 0 .. 31;
      OPTSR2_PRG at 16#74# range 0 .. 31;
   end record;

   --  Flash
   Flash_Periph : aliased Flash_Peripheral
     with Import, Address => Flash_Base;

end STM32H723.Flash;
