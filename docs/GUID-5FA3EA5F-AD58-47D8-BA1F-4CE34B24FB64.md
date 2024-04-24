# SERCOM SPI EEPROM Read Write

This example application demonstrates how to use the SERCOM SPI peripheral to write and<br /> read from the SPI serial EEPROM memory.

**Parent topic:**[Harmony 3 Peripheral Library Application Examples for PIC32CK-GC/SG Family](GUID-5EB5829A-8D62-4A5E-B89B-DF7EF4E334A2.md)

## Description

This example uses the SERCOM SPI peripheral library to write an array of values to<br /> the SPI Serial EEPROM and verify the value written by reading the values back and<br /> comparing it to the value written.

## Downloading and Building the Application

To clone or download this application from Github, go to the [main page of this repository](https://github.com/Microchip-MPLAB-Harmony/csp_apps_pic32ck_sg_gc) and then<br /> click **Clone** button to clone this repository or download as zip file. This<br /> content can also be downloaded using content manager by following these [instructions](https://github.com/Microchip-MPLAB-Harmony/contentmanager/wiki).

Path of the application within the repository is<br /> **apps/sercom/spi/master/spi\_eeprom\_write\_read/firmware**.

To build the application, refer to the following table and open the project using its<br /> IDE.

|Project Name|Description|
|------------|-----------|
|pic32ck\_gc01\_cult.X|MPLABX Project for [PIC32CK GC01 Curiosity Ultra board](https://www.microchip.com/en-us/development-tool/ea23j82a)|

## Setting Up the Hardware

The following table shows the target hardware for the application projects.

|Project Name|Board|
|------------|-----|
|pic32ck\_gc01\_cult.X|[PIC32CK GC01 Curiosity Ultra board](https://www.microchip.com/en-us/development-tool/ea23j82a)|

### Setting Up PIC32CK GC01 Curiosity Ultra Board

-   Plug an [EEPROM 4 Click board](https://www.mikroe.com/eeprom-4-click) into the MikroBus socket of the [PIC32CK GC01 Curiosity Ultra board](https://www.microchip.com/en-us/development-tool/ea23j82a)
-   Connect the Debug USB port on the board to the computer using a micro USB cable

## Running the Application

1.  Build and Program the application project using its IDE
2.  LED indicates the success or failure:
    -   LED is turned ON when the value read from the EEPROM matched with the written value
    -   LED is turned OFF when the value read from the EEPROM did not match with the written value

Following table provides the LED name:

|Board|LED Name|
|-----|--------|
|[PIC32CK GC01 Curiosity Ultra board](https://www.microchip.com/en-us/development-tool/ea23j82a)|LED0|

