#ifndef COMMUNICATION_UART_DMA_H
#define	COMMUNICATION_UART_DMA_H

#include <stdint.h>
#include <stdbool.h>

#ifdef	__cplusplus
extern "C" {
#endif

typedef uint8_t UartData_t;
typedef uint32_t UartBaudrate_t;
typedef uint8_t UartChannel_t;
    
typedef enum {
	UART_TX_PAD_0,
	UART_TX_PAD_2,
	UART_MAX_TX_PAD,
} UartTxPad_t;

typedef enum {
	UART_RX_PAD_0,
	UART_RX_PAD_1,
	UART_RX_PAD_2,
	UART_RX_PAD_3,
	UART_MAX_RX_PAD,
} UartRxPad_t;

typedef enum {
	UART_DATABITS_5,
	UART_DATABITS_6,
	UART_DATABITS_7,
	UART_DATABITS_8,
	UART_MAX_DATABITS,
} UartDatabits_t;

typedef enum {
	UART_PARITY_NONE,
	UART_PARITY_EVEN,
	UART_PARITY_ODD,
	UART_MAX_PARITY
} UartParity_t;

typedef enum {
	UART_STOPBITS_1,
	UART_STOPBITS_2,
	UART_MAX_STOPBITS
} UartStopbits_t;

typedef enum {
	UART_TX_DISABLED,
	UART_TX_ENABLED,
	UART_MAX_TX
} UartTxEn_t;

typedef enum {
	UART_RX_DISABLED,
	UART_RX_ENABLED,
	UART_MAX_RX
} UartRxEn_t;

typedef struct
{
    UartChannel_t Channel;
    uint8_t ClockSource;
    uint32_t ClockFreq;
    UartBaudrate_t Baudrate;
    UartDatabits_t Databits;
    UartParity_t Parity;
    UartStopbits_t Stopbits;
    UartRxPad_t RxPad;
    UartTxPad_t TxPad;
  	UartRxEn_t RxEnabled;
	UartTxEn_t TxEnabled;
}ComUartDma_UartCofig_t;

typedef struct
{
    bool InitUart;
    ComUartDma_UartCofig_t UartConfig;
} ComUartDma_Cofig_t;


#ifdef	__cplusplus
}
#endif

#endif	/* COMMUNICATION_UART_DMA_H */

