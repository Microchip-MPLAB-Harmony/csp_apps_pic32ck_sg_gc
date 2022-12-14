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
    RSTC_RESET_CAUSE ResetCause = RSTC_ResetCauseGet();
    
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
    printf ("\n\r -------------------------------------------------------------");
    printf ("\n\r                           RSTC DEMO                           ");
    printf ("\n\r -------------------------------------------------------------");
    printf ("\n\r Press RESET button to emulate External Reset"); 
    printf ("\n\r Press SW0 button to emulate Watchdog Timer Reset"); 
    printf ("\n\r Load and run in debug mode to emulate System Reset"); 
    printf ("\n\r ------------------------------------------------------------- \r\n");
    
    SYSTICK_TimerStart();

    switch(ResetCause)
    {
        case RSTC_RESET_CAUSE_EXT_RESET:
            printf("\r\n Reset type is External Reset");
            break;
        case RSTC_RESET_CAUSE_WDT_RESET:
            printf("\r\n Reset type is Watch Dog Timer Reset");
            break;
        case RSTC_RESET_CAUSE_SYST_RESET:
            printf("\r\n Reset type is System Reset");
            break;
        default:
            printf("\r\n Reset Cause = 0x%02X", (unsigned char)ResetCause);
            break;
    }

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
            printf ("\n\r Emulating deadlock................ ");
            printf ("\n\r WDT should reset device in 4 seconds and you will see reset reason as WDT Reset");           
            while(1);
        }
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

