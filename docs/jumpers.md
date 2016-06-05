# HackEEG Jumper settings

These jumpers configure Arduino Due pins used on the HackEEG shield.

For ADS1299 pin definitions, refer to [ADS1299 datasheet](http://www.ti.com/lit/ds/symlink/ads1299.pdf).

For Arduino Due pin definitions, refer to the [Arduino Due pinout diagram](https://raw.githubusercontent.com/adamfeuer/hackeeg-shield/master/docs/arduino_due_pinout.png), the [Arduino Due reference](https://www.arduino.cc/en/Main/ArduinoBoardDue), and the [SAM3X8E datasheet](http://www.atmel.com/Images/Atmel-11057-32-bit-Cortex-M3-Microcontroller-SAM3X-SAM3A_Datasheet.pdf).

If you change these jumpers, you must also change the pin definitions in your driver files. For the ads129x_tools driver, this is in the file [adsCommand.h](https://github.com/adamfeuer/ADS129x-tools/blob/master/ads129x_driver/adsCommand.h)

## Jumpers
* JP0 - Board Address
  * EEPROM address 0-1 - no Arduino Due pins
    * 0 - ADS1299 GPIO0
    * 1 - ADS1299 GPIO1
    * 2 - ADS1299 GPIO3
    * LED - ADS1299 GPIO4
  * JP1 - Config0
    * SPI MOSI
      * Native - 1 - SPI4
      * USART1 - 2 - D16
    * SPI CS (chip select) - 0-3
      * 3 - D4
      * 4 - D10
      * 5 - D42
      * 6 - D23
    * SPI SCL (clock)
      * Native - 7 - SPI3
      * USART1 - 8 - A0
    * SPI MISO
      * Native - 9 - SPI1
      * USART1 - 10 - D16
  * JP2 - Config1
    * DRDY
      * 1 - D24
      * 2 - D25
      * 3 - D26
      * 4 - D27
    * CLK
      * 5 - D30
      * 6 - D31
    * START
      * 7 - A7 - D61
      * 8 - A4 - D59
    * RESET
      * 9 - D46
      * 10 - D47
    * PWDN
      * 11 - D32
      * 12 - D33
  * Not configurable
     * CLKSEL - D48
