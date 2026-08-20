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

//DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2019 Microchip Technology Inc. and its subsidiaries.
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
//DOM-IGNORE-END

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

// *****************************************************************************
// *****************************************************************************
// Section: Type Definitions
// *****************************************************************************
// *****************************************************************************

#define PAGE_SIZE                  (256U)
#define SECTOR_SIZE                (4096U)

/* Erase, Write and Read 80KBytes of memory */
#define SECTORS_TO_EWR             (20U)

#define BUFFER_SIZE                (SECTOR_SIZE * SECTORS_TO_EWR)

#define MEM_START_ADDRESS          (0x0U)

#define SST26VF032B_JEDEC_ID       (0xBF4226BFUL)

#define BUFF_DESC_NUMBER           (BUFFER_SIZE / PAGE_SIZE)

#define CMD_DESC_NUMBER             5

#define DUMMY_BYTE                  0x0
    
// *****************************************************************************
/* Application states

  Summary:
    Application states enumeration

  Description:
    This enumeration defines the valid application states.  These states
    determine the behavior of the application at various times.
*/

typedef enum
{
    /* The app mounts the disk */
    APP_STATE_INIT = 0,

    /* Reset Flash*/
    APP_STATE_RESET_FLASH,

    /* Enable Quad IO Mode*/
    APP_STATE_ENABLE_QUAD_IO,

    /* Unlock Flash*/
    APP_STATE_UNLOCK_FLASH,

    /* Read JEDEC ID*/
    APP_STATE_READ_JEDEC_ID,

    /* Erase Flash */
    APP_STATE_ERASE_FLASH,

    /* Erase Wait */
    APP_STATE_ERASE_WAIT,

    /* Write to Memory */
    APP_STATE_WRITE_MEMORY,

    /* Write Wait */
    APP_STATE_WRITE_WAIT,

    /* Read From Memory */
    APP_STATE_READ_MEMORY,

    /* Read Wait */
    APP_STATE_READ_WAIT,

    /* Verify Data Read */
    APP_STATE_VERIFY_DATA,

    /* The app idles */
    APP_STATE_SUCCESS,

    /* An app error has occurred */
    APP_STATE_ERROR

} APP_STATES;

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    Application strings and buffers are be defined outside this structure.
 */

typedef struct
{
    /* Application's current state */
    APP_STATES state;

    /* Application transfer status */
    volatile bool xfer_done;

    /* Jedec-ID*/
    uint32_t jedec_id;

    /* Read Buffer */
    CACHE_ALIGN uint8_t readBuffer[BUFFER_SIZE] ;

    /* Write Buffer*/
    CACHE_ALIGN uint8_t writeBuffer[BUFFER_SIZE] ;
} APP_DATA;

/* SST26 Command set

  Summary:
    Enumeration listing the SST26VF commands.

  Description:
    This enumeration defines the commands used to interact with the SST26VF
    series of devices.

  Remarks:
    None
*/

typedef enum
{
    /* Reset enable command. */
    SST26_CMD_FLASH_RESET_ENABLE = 0x66,

    /* Command to reset the flash. */
    SST26_CMD_FLASH_RESET        = 0x99,

    /* Command to Enable QUAD IO */
    SST26_CMD_ENABLE_QUAD_IO     = 0x38,

    /* Command to Reset QUAD IO */
    SST26_CMD_RESET_QUAD_IO      = 0xFF,

    /* Command to read JEDEC-ID of the flash device. */
    SST26_CMD_JEDEC_ID_READ      = 0x9F,

    /* QUAD Command to read JEDEC-ID of the flash device. */
    SST26_CMD_QUAD_JEDEC_ID_READ = 0xAF,

    /* Command to perfrom High Speed Read */
    SST26_CMD_HIGH_SPEED_READ    = 0x0B,

    /* Write enable command. */
    SST26_CMD_WRITE_ENABLE       = 0x06,

    /* Page Program command. */
    SST26_CMD_PAGE_PROGRAM       = 0x02,

    /* Command to read the Flash status register. */
    SST26_CMD_READ_STATUS_REG    = 0x05,

    /* Command to perform sector erase */
    SST26_CMD_SECTOR_ERASE       = 0x20,

    /* Command to perform Bulk erase */
    SST26_CMD_BULK_ERASE_64K     = 0xD8,

    /* Command to perform Chip erase */
    SST26_CMD_CHIP_ERASE         = 0xC7,

    /* Command to unlock the flash device. */
    SST26_CMD_UNPROTECT_GLOBAL   = 0x98

} SST26_CMD;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Routines
// *****************************************************************************
// *****************************************************************************
/* These routines are called by drivers when certain events occur.
*/

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Summary:
     Application initialization routine.

  Description:
    This function initializes the application.  It places the
    application in its initial state and prepares it to run so that its
    APP_Tasks function can be called.

  Parameters:
    None.

  Returns:
    None.

  Example:
    <code>
    APP_Initialize();
    </code>

  Remarks:
    This routine must be called from the main function.
