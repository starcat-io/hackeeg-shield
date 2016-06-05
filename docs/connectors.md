# HackEEG connector pinouts

## Electrode Connector

**JP16** is the large, black male 24-pin shrouded electrode connector that is soldered on the board: [Molex 24-pin Right Angle male shrouded header](http://www.digikey.com/product-search/en?keywords=WM8269-ND)

This the mating female connector that I have used to construct some cables:

[Molex 24-pin female housing](http://www.digikey.com/product-detail/en/0901420024/WM8044-ND/760759)

It needs female crimp connectors:

[Molex female crimp connectors](http://www.digikey.com/product-detail/en/0901190109/WM2581CT-ND/1998093)

You'll need a tool to crimp them, I used this one from Amazon, $23:

[HT-225D Full Cycle Ratchet Crimping Tool with interchangeable die set HT-225D](http://www.amazon.com/dp/B007JLN93S)

Alternatively, any 24-pin female header with receptacles on 0.1" centers should work if you want to use one and older some wires to it.

### Electrode connector pinout:

1. DVDD
2. AVDD
3. BIASINV
4. AGND
5. AGND
6. AGND
7. IN1P
8. IN1N
9. IN2P
10. IN2N
11. IN3P
12. IN3N
13. IN4P
14. IN4N
15. IN5P
16. IN5N
17. IN6P
18. IN6N
19. IN7P
20. IN7N
21. IN8P
22. IN8N
23. REF ELEC CONN
24. BIAS ELEC CONN

If you want to check the pinout, you can see this on the schematic on sheet 2:

[HackEEG Shield schematic](https://github.com/adamfeuer/hackeeg-shield/blob/master/hackeeg-shield.pdf)

## External Sync connector

**JP15** is the small, white male 4-pin shrouded connector that is used for synchronizing the ADS1299 with another board.

This is the connector that is soldered on the board: [JST 4-pin Shrouded Male Header ](http://www.digikey.com/product-detail/en/S4B-PH-K-S(LF)(SN)/455-1721-ND/926628)

Here is the [Mating JST connector](http://www.digikey.com/product-detail/en/PHR-4/455-1164-ND/608606) and [Crimp Contact that fits the housing](http://www.digikey.com/product-detail/en/SPH-004T-P0.5S/455-1318-1-ND/608807) - these can be crimped with the same tool listed above.

This connector is experimental, and not supported at this time. You can enable it using the various ADS1299 register settings.

### External Sync connector pinout

1. BIASINV
2. ADS_START
3. ADS_SPI_CLK
4. AGND
