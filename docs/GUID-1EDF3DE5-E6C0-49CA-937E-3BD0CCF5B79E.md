# Secure TCC Demonstration

This example application performs a PWM signal applied on PD20 pin \(LED0\) based on TCC0<br /> peripheral.

**Parent topic:**[Harmony 3 Peripheral Library Application Examples for PIC32CK-GC/SG Family](GUID-5EB5829A-8D62-4A5E-B89B-DF7EF4E334A2.md)

## Description

This demonstrates TrustZone feature and uses two projects viz., Secure and Non-Secure<br /> Project that work together on the same MCU and offering security isolation between<br /> the Trusted and the Non-trusted resources in the device.

-   Secure project configures the TCC0 peripheral to generate interrupts based on Match0 and Overflow IRQs.
-   Secure project configures the SysTick to generates interrupts
-   Non-secure project uses veneers to request from Secure project, the PWM signal \(based on TCC0 duty cycle management and delays from SysTICK\) to apply to LED0 pin

## Components Used

-   **TCC0** - Configured as Secure peripheral
-   **LED0** - Configured as Non-secure pin
-   **SysTick** - Configured as Secure peripheral

## Downloading and Building the Application

To clone or download this application from Github, go to the [main page of this repository](https://github.com/Microchip-MPLAB-Harmony/csp_apps_pic32ck_sg_gc) and then<br /> click **Clone** button to clone this repository or download as zip file. This<br /> content can also be downloaded using content manager by following these [instructions](https://github.com/Microchip-MPLAB-Harmony/contentmanager/wiki).

Path of the application within the repository is as shown below:

|Type|Path|
|----|----|
|Project group|apps/trustzone/tcc/tcc\_secure/pic32ck\_sg01\_cultgroup|
|Secure Project|apps/trustzone/tcc/tcc\_secure\_secure|
|Non-Secure Project|apps/trustzone/tcc/tcc\_secure|

To build the application, refer to the following table and open the project using its<br /> IDE.

|Project Name|Description|
|------------|-----------|
|<br /> pic32ck\_sg01\_cult\_secure.X<br /> pic32ck\_sg01\_cult.X<br />|Secure and Non-secure MPLABX project<br /> for [PIC32CK SG01 Curiosity Ultra Evaluation Kit](https://www.microchip.com/en-us/development-tool/EA14V17A)|

## Setting Up the Hardware

The following table shows the target hardware for the application projects.

|Project Name|Board|
|------------|-----|
|<br /> pic32ck\_sg01\_cult\_secure.X<br /> pic32ck\_sg01\_cult.X<br />|Secure and Non-secure MPLABX project<br /> for [PIC32CK SG01 Curiosity Ultra Evaluation Kit](https://www.microchip.com/en-us/development-tool/EA14V17A)|

### Setting Up PIC32CK SG01 Curiosity Ultra Evaluation Kit

-   Connect the Debug USB port on the board to the computer using a micro USB cable

## Running the Application

1.  Open the project group in the MPLAB X IDE and set the non-secure project as main project
2.  Build and program the application
3.  Observe the output for [PIC32CK SG01 Curiosity Ultra Evaluation Kit](https://www.microchip.com/en-us/development-tool/EA14V17A) as follows:
    -   LED0\(Green\) luminosity is decreasing from maximum to minimum based on PWM signal applied by TCC0 peripheral in Secure project with Non-Secure project requests through veneers

