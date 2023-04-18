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

/* Duty cycle increment value */
#define DUTY_INCREMENT (10U)

/* Save PWM period */
static uint32_t period;

/* This function is called after TCC period event */
void TCC_PeriodEventHandler(uint32_t status, uintptr_t context)
{
    /* duty cycle values */
    static uint32_t duty0 = 0U;
        
    TCC1_PWM32bitDutySet(TCC1_CHANNEL0, duty0);
     
    /* Increment duty cycle values */
    duty0 += DUTY_INCREMENT;
    
    if (duty0 > period)
        duty0 = 0U;
    
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
    
    /* Register callback function for period event */
    TCC1_PWMCallbackRegister(TCC_PeriodEventHandler, (uintptr_t)NULL);
    
    /* Read the period */
    period = TCC1_PWM32bitPeriodGet();
    
    /* Start PWM*/
    TCC1_PWMStart();

    while ( true )
    {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