*/

void APP_Initialize ( void );


/*******************************************************************************
  Function:
    void APP_Tasks ( void )

  Summary:
    Application tasks function

  Description:
    This routine is the Application's tasks function.  It
    defines the application's state machine and core logic.

  Precondition:
    The system and application initialization ("SYS_Initialize") should be
    called before calling this.

  Parameters:
    None.

  Returns:
    None.

  Example:
    <code>
    APP_Tasks();
    </code>

  Remarks:
    This routine must be called from SYS_Tasks() routine.
 */

void APP_Tasks( void );

APP_DATA CACHE_ALIGN appData;

#define LED_ON()            LED_Clear()
#define LED_OFF()           LED_Set()

#define MIN_DMA_BUFFER_LEN      (CACHE_LINE_SIZE)

static uint32_t write_index = 0;
static uint32_t sector_index = 0;

sqi_dma_desc_t CACHE_ALIGN sqiCmdDesc[CMD_DESC_NUMBER];
sqi_dma_desc_t CACHE_ALIGN sqiBufDesc[BUFF_DESC_NUMBER];

uint8_t CACHE_ALIGN sqi_cmd_jedec[MIN_DMA_BUFFER_LEN];
uint8_t CACHE_ALIGN sqi_cmd_eqio[MIN_DMA_BUFFER_LEN];
uint8_t CACHE_ALIGN sqi_cmd_rsten[MIN_DMA_BUFFER_LEN];
uint8_t CACHE_ALIGN sqi_cmd_rst[MIN_DMA_BUFFER_LEN];
uint8_t CACHE_ALIGN sqi_cmd_wren[MIN_DMA_BUFFER_LEN];
uint8_t CACHE_ALIGN sqi_cmd_rdsr[MIN_DMA_BUFFER_LEN];
uint8_t CACHE_ALIGN sqi_cmd_ce[MIN_DMA_BUFFER_LEN];
uint8_t CACHE_ALIGN sqi_cmd_se[MIN_DMA_BUFFER_LEN];
uint8_t CACHE_ALIGN sqi_cmd_be[MIN_DMA_BUFFER_LEN];
uint8_t CACHE_ALIGN sqi_cmd_pp[MIN_DMA_BUFFER_LEN];
uint8_t CACHE_ALIGN sqi_cmd_hsr[MIN_DMA_BUFFER_LEN];
uint8_t CACHE_ALIGN sqi_cmd_ULBPR[MIN_DMA_BUFFER_LEN];
uint8_t CACHE_ALIGN sqi_cmd_dummy[MIN_DMA_BUFFER_LEN];

static void APP_EventHandler(uintptr_t context)
{
    appData.xfer_done = true;
}

