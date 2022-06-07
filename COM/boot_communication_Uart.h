#ifndef BOOT_COMMUNICATION_UART_H
#define	BOOT_COMMUNICATION_UART_H

#include <stdbool.h>
#include <stdint.h>

#ifdef	__cplusplus
extern "C" {
#endif

    typedef struct 
    {
        uint8_t UartChannel;
        uint16_t SpBrg;  
        bool Brgh;
        bool Brg16;
        bool Sync;    
    } ComUartConfig_t;
    


#ifdef	__cplusplus
}
#endif

#endif	/* BOOT_COMMUNICATION_UART_H */

