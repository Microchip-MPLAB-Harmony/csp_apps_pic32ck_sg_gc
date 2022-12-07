/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <string.h>
#include "definitions.h"                // SYS function prototypes

/* Macro definitions */
#define LED_On      LED_Clear
#define LED_Off     LED_Set

/* Global variables */
uint8_t txData[]  = "SELF LOOPBACK DEMO FOR SPI!";
uint8_t rxData[sizeof(txData)];
volatile bool transferStatus=false;

/* This function will be called by SPI PLIB when transfer is completed */
void SERCOM2_SPI_Callback(uintptr_t context )
{
    transferStatus = true;
}

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );

    /* Register callback function   */
    SERCOM2_SPI_CallbackRegister(SERCOM2_SPI_Callback, 0);
   
    /* SPI Write Read */
    SERCOM2_SPI_WriteRead(&txData[0], sizeof(txData), &rxData[0], sizeof(rxData));
	
	/* Busy wait on transfer status */
	while(transferStatus != true);

	/* Compare received data with the transmitted data */
	if(memcmp(txData, rxData, sizeof(txData)) == 0)
	{
		/* Pass: Received data is same as transmitted data */
		LED_On();
	}
	else
	{   
	/* Fail: Received data is not same as transmitted data */
		LED_Off();
	}            

    while(1)
    {      
    }
}
/*******************************************************************************
 End of File
*/