void APP_ResetFlash(void)
{
    appData.xfer_done = false;

    sqiCmdDesc[0].bd_ctrl       = ( SQI_BDCTRL_BD_BUFLEN(1) | SQI_BDCTRL_PKT_INT_EN_Msk |
                                    SQI_BDCTRL_LIFM_Msk | SQI_BDCTRL_LAST_BD_Msk |
                                    SQI_BDCTRL_SPI_DEV_SEL10(0x01) | SQI_BDCTRL_CS_ASSERT_Msk |
                                    SQI_BDCTRL_DESC_EN_Msk);

    sqiCmdDesc[0].bd_bufaddr    = (uint32_t *)&sqi_cmd_rsten;
    sqiCmdDesc[0].bd_stat       = 0;
    sqiCmdDesc[0].bd_nxtptr     = 0x00000000;

    DCACHE_CLEAN_BY_ADDR((uint32_t *)&sqiCmdDesc[0], sizeof(sqi_dma_desc_t));
    
    SQI_DMATransfer((sqi_dma_desc_t *)&sqiCmdDesc[0]);

    while(appData.xfer_done == false);

    appData.xfer_done = false;

    sqiCmdDesc[1].bd_ctrl       = ( SQI_BDCTRL_BD_BUFLEN(1) | SQI_BDCTRL_PKT_INT_EN_Msk |
                                    SQI_BDCTRL_LIFM_Msk | SQI_BDCTRL_LAST_BD_Msk |
                                    SQI_BDCTRL_SPI_DEV_SEL10(0x01) | SQI_BDCTRL_CS_ASSERT_Msk |
                                    SQI_BDCTRL_DESC_EN_Msk);

    sqiCmdDesc[1].bd_bufaddr    = (uint32_t *)&sqi_cmd_rst;
    sqiCmdDesc[1].bd_stat       = 0;
    sqiCmdDesc[1].bd_nxtptr     = 0x00000000;

    DCACHE_CLEAN_BY_ADDR((uint32_t *)&sqiCmdDesc[1], sizeof(sqi_dma_desc_t));
    
    SQI_DMATransfer((sqi_dma_desc_t *)&sqiCmdDesc[1]);

    while(appData.xfer_done == false);
}

void APP_EnableQuadIO(void)
{
    appData.xfer_done = false;

    sqiCmdDesc[0].bd_ctrl       = ( SQI_BDCTRL_BD_BUFLEN(1) | SQI_BDCTRL_PKT_INT_EN_Msk |
                                    SQI_BDCTRL_LIFM_Msk | SQI_BDCTRL_LAST_BD_Msk |
                                    SQI_BDCTRL_SPI_DEV_SEL10(0x01) | SQI_BDCTRL_CS_ASSERT_Msk |
                                    SQI_BDCTRL_DESC_EN_Msk);

    sqiCmdDesc[0].bd_bufaddr    = (uint32_t *)&sqi_cmd_eqio;
    sqiCmdDesc[0].bd_stat       = 0;
    sqiCmdDesc[0].bd_nxtptr     = 0x00000000;

    DCACHE_CLEAN_BY_ADDR((uint32_t *)&sqiCmdDesc[0], sizeof(sqi_dma_desc_t));
    
    SQI_DMATransfer((sqi_dma_desc_t *)&sqiCmdDesc[0]);

    while(appData.xfer_done == false);
}

void APP_WriteEnable(void)
{
    sqiCmdDesc[0].bd_ctrl       = ( SQI_BDCTRL_BD_BUFLEN(1) | SQI_BDCTRL_MODE(0x02) |
                                    SQI_BDCTRL_SPI_DEV_SEL10(0x01) | SQI_BDCTRL_CS_ASSERT_Msk |
                                    SQI_BDCTRL_DESC_EN_Msk);

    sqiCmdDesc[0].bd_bufaddr    = (uint32_t *)&sqi_cmd_wren;
    sqiCmdDesc[0].bd_stat       = 0;
    sqiCmdDesc[0].bd_nxtptr     = (sqi_dma_desc_t *)&sqiCmdDesc[1];
}

void APP_UnlockFlash(void)
{
    appData.xfer_done = false;

    APP_WriteEnable();

    sqiCmdDesc[1].bd_ctrl       = ( SQI_BDCTRL_BD_BUFLEN(1) | SQI_BDCTRL_PKT_INT_EN_Msk |
                                    SQI_BDCTRL_LIFM_Msk | SQI_BDCTRL_LAST_BD_Msk |
                                    SQI_BDCTRL_MODE(0x02) | SQI_BDCTRL_SPI_DEV_SEL10(0x01) |
                                    SQI_BDCTRL_CS_ASSERT_Msk | SQI_BDCTRL_DESC_EN_Msk);

    sqiCmdDesc[1].bd_bufaddr    = (uint32_t *)&sqi_cmd_ULBPR;
    sqiCmdDesc[1].bd_stat       = 0;
    sqiCmdDesc[1].bd_nxtptr     = 0x00000000;

    DCACHE_CLEAN_BY_ADDR((uint32_t *)&sqiCmdDesc[0], (2*sizeof(sqi_dma_desc_t)));
    
    SQI_DMATransfer((sqi_dma_desc_t *)&sqiCmdDesc[0]);

    while(appData.xfer_done == false);
}

