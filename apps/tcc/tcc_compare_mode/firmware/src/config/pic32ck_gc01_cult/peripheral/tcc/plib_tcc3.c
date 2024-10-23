/*******************************************************************************
  Timer/Counter(TCC3) PLIB

  Company
    Microchip Technology Inc.

  File Name
    plib_tcc3.c

  Summary
    TCC3 PLIB Implementation File.

  Description
    This file defines the interface to the TCC peripheral library. This
    library provides access to and control of the associated peripheral
    instance.

  Remarks:
    None.

*******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2018 Microchip Technology Inc. and its subsidiaries.
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
/* This section lists the other files that are included in this file.
*/

#include "interrupts.h"
#include "plib_tcc3.h"







// *****************************************************************************
// *****************************************************************************
// Section: Global Data
// *****************************************************************************
// *****************************************************************************


// *****************************************************************************
// *****************************************************************************
// Section: TCC3 Implementation
// *****************************************************************************
// *****************************************************************************

/* Initialize TCC module in Compare Mode */
void TCC3_CompareInitialize( void )
{
    /* Reset TCC */
    TCC3_REGS->TCC_CTRLA = TCC_CTRLA_SWRST_Msk;

    while((TCC3_REGS->TCC_SYNCBUSY & TCC_SYNCBUSY_SWRST_Msk) == TCC_SYNCBUSY_SWRST_Msk)
    {
        /* Wait for Write Synchronization */
    }

    /* Configure counter mode & prescaler */
    TCC3_REGS->TCC_CTRLA = TCC_CTRLA_PRESCALER_DIV256 | TCC_CTRLA_PRESCSYNC_PRESC ;
    /* Configure waveform generation mode */
    TCC3_REGS->TCC_WAVE = TCC_WAVE_WAVEGEN_MFRQ;

    TCC3_REGS->TCC_WEXCTRL = TCC_WEXCTRL_OTMX(0UL);


    
    TCC3_REGS->TCC_PER = 20000U;
    
    TCC3_REGS->TCC_CC[0] = 938U;
    TCC3_REGS->TCC_CC[1] = 24U;
    TCC3_REGS->TCC_CC[2] = 24U;
    TCC3_REGS->TCC_CC[3] = 24U;
    TCC3_REGS->TCC_CC[4] = 24U;
    TCC3_REGS->TCC_CC[5] = 24U;

    /* Clear all interrupt flags */
    TCC3_REGS->TCC_INTFLAG = TCC_INTFLAG_Msk;


    while((TCC3_REGS->TCC_SYNCBUSY) != 0U)
    {
        /* Wait for Write Synchronization */
    }
}

/* Enable the counter */
void TCC3_CompareStart( void )
{
    TCC3_REGS->TCC_CTRLA |= TCC_CTRLA_ENABLE_Msk;
    while((TCC3_REGS->TCC_SYNCBUSY & TCC_SYNCBUSY_ENABLE_Msk) == TCC_SYNCBUSY_ENABLE_Msk)
    {
        /* Wait for Write Synchronization */
    }
}

/* Disable the counter */
void TCC3_CompareStop( void )
{
    TCC3_REGS->TCC_CTRLA &= ~TCC_CTRLA_ENABLE_Msk;
    while((TCC3_REGS->TCC_SYNCBUSY & TCC_SYNCBUSY_ENABLE_Msk) == TCC_SYNCBUSY_ENABLE_Msk)
    {
        /* Wait for Write Synchronization */
    }
}

uint32_t TCC3_CompareFrequencyGet( void )
{
    return (uint32_t)234375;
}

void TCC3_CompareCommandSet(TCC_COMMAND command)
{
    TCC3_REGS->TCC_CTRLBSET = (uint8_t)((uint32_t)command << TCC_CTRLBSET_CMD_Pos);
    while ((TCC3_REGS->TCC_SYNCBUSY & TCC_SYNCBUSY_CTRLB_Msk) == TCC_SYNCBUSY_CTRLB_Msk)
    {
        /* Wait for Write Synchronization */
    }    
}

/* Get the current counter value */
uint32_t TCC3_Compare32bitCounterGet( void )
{
    /* Write command to force COUNT register read synchronization */
    TCC3_REGS->TCC_CTRLBSET |= (uint8_t)TCC_CTRLBSET_CMD_READSYNC;

    while((TCC3_REGS->TCC_SYNCBUSY & TCC_SYNCBUSY_CTRLB_Msk) == TCC_SYNCBUSY_CTRLB_Msk)
    {
        /* Wait for Write Synchronization */
    }

    while((TCC3_REGS->TCC_CTRLBSET & TCC_CTRLBSET_CMD_Msk) != 0U)
    {
        /* Wait for CMD to become zero */
    }

    /* Read current count value */
    return TCC3_REGS->TCC_COUNT;
}

/* Configure counter value */
void TCC3_Compare32bitCounterSet( uint32_t countVal )
{
    TCC3_REGS->TCC_COUNT = countVal;

    while((TCC3_REGS->TCC_SYNCBUSY & TCC_SYNCBUSY_COUNT_Msk) == TCC_SYNCBUSY_COUNT_Msk)
    {
        /* Wait for Write Synchronization */
    }
}

/* Configure period value */
bool TCC3_Compare32bitPeriodSet( uint32_t period )
{
    bool status = false;
    if((TCC3_REGS->TCC_STATUS & TCC_STATUS_PERBUFV_Msk) == 0U)
    {
        /* Configure period value */
        TCC3_REGS->TCC_PERBUF = period;
        status = true;
    }
    return status;
}

/* Read period value */
uint32_t TCC3_Compare32bitPeriodGet( void )
{
    /* Get period value */
    return TCC3_REGS->TCC_PER;
}

/* Configure duty cycle value */
bool TCC3_Compare32bitMatchSet(TCC3_CHANNEL_NUM channel, uint32_t compareValue )
{
    bool status = false;
    if ((TCC3_REGS->TCC_STATUS & (1UL << (TCC_STATUS_CCBUFV0_Pos + (uint32_t)channel))) == 0U)
    {
        /* Set new compare value for compare channel */
        TCC3_REGS->TCC_CCBUF[channel] = compareValue;
        status = true;
    }
    return status;
}


uint32_t TCC3_CompareStatusGet( void )
{
    uint32_t compare_status;
    compare_status = ((TCC3_REGS->TCC_INTFLAG));
    TCC3_REGS->TCC_INTFLAG = compare_status;
    return compare_status;
}
