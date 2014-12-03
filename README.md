HackEEG - ADS1299 Shield
========================

This is an Arduino Due shield for the 
[TI ADS1299 EEG system-on-a-chip](http://www.ti.com/product/ads1299).
If you're reading this, you probably know what that is.

[Picture of the HackEEG board](https://github.com/adamfeuer/hackeeg-shield/blob/master/docs/hackeeg-shield.jpg)

This board has been tested and works, but lacks case design and EEG connector plugs. 
You'll have to design your own for now. I intend to eventually design a case
and connectors, and will post them here when I do.

Although the board has been tested and works, I can't provide support for it.
If you want to make one, you're on your own. Good luck!

If there's enough interest, I may decide to manufacture this board; if you'd like to 
to be notified if that happens, [you can sign up here](http://starcat.io/hackeeg-shield).

Features
========

* Up to 4 shields can be stacked on one Arduino Due, for a total of 32 EEG channels
* DMA drivers can read data at up to 8k samples per second at 24 bit resolution
* SPI EEPROM for storing configuration data
* Jumpers for configuring most of the data and control lines to the Arduino
* 2 board-stacks can be daisy-chained and clock-synchronized to capture 64 EEG channels
* Data samples can be streamed over wifi using the [Arietta shield](http://starcat.io/arietta-shield)

Warning
=======

This board is meant to be used *only* in battery powered systems. It has no isolation circuitry.
Don't connect it to mains (wall or AC) power. *Use at your own risk.*


Testing
=======

The Arduino Due driver software for this board can be found in the [ADS129x-tools repository](https://github.com/adamfeuer/ADS129x-tools).


License
=======

[Creative Commons By-Attribution ShareAlike 4.0](https://creativecommons.org/licenses/by-sa/4.0/)


Comments
========

If you have questions, comments, or improvements, I would love to know them!

cheers <br>
adam <br>
Adam Feuer <br>
Seattle, WA, USA <br>
adam@adamfeuer.com <br>
http://adamfeuer.com <br>