void  APP_ReadJedecId( uint32_t *jedec_id)
{
    appData.xfer_done = false;

    sqi_cmd_jedec[1] = DUMMY_BYTE;

    sqiCmdDesc[0].bd_ctrl       = ( SQI_BDCTRL_BD_BUFLEN(2) | SQI_BDCTRL_MODE(0x02) |
                                    SQI_BDCTRL_SPI_DEV_SEL10(0x01) | SQI_BDCTRL_DESC_EN_Msk);

    sqiCmdDesc[0].bd_bufaddr    = (uint32_t *)&sqi_cmd_jedec;
    sqiCmdDesc[0].bd_stat       = 0;
    sqiCmdDesc[0].bd_nxtptr     = (sqi_dma_desc_t *)&sqiBufDesc[0];

    sqiBufDesc[0].bd_ctrl       = ( SQI_BDCTRL_BD_BUFLEN(4) | SQI_BDCTRL_PKT_INT_EN_Msk |
                                    SQI_BDCTRL_LIFM_Msk | SQI_BDCTRL_LAST_BD_Msk |
                                    SQI_BDCTRL_MODE(0x02) | SQI_BDCTRL_DIR_Msk |
                                    SQI_BDCTRL_SPI_DEV_SEL10(0x01) | SQI_BDCTRL_CS_ASSERT_Msk |
                                    SQI_BDCTRL_DESC_EN_Msk);

    sqiBufDesc[0].bd_bufaddr    = (uint32_t *)jedec_id;
    sqiBufDesc[0].bd_stat       = 0;
    sqiBufDesc[0].bd_nxtptr     = 0x00000000;
    
    DCACHE_CLEAN_BY_ADDR((uint32_t *)sqi_cmd_jedec, sizeof(sqi_cmd_jedec));
    DCACHE_CLEAN_BY_ADDR((uint32_t *)&sqiCmdDesc[0], sizeof(sqi_dma_desc_t));
    DCACHE_CLEAN_BY_ADDR((uint32_t *)&sqiBufDesc[0], sizeof(sqi_dma_desc_t));

    // Initialize the root buffer descriptor
    SQI_DMATransfer((sqi_dma_desc_t *)&sqiCmdDesc[0]);

    while(appData.xfer_done == false);
}

void  APP_ReadStatus( void *rx_data, uint32_t rx_data_length )
{
    appData.xfer_done = false;

    sqi_cmd_rdsr[1] = DUMMY_BYTE;

    sqiCmdDesc[0].bd_ctrl       = ( SQI_BDCTRL_BD_BUFLEN(2) | SQI_BDCTRL_MODE(0x02) |
                                    SQI_BDCTRL_SPI_DEV_SEL10(0x01) | SQI_BDCTRL_DESC_EN_Msk);

    sqiCmdDesc[0].bd_bufaddr    = (uint32_t *)&sqi_cmd_rdsr;
    sqiCmdDesc[0].bd_stat       = 0;
    sqiCmdDesc[0].bd_nxtptr     = (sqi_dma_desc_t *)&sqiBufDesc[0];

    sqiBufDesc[0].bd_ctrl       = ( SQI_BDCTRL_BD_BUFLEN(rx_data_length) | SQI_BDCTRL_PKT_INT_EN_Msk |
                                    SQI_BDCTRL_LIFM_Msk | SQI_BDCTRL_LAST_BD_Msk |
                                    SQI_BDCTRL_MODE(0x02) | SQI_BDCTRL_DIR_Msk |
                                    SQI_BDCTRL_SPI_DEV_SEL10(0x01) | SQI_BDCTRL_CS_ASSERT_Msk |
                                    SQI_BDCTRL_DESC_EN_Msk);

    sqiBufDesc[0].bd_bufaddr    = (uint32_t *)rx_data;
    sqiBufDesc[0].bd_stat       = 0;
    sqiBufDesc[0].bd_nxtptr     = 0x00000000;
    
    DCACHE_CLEAN_BY_ADDR((uint32_t *)sqi_cmd_rdsr, sizeof(sqi_cmd_rdsr));
    DCACHE_CLEAN_BY_ADDR((uint32_t *)&sqiCmdDesc[0], sizeof(sqi_dma_desc_t));
    DCACHE_CLEAN_BY_ADDR((uint32_t *)&sqiBufDesc[0], sizeof(sqi_dma_desc_t));

    // Initialize the root buffer descriptor
    SQI_DMATransfer((sqi_dma_desc_t *)&sqiCmdDesc[0]);

    while(appData.xfer_done == false);
}

