#include "uniloader_demo.h"
#include <stdint.h>
#include <stdbool.h>

#include "BOOT/bootloader.h"
#include "COM/boot_communication_Uart.h"
#include "definitions.h"                // SYS function prototypes

#define APP_START_ADDRESS   0x8000
#define APP_TIMEOUT_DEFAULT_REPEAT  (200U)

typedef enum
{
    PROP_GARD = BOOT_GUARD_INDEX,
    PROP_MAX
} PropertyType_t;


void App_TimerCallback(TC_TIMER_STATUS status, uintptr_t context);

static bool SetProperty(PropertyIndex_t index, Property_t value);
static Property_t GetProperty(PropertyIndex_t index);
static void AppCallback(uint8_t);
static void ExecuteAppCallback(void);
static uint8_t GetDeviceInfo(MemoryData_t** data);
static bool ValidateMemoryAccess(MemoryType_t memoryType, MemoryAccess_t memoryAccess, MemoryAddress_t address);

const ComUartDma_Cofig_t UartDamConfig = {
    .InitUart = true,
    .UartConfig = {
        .Channel = 0x04U,
        .ClockSource = GCLK_CHANNEL_0,
        .ClockFreq = 48000000,
        .Baudrate = 2000000,            
        .Databits = UART_DATABITS_8,
        .Parity = UART_PARITY_NONE,
        .Stopbits = UART_STOPBITS_1,
        .RxEnabled = UART_RX_ENABLED,
        .TxEnabled = UART_TX_ENABLED,
        .RxPad = UART_RX_PAD_3,
        .TxPad = UART_TX_PAD_2,    
    }
};

static const BootConfig_t config = {
    .AppAddress = APP_START_ADDRESS,
    .AppStartTimeout = APP_TIMEOUT_DEFAULT_REPEAT,
    .AppCallback = AppCallback,
    .ExecuteAppCallback = ExecuteAppCallback,
    .SetProperty = SetProperty,
    .GetProperty = GetProperty,
    .Decode = NULL,
    .GetDeviceInfo = GetDeviceInfo,
    .ValidateMemoryAccess = ValidateMemoryAccess,
    .CheckTimerElapsed = NULL,
    .ComConfigPtr = (void*)&UartDamConfig
};


static Property_t PropertyGuardReloadValue = APP_TIMEOUT_DEFAULT_REPEAT;
static Property_t Properties[PROP_MAX] = {0};


__attribute__((noreturn)) void uniloader_demo(void)
{
    SetProperty(PROP_GARD, APP_TIMEOUT_DEFAULT_REPEAT);

    TC0_TimerCallbackRegister(App_TimerCallback, 0);
    TC0_TimerStart();
    
    Boot_App(&config);
}

void App_TimerCallback(TC_TIMER_STATUS status, uintptr_t context)
{
    Boot_1msCallback();
}

static bool SetProperty(const PropertyIndex_t index, const Property_t value)
{
    if (index >= PROP_MAX)
    {
        return false;
    }
    Properties[index] = value;
    
    if (PROP_GARD == index)
    {
        PropertyGuardReloadValue = value;
    }
    
    return true;
}

static Property_t GetProperty(const PropertyIndex_t index)
{
    if (index >= PROP_MAX)
    {
        return 0x00U;
    }
    return Properties[index];
}

static void AppCallback(uint8_t packetReceived)
{
    static int counter = 0;

    counter++;
    if (counter >= 10)
    {
        LED_Toggle();
        counter = 0;
    } else
        return;

    if (Properties[PROP_GARD] != 0xFF)
    {
        if (Properties[PROP_GARD] > 0)
        {
            Properties[PROP_GARD]--;
        }
        
        if (packetReceived)
        {
            Properties[PROP_GARD] = PropertyGuardReloadValue;
        }
    }
    
}

static void ExecuteAppCallback(void)
{
	uint32_t app_start_address;

    if (Properties[PROP_GARD] == 0U)
    {
        app_start_address = *(uint32_t*)(APP_START_ADDRESS + 4);

        if (app_start_address == 0xFFFFFFFF) {
            return;
        }

        __set_MSP(*(uint32_t*)APP_START_ADDRESS);
        SCB->VTOR = ((uint32_t)APP_START_ADDRESS & SCB_VTOR_TBLOFF_Msk);
        asm("bx %0"::"r"(app_start_address));
    } 
}

static uint8_t GetDeviceInfo(MemoryData_t** data)
{
    *data = (MemoryData_t*)&DeviceInfo;
    return sizeof(DeviceInfo_t);
}

static bool ValidateMemoryAccess(MemoryType_t memoryType, MemoryAccess_t memoryAccess, MemoryAddress_t address)
{
    if (BOOT_MEMAC_READ == memoryAccess)
    {
        return false;
    }

    if (BOOT_MEMAC_WRITE == memoryAccess || BOOT_MEMAC_DELETE == memoryAccess)
    {
        if (address < APP_START_ADDRESS)
        {
            return false;
        }
    } 
    else
    {
        return false;
    }

    return true;
}

