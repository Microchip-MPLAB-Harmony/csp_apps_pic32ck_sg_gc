---
parent: Harmony 3 peripheral library application examples for PIC32CK-GC/SG family
title: RSTC reset cause 
has_children: false
has_toc: false
---

[![MCHP](https://www.microchip.com/ResourcePackages/Microchip/assets/dist/images/logo.png)](https://www.microchip.com)

# RSTC reset cause

This example shows how to use the RSTC peripheral to indicate the cause of the device reset.

## Description

Reset Controller collects the various reset sources and generates reset for the device and allows the reset source to be identified by the software.

**Power On Reset**: Device contains a power-on-reset (POR) detector, which keeps the system reset until power is stable. This eliminates the need for external reset circuitry to guarantee stable operation when powering up the device.

**VDDCORE Brown Out Reset**: BOR will reset the device if a voltage of 1.2 V or below is observed on the I/O pin supplying power to the MCU core (VDDCORE).

## Downloading and building the application

To clone or download this application from Github, go to the [main page of this repository](https://github.com/Microchip-MPLAB-Harmony/csp_apps_pic32ck_gc) and then click **Clone** button to clone this repository or download as zip file.
This content can also be downloaded using content manager by following these [instructions](https://github.com/Microchip-MPLAB-Harmony/contentmanager/wiki).

Path of the application within the repository is **apps/rstc/rstc_reset_cause/firmware** .

To build the application, refer to the following table and open the project using its IDE.

| Project Name      | Description                                    |
| ----------------- | ---------------------------------------------- |
| pic32ck_gc01_cult.X    | MPLABX Project for [PIC32CK GC01 Curiosity Ultra board]()|
|||

## Setting up the hardware

The following table shows the target hardware for the application projects.

| Project Name| Board|
|:---------|:---------:|
| pic32ck_gc01_cult.X    | [PIC32CK GC01 Curiosity Ultra board]()|
|||

### Setting up [PIC32CK GC01 Curiosity Ultra board]()

- Connect the Debug USB port on the board to the computer using a micro USB cable


## Running the Application

1. Open the Terminal application (Ex.:Tera term) on the computer
2. Connect to the PKOB4 Virtual COM port and configure the serial settings as follows:
    - Baud : 115200
    - Data : 8 Bits
    - Parity : None
    - Stop : 1 Bit
    - Flow Control : None
3. Build and Program the application using its IDE
4. LED is blinked continuously using the SysTick Timer
5. Console displays the following message

    ![output_1](images/output_rstc_reset_cause_1.png)

6. Watchdog timer is fed periodically using System Timer (SysTick) to prevent the WDT reset and the LED is toggled
7. Press the switch to put the system in deadlock (LED should stop blinking)
8. WDT will reset the device in four seconds and the demonstration should restart
9. Console should display the following message

    ![output_2](images/output_rstc_reset_cause_2.png)

Following table provides the details of switch and LED

| Board      | Switch Name | LED Name |
| ---------- | ---------| ------------|
| [PIC32CK GC01 Curiosity Ultra board]()    | SW0 | LED0 |
||||