void APP_Read( void *rx_data, uint32_t rx_data_length, uint32_t address )
{
    uint32_t pendingBytes   = rx_data_length;
    uint8_t *readBuffer     = (uint8_t *)rx_data;
    uint32_t numBytes       = 0;
    uint32_t i              = 0;

    appData.xfer_done = false;

    // Construct parameters to issue read command
    sqi_cmd_hsr[1] = (0xff & (address>>16));
    sqi_cmd_hsr[2] = (0xff & (address>>8));
    sqi_cmd_hsr[3] = (0xff & (address>>0));    
    sqi_cmd_hsr[4] = 0;

    sqiCmdDesc[0].bd_ctrl       = ( SQI_BDCTRL_BD_BUFLEN(5) | SQI_BDCTRL_MODE(0x02) |
                                    SQI_BDCTRL_SPI_DEV_SEL10(0x01) | SQI_BDCTRL_DESC_EN_Msk);

    sqiCmdDesc[0].bd_bufaddr    = (uint32_t *)&sqi_cmd_hsr;
    sqiCmdDesc[0].bd_stat       = 0;
    sqiCmdDesc[0].bd_nxtptr     = (sqi_dma_desc_t *)&sqiCmdDesc[1];  
    
    DCACHE_CLEAN_BY_ADDR((uint32_t *)&sqiCmdDesc[0], sizeof(sqiCmdDesc[0]));

    sqiCmdDesc[1].bd_ctrl       = ( SQI_BDCTRL_BD_BUFLEN(2) | SQI_BDCTRL_MODE(0x02) |
                                    SQI_BDCTRL_SPI_DEV_SEL10(0x01) | SQI_BDCTRL_DESC_EN_Msk);

    sqiCmdDesc[1].bd_bufaddr    = (uint32_t *)&sqi_cmd_dummy;
    sqiCmdDesc[1].bd_stat       = 0;
    sqiCmdDesc[1].bd_nxtptr     = (sqi_dma_desc_t *)&sqiBufDesc[0]; 
    
    DCACHE_CLEAN_BY_ADDR((uint32_t *)sqi_cmd_hsr, sizeof(sqi_cmd_hsr));
    DCACHE_CLEAN_BY_ADDR((uint32_t *)&sqiCmdDesc[0], 2 * sizeof(sqi_dma_desc_t));

    for (i = 0; (i < BUFF_DESC_NUMBER) && (pendingBytes > 0); i++)
    {
        if (pendingBytes > PAGE_SIZE)
        {
            numBytes = PAGE_SIZE;
        }
        else
        {
            numBytes = pendingBytes;
        }

        sqiBufDesc[i].bd_ctrl       = ( SQI_BDCTRL_BD_BUFLEN(numBytes) | SQI_BDCTRL_PKT_INT_EN_Msk |
                                        SQI_BDCTRL_MODE(0x02) | SQI_BDCTRL_DIR_Msk |
                                        SQI_BDCTRL_SPI_DEV_SEL10(0x01) | SQI_BDCTRL_DESC_EN_Msk);

        sqiBufDesc[i].bd_bufaddr    = (uint32_t *)readBuffer;
        sqiBufDesc[i].bd_stat       = 0;
        sqiBufDesc[i].bd_nxtptr     = (sqi_dma_desc_t *)&sqiBufDesc[i+1];

        pendingBytes    -= numBytes;
        readBuffer      += numBytes;
    }

    /* The last descriptor must indicate the end of the descriptor list */
    sqiBufDesc[i-1].bd_ctrl         |= (SQI_BDCTRL_LIFM_Msk | SQI_BDCTRL_LAST_BD_Msk |
                                        SQI_BDCTRL_CS_ASSERT_Msk);

    sqiBufDesc[i-1].bd_nxtptr       = 0x00000000;
    
    DCACHE_CLEAN_BY_ADDR((uint32_t *)&sqiBufDesc[0], (i * sizeof(sqi_dma_desc_t)));

    // Initialize the root buffer descriptor
    SQI_DMATransfer((sqi_dma_desc_t *)&sqiCmdDesc[0]);
}

