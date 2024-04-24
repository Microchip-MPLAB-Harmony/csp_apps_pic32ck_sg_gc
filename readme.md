﻿# Harmony 3 Peripheral Library Application Examples for PIC32CK-GC/SG Family

MPLAB® Harmony 3 is an extension of the MPLAB® ecosystem for creating embedded firmware<br /> solutions for Microchip 32-bit SAM and PIC® microcontroller and microprocessor devices.<br /> Refer to the following links for more information.

-   [Microchip 32-bit MCUs](https://www.microchip.com/design-centers/32-bit)
-   [Microchip 32-bit MPUs](https://www.microchip.com/design-centers/32-bit-mpus)
-   [Microchip MPLAB X IDE](https://www.microchip.com/mplab/mplab-x-ide)
-   [Microchip MPLAB® Harmony](https://www.microchip.com/mplab/mplab-harmony)
-   [Microchip MPLAB® Harmony Pages](https://microchip-mplab-harmony.github.io/)

This repository contains the MPLAB® Harmony 3 peripheral library application examples for<br /> PIC32CK-GC/SG family

-   [Release Notes](./docs/GUID-4AF97D92-BF16-40A2-BCA9-9CA78046FBF5.md)
-   [MPLAB® Harmony License](./docs/GUID-8F12DD27-BFAD-4B6A-B015-5B73DDC68322.md)

To clone or download these applications from Github, go to the [main page of this repository](https://github.com/Microchip-MPLAB-Harmony/csp_apps_pic32ck_sg_gc) and then click<br /> **Clone** button to clone this repository or download as zip file. This content<br /> can also be downloaded using content manager by following these [instructions](https://github.com/Microchip-MPLAB-Harmony/contentmanager/wiki).


## Contents Summary

|Folder|Description|
|:-----|:----------|
|apps|Contains peripheral library example<br /> applications|

## Code Examples

The following applications are provided to demonstrate the typical or interesting<br /> usage models of one or more peripheral libraries.

|Name|Description|
|----|-----------|
|[AC Sleepwalking](./docs/GUID-37AD667C-4156-4CBC-8730-AE1281D46C42.md)|This example application shows<br /> how to use the AC Peripheral library to perform a single shot<br /> comparison in standby sleep mode periodically and wake up the device<br /> when the comparator output toggles|
|[ADC Blocking](./docs/GUID-10329B96-4C0F-484D-B685-A37338AE7F4A.md)|This example application shows<br /> how to use the ADC Peripheral library in blocking mode to convert<br /> analog input on a ADC channel|
|[ADC DMA Scan](./docs/GUID-4C4F443D-CFE5-4958-AC3E-BDD6F60A5F56.md)|This example application shows<br /> how to use the ADC Peripheral library in scan mode to convert<br /> multiple analog input on a ADC channels and transfer the ADC result<br /> using DMA|
|[ADC Interrupt](./docs/GUID-255DA35B-6A5C-40AB-9E2D-36211D951626.md)|This example application shows<br /> how to use the ADC Peripheral library in in interrupt mode to<br /> convert multiple analog inputs|
|[CAN FD Blocking](./docs/GUID-7099DB19-35C3-4DF3-BDE9-DF765E7689B6.md)|This example application shows<br /> how to use the CAN module to transmit and receive CAN FD messages in<br /> polling mode|
|[CAN FD Interrupt](./docs/GUID-DAD55A79-5260-4D04-84D8-B6C07901EE86.md)|This example application shows<br /> how to use the CAN module to transmit and receive CAN FD messages in<br /> interrupt mode|
|[CAN Blocking](./docs/GUID-7B881568-B382-44EB-B88E-496690615765.md)|This example application shows<br /> how to use the CAN module to transmit and receive normal CAN<br /> messages in polling mode|
|[Clock Configuration](./docs/GUID-CE0C8DE6-9C91-492C-97F5-9AE73A5D13C4.md)|This example application shows<br /> how to configure the clock system to run the device at maximum<br /> frequency. It also outputs a prescaled clock signal on a GPIO pin<br /> for measurement and verification|
|[DMA CRC-32 Generation](./docs/GUID-6FFB7A5B-0E06-4EC3-AF3F-360B9EEBF296.md)|This example application<br /> demonstrates how to use the DMA peripheral to compute 32-bit Cyclic<br /> Redundancy Checksum \(CRC\)|
|[DMAC USART Echo](./docs/GUID-BB1C38CE-0B78-47A4-B2A7-886FDCA8CE83.md)|This example application<br /> demonstrates USART transfer with DMA to receive 10 bytes and echo<br /> back the received bytes|
|[DMAC Memory Transfer](./docs/GUID-4A17003E-2CC1-43F5-8272-2DC30C7BDBBD.md)|This example application<br /> demonstrates how to use the DMAC peripheral to do a memory to memory<br /> transfer|
|[DSU CRC32 Generate](./docs/GUID-74F772A9-65C7-4FA4-8733-3DA7DAA62887.md)|This example application<br /> demonstrates how to use the DSU Peripheral library to compute 32-bit<br /> Cyclic Redundancy Checksum \(CRC\)|
|[EIC Interrupt](./docs/GUID-FC308355-0032-4B61-91C5-6D4816F683E1.md)|This example application<br /> demonstrates how to generate interrupt using the EIC on switch press<br /> and indicate it through an LED|
|[EVSYS Trigger](./docs/GUID-A739B8D0-D046-4C25-8271-2DDF655C2E3C.md)|This example application<br /> demonstrates how to use the EVSYS Peripheral library to setup<br /> autonomous, low-latency and configurable communication between<br /> peripherals|
|[FCW Read Write](./docs/GUID-095F9583-7F01-46EB-B5F0-BAF4408A63D1.md)|This example application<br /> demonstrates how to use the FCW to erase and program the internal<br /> Flash memory|
|[FREQM Measurement](./docs/GUID-93D640EC-FC06-4E38-BEAA-A9B1D8C3B2A3.md)|This example application<br /> demonstrates how to use the FREQM peripheral to measure the<br /> frequency of the internal RC Oscillator|
|[MPU Cache Coherency](./docs/GUID-DCCE0713-BB30-4896-9CFE-282279AE3217.md)|This example shows how to<br /> maintain cache coherency by allocating DMA buffers in non-cacheable<br /> SRAM region defined by MPU|
|[PM Wakeup Using EIC](./docs/GUID-C9CB6A5A-3069-422C-8CD9-BC269015F183.md)|This application demonstrates<br /> entering the low power modes and exiting it using the EIC|
|[PM Wakeup Using RTC](./docs/GUID-9E8CB3FE-6C9B-43B9-A442-7038EEBC3230.md)|This example demonstrates<br /> entering the low power modes and exiting it using the RTC|
|[PORT Polling](./docs/GUID-71C9E1EF-6913-43E8-ABF0-90F1B5678376.md)|This example application<br /> demonstrate how to poll the switch input, and indicate the switch<br /> status using the LED|
|[RSTC Reset Cause](./docs/GUID-DDF39C41-92C2-40D8-9A2A-865D137B1644.md)|This example shows how to use the<br /> RSTC peripheral to indicate the cause of the device reset|
|[RTC Alarm Interrupt](./docs/GUID-B5E6E41E-0D43-4EB5-A435-53BC75C7BB43.md)|This example shows how to use the<br /> RTC to configure the time and generate the alarm|
|[RTC Periodic Interrupt](./docs/GUID-9ABD7E5E-2116-4153-8EEC-639C913DD0CA.md)|This example application shows<br /> how to use the RTC to generate periodic interrupts|
|[SERCOM I2C EEPROM Read Write](./docs/GUID-ACF6A9E0-076B-446D-B151-84E02642FBC8.md)|This example application<br /> demonstrates how to use the SERCOM peripheral to write and read from<br /> the I2C serial EEPROM memory|
|[SERCOM SPI EEPROM Read Write](./docs/GUID-5FA3EA5F-AD58-47D8-BA1F-4CE34B24FB64.md)|This example application<br /> demonstrates how to use the SERCOM SPI peripheral to write and read<br /> from the SPI serial EEPROM memory|
|[SERCOM SPI Interrupt](./docs/GUID-0124B0CE-669B-4BC7-9768-A5503BC1045D.md)|This example application shows<br /> how to use SERCOM SPI PLIB with external loop back to write and then<br /> read back an array of data in interrupt mode|
|[SERCOM USART Blocking](./docs/GUID-5B46CA57-5B4D-4BC7-ACE7-938DF1C5C84C.md)|This example application<br /> demonstrates how to use the SERCOM peripheral in USART mode to<br /> transfer block of data in a blocking manner|
|[SERCOM USART Interrupt](./docs/GUID-58C6F2E1-F6EF-4F17-B617-E3CAF0A104D1.md)|This example application<br /> demonstrates how to use the SERCOM peripheral in USART mode to<br /> transfer data in a non-blocking manner|
|[SERCOM USART Ring Buffer](./docs/GUID-30167D23-F983-4931-91F3-FCEA8D6B1DFA.md)|This example application<br /> demonstrates how to use the SERCOM peripheral in USART ring buffer<br /> mode to transfer data in a non-blocking manner|
|[SQI Flash Read Write](./docs/GUID-49F12827-311E-4082-AEDF-8B6B92F31A45.md)|This example application<br /> demonstrates how to use the SQI Peripheral library to perform erase,<br /> write and read operation with the on-board SST26 SQI Serial Flash<br /> memory|
|[Secure TCC Demonstration](./docs/GUID-1EDF3DE5-E6C0-49CA-937E-3BD0CCF5B79E.md)|This example application performs<br /> a PWM signal applied on PD20 pin \(LED0\) based on TCC0<br /> peripheral|
|[Systick Periodic Interrupt](./docs/GUID-C85E0A49-A9CD-4D05-AEBF-399C339985A1.md)|This example shows how to use the<br /> SysTick to generate periodic interrupts|
|[TCC PWM Generation](./docs/GUID-68F647AB-830B-4CBA-9CBC-8CF5C76D2D2F.md)|This example application shows<br /> how to use the TCC to generate a 2 or 3 phase PWM signals for motor<br /> control with dead time|
|[TCC Capture Mode](./docs/GUID-56EFFACD-CD7F-4D52-882E-11DDA5CC4393.md)|This example shows how to use the<br /> TCC module in capture mode to measure duty cycle and frequency of an<br /> external input|
|[TCC Compare Mode](./docs/GUID-B0EF25CA-BD4D-43A4-8929-5C52974395CA.md)|This example shows how to use the<br /> TCC module in compare mode to generate different waveforms|
|[TCC Timer Mode](./docs/GUID-38ECC6E6-92FB-4EB2-A13E-BF56A806BB52.md)|This example shows how to use the<br /> TCC module in timer mode to generate periodic interrupt|
|[TRAM Erase On Tamper Detect](./docs/GUID-2074E21F-5EB6-46BC-95CE-4D0BCE945A27.md)|This example application shows<br /> how to configure and use tamper detect feature of RTC and<br /> TrustRam|
|[TRNG Random Number](./docs/GUID-343674F7-54C5-4DC5-915A-E9AF341F724E.md)|This example shows how to use the<br /> TRNG Peripheral library to generate and read a random number|
|[TrustZone Systick Periodic Timeout](./docs/GUID-8DCDC6DF-A651-4EE6-9301-2CE179702C80.md)|This example application shows<br /> how to use the SysTick to generate periodic interrupts on both<br /> Secure and Non-secure modes|
|[WDT Timeout](./docs/GUID-B0485419-D897-4A26-8C90-E141E6133750.md)|This example shows how to<br /> generate a Watchdog timer reset by emulating a deadlock|

