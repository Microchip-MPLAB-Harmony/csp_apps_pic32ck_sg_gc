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


#define LED_ON LED_Clear
#define LED_OFF LED_Set

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************
enum
{
  IDLE_SLEEP_MODE = 'a',
  STANDBY_SLEEP_MODE = 'b',
  HIBERNATE_SLEEP_MODE = 'c',
  OFF_SLEEP_MODE ='d',
}SLEEP_MODES;

uint8_t cmd = 0;

void timeout (uintptr_t context)
{
    LED_Toggle();    
}

void display_menu (void)
{
    printf("\n\n\n\rSelect the low power mode to enter");
    printf("\n\ra) Idle Sleep Mode");
    printf("\n\rb) Standby Sleep Mode"); 
    printf("\n\rc) Hibernate Sleep Mode");
    printf("\n\rd) Off Sleep Mode");
    printf("\n\rEnter your choice");    
    scanf("%c", &cmd);
}

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
    RSTC_BKUPEXIT_CAUSE reset_cause_bkup;
    RSTC_RESET_CAUSE reset_cause;
    
    /* Initialize all modules */
    SYS_Initialize ( NULL );

    reset_cause_bkup = RSTC_BackupExitCauseGet();
    reset_cause = RSTC_ResetCauseGet();
    
    printf("\n\n\r----------------------------------------------");
    printf("\n\r                 LOW power demo using EIC"               );
    printf("\n\r----------------------------------------------"); 
    
    if(reset_cause_bkup == RSTC_BKUPEXIT_HIB_Msk)
        printf("\n\n\rDevice exited from Hibernate mode\n");
    else if(reset_cause == RSTC_RCAUSE_POR_Msk)
        printf("\n\n\rDevice exited from OFF mode\n");
    
    SYSTICK_TimerCallbackSet(&timeout, (uintptr_t) NULL);
    SYSTICK_TimerStart();
    
    display_menu();
    
    while(1)
    {
        switch(cmd)
        {
            case IDLE_SLEEP_MODE:
            {
                printf("\n\rEntering IDLE SLEEP Mode");
                printf("\n\rPress SW0 to wakeup the device"); 
                SYSTICK_TimerStop();
                LED_OFF();
                PM_IdleModeEnter();
                printf("\n\rSW0 Pressed exiting Sleep mode......");
                SYSTICK_TimerStart();
                display_menu();
                break;
            }
            case STANDBY_SLEEP_MODE:
            {
                printf("\n\rEntering STANDBY SLEEP Mode");
                printf("\n\rPress SW0 to wakeup the device");   
                SYSTICK_TimerStop();
                LED_OFF();
                PM_StandbyModeEnter();
                printf("\n\rSW0 Pressed exiting Standby mode......");
                SYSTICK_TimerStart();
                display_menu();
                break;
            }
            case HIBERNATE_SLEEP_MODE:
            {
                printf("\n\rEntering HIBERNATE SLEEP Mode");
                printf("\n\rPress Reset button to wakeup the device   ");   
                SYSTICK_TimerStop();
                LED_OFF();
                PM_HibernateModeEnter();
                break;
            }
            case OFF_SLEEP_MODE:
            {
                printf("\n\rEntering OFF SLEEP Mode");
                printf("\n\rPress Reset button to wakeup the device  ");   
                SYSTICK_TimerStop();
                LED_OFF();
                PM_OffModeEnter();
                break;
            }
            default:
            {
                printf("\n\rInvalid choice");
                display_menu();
                break;
            }
        } 
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