void APP_PageWrite( void *tx_data, uint32_t address )
{
    appData.xfer_done = false;

    APP_WriteEnable();

    // Construct parameters to issue page program command
    sqi_cmd_pp[1] = (0xff & (address>>16));
    sqi_cmd_pp[2] = (0xff & (address>>8));
    sqi_cmd_pp[3] = (0xff & (address>>0));

    sqiCmdDesc[1].bd_ctrl       = ( SQI_BDCTRL_BD_BUFLEN(4) | SQI_BDCTRL_MODE(0x02) |
                                    SQI_BDCTRL_SPI_DEV_SEL10(0x01) | SQI_BDCTRL_DESC_EN_Msk);

    sqiCmdDesc[1].bd_bufaddr    = (uint32_t *)(&sqi_cmd_pp);
    sqiCmdDesc[1].bd_stat       = 0;
    sqiCmdDesc[1].bd_nxtptr     = (sqi_dma_desc_t *)(&sqiBufDesc[0]);

    sqiBufDesc[0].bd_ctrl       = ( SQI_BDCTRL_BD_BUFLEN(PAGE_SIZE) | SQI_BDCTRL_PKT_INT_EN_Msk |
                                    SQI_BDCTRL_LIFM_Msk | SQI_BDCTRL_LAST_BD_Msk |
                                    SQI_BDCTRL_MODE(0x02) | SQI_BDCTRL_STAT_CHECK_Msk |
                                    SQI_BDCTRL_SPI_DEV_SEL10(0x01) | SQI_BDCTRL_CS_ASSERT_Msk |
                                    SQI_BDCTRL_DESC_EN_Msk);

    sqiBufDesc[0].bd_bufaddr    = (uint32_t *)(tx_data);
    sqiBufDesc[0].bd_stat       = 0;
    sqiBufDesc[0].bd_nxtptr     = 0x00000000;
    
    DCACHE_CLEAN_BY_ADDR((uint32_t *)sqi_cmd_pp, sizeof(sqi_cmd_pp));
    DCACHE_CLEAN_BY_ADDR((uint32_t *)&sqiCmdDesc[0], (2 * sizeof(sqi_dma_desc_t)));
    DCACHE_CLEAN_BY_ADDR((uint32_t *)&sqiBufDesc[0], sizeof(sqi_dma_desc_t));

    // Initialize the root buffer descriptor
    SQI_DMATransfer((sqi_dma_desc_t *)(&sqiCmdDesc[0]));
}

void APP_Erase( uint8_t *instruction, uint32_t length )
{
    appData.xfer_done = false;

    APP_WriteEnable();

    sqiCmdDesc[1].bd_ctrl       = ( SQI_BDCTRL_BD_BUFLEN(length) | SQI_BDCTRL_PKT_INT_EN_Msk |
                                    SQI_BDCTRL_LIFM_Msk | SQI_BDCTRL_LAST_BD_Msk |
                                    SQI_BDCTRL_MODE(0x02) | SQI_BDCTRL_STAT_CHECK_Msk |
                                    SQI_BDCTRL_SPI_DEV_SEL10(0x01) | SQI_BDCTRL_CS_ASSERT_Msk |
                                    SQI_BDCTRL_DESC_EN_Msk);

    sqiCmdDesc[1].bd_bufaddr    = (uint32_t *)(instruction);
    sqiCmdDesc[1].bd_stat       = 0;
    sqiCmdDesc[1].bd_nxtptr     = 0x00000000;
    
    DCACHE_CLEAN_BY_ADDR((uint32_t *)&sqiCmdDesc[0], (2 * sizeof(sqi_dma_desc_t)));

    SQI_DMATransfer((sqi_dma_desc_t *)(&sqiCmdDesc[0]));
}

