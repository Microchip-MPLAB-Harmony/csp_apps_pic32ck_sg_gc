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
#include "definitions.h"                // SYS function prototypes

#define SWITCH_PRESSED_STATE 0

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{

    /* Initialize all modules */
    SYS_Initialize ( NULL );

    printf ("\r\n -------------------------------------------------------------");
    printf ("\r\n                           WDT DEMO                           ");
    printf ("\r\n -------------------------------------------------------------");
    printf ("\r\n Press SW0 to emulate deadlock "); 

    SYSTICK_TimerStart();

    WDT_TimeoutPeriodSet(WDT_CONFIG_PER_CYC4096_Val);

    WDT_Enable();

    while ( true )
    {
        if(SWITCH_Get() != SWITCH_PRESSED_STATE)
        {
            if(SYSTICK_TimerPeriodHasExpired())
            {
                LED_Toggle();
                WDT_Clear();
            }
        }
        else
        {   
            printf ("\r\n Emulating deadlock................ ");
            printf ("\r\n WDT should reset device in 4 seconds ");           
            while(1);
        }
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

