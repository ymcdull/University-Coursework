PROJNAME=MeshCOMM
DEVICE=CY8C29666MLF
BASEDEVICE=CY8C29000
PROJPATH=C:/DOCUME~1/SLIP_2/MYDOCU~1/kelvin/src/MeshCOMM/MeshCOMM
PSOCDIR=C:/PROGRA~1/Cypress/Common/CYPRES~3
INCLUDE_PATH=C:/PROGRA~1/Cypress/Common/CYPRES~3/tools/include/CY8C29~1
CSRCS= dynmem.c hashmap.c library.c mac_driver.c main.c prospeckz_radio.c serial.c xlowpan.c
LIBCSRCS=
ASMSRCS= crc.asm
LIBASMSRCS= counter16.asm counter16int.asm counter8.asm counter8int.asm prs8.asm psocconfig.asm psocconfigtbl.asm psocgpioint.asm spim.asm spimint.asm uart.asm uartint.asm uartplus.asm
OBJECT_SOURCES= crc.asm dynmem.c hashmap.c library.c mac_driver.c main.c prospeckz_radio.c serial.c xlowpan.c
FILLVALUE=0x30
LASTROM=0x7fff
LASTRAM=0x7ff
LAST_DATARAM=0x6ff
CODECOMPRESSOR=
MORE_CFLAGS=-Wf-nomac -Wf-Osize -Wf-LMM8 -D_LMM
RELSTART=0x1b1
CDEFINES=
LIBS=
UMLIBS=
LIB_PATH=
ENABLE_ALIGN_SHIFT=0
LMM=1
SYS_INC_CONTENTS:=SYSTEM_STACK_PAGE:_equ_7 SYSTEM_STACK_BASE_ADDR:_equ_0h SYSTEM_LARGE_MEMORY_MODEL:_equ_1 SYSTEM_SMALL_MEMORY_MODEL:_equ_0 IMAGECRAFT:_equ_1 HITECH:_equ_2 TOOLCHAIN:_equ_IMAGECRAFT 
SYSTEM_TOOLS=1
CSFLOW=
CONFIG_NAMES=meshcomm 