void APP_SectorErase( uint32_t address )
{
    sqi_cmd_se[1] = (0xff & (address>>16));
    sqi_cmd_se[2] = (0xff & (address>>8));
    sqi_cmd_se[3] = (0xff & (address>>0));

    DCACHE_CLEAN_BY_ADDR((uint32_t *)sqi_cmd_se, sizeof(sqi_cmd_se));
    APP_Erase(&sqi_cmd_se[0], 4);
}

void APP_BulkErase( uint32_t address )
{
    sqi_cmd_be[1] = (0xff & (address>>16));
    sqi_cmd_be[2] = (0xff & (address>>8));
    sqi_cmd_be[3] = (0xff & (address>>0));

    DCACHE_CLEAN_BY_ADDR((uint32_t *)sqi_cmd_be, sizeof(sqi_cmd_be));
    APP_Erase(&sqi_cmd_be[0], 4);
}

void APP_ChipErase( void )
{
    APP_Erase(sqi_cmd_ce, 1);
}

void APP_Initialize(void)
{
    uint32_t i = 0;

    /* Place the App state machine in its initial state. */
    appData.state = APP_STATE_INIT;

    for (i = 0; i < BUFFER_SIZE; i++)
    {
        appData.writeBuffer[i] = i;
    }

    sqi_cmd_jedec[0]    = SST26_CMD_QUAD_JEDEC_ID_READ;
    sqi_cmd_eqio[0]        = SST26_CMD_ENABLE_QUAD_IO;
    sqi_cmd_rsten[0]       = SST26_CMD_FLASH_RESET_ENABLE;
    sqi_cmd_rst[0]         = SST26_CMD_FLASH_RESET;
    sqi_cmd_wren[0]        = SST26_CMD_WRITE_ENABLE;
    sqi_cmd_rdsr[0]     = SST26_CMD_READ_STATUS_REG;
    sqi_cmd_ce[0]          = SST26_CMD_CHIP_ERASE;
    sqi_cmd_be[0]       = SST26_CMD_BULK_ERASE_64K;
    sqi_cmd_se[0]       = SST26_CMD_SECTOR_ERASE;
    sqi_cmd_pp[0]       = SST26_CMD_PAGE_PROGRAM;
    sqi_cmd_hsr[0]      = SST26_CMD_HIGH_SPEED_READ;
    sqi_cmd_ULBPR[0]       = SST26_CMD_UNPROTECT_GLOBAL;
    
    DCACHE_CLEAN_BY_ADDR((uint32_t *)sqi_cmd_jedec, sizeof(sqi_cmd_jedec));
    DCACHE_CLEAN_BY_ADDR((uint32_t *)sqi_cmd_eqio, sizeof(sqi_cmd_eqio));
    DCACHE_CLEAN_BY_ADDR((uint32_t *)sqi_cmd_rsten, sizeof(sqi_cmd_rsten));
    DCACHE_CLEAN_BY_ADDR((uint32_t *)sqi_cmd_rst, sizeof(sqi_cmd_rst));
    DCACHE_CLEAN_BY_ADDR((uint32_t *)sqi_cmd_wren, sizeof(sqi_cmd_wren));
    DCACHE_CLEAN_BY_ADDR((uint32_t *)sqi_cmd_rdsr, sizeof(sqi_cmd_rdsr));
    DCACHE_CLEAN_BY_ADDR((uint32_t *)sqi_cmd_ce, sizeof(sqi_cmd_ce));
    DCACHE_CLEAN_BY_ADDR((uint32_t *)sqi_cmd_be, sizeof(sqi_cmd_be));
    DCACHE_CLEAN_BY_ADDR((uint32_t *)sqi_cmd_se, sizeof(sqi_cmd_se));
    DCACHE_CLEAN_BY_ADDR((uint32_t *)sqi_cmd_pp, sizeof(sqi_cmd_pp));
    DCACHE_CLEAN_BY_ADDR((uint32_t *)sqi_cmd_hsr, sizeof(sqi_cmd_hsr));
    DCACHE_CLEAN_BY_ADDR((uint32_t *)sqi_cmd_ULBPR, sizeof(sqi_cmd_ULBPR));

    SQI_RegisterCallback(APP_EventHandler, (uintptr_t)NULL);
    
    appData.state = APP_STATE_INIT;

    
}

