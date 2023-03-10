/*******************************************************************************
 Non-secure entry header File for non-secure project

  Company:
    Microchip Technology Inc.

  File Name:
    nonsecure_entry.h

  Summary:
    Function prototype declarations for Non-secure callable functions

  Description:
    This file is used to declare non-secure callable functions in non-secure project.

 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2020 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *******************************************************************************/
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#ifndef NONSECURE_ENTRY_H_
#define NONSECURE_ENTRY_H_

#include <arm_cmse.h>

typedef void ( *secure_void_cb_t ) ( void );

/* Non-secure callable functions */
extern void nsc_TCC0_DutyCycle_Set ( uint32_t duty_cycle );
extern void nsc_TCC0_CompareStart ( void );
extern void nsc_SYSTICK_TimerStart ( void );
extern void nsc_SYSTICK_DelayMs ( uint8_t delay_ms );
extern void nsc_tcc0_match0_interrupt_callback_register ( secure_void_cb_t pFunction );
extern void nsc_tcc0_overflow_interrupt_callback_register ( secure_void_cb_t pFunction );

#endif /* NONSECURE_ENTRY_H_ */
