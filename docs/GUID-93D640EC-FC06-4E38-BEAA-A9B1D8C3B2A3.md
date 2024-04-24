# FREQM Measurement

This example application demonstrates how to use the FREQM peripheral to measure the<br /> frequency of the internal RC Oscillator.

**Parent topic:**[Harmony 3 Peripheral Library Application Examples for PIC32CK-GC/SG Family](GUID-5EB5829A-8D62-4A5E-B89B-DF7EF4E334A2.md)

## Description

The Frequency Meter \(FREQM\) can be used to accurately measure the frequency of a<br /> clock by comparing it to a known reference clock. The FREQM counts the number of<br /> periods of the measured clock with respect to the reference clock. This example<br /> application shows how to measure the cpu frequency using the 32-kHz Crystal<br /> oscillator as the reference clock.

## Downloading and Building the Application

To clone or download this application from Github, go to the [main page of this repository](https://github.com/Microchip-MPLAB-Harmony/csp_apps_pic32ck_sg_gc) and then<br /> click **Clone** button to clone this repository or download as zip file. This<br /> content can also be downloaded using content manager by following these [instructions](https://github.com/Microchip-MPLAB-Harmony/contentmanager/wiki).

Path of the application within the repository is<br /> **apps/freqm/freqm\_measure\_clock\_freq/firmware** .

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

-   Connect the Debug USB port on the board to the computer using a micro USB cable

## Running the Application

1.  Open the Terminal application \(Ex.:Tera term\) on the computer
2.  Connect to the PKOB4 Virtual COM port and configure the serial settings as follows:
    -   Baud : 115200
    -   Data : 8 Bits
    -   Parity : None
    -   Stop : 1 Bit
    -   Flow Control : None
3.  Build and Program the application using its IDE
4.  Observe output message in console as follows:

    ![](GUID-1C4BF233-B896-413A-94CC-995105C16C03-low.png)


*Note that the measured clock frequency is approximate. The actual frequency may vary because of measurement error.*

