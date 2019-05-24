# HackEEG Typical Configuration

The HackEEG comes from the factory configured this way and the drivers are set up to use it.

## Jumper Diagram

This diagram shows the locations of all the configuration jumpers:

![Annotated picture of the HackEEG board showing jumper locations](https://raw.githubusercontent.com/adamfeuer/hackeeg-shield/master/docs/hackeeg-shield-top-annotated.jpg)


## Digital Configuration Jumpers


### JP1 and JP2 – Board Connection
    
#### JP1 – Config0 – SPI Configuration


| Signal		|Port				|Jumper #	| Arduino pin |
|------------	|---------------	|--------	|----------- |
| `SPI MOSI`	| Native			| 1			| SPI4       |
| `SPI CS`	| Chip Select		| 6			| D23        |
| `SPI SCL` 	| Native			| 7			| SPI3       |
| `SPI MISO` 	| Native			| 9			| SPI1       |

      
#### JP2 – Config1 – ADS1299 Control Configuration


| Signal		| Jumper #	| Arduino pin	|
|------------	|------------	|------------	|
| `DRDY`		| 2				| D25      	|
| `CLK`		| 6				| D31      	|
| `START`		| 7				| D61      	|
| `START`		| 8				| D59      	|
| `RESET`		| 10			| D47      	|
| `PWDN`		| 12			| D33      	|


### Not configurable

These pins are hard-wired and cannot be configured.

| Signal		|Arduino pin			|
|------------	|------------------	|
| `CLKSEL`	| D48					|
| BOARD LED	| ADS1299 `GPIO4`	|


### JP3 – Board Address 

No jumpers set, so board address is 0.

## Analog Configuration Jumpers

### Instrumentation Power Supplies

The HackEEG comes configured in bipolar mode:

| Mode Name	| ADS1299 Voltage Range		| JP4 Pins| JP5 Pins |
|------------	|-------------------------	|---------|--------- |
| Bipolar		| -2.5V – +2.5V				| 2-3     | 1-2      |


#### JP 4

| Pins			| Function				|
|------------	|----------------------	|
| 2-3			| Sets `AVDD` to 2.5V	|
 
#### JP 5

| Pins			| Function					|
|------------	|-------------------------	|
| 1-2			| Sets `AVSS` to -2.5V		|


### Stimulus-Response Buffer (SRB)


#### JP6 – SRB1 - BIAS

| Pins				| Function                                                                              |
|---------------	|-------------------------------------------------------------------------------------- |
| Unconnected 	| Disconnects `BIAS` from `SRB1` – use in conjunction with JP7/JP8 `REF_ELEC` functions |


#### JP7 – SRB1–REF_ELEC 

| Pins			| Function                                                             |
|------------	|--------------------------------------------------------------------- |
| 1-2			| Routes `SRB1` to `REF_ELEC` on the electrode connector via a 5K resistor |

#### JP9 – BIASIN-BIASOUT-BIAS_ELEC 

| Pins			| Function                                                                       |
|------------	|------------------------------------------------------------------------------- |
| Unconnected	| Leaves `BIASOUT`, `BIASIN`, and `BIAS_ELEC` unconnected                        |	|


