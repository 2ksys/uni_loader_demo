#ifndef BOOTLOADER_H
#define	BOOTLOADER_H

#include <stdint.h>
#include <stdbool.h>

#ifdef	__cplusplus
extern "C" {
#endif /* __cplusplus */

    typedef enum
    {
        BOOT_MEM_RAM,
        BOOT_MEM_FLASH,
        BOOT_MEM_EXTERNAL_FLASH,
        BOOT_MEM_EEPROM,
        BOOT_MEM_EXTERNAL_EEPROM,
        BOOT_MEM_PROPERTIES
    } MemoryType_t;

    typedef enum
    {
        BOOT_MEMAC_READ,
        BOOT_MEMAC_WRITE,
        BOOT_MEMAC_DELETE
    } MemoryAccess_t;


	/** Defines an alias representing the Guard. Guard se pouzije k omezeni spusteni aplikace.
     * Pouze MSB ma platnost. Jestli je 1 aplikace se nespust�. Hodnota Guard se p�ed�v� jako 
     * sou��st statusu do nadrazene aplikace.
     */
    typedef uint8_t Property_t;
    typedef uint8_t PropertyIndex_t;
    typedef uint8_t MemoryData_t;
    typedef uint8_t MemoryLength_t;
    typedef uint32_t MemoryAddress_t;
    typedef MemoryAddress_t DecodeIndex_t;
	 
    typedef void (*AppCallback_t)(uint8_t);
    typedef void (*ExecuteAppCallback_t)(void);
    typedef Property_t(*GetProperty_t)(PropertyIndex_t);
    typedef bool (*SetProperty_t)(PropertyIndex_t, Property_t);
    typedef bool (*Decode_t)(const DecodeIndex_t, const MemoryLength_t, MemoryData_t*);
    typedef uint8_t (*GetDeviceInfo_t)(MemoryData_t**);
    typedef bool (*ValidateMemoryAccess_t)(MemoryType_t, MemoryAccess_t, MemoryAddress_t);
    typedef bool (*CheckTimerElapsed_t)(void);

#define BOOT_GUARD_INDEX    (0x00U)
#define BOOT_STATUS_PROPERTY_INDEX    (0x01U)

	typedef struct
	{
        uint32_t AppAddress;
        uint32_t AppStartTimeout;
        AppCallback_t AppCallback;
        ExecuteAppCallback_t ExecuteAppCallback;
        GetProperty_t GetProperty;
        SetProperty_t SetProperty;
        Decode_t Decode;
        GetDeviceInfo_t GetDeviceInfo;
        ValidateMemoryAccess_t ValidateMemoryAccess;
        CheckTimerElapsed_t CheckTimerElapsed;
        void* ComConfigPtr;
	} BootConfig_t; ///< Whole bootloader configuration structure.
    

	void Boot_App(const BootConfig_t* const config);
    void Boot_1msCallback(void);    ///< Call this fnc every 1ms, it could be called from ISR
    uint32_t Boot_GetVersion(void); ///< Gets UniLoader Core library version


#ifdef	__cplusplus

}
#endif /* __cplusplus */

#endif	/* BOOTLOADER_H */
