# HackEEG - ADS1299 Shield

This is an Arduino Due shield for the 
[TI ADS1299 EEG system-on-a-chip](http://www.ti.com/product/ads1299). This 
system-on-a-chip that includes all commonly-required features for extracranial 
electroencephalogram (EEG) and electrocardiography (ECG) applications.

![Picture of the HackEEG board](https://raw.githubusercontent.com/adamfeuer/hackeeg-shield/master/hackeeg-shield.jpg)

This board has been tested and works. Design files for two connector boards
are included:

  * connector-8: this has 9 [DIN 42-802](https://en.wikipedia.org/wiki/EEG_DIN_connector) 
    medical electrode connectors (8 inputs, one ground)
  * connector-12: this has a 12-position screw-terminal connector with 8 unipolar inputs, ground, 
    analog power, digital power, and bias electrode.

I intend to eventually design a case and will post the files here when I do.

Although the board has been tested and works, I can't provide support for it.
If you want to make one, you're on your own. Good luck!

There will be a CrowdSupply crowdfunding campaign in mid-2019; if enough people 
commit, I will do a manufacturing run of boards. If you'd like to to be notified 
when it happens, [you can sign up here](http://starcat.io/hackeeg-shield).

## Features

* Up to 4 shields can be stacked on one Arduino Due, for a total of 32 EEG channels
* DMA drivers can read data at up to 8k samples per second at 24 bit resolution (Arduino Due only)
* SPI EEPROM for storing configuration data
* Jumpers for configuring most of the data and control lines to the Arduino
* 2 board-stacks can be daisy-chained and clock-synchronized to capture 64 EEG channels (this is experimental)
* Data samples can be streamed over wifi using the [StarCat wifi shield](http://starcat.io/wifi-shield)
* Level shifters mean the board is compatible with both the [Arduindo Due](ihttps://store.arduino.cc/usa/due) and 
[Arduino Mega2560](https://store.arduino.cc/usa/mega-2560-r3).
* Differential inputs are available on the electrode connector.

## Warning

This board is meant to be used **only** in battery powered systems. It has no patient isolation circuitry.
Don't connect it, or any system it is connected to, to mains (wall or AC) power. **Use at your own risk.**

## Documentation

* [Connector Pinouts](https://github.com/adamfeuer/hackeeg-shield/blob/master/docs/connectors.md)
* [Configuration](https://github.com/adamfeuer/hackeeg-shield/blob/master/docs/configuration.md)


## Driver Software

The Arduino Due and Mega2560 driver software for this board can be found in the [ADS129x-tools repository](https://github.com/adamfeuer/ADS129x-tools).


## License

[Creative Commons By-Attribution ShareAlike 4.0](https://creativecommons.org/licenses/by-sa/4.0/)


## Comments

If you have questions, comments, or improvements, I would love to know them!

cheers <br>
adam <br>
<br>
Adam Feuer <br>
adam@starcat.io<br>
[Starcat LLC](https://starcat.io)<br>
Seattle, WA, USA <br>