/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Tasks ( void )
{
    /* Check the application's current state. */
    switch ( appData.state )
    {
        case APP_STATE_INIT:
        {
            /* Wait Until Switch pressed to avoid Unnecessary operations on
             * SQI Flash after reset.
             */
            if (SWITCH_Get() == 0)
            {
                appData.state = APP_STATE_RESET_FLASH;
            }
            break;
        }

        case APP_STATE_RESET_FLASH:
        {
            APP_ResetFlash();
            appData.state = APP_STATE_ENABLE_QUAD_IO;
            break;
        }

        case APP_STATE_ENABLE_QUAD_IO:
        {
            APP_EnableQuadIO();
            appData.state = APP_STATE_UNLOCK_FLASH;
            break;
        }

        case APP_STATE_UNLOCK_FLASH:
        {
            APP_UnlockFlash();
            appData.state = APP_STATE_READ_JEDEC_ID;
            break;
        }

        case APP_STATE_READ_JEDEC_ID:
        {
            DCACHE_INVALIDATE_BY_ADDR((uint32_t *)appData.readBuffer, 4);
            
            APP_ReadJedecId((uint32_t *)appData.readBuffer);
            
            appData.jedec_id = *((uint32_t*)appData.readBuffer);

            if (appData.jedec_id != SST26VF032B_JEDEC_ID)
            {
                appData.state = APP_STATE_ERROR;
                break;
            }

            appData.state = APP_STATE_ERASE_FLASH;

            break;
        }

        case APP_STATE_ERASE_FLASH:
        {
            APP_SectorErase((MEM_START_ADDRESS + sector_index));

            appData.state = APP_STATE_ERASE_WAIT;

            break;
        }

        case APP_STATE_ERASE_WAIT:
        {
            if (appData.xfer_done == true)
            {
                sector_index += SECTOR_SIZE;

                if (sector_index < BUFFER_SIZE)
                {
                    appData.state = APP_STATE_ERASE_FLASH;
                }
                else
                {
                    appData.state = APP_STATE_WRITE_MEMORY;
                }
            }
            break;
        }

        case APP_STATE_WRITE_MEMORY:
        {
            DCACHE_CLEAN_BY_ADDR((uint32_t *)&appData.writeBuffer[write_index], PAGE_SIZE);
            APP_PageWrite((uint32_t *)&appData.writeBuffer[write_index], (MEM_START_ADDRESS + write_index));

            appData.state = APP_STATE_WRITE_WAIT;

            break;
        }

        case APP_STATE_WRITE_WAIT:
        {
            if (appData.xfer_done == true)
            {
                write_index += PAGE_SIZE;
                if (write_index < BUFFER_SIZE)
                {
                    appData.state = APP_STATE_WRITE_MEMORY;
                }
                else
                {
                    appData.state = APP_STATE_READ_MEMORY;
                }
            }
            break;
        }

        case APP_STATE_READ_MEMORY:
        {
            DCACHE_INVALIDATE_BY_ADDR((uint32_t *)appData.readBuffer, BUFFER_SIZE);
            APP_Read((uint32_t *)&appData.readBuffer[0], BUFFER_SIZE, MEM_START_ADDRESS);

            appData.state = APP_STATE_READ_WAIT;

            break;
        }

        case APP_STATE_READ_WAIT:
        {
            if (appData.xfer_done == true)
            {
                appData.state = APP_STATE_VERIFY_DATA;
            }
            break;
        }

        case APP_STATE_VERIFY_DATA:
        {
            if (!memcmp(appData.writeBuffer, appData.readBuffer, BUFFER_SIZE))
            {
                appData.state = APP_STATE_SUCCESS;
            }
            else
            {
                appData.state = APP_STATE_ERROR;
            }

            break;
        }

        case APP_STATE_SUCCESS:
        {
            LED_ON();
            break;
        }

        case APP_STATE_ERROR:
        default:
        {
            break;
        }
    }
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

    APP_Initialize();

    while ( true )
    {
        APP_Tasks();
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

