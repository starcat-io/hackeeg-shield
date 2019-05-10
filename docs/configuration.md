# HackEEG Jumper settings

These jumpers configure Arduino Due pins used on the HackEEG shield.

For ADS1299 pin definitions, refer to [ADS1299 datasheet](http://www.ti.com/lit/ds/symlink/ads1299.pdf).

For Arduino Due pin definitions, refer to the [Arduino Due pinout diagram](https://raw.githubusercontent.com/adamfeuer/hackeeg-shield/master/docs/arduino_due_pinout.png), the [Arduino Due reference](https://www.arduino.cc/en/Main/ArduinoBoardDue), and the [SAM3X8E datasheet](http://www.atmel.com/Images/Atmel-11057-32-bit-Cortex-M3-Microcontroller-SAM3X-SAM3A_Datasheet.pdf).

If you change these jumpers, you must also change the pin definitions in your driver files. For the ads129x_tools driver, this is in the file [adsCommand.h](https://github.com/adamfeuer/ADS129x-tools/blob/master/ads129x_driver/adsCommand.h)

## Digital Configuration Jumpers


### JP0 – Board Address 

These pins set the 24AA256 I2S EEPROM address 0-7 in binary – they are not connected to Arduino Due pins. The pins are shared with the ADS1299 GPIO, and so can also used as the board address and read via the ADS1299. If not using them as jumpers, external devices can be connected to the header to provide access to the ADS1299 GPIO pins; this usage generally will conflict with using the I2S EEPROM.

| Pin #	|Function				|
|--------	|------------------	|
| 0  	 	| ADS1299 GPIO0		|
| 1   		| ADS1299 GPIO1		|
| 2   		| ADS1299 GPIO2		|


### JP1 and JP2 – Board Connection

These pins select which ADS1299 pins are connected to which Arduino Due pins. Bridging one pair of jumpers connects the pins together. This enables a stack of shields to use different Arduino Due pins if needed, for instance to connect two HackEEG shields to the native SPI, and two to the USART1 SPI, or to use different Arduino Due PIO pins to control the ADS1299.

    
#### JP1 - Config0 – SPI Configuration


| Signal		|Port				|Jumper #	|Arduino pin|
|------------	|---------------	|--------	|-----------|
| SPI MOSI	|Native			| 1			| SPI4      |
| SPI MOSI	|USART1			| 2			| D16       |
| SPI CS		|					| 3			| D4        |
| SPI CS		|					| 4			| D10       |
| SPI CS		|					| 5			| D42       |
| SPI CS		|					| 6			| D23       |
| SPI SCL 	|Native			| 7			| SPI3      |
| SPI SCL 	|USART1			| 8			| A0        |
| SPI MISO 	|Native			| 9			| SPI1      |
| SPI MISO 	|USART1			| 10		| D17       |

      
### JP2 - Config1 – ADS1299 Control Configuration


| Signal		| Jumper #	|Arduino pin	|
|------------	|------------	|------------	|
| DRDY			| 1				| D24      	|
| DRDY			| 2				| D25      	|
| DRDY			| 3				| D26      	|
| DRDY			| 4				| D27      	|
| CLK			| 5				| D30      	|
| CLK			| 6				| D31      	|
| START		| 7				| D61      	|
| START		| 8				| D59      	|
| RESET		| 9				| D46      	|
| RESET		| 10			| D47      	|
| PWDN			| 11			| D32      	|
| PWDN			| 12			| D33      	|


### Not configurable

These pins are hard-wired and cannot be configured.

| Signal		|Arduino pin		|
|------------	|---------------	|
| CLKSEL		| D48				|
| BOARD LED	| ADS1299 GPIO4	|

