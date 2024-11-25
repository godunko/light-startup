# Blackpill STM32F401 Board Support

Blackpill STM32F401 board supports few variants of MCU with different RAM/Flash size.
To configure particular MCU installed on board, set `light_blackpill_stm32f401.stm32f401` configuration variable in `alire.toml` of your project. 
Possible values are `CB`, `CC`, `CD`, and `CE`. Default value is `CB` with 64K RAM and 128K Flash memory. It is safe default for all STM32F401 chips.

MCU is configured to run processor at 84MHz using external crystal oscillator. Floating point coprocessor is enabled.
