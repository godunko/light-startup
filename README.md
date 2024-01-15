Light GNAT Runtime startup files and linker scripts
---------------------------------------------------

Experimental work to complement `light-cortex-m*` GNAT runtimes by startup
code and linker scripts for some boards. All code are written in Ada (there is
no Asm or C code).

Supported boards:
 - Arduino Due (SAM3X8E, Cortex-M3)
 - FK723M1-ZGT6 (STM32H723ZGT6, Cortex-M7)

How to use
==========

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
      --  Provides linker script and names entries to construct interrupt
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
