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


// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

volatile bool freqm_buffer_ready = false;

void freqm_event_handler(uintptr_t context)
{   
    if((FREQM_ErrorGet() == FREQM_ERROR_NONE) && (FREQM_IsBusy() == false))
    {
        freqm_buffer_ready = true;
    }
}

int main ( void )
{
    uint32_t measuredclock_freq;
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
    printf("\n\n\r----------------------------------------------");
    printf("\n\r     FREQM module demo");
    printf("\n\n\r----------------------------------------------");
    
    printf("\n\n\rFREQM module Configured to measure 60MHz internal oscillator clock using known 32KHz external crystal");
    
    FREQM_CallbackRegister(freqm_event_handler,(uintptr_t)NULL);
    
    FREQM_MeasurementStart();
    
    while(freqm_buffer_ready != true);
    
    measuredclock_freq = FREQM_FrequencyGet();
    printf("\n\n\rMeasured Clock Frequency = %ldHz",measuredclock_freq);

    /*Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}



/*******************************************************************************
 End of File
*/

