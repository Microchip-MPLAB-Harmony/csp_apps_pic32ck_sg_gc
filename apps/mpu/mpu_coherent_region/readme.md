---
parent: Harmony 3 peripheral library application examples for PIC32CK-GC/SG family
title: MPU cache coherency 
has_children: false
has_toc: false
---

[![MCHP](https://www.microchip.com/ResourcePackages/Microchip/assets/dist/images/logo.png)](https://www.microchip.com)

# MPU cache coherency

This example shows how to maintain cache coherency by allocating DMA buffers in non-cacheable SRAM region defined by MPU.

## Description

This application performs USART transfer with DMA. One DMA channel is used to receive 10 bytes of data from the USART and another DMA channel is used to echo back the received bytes.

## Downloading and building the application

To clone or download this application from Github, go to the [main page of this repository](https://github.com/Microchip-MPLAB-Harmony/csp_apps_pic32ck_gc) and then click **Clone** button to clone this repository or download as zip file.
This content can also be downloaded using content manager by following these [instructions](https://github.com/Microchip-MPLAB-Harmony/contentmanager/wiki).

Path of the application within the repository is **apps/mpu/mpu_coherent_region/firmware** .

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
- Connect VCC and GND between EXT2 and Mikrobus Xplained board

## Running the Application

1. Open the Terminal application (Ex.:Tera term) on the computer
2. Connect to the PKOB4 Virtual COM port and configure the serial settings as follows:
    - Baud : 115200
    - Data : 8 Bits
    - Parity : None
    - Stop : 1 Bit
    - Flow Control : None
3. Build and Program the application using its IDE
4. The console displays the following message

    ![output](images/output_mpu_coherent_region.png)

5. Type 10 characters in the terminal. It will echo back the received bytes and toggles the LED
6. The following table provides the LED names

| Board                                  | LED Name |
| -------------------------------------- | -------- |
| [PIC32CK GC01 Curiosity Ultra board]() | LED0     |
|||
