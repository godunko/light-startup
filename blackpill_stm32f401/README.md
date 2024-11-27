# Blackpill STM32F401 Board Support

Initial MCU configuration:
 * CPU run at 84MHz using 25MHz external crystal oscillator
 * floating point coprocessor is enabled
 * FLASH instruction and data caches are enabled
 * FLASH prefetch is disabled (due to internal noise impacting the ADC accuracy, see [ES0299] 2.2.8)

Blackpill STM32F401 board supports few variants of MCU with different RAM/Flash sizes.
To configure particular MCU installed on board, set `light_blackpill_stm32f401.stm32f401` configuration variable in `alire.toml` of your project. 
Possible values are `CB`, `CC`, `CD`, and `CE`. Default value is `CB` with 64K RAM and 128K Flash memory. It is safe default for all STM32F401 chips.

```
[configuration.values]
light_blackpill_stm32f401.stm32f401 = "CB"
```
