---
parent: Harmony 3 peripheral library application examples for PIC32CK-GC/SG family
title: SERCOM USART blocking 
has_children: false
has_toc: false
---

[![MCHP](https://www.microchip.com/ResourcePackages/Microchip/assets/dist/images/logo.png)](https://www.microchip.com)

# SERCOM USART blocking

This example application demonstrates how to use the SERCOM peripheral in USART mode to transfer block of data in a blocking manner.

## Description

This example shows the read and write operation over a USART in a blocking manner. The CPU polls the peripheral register continuously to manage the transfer. It receives a line of characters from the terminal window and echoes them back.

## Downloading and building the application

To clone or download this application from Github, go to the [main page of this repository](https://github.com/Microchip-MPLAB-Harmony/csp_apps_pic32ck_sg_gc) and then click **Clone** button to clone this repository or download as zip file.
This content can also be downloaded using content manager by following these [instructions](https://github.com/Microchip-MPLAB-Harmony/contentmanager/wiki).

Path of the application within the repository is **apps/sercom/usart/usart_echo_blocking/firmware** .

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
2. Connect to the PKOB Virtual COM port and configure the serial settings as follows:
    - Baud : 115200
    - Data : 8 Bits
    - Parity : None
    - Stop : 1 Bit
    - Flow Control : None
3. Build and Program the application using its IDE
4. The console displays the following message

    ![output](images/output_sercom_usart_echo_blocking.png)

5. Type a line of characters and press the Enter key (*NOTE: Number of characters entered before pressing enter key must be less than 256*))
6. Entered line will be echoed back and the LED is toggled
7. The following table provides the LED names

| Board      |LED Name   |
| ---------- | ----------- |
| [PIC32CK GC01 Curiosity Ultra board]()    | LED0 |
||||
