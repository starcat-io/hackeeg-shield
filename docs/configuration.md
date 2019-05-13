# HackEEG Jumper Settings

These jumpers configure Arduino Due pins used on the HackEEG shield.

For ADS1299 pin definitions, refer to [ADS1299 datasheet](http://www.ti.com/lit/ds/symlink/ads1299.pdf).

For Arduino Due pin definitions, refer to the [Arduino Due pinout diagram](https://raw.githubusercontent.com/adamfeuer/hackeeg-shield/master/docs/arduino_due_pinout.png), the [Arduino Due reference](https://www.arduino.cc/en/Main/ArduinoBoardDue), and the [SAM3X8E datasheet](http://www.atmel.com/Images/Atmel-11057-32-bit-Cortex-M3-Microcontroller-SAM3X-SAM3A_Datasheet.pdf).

If you change these jumpers, you must also change the pin definitions in your driver files. For the ads129x_tools driver, this is in the file [adsCommand.h](https://github.com/adamfeuer/ADS129x-tools/blob/master/ads129x_driver/adsCommand.h)


## Jumper Diagram

This diagram shows the locations of all the configuration jumpers:

![Annotated picture of the HackEEG board showing jumper locations](https://raw.githubusercontent.com/adamfeuer/hackeeg-shield/master/docs/hackeeg-shield-top-annotated.jpg)


## Digital Configuration Jumpers


### JP1 and JP2 – Board Connection

These pins select which ADS1299 pins are connected to which Arduino Due pins. Bridging one pair of jumpers connects the pins together. This enables a stack of shields to use different Arduino Due pins if needed, for instance to connect two HackEEG shields to the native SPI, and two to the USART1 SPI, or to use different Arduino Due PIO pins to control the ADS1299.

For each named signal, you must set exactly one jumper.
    
#### JP1 - Config0 – SPI Configuration


| Signal		|Port				|Jumper #	| Arduino pin |
|------------	|---------------	|--------	|----------- |
| `SPI MOSI`	| Native			| 1			| SPI4       |
| `SPI MOSI`	| USART1			| 2			| D16        |
| `SPI CS`	| Chip Select		| 3			| D4         |
| `SPI CS`	| Chip Select		| 4			| D10        |
| `SPI CS`	| Chip Select		| 5			| D42        |
| `SPI CS`	| Chip Select		| 6			| D23        |
| `SPI SCL` 	| Native			| 7			| SPI3       |
| `SPI SCL` 	| USART1			| 8			| A0         |
| `SPI MISO` 	| Native			| 9			| SPI1       |
| `SPI MISO` 	| USART1			| 10		| D17        |

      
#### JP2 - Config1 – ADS1299 Control Configuration


| Signal		| Jumper #	| Arduino pin	|
|------------	|------------	|------------	|
| `DRDY`		| 1				| D24      	|
| `DRDY`		| 2				| D25      	|
| `DRDY`		| 3				| D26      	|
| `DRDY`		| 4				| D27      	|
| `CLK`		| 5				| D30      	|
| `CLK`		| 6				| D31      	|
| `START`		| 7				| D61      	|
| `START`		| 8				| D59      	|
| `RESET`		| 9				| D46      	|
| `RESET`		| 10			| D47      	|
| `PWDN`		| 11			| D32      	|
| `PWDN`		| 12			| D33      	|


### Not configurable

These pins are hard-wired and cannot be configured.

| Signal		|Arduino pin			|
|------------	|------------------	|
| `CLKSEL`	| D48					|
| BOARD LED	| ADS1299 `GPIO4`	|


### JP3 – Board Address 

These pins set the 24AA256 I2S EEPROM address 0-7 in binary – they are not connected to Arduino Due pins. The pins are shared with the ADS1299 GPIO, and so can also used as the board address and read via the ADS1299. If not using them as jumpers, external devices can be connected to the header to provide access to the ADS1299 GPIO pins; this usage generally will conflict with using the I2S EEPROM.

| Jumper #	|Function				|
|------------	|------------------	|
| 0  	 		| ADS1299 `GPIO0`	|
| 1   			| ADS1299 `GPIO1`	|
| 2   			| ADS1299 `GPIO2`	|


## Analog Configuration Jumpers

### Instrumentation Power Supplies

These jumpers configure the instrumentation power supplies that supply the reference voltages for the ADS1299. You can set the ADS1299 to measure voltages in the 0–5V range (unipolar) or in the -2.5V – +2.5V range (bipolar). Bipolar is most commonly used for human or mammal subjects. You must bridge exactly one set of pins on each jumper.

#### JP 4

| Pins			| Function				|
|------------	|----------------------	|
| 1-2			| Sets `AVDD` to 5V		|
| 2-3			| Sets `AVDD` to 2.5V	|
 
#### JP 5

| Pins			| Function					|
|------------	|-------------------------	|
| 1-2			| Sets `AVSS` to -2.5V		|
| 2-3			| Sets `AVDD` to `GROUND`	|


#### Common Settings

| Mode Name	| ADS1299 Voltage Range		| JP4 Pins| JP5 Pins |
|------------	|-------------------------	|---------|--------- |
| Unipolar	| 0–5V							| 1-2     | 2-3      |
| Bipolar		| -2.5V – +2.5V				| 2-3     | 1-2      |


### Stimulus-Response Buffer (SRB)


#### JP6 – SRB1 - BIAS

| Pins				| Function                                                                              |
|---------------	|-------------------------------------------------------------------------------------- |
| 1-2				| Routes `SRB1` to `BIAS_ELEC` on the electrode connector via a 5K resistor             |
| 2-3				| Routes a noise source to `SRB1`                                                       |
| Unconnected 	| Disconnects `BIAS` from `SRB1` – use in conjunction with JP7/JP8 `REF_ELEC` functions |

Setting pins 2-3 can be used to test channel noise performance. See section 8.3 of the [TI EEG Front-End Demonstration Kit manual](http://www.ti.com/lit/ug/slau443b/slau443b.pdf). In this mode, `BIAS_ELEC` and `REF_ELEC` on the electrode connector need to be connected with a cable, since there is no jumper to do so on the HackEEG board.


#### JP7 SRB1 - REF ELEC 

| Pins			| Function                                                             |
|------------	|--------------------------------------------------------------------- |
| 1-2			| Routes `SRB1` to `REF_ELEC` on the electrode connector via a 5K resistor |
| 2-3			| Routes `SRB2` to `SRB1` via an opamp                                     |

#### JP9 SRB2 - REF ELEC 

| Pins			| Function                                                                          |
|------------	|---------------------------------------------------------------------------------- |
| 1-2			| Routes `REF_ELEC` on the electrode connector to the opamp input via a 5K resistor |
| 2-3			| Routes `SB2` to the opamp input                                                   |

