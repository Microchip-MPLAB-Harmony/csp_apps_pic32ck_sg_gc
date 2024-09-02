# Harmony 3 Peripheral Library Application Examples for PIC32CK-GC/SG Family

MPLAB® Harmony 3 is an extension of the MPLAB® ecosystem for creating embedded firmware<br /> solutions for Microchip 32-bit SAM and PIC® microcontroller and microprocessor devices.<br /> Refer to the following links for more information.

-   [Microchip 32-bit MCUs](https://www.microchip.com/design-centers/32-bit)
-   [Microchip 32-bit MPUs](https://www.microchip.com/design-centers/32-bit-mpus)
-   [Microchip MPLAB X IDE](https://www.microchip.com/mplab/mplab-x-ide)
-   [Microchip MPLAB® Harmony](https://www.microchip.com/mplab/mplab-harmony)
-   [Microchip MPLAB® Harmony Pages](https://microchip-mplab-harmony.github.io/)

This repository contains the MPLAB® Harmony 3 peripheral library application examples for<br /> PIC32CK-GC/SG family

-   [Release Notes](release_notes.md)
-   [MPLAB® Harmony License](mplab_harmony_license.md)

To clone or download these applications from Github, go to the [main page of this repository](https://github.com/Microchip-MPLAB-Harmony/csp_apps_pic32ck_sg_gc) and then click<br /> **Clone** button to clone this repository or download as zip file. This content<br /> can also be downloaded using content manager by following these [instructions](https://github.com/Microchip-MPLAB-Harmony/contentmanager/wiki).


## Contents Summary

|Folder|Description|
|:-----|:----------|
|apps|Contains peripheral library example<br /> applications|

## Code Examples

The following applications are provided to demonstrate the typical or interesting<br /> usage models of one or more peripheral libraries.

|Name|Description|
|----|-----------|
|[AC Sleepwalking](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_AC_SLEEPWALKING&redirect=true)|This example application shows<br /> how to use the AC Peripheral library to perform a single shot<br /> comparison in standby sleep mode periodically and wake up the device<br /> when the comparator output toggles|
|[ADC Blocking](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_ADC_BLOCKING&redirect=true)|This example application shows<br /> how to use the ADC Peripheral library in blocking mode to convert<br /> analog input on a ADC channel|
|[ADC DMA Scan](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_ADC_DMA_SCAN&redirect=true)|This example application shows<br /> how to use the ADC Peripheral library in scan mode to convert<br /> multiple analog input on a ADC channels and transfer the ADC result<br /> using DMA|
|[ADC Interrupt](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_ADC_INTERRUPT&redirect=true)|This example application shows<br /> how to use the ADC Peripheral library in in interrupt mode to<br /> convert multiple analog inputs|
|[CAN FD Blocking](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_CAN_FD_BLOCKING&redirect=true)|This example application shows<br /> how to use the CAN module to transmit and receive CAN FD messages in<br /> polling mode|
|[CAN FD Interrupt](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_CAN_FD_INTERRUPT&redirect=true)|This example application shows<br /> how to use the CAN module to transmit and receive CAN FD messages in<br /> interrupt mode|
|[CAN Blocking](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_CAN_BLOCKING&redirect=true)|This example application shows<br /> how to use the CAN module to transmit and receive normal CAN<br /> messages in polling mode|
|[Clock Configuration](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_CLOCK_CONFIGURATION&redirect=true)|This example application shows<br /> how to configure the clock system to run the device at maximum<br /> frequency. It also outputs a prescaled clock signal on a GPIO pin<br /> for measurement and verification|
|[DMA CRC-32 Generation](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_DMA_CRC32_GENERATION&redirect=true)|This example application<br /> demonstrates how to use the DMA peripheral to compute 32-bit Cyclic<br /> Redundancy Checksum \(CRC\)|
|[DMAC USART Echo](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_DMAC_USART_ECHO&redirect=true)|This example application<br /> demonstrates USART transfer with DMA to receive 10 bytes and echo<br /> back the received bytes|
|[DMAC Memory Transfer](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_DMAC_MEMORY_TRANSFER&redirect=true)|This example application<br /> demonstrates how to use the DMAC peripheral to do a memory to memory<br /> transfer|
|[DSU CRC32 Generate](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_DSU_CRC32_GENERATE&redirect=true)|This example application<br /> demonstrates how to use the DSU Peripheral library to compute 32-bit<br /> Cyclic Redundancy Checksum \(CRC\)|
|[EIC Interrupt](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_EIC_INTERRUPT&redirect=true)|This example application<br /> demonstrates how to generate interrupt using the EIC on switch press<br /> and indicate it through an LED|
|[EVSYS Trigger](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_EVSYS_TRIGGER&redirect=true)|This example application<br /> demonstrates how to use the EVSYS Peripheral library to setup<br /> autonomous, low-latency and configurable communication between<br /> peripherals|
|[FCW Read Write](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_FCW_READ_WRITE&redirect=true)|This example application<br /> demonstrates how to use the FCW to erase and program the internal<br /> Flash memory|
|[FREQM Measurement](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_FREQM_MEASUREMENT&redirect=true)|This example application<br /> demonstrates how to use the FREQM peripheral to measure the<br /> frequency of the internal RC Oscillator|
|[MPU Cache Coherency](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_MPU_CACHE_COHERENCY&redirect=true)|This example shows how to<br /> maintain cache coherency by allocating DMA buffers in non-cacheable<br /> SRAM region defined by MPU|
|[PM Wakeup Using EIC](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_PM_WAKEUP_USING_EIC&redirect=true)|This application demonstrates<br /> entering the low power modes and exiting it using the EIC|
|[PM Wakeup Using RTC](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_PM_WAKEUP_USING_RTC&redirect=true)|This example demonstrates<br /> entering the low power modes and exiting it using the RTC|
|[PORT Polling](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_PORT_POLLING&redirect=true)|This example application<br /> demonstrate how to poll the switch input, and indicate the switch<br /> status using the LED|
|[RSTC Reset Cause](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_RSTC_RESET_CAUSE&redirect=true)|This example shows how to use the<br /> RSTC peripheral to indicate the cause of the device reset|
|[RTC Alarm Interrupt](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_RTC_ALARM_INTERRUPT&redirect=true)|This example shows how to use the<br /> RTC to configure the time and generate the alarm|
|[RTC Periodic Interrupt](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_RTC_PERIODIC_INTERRUPT&redirect=true)|This example application shows<br /> how to use the RTC to generate periodic interrupts|
|[SERCOM I2C EEPROM Read Write](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_SERCOM_I2C_EEPROM_READ_WRITE&redirect=true)|This example application<br /> demonstrates how to use the SERCOM peripheral to write and read from<br /> the I2C serial EEPROM memory|
|[SERCOM SPI EEPROM Read Write](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_SERCOM_SPI_EEPROM_READ_WRITE&redirect=true)|This example application<br /> demonstrates how to use the SERCOM SPI peripheral to write and read<br /> from the SPI serial EEPROM memory|
|[SERCOM SPI Interrupt](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_SERCOM_SPI_INTERRUPT&redirect=true)|This example application shows<br /> how to use SERCOM SPI PLIB with external loop back to write and then<br /> read back an array of data in interrupt mode|
|[SERCOM USART Blocking](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_SERCOM_USART_BLOCKING&redirect=true)|This example application<br /> demonstrates how to use the SERCOM peripheral in USART mode to<br /> transfer block of data in a blocking manner|
|[SERCOM USART Interrupt](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_SERCOM_USART_INTERRUPT&redirect=true)|This example application<br /> demonstrates how to use the SERCOM peripheral in USART mode to<br /> transfer data in a non-blocking manner|
|[SERCOM USART Ring Buffer](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_SERCOM_USART_RING_BUFFER&redirect=true)|This example application<br /> demonstrates how to use the SERCOM peripheral in USART ring buffer<br /> mode to transfer data in a non-blocking manner|
|[SQI Flash Read Write](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_SQI_FLASH_READ_WRITE&redirect=true)|This example application<br /> demonstrates how to use the SQI Peripheral library to perform erase,<br /> write and read operation with the on-board SST26 SQI Serial Flash<br /> memory|
|[Secure TCC Demonstration](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_SECURE_TCC_DEMONSTRATION&redirect=true)|This example application performs<br /> a PWM signal applied on PD20 pin \(LED0\) based on TCC0<br /> peripheral|
|[Systick Periodic Interrupt](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_SYSTICK_PERIODIC_INTERRUPT&redirect=true)|This example shows how to use the<br /> SysTick to generate periodic interrupts|
|[TCC PWM Generation](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_TCC_PWM_GENERATION&redirect=true)|This example application shows<br /> how to use the TCC to generate a 2 or 3 phase PWM signals for motor<br /> control with dead time|
|[TCC Capture Mode](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_TCC_CAPTURE_MODE&redirect=true)|This example shows how to use the<br /> TCC module in capture mode to measure duty cycle and frequency of an<br /> external input|
|[TCC Compare Mode](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_TCC_COMPARE_MODE&redirect=true)|This example shows how to use the<br /> TCC module in compare mode to generate different waveforms|
|[TCC Timer Mode](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_TCC_TIMER_MODE&redirect=true)|This example shows how to use the<br /> TCC module in timer mode to generate periodic interrupt|
|[TRAM Erase On Tamper Detect](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_TRAM_ERASE_ON_TAMPER_DETECT&redirect=true)|This example application shows<br /> how to configure and use tamper detect feature of RTC and<br /> TrustRam|
|[TRNG Random Number](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_TRNG_RANDOM_NUMBER&redirect=true)|This example shows how to use the<br /> TRNG Peripheral library to generate and read a random number|
|[TrustZone Systick Periodic Timeout](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_TRUSTZONE_SYSTICK_PERIODIC_TIMEOUT&redirect=true)|This example application shows<br /> how to use the SysTick to generate periodic interrupts on both<br /> Secure and Non-secure modes|
|[WDT Timeout](https://onlinedocs.microchip.com/v2/keyword-lookup?keyword=CSP_APPS_PIC32CK_SG_GC_WDT_TIMEOUT&redirect=true)|This example shows how to<br /> generate a Watchdog timer reset by emulating a deadlock|

