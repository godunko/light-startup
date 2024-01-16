
# Light GNAT Runtime startup files and linker scripts

Experimental work to complement `light-cortex-m*` GNAT runtimes by startup
code and linker scripts for some boards. All code are written in Ada (there is
no Asm or C code).

Supported boards:
 - Arduino Due (SAM3X8E, Cortex-M3)
 - FK723M1-ZGT6 (STM32H723ZGT6, Cortex-M7)


## How to use

Here is minimal project file that is necessary to use provided startup files:


```
with "fk723m1_zgt6_startup.gpr";

project Example is

   for Target use FK723M1_ZGT6_Startup'Target;
   for Runtime use FK723M1_ZGT6_Startup'Runtime;
   --  Define compiler's target and necessary variant of 'light' runtime.

   package Linker is

      for Switches ("Ada") use
        FK723M1_ZGT6_Startup.Linker_Switches;
      --  Specify linker script and names of entities to construct interrupt
      --  handlers vector table.

   end Linker;

end Example;
```

Of course, more information need to be specified, like main names, compiler's
switches, etc.

For compiler switches it is recommended to use `-fdata-sections` and
`-ffunction-sections`. Compiler generates separate sections for each
subprogram/object then switches are specified. When `-Wl,--gc-sections` is
specified for linker, all unused code is not included into the final
executable.


## Advanced topics


### System Initialization and Memory Initialization

Startup code use two separate subprogram bodies to allow to replace default
implementation of the system initialization and memory initialization.

System initialization is done by the `System_ARMv7.System_Init` separate
subprogram. It usually do initial configuration of CPU features (enables
floating point coprocesor, caches, setup memory protection unit) as well as
initial initialization of the MCU features (configure power supply, configure
clocks, enables basic memories and peripherals). It usually proveided by board
support.

Note, `System_ARMv7.System_Init` subprogram is executed before memory
initialization, and should not use any RAM.

Memory initialization is done by the `System_ARMv7.Memory_Init` separate
subprogram. This subprogram copy preinitialized data from the FLASH to RAM, and
cleanup uninitialized data in RAM. This subprogram is usually provided by MCU
support.

Project can provide own implementation of separate subprogram bodies of the
`System_ARMv7.System_Init` and `System_ARMv7.Memory_Init` subprogram when
necessary. Each board/mcu/cpu provides `Statrtup_Utilities` package with
subprograms to do typical steps of the initialization.


### Cortex-M7 ITCM/DTCM

Project can use ITCM/DTCM memories of the Cortex-M7 processor when available.
`System_Init` subprogram must enable them when used. Code/data is copied to
ITCM/DTCM by `Memory_Init` subprogram, thus, `System_Init` can't call any
subprograms located in ITCM.

Pragma/aspect `Linker_Section` should used to place subprogram/object in the
ITCM/DTMC memory.

```ada

   X : Integer := 0 with Linker_Section => ".dtcm.data";
   --  Preinitialized object placed in the DTCM memory.

   Y : Integer with Linker_Section => ".dtcm.bss";
   --  Uninitialized object placed in the DTCM memory. Occupied memory is
   --  zeroed by Memory_Init subprogram.

   procedure P with Linker_Section => ".itcm.text";
   --  Subprogram will be placed into the ITCM memory.

```

