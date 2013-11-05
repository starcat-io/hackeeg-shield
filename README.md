ADS1298-breakout
================

This is an ADS1298 breakout board. It can also be used with the ADS1294 and ADS1296. 

The ADS1298 is an 8 channel ADC chip with SPI interface, meant for ECG and EEG:

http://www.ti.com/product/ads1298

The breakout board needs +5v input, and provides clean analog and digital power, along with some minimal support circuitry.

Most of the ADS1298's pins are available on the two 20-pin headers.
 
This board is meant for basic system debugging - electrode circuitry for EEG or ECG is not provided, just access to
the chip's differential input pins.

v0.1 of the board has been made and is in testing; v0.2 of the board has not been made yet, and is development.

Connecting the Board to an Arduino Due
======================================

There is an Arduino Due pinout diagram in docs/arduino_pinout_diagram.png. Refer to that when making the wiring
connections. There are also a couple of photos.

    ADS1298-breakout pin - Arduino Due pin (SAM3X8E pin)
    SPI OUT (MISO)       - SPI Header 1 (108)
    SPI IN (MOSI)        - SPI Header 4 (109)
    SCK                  - SPI Header 3 (11)
    GND                  - SPI Header 6
    5V                   - SPI Header 2
    DRDY                 - D45 (100)
    CLK                  - A7 (85)
    CLKSEL               - D49 (96)
    RESET                - D48 (97)
    PWDN                 - D47 (98)
    START                - D46 (99)
    CS                   - D52 (92)

Testing
=======

The Arduino Due driver software for this board can be found in the ADS129x-tools repository:

https://github.com/adamfeuer/ADS129x-tools

If you have questions, comments, or improvements, I would love to know them!

cheers<br>
adam<br>
Adam Feuer<br>
Seattle, WA, USA<br>
adam@adamfeuer.com<br>
http://adamfeuer.com<br>


