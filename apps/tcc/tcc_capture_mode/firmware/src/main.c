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

/* Input waveform - compare value increment*/
#define CMP_VAL_INCREMENT (375U)

/* Calculated duty cycle of the input waveform in %*/
uint32_t duty;
/* Calculated frequency of the input waveform in Hz*/
uint32_t frequency;

volatile bool tcc_buffer_ready = false;

void capture_handler( uint32_t status, uintptr_t context)
{
    tcc_buffer_ready = true;
}

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
    uint32_t period,on_time;
    uint32_t cmp_period, cmp_val=0;

    /* Initialize all modules */
    SYS_Initialize ( NULL );

    SYSTICK_TimerStart();
    cmp_period = TCC0_Compare32bitPeriodGet();

    printf("\n\r---------------------------------------------------------");
    printf("\n\r                    TCC Capture Demo                 ");
    printf("\n\r---------------------------------------------------------\n\r");
            
    TCC0_CompareStart();
    TCC1_CaptureStart();
    
    TCC1_CaptureCallbackRegister(capture_handler, (uintptr_t)NULL);

    while (true )
    {
        /* Change the duty cycle of the input waveform  */
        cmp_val += CMP_VAL_INCREMENT;
        if (cmp_val >= cmp_period)
        {
            cmp_val = CMP_VAL_INCREMENT;
        }
        TCC0_Compare32bitMatchSet(TCC0_CHANNEL0, cmp_val);

        /* Wait for 1 second */
        SYSTICK_DelayMs(500);

        /* Wait for capture event */
        while(tcc_buffer_ready != true);

        /* Read Captured values */
        period = TCC1_Capture32bitValueGet(TCC1_CHANNEL1);
        on_time = TCC1_Capture32bitValueGet(TCC1_CHANNEL0);

        /* Compute Duty Cycle in percentage and Frequency in Hz */
        duty = ((on_time) * 100U) / period;
        frequency = (TCC1_CaptureFrequencyGet() / period);

        /* Send the measured data to console for display  */
        printf("Frequency: %d Hz \t Duty Cycle: %d %%",(int) frequency,(int) duty);
        printf("\r\n");
        tcc_buffer_ready = false;
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/
