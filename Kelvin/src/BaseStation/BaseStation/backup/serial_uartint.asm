;;*****************************************************************************
;;*****************************************************************************
;;  FILENAME:   serial_uartINT.asm
;;  Version: 5.2, Updated on 2009/10/23 at 10:13:12
;;  Generated by PSoC Designer 5.0.1127.0
;;
;;  DESCRIPTION:  UART Interrupt Service Routine.
;;-----------------------------------------------------------------------------
;;  Copyright (c) Cypress Semiconductor 2009. All Rights Reserved.
;;*****************************************************************************
;;*****************************************************************************


include "serial_uart.inc"
include "memory.inc"
include "m8c.inc"

;-----------------------------------------------
;  Global Symbols
;-----------------------------------------------
export  _serial_uart_TX_ISR
export  _serial_uart_RX_ISR

IF (serial_uart_RXBUF_ENABLE)
export  serial_uart_aRxBuffer
export _serial_uart_aRxBuffer
export  serial_uart_bRxCnt
export _serial_uart_bRxCnt
export  serial_uart_fStatus
export _serial_uart_fStatus
ENDIF


;-----------------------------------------------
; Variable Allocation
;-----------------------------------------------
AREA InterruptRAM (RAM, REL, CON)

IF (serial_uart_RXBUF_ENABLE)
 serial_uart_fStatus:
_serial_uart_fStatus:      BLK  1
 serial_uart_bRxCnt:
_serial_uart_bRxCnt:       BLK  1
AREA serial_uart_RAM (RAM, REL, CON)
 serial_uart_aRxBuffer:
_serial_uart_aRxBuffer:    BLK serial_uart_RX_BUFFER_SIZE
ENDIF

AREA InterruptRAM (RAM, REL, CON)

;@PSoC_UserCode_INIT@ (Do not change this line.)
;---------------------------------------------------
; Insert your custom declarations below this banner
;---------------------------------------------------

;------------------------
;  Includes
;------------------------


;------------------------
;  Constant Definitions
;------------------------


;------------------------
; Variable Allocation
;------------------------


;---------------------------------------------------
; Insert your custom declarations above this banner
;---------------------------------------------------
;@PSoC_UserCode_END@ (Do not change this line.)


AREA UserModules (ROM, REL, CON)

;-----------------------------------------------------------------------------
;  FUNCTION NAME: _serial_uart_TX_ISR
;
;  DESCRIPTION:
;     UART TX interrupt handler for instance serial_uart.
;
;     This is a place holder function.  If the user requires use of an interrupt
;     handler for this function, then place code where specified.
;-----------------------------------------------------------------------------

_serial_uart_TX_ISR:
   ;@PSoC_UserCode_BODY_1@ (Do not change this line.)
   ;---------------------------------------------------
   ; Insert your custom code below this banner
   ;---------------------------------------------------
   ;   NOTE: interrupt service routines must preserve
   ;   the values of the A and X CPU registers.
   
   ;---------------------------------------------------
   ; Insert your custom code above this banner
   ;---------------------------------------------------
   ;@PSoC_UserCode_END@ (Do not change this line.)
   reti


;-----------------------------------------------------------------------------
;  FUNCTION NAME: _serial_uart_RX_ISR
;
;  DESCRIPTION:
;     UART RX interrupt handler for instance serial_uart.
;     This ISR handles the background processing of received characters if
;     the buffer is enabled.
;
;
;  The following assumes that the RX buffer feature has been enabled.
;
;  SIDE EFFECTS:
;     There are 3 posible errors that may occur with the serial port.
;      1) Parity Error
;      2) Framing Error
;      3) OverRun Error
;
;  This user module check for parity and framing error.  If either of these
;  two errors are detected, the data is read and ignored.  When an overRun
;  error occurs, the last byte was lost, but the current byte is valid.  For
;  this reason this error is ignored at this time.  Code could be added to
;  this ISR to set a flag if an error condition occurs.
;
;  THEORY of OPERATION:
;     When using the RX buffer feature, the ISR collects received characters
;     in a buffer until the user defined command terminator is detected.  After
;     the command terminator is detected, the command bit is set and all other
;     characters will be ignored until the command bit is reset.  Up to
;     buffer_size - 1 characters will be collected waiting for a command
;     terminator.  After that, the characters will be discarded, although
;     a command determinator will still cause the command bit to be set.
;
;-----------------------------------------------------------------------------
_serial_uart_RX_ISR:

   ;@PSoC_UserCode_BODY_2@ (Do not change this line.)
   ;---------------------------------------------------
   ; Insert your custom code below this banner
   ;---------------------------------------------------
   ;   NOTE: interrupt service routines must preserve
   ;   the values of the A and X CPU registers.

   ;---------------------------------------------------
   ; Insert your custom code above this banner
   ;---------------------------------------------------
   ;@PSoC_UserCode_END@ (Do not change this line.)

IF (serial_uart_RXBUF_ENABLE)
   push A
   push X
   
   IF SYSTEM_LARGE_MEMORY_MODEL
      REG_PRESERVE IDX_PP
   ENDIF
   
   mov  X,[serial_uart_bRxCnt]                             ; Load X with byte counter
   mov  A,REG[serial_uart_RX_CONTROL_REG]                  ; Read the control register
   push A                                                  ; Store copy for later test
                                                           ; IF real RX interrupt
   and  A,serial_uart_RX_REG_FULL                          ; Did really really get an IRQ
   jnz  .UARTRX_ReadRx                                     ; Data ready, go get it
   pop  A                                                  ; Restore stack
   jmp  .RESTORE_IDX_PP

.UARTRX_ReadRx:
   pop  A                                                  ; Restore status flags
                                                           ; IF there is no error, get data
                                                           ; Check for parity or framing error
   and  A,serial_uart_RX_ERROR
   jz   .UARTRX_NO_ERROR                                   ; If there is not an Error go read data

   or   [serial_uart_fStatus],A                            ; Set error flags (parity,framing,overrun) bits
   tst  REG[serial_uart_RX_BUFFER_REG], 0x00               ; Read the data buffer to clear it.
   and  A,serial_uart_RX_FRAMING_ERROR                     ; Check for framing error special case
   jz   .RESTORE_IDX_PP                                    ; Not framing error, all done

                                                           ; Disable and re-enable RX to reset after
                                                           ; framing error.
   and   REG[serial_uart_RX_CONTROL_REG], ~serial_uart_RX_ENABLE   ; Disable RX
   or    REG[serial_uart_RX_CONTROL_REG],  serial_uart_RX_ENABLE   ; Enable RX
   jmp  .RESTORE_IDX_PP                                    ; Done with framing error, leave.


.UARTRX_NO_ERROR:
   mov  A,REG[serial_uart_RX_BUFFER_REG ]                  ; Read the data buffer

                                                           ; IF buffer not full
   tst  [serial_uart_fStatus],serial_uart_RX_BUF_CMDTERM     ; Check for buffer full
   jnz  .RESTORE_IDX_PP                                    ; All done

   cmp  A,serial_uart_CMD_TERM                             ; Check for End of command
   jnz  .UARTRX_CHK_BACKSPACE
   or   [serial_uart_fStatus],serial_uart_RX_BUF_CMDTERM   ; Set command ready bit



   RAM_SETPAGE_IDX >serial_uart_aRxBuffer
   RAM_CHANGE_PAGE_MODE FLAG_PGMODE_10b
   mov  [X + serial_uart_aRxBuffer],00h                    ; Zero out last data
   RAM_CHANGE_PAGE_MODE FLAG_PGMODE_00b
   jmp  .RESTORE_IDX_PP

.UARTRX_CHK_BACKSPACE:                                     ; 
IF(serial_uart_BACKSPACE_ENABLE)                           ; Enable if backspace/delete mode
   cmp  A,serial_uart_BACKSPACE_ENABLE                     ; Check for backspace character
   jnz  .UARTRX_IGNORE                                     ; If not, skip the backspace stuff
   cmp  [serial_uart_bRxCnt],00h                           ; Check if buffer empty
   jz   .RESTORE_IDX_PP                                    ; 
   dec  [serial_uart_bRxCnt]                               ; Decrement buffer count by one.
   jmp  .RESTORE_IDX_PP
ENDIF                                                      ; 

.UARTRX_IGNORE:
IF(serial_uart_RX_IGNORE_BELOW)                            ; Ignore charaters below this value
   cmp  A,serial_uart_RX_IGNORE_BELOW                      ; If ignore char is set to 0x00, do not
   jc   .RESTORE_IDX_PP                                    ; ignore any characters.
ENDIF

.UARTRX_CHK_OVFL:                                          ; Check for MAX String here
	
   RAM_SETPAGE_IDX >serial_uart_aRxBuffer                  ;   using idexed address mode
   cmp  [serial_uart_bRxCnt],(serial_uart_RX_BUFFER_SIZE - 1)
   jc   .UARTRX_ISR_GETDATA
   RAM_CHANGE_PAGE_MODE FLAG_PGMODE_10b
   mov  [X + serial_uart_aRxBuffer],00h                    ; Zero out last data in the buffer
   RAM_CHANGE_PAGE_MODE FLAG_PGMODE_00b
   or   [serial_uart_fStatus],serial_uart_RX_BUF_OVERRUN   ; Set error flags (parity,framing,overrun) bits
   jmp  .RESTORE_IDX_PP

.UARTRX_ISR_GETDATA:                                       ; IF input data == "CR", then end of command
                                                           ; X is already loaded with pointer
   RAM_CHANGE_PAGE_MODE FLAG_PGMODE_10b
   mov  [X+serial_uart_aRxBuffer],A                        ; store data in array
   RAM_CHANGE_PAGE_MODE FLAG_PGMODE_00b
   inc  X                                                  ; Inc the pointer
   mov  [serial_uart_bRxCnt],X                             ; Restore the pointer
                                                           ; ENDIF max string size
.RESTORE_IDX_PP:
   IF SYSTEM_LARGE_MEMORY_MODEL
      REG_RESTORE IDX_PP
   ENDIF

.END_UARTRX_ISR:
   pop  X
   pop  A

ENDIF

serial_uart_RX_ISR_END:
   reti

; end of file serial_uartINT.asm

