; Generated by PSoC Designer 5.0.1127.0
;
include "m8c.inc"
;  Personalization tables 
export LoadConfigTBL_basestation_Bank1
export LoadConfigTBL_basestation_Bank0
export LoadConfigTBL_basestation_Ordered
AREA lit(rom, rel)
LoadConfigTBL_basestation_Bank0:
;  Instance name Counter16, User Module Counter16
;       Instance name Counter16, Block Name CNTR16_LSB(DBB00)
	db		23h, 00h		;Counter16_CONTROL_LSB_REG(DBB00CR0)
	db		21h, ffh		;Counter16_PERIOD_LSB_REG(DBB00DR1)
	db		22h, 00h		;Counter16_COMPARE_LSB_REG(DBB00DR2)
;       Instance name Counter16, Block Name CNTR16_MSB(DBB01)
	db		27h, 00h		;Counter16_CONTROL_MSB_REG(DBB01CR0)
	db		25h, ffh		;Counter16_PERIOD_MSB_REG(DBB01DR1)
	db		26h, 00h		;Counter16_COMPARE_MSB_REG(DBB01DR2)
;  Instance name Counter8, User Module Counter8
;       Instance name Counter8, Block Name CNTR8(DBB21)
	db		47h, 00h		;Counter8_CONTROL_REG(DBB21CR0)
	db		45h, 9bh		;Counter8_PERIOD_REG(DBB21DR1)
	db		46h, 4eh		;Counter8_COMPARE_REG(DBB21DR2)
;  Instance name Counter8_DC, User Module Counter8
;       Instance name Counter8_DC, Block Name CNTR8(DBB30)
	db		53h, 00h		;Counter8_DC_CONTROL_REG(DBB30CR0)
	db		51h, 08h		;Counter8_DC_PERIOD_REG(DBB30DR1)
	db		52h, 08h		;Counter8_DC_COMPARE_REG(DBB30DR2)
;  Instance name DUALADC8, User Module DUALADC8
;       Instance name DUALADC8, Block Name ADC1(ASD20)
	db		90h, 90h		;DUALADC8_bfADC1cr0(ASD20CR0)
	db		91h, 60h		;DUALADC8_bfADC1cr1(ASD20CR1)
	db		92h, 60h		;DUALADC8_bfADC1cr2(ASD20CR2)
	db		93h, f0h		;DUALADC8_bfADC1cr3(ASD20CR3)
;       Instance name DUALADC8, Block Name ADC2(ASD22)
	db		98h, 90h		;DUALADC8_bfADC2cr0(ASD22CR0)
	db		99h, 60h		;DUALADC8_bfADC2cr1(ASD22CR1)
	db		9ah, 60h		;DUALADC8_bfADC2cr2(ASD22CR2)
	db		9bh, f0h		;DUALADC8_bfADC2cr3(ASD22CR3)
;       Instance name DUALADC8, Block Name CNT1(DBB10)
	db		33h, 00h		;DUALADC8_bCounter1_CR0(DBB10CR0)
	db		31h, 00h		;DUALADC8_bPeriod1(DBB10DR1)
	db		32h, 00h		;DUALADC8_bCompare1(DBB10DR2)
;       Instance name DUALADC8, Block Name CNT2(DBB11)
	db		37h, 00h		;DUALADC8_bCounter2_CR0(DBB11CR0)
	db		35h, 00h		;DUALADC8_bPeriod2(DBB11DR1)
	db		36h, 00h		;DUALADC8_bCompare2(DBB11DR2)
;       Instance name DUALADC8, Block Name PWM16_LSB(DCB12)
	db		3bh, 00h		;DUALADC8_fPWM_LSB_CR0(DCB12CR0)
	db		39h, 00h		;DUALADC8_bPWM_Period_LSB(DCB12DR1)
	db		3ah, 00h		;DUALADC8_bPWM_IntTime_LSB(DCB12DR2)
;       Instance name DUALADC8, Block Name PWM16_MSB(DCB13)
	db		3fh, 00h		;DUALADC8_fPWM_MSB_CR0(DCB13CR0)
	db		3dh, 00h		;DUALADC8_bPWM_Period_MSB(DCB13DR1)
	db		3eh, 00h		;DUALADC8_bPWM_IntTime_MSB(DCB13DR2)
;  Instance name PRS8, User Module PRS8
;       Instance name PRS8, Block Name PRS8(DCB02)
	db		2bh, 00h		;PRS8_CONTROL_REG(DCB02CR0)
	db		29h, 00h		;PRS8_POLY_REG   (DCB02DR1)
	db		2ah, 00h		;PRS8_SEED_REG   (DCB02DR2)
;  Instance name SPIM, User Module SPIM
;       Instance name SPIM, Block Name SPIM(DCB03)
	db		2fh, 00h		;SPIM_CONTROL_REG  (DCB03CR0)
	db		2dh, 00h		;SPIM_TX_BUFFER_REG(DCB03DR1)
	db		2eh, 00h		;SPIM_RX_BUFFER_REG(DCB03DR2)
;  Instance name UART, User Module UART
;       Instance name UART, Block Name RX(DCB23)
	db		4fh, 00h		;UART_RX_CONTROL_REG(DCB23CR0)
	db		4dh, 00h		;UART_(DCB23DR1)
	db		4eh, 00h		;UART_RX_BUFFER_REG (DCB23DR2)
;       Instance name UART, Block Name TX(DCB22)
	db		4bh, 00h		;UART_TX_CONTROL_REG(DCB22CR0)
	db		49h, 00h		;UART_TX_BUFFER_REG (DCB22DR1)
	db		4ah, 00h		;UART_(DCB22DR2)
;  Instance name pga_adc_in_1, User Module PGA
;       Instance name pga_adc_in_1, Block Name GAIN(ACB00)
	db		71h, fdh		;pga_adc_in_1_GAIN_CR0(ACB00CR0)
	db		72h, a1h		;pga_adc_in_1_GAIN_CR1(ACB00CR1)
	db		73h, 20h		;pga_adc_in_1_GAIN_CR2(ACB00CR2)
	db		70h, 00h		;pga_adc_in_1_GAIN_CR3(ACB00CR3)
;  Instance name pga_adc_in_2, User Module PGA
;       Instance name pga_adc_in_2, Block Name GAIN(ACB02)
	db		79h, fdh		;pga_adc_in_2_GAIN_CR0(ACB02CR0)
	db		7ah, a1h		;pga_adc_in_2_GAIN_CR1(ACB02CR1)
	db		7bh, 20h		;pga_adc_in_2_GAIN_CR2(ACB02CR2)
	db		78h, 00h		;pga_adc_in_2_GAIN_CR3(ACB02CR3)
;  Global Register values Bank 0
	db		60h, 17h		; AnalogColumnInputSelect register (AMX_IN)
	db		66h, 00h		; AnalogComparatorControl1 register (CMP_CR1)
	db		63h, 15h		; AnalogReferenceControl register (ARF_CR)
	db		65h, 00h		; AnalogSyncControl register (ASY_CR)
	db		e6h, 58h		; DecimatorControl_0 register (DEC_CR0)
	db		e7h, 18h		; DecimatorControl_1 register (DEC_CR1)
	db		d6h, 00h		; I2CConfig register (I2C_CFG)
	db		b0h, c3h		; Row_0_InputMux register (RDI0RI)
	db		b1h, 00h		; Row_0_InputSync register (RDI0SYN)
	db		b2h, 00h		; Row_0_LogicInputAMux register (RDI0IS)
	db		b3h, 33h		; Row_0_LogicSelect_0 register (RDI0LT0)
	db		b4h, 33h		; Row_0_LogicSelect_1 register (RDI0LT1)
	db		b5h, 44h		; Row_0_OutputDrive_0 register (RDI0SRO0)
	db		b6h, 04h		; Row_0_OutputDrive_1 register (RDI0SRO1)
	db		b8h, 55h		; Row_1_InputMux register (RDI1RI)
	db		b9h, 00h		; Row_1_InputSync register (RDI1SYN)
	db		bah, 10h		; Row_1_LogicInputAMux register (RDI1IS)
	db		bbh, 33h		; Row_1_LogicSelect_0 register (RDI1LT0)
	db		bch, 33h		; Row_1_LogicSelect_1 register (RDI1LT1)
	db		bdh, 00h		; Row_1_OutputDrive_0 register (RDI1SRO0)
	db		beh, 00h		; Row_1_OutputDrive_1 register (RDI1SRO1)
	db		c0h, 00h		; Row_2_InputMux register (RDI2RI)
	db		c1h, 00h		; Row_2_InputSync register (RDI2SYN)
	db		c2h, 20h		; Row_2_LogicInputAMux register (RDI2IS)
	db		c3h, 33h		; Row_2_LogicSelect_0 register (RDI2LT0)
	db		c4h, 33h		; Row_2_LogicSelect_1 register (RDI3LT1)
	db		c5h, 01h		; Row_2_OutputDrive_0 register (RDI2SRO0)
	db		c6h, 00h		; Row_2_OutputDrive_1 register (RDI2SRO1)
	db		c8h, 55h		; Row_3_InputMux register (RDI3RI)
	db		c9h, 00h		; Row_3_InputSync register (RDI3SYN)
	db		cah, 30h		; Row_3_LogicInputAMux register (RDI3IS)
	db		cbh, 33h		; Row_3_LogicSelect_0 register (RDI3LT0)
	db		cch, 33h		; Row_3_LogicSelect_1 register (RDI3LT1)
	db		cdh, 00h		; Row_3_OutputDrive_0 register (RDI3SRO0)
	db		ceh, 20h		; Row_3_OutputDrive_1 register (RDI3SRO1)
	db		6ch, 00h		; TMP_DR0 register (TMP_DR0)
	db		6dh, 00h		; TMP_DR1 register (TMP_DR1)
	db		6eh, 00h		; TMP_DR2 register (TMP_DR2)
	db		6fh, 00h		; TMP_DR3 register (TMP_DR3)
	db		ffh
LoadConfigTBL_basestation_Bank1:
;  Instance name Counter16, User Module Counter16
;       Instance name Counter16, Block Name CNTR16_LSB(DBB00)
	db		20h, 01h		;Counter16_FUNC_LSB_REG(DBB00FN)
	db		21h, 17h		;Counter16_INPUT_LSB_REG(DBB00IN)
	db		22h, 40h		;Counter16_OUTPUT_LSB_REG(DBB00OU)
;       Instance name Counter16, Block Name CNTR16_MSB(DBB01)
	db		24h, 21h		;Counter16_FUNC_MSB_REG(DBB01FN)
	db		25h, 37h		;Counter16_INPUT_MSB_REG(DBB01IN)
	db		26h, 40h		;Counter16_OUTPUT_MSB_REG(DBB01OU)
;  Instance name Counter8, User Module Counter8
;       Instance name Counter8, Block Name CNTR8(DBB21)
	db		44h, 21h		;Counter8_FUNC_REG(DBB21FN)
	db		45h, 14h		;Counter8_INPUT_REG(DBB21IN)
	db		46h, 30h		;Counter8_OUTPUT_REG(DBB21OU)
;  Instance name Counter8_DC, User Module Counter8
;       Instance name Counter8_DC, Block Name CNTR8(DBB30)
	db		50h, 61h		;Counter8_DC_FUNC_REG(DBB30FN)
	db		51h, 16h		;Counter8_DC_INPUT_REG(DBB30IN)
	db		52h, 00h		;Counter8_DC_OUTPUT_REG(DBB30OU)
;  Instance name DUALADC8, User Module DUALADC8
;       Instance name DUALADC8, Block Name ADC1(ASD20)
;       Instance name DUALADC8, Block Name ADC2(ASD22)
;       Instance name DUALADC8, Block Name CNT1(DBB10)
	db		30h, 21h		;DUALADC8_fCounter1FN(DBB10FN)
	db		31h, 46h		;DUALADC8_fCounter1SL(DBB10IN)
	db		32h, 40h		;DUALADC8_fCounter1OS(DBB10OU)
;       Instance name DUALADC8, Block Name CNT2(DBB11)
	db		34h, 21h		;DUALADC8_fCounter2FN(DBB11FN)
	db		35h, 66h		;DUALADC8_fCounter2SL(DBB11IN)
	db		36h, 40h		;DUALADC8_fCounter2OS(DBB11OU)
;       Instance name DUALADC8, Block Name PWM16_LSB(DCB12)
	db		38h, 01h		;DUALADC8_bfPWM_LSB_FN(DCB12FN)
	db		39h, 16h		;DUALADC8_(DCB12IN)
	db		3ah, 40h		;DUALADC8_(DCB12OU)
;       Instance name DUALADC8, Block Name PWM16_MSB(DCB13)
	db		3ch, 21h		;DUALADC8_bfPWM_MSB_FN(DCB13FN)
	db		3dh, 36h		;DUALADC8_(DCB13IN)
	db		3eh, 40h		;DUALADC8_(DCB13OU)
;  Instance name PRS8, User Module PRS8
;       Instance name PRS8, Block Name PRS8(DCB02)
	db		28h, 22h		;PRS8_FUNC_REG   (DCB02FN)
	db		29h, 07h		;PRS8_INPUT_REG  (DCB02IN)
	db		2ah, 00h		;PRS8_OUTPUT_REG (DCB02OU)
;  Instance name SPIM, User Module SPIM
;       Instance name SPIM, Block Name SPIM(DCB03)
	db		2ch, 06h		;SPIM_FUNCTION_REG (DCB03FN)
	db		2dh, c1h		;SPIM_INPUT_REG    (DCB03IN)
	db		2eh, 66h		;SPIM_OUTPUT_REG   (DCB03OU)
;  Instance name UART, User Module UART
;       Instance name UART, Block Name RX(DCB23)
	db		4ch, 05h		;UART_RX_FUNC_REG   (DCB23FN)
	db		4dh, dah		;UART_RX_INPUT_REG  (DCB23IN)
	db		4eh, 00h		;UART_RX_OUTPUT_REG (DCB23OU)
;       Instance name UART, Block Name TX(DCB22)
	db		48h, 0dh		;UART_TX_FUNC_REG   (DCB22FN)
	db		49h, 0ah		;UART_TX_INPUT_REG  (DCB22IN)
	db		4ah, 04h		;UART_TX_OUTPUT_REG (DCB22OU)
;  Instance name pga_adc_in_1, User Module PGA
;       Instance name pga_adc_in_1, Block Name GAIN(ACB00)
;  Instance name pga_adc_in_2, User Module PGA
;       Instance name pga_adc_in_2, Block Name GAIN(ACB02)
;  Global Register values Bank 1
	db		61h, 00h		; AnalogClockSelect1 register (CLK_CR1)
	db		69h, 00h		; AnalogClockSelect2 register (CLK_CR2)
	db		60h, 55h		; AnalogColumnClockSelect register (CLK_CR0)
	db		62h, 00h		; AnalogIOControl_0 register (ABF_CR0)
	db		67h, 33h		; AnalogLUTControl0 register (ALT_CR0)
	db		68h, 33h		; AnalogLUTControl1 register (ALT_CR1)
	db		63h, 00h		; AnalogModulatorControl_0 register (AMD_CR0)
	db		66h, 00h		; AnalogModulatorControl_1 register (AMD_CR1)
	db		d1h, 00h		; GlobalDigitalInterconnect_Drive_Even_Input register (GDI_E_IN)
	db		d3h, 00h		; GlobalDigitalInterconnect_Drive_Even_Output register (GDI_E_OU)
	db		d0h, 00h		; GlobalDigitalInterconnect_Drive_Odd_Input register (GDI_O_IN)
	db		d2h, 00h		; GlobalDigitalInterconnect_Drive_Odd_Output register (GDI_O_OU)
	db		e1h, bfh		; OscillatorControl_1 register (OSC_CR1)
	db		e2h, 00h		; OscillatorControl_2 register (OSC_CR2)
	db		dfh, 02h		; OscillatorControl_3 register (OSC_CR3)
	db		deh, 00h		; OscillatorControl_4 register (OSC_CR4)
	db		ddh, 00h		; OscillatorGlobalBusEnableControl register (OSC_GO_EN)
	db		e7h, 00h		; Type2Decimator_Control register (DEC_CR2)
	db		ffh
LoadConfigTBL_basestation_Ordered:
;  Ordered Global Register values
	M8C_SetBank1
	mov	reg[00h], 61h		; Port_0_DriveMode_0 register (PRT0DM0)
	mov	reg[01h], 9eh		; Port_0_DriveMode_1 register (PRT0DM1)
	M8C_SetBank0
	mov	reg[03h], 9ch		; Port_0_DriveMode_2 register (PRT0DM2)
	mov	reg[02h], 03h		; Port_0_GlobalSelect register (PRT0GS)
	M8C_SetBank1
	mov	reg[02h], 00h		; Port_0_IntCtrl_0 register (PRT0IC0)
	mov	reg[03h], 00h		; Port_0_IntCtrl_1 register (PRT0IC1)
	M8C_SetBank0
	mov	reg[01h], 00h		; Port_0_IntEn register (PRT0IE)
	M8C_SetBank1
	mov	reg[04h], 08h		; Port_1_DriveMode_0 register (PRT1DM0)
	mov	reg[05h], ffh		; Port_1_DriveMode_1 register (PRT1DM1)
	M8C_SetBank0
	mov	reg[07h], f4h		; Port_1_DriveMode_2 register (PRT1DM2)
	mov	reg[06h], 00h		; Port_1_GlobalSelect register (PRT1GS)
	M8C_SetBank1
	mov	reg[06h], 00h		; Port_1_IntCtrl_0 register (PRT1IC0)
	mov	reg[07h], 00h		; Port_1_IntCtrl_1 register (PRT1IC1)
	M8C_SetBank0
	mov	reg[05h], 00h		; Port_1_IntEn register (PRT1IE)
	M8C_SetBank1
	mov	reg[08h], 5bh		; Port_2_DriveMode_0 register (PRT2DM0)
	mov	reg[09h], a4h		; Port_2_DriveMode_1 register (PRT2DM1)
	M8C_SetBank0
	mov	reg[0bh], 80h		; Port_2_DriveMode_2 register (PRT2DM2)
	mov	reg[0ah], 00h		; Port_2_GlobalSelect register (PRT2GS)
	M8C_SetBank1
	mov	reg[0ah], 00h		; Port_2_IntCtrl_0 register (PRT2IC0)
	mov	reg[0bh], 00h		; Port_2_IntCtrl_1 register (PRT2IC1)
	M8C_SetBank0
	mov	reg[09h], 00h		; Port_2_IntEn register (PRT2IE)
	M8C_SetBank1
	mov	reg[0ch], 05h		; Port_3_DriveMode_0 register (PRT3DM0)
	mov	reg[0dh], fah		; Port_3_DriveMode_1 register (PRT3DM1)
	M8C_SetBank0
	mov	reg[0fh], 40h		; Port_3_DriveMode_2 register (PRT3DM2)
	mov	reg[0eh], 15h		; Port_3_GlobalSelect register (PRT3GS)
	M8C_SetBank1
	mov	reg[0eh], 00h		; Port_3_IntCtrl_0 register (PRT3IC0)
	mov	reg[0fh], 80h		; Port_3_IntCtrl_1 register (PRT3IC1)
	M8C_SetBank0
	mov	reg[0dh], 80h		; Port_3_IntEn register (PRT3IE)
	M8C_SetBank1
	mov	reg[10h], 02h		; Port_4_DriveMode_0 register (PRT4DM0)
	mov	reg[11h], ffh		; Port_4_DriveMode_1 register (PRT4DM1)
	M8C_SetBank0
	mov	reg[13h], fdh		; Port_4_DriveMode_2 register (PRT4DM2)
	mov	reg[12h], 00h		; Port_4_GlobalSelect register (PRT4GS)
	M8C_SetBank1
	mov	reg[12h], 00h		; Port_4_IntCtrl_0 register (PRT4IC0)
	mov	reg[13h], 00h		; Port_4_IntCtrl_1 register (PRT4IC1)
	M8C_SetBank0
	mov	reg[11h], 00h		; Port_4_IntEn register (PRT4IE)
	M8C_SetBank1
	mov	reg[14h], 07h		; Port_5_DriveMode_0 register (PRT5DM0)
	mov	reg[15h], 00h		; Port_5_DriveMode_1 register (PRT5DM1)
	M8C_SetBank0
	mov	reg[17h], 00h		; Port_5_DriveMode_2 register (PRT5DM2)
	mov	reg[16h], 00h		; Port_5_GlobalSelect register (PRT5GS)
	M8C_SetBank1
	mov	reg[16h], 00h		; Port_5_IntCtrl_0 register (PRT5IC0)
	mov	reg[17h], 08h		; Port_5_IntCtrl_1 register (PRT5IC1)
	M8C_SetBank0
	mov	reg[15h], 08h		; Port_5_IntEn register (PRT5IE)
	M8C_SetBank1
	mov	reg[18h], 00h		; Port_6_DriveMode_0 register (PRT6DM0)
	mov	reg[19h], 00h		; Port_6_DriveMode_1 register (PRT6DM1)
	M8C_SetBank0
	mov	reg[1bh], 00h		; Port_6_DriveMode_2 register (PRT6DM2)
	mov	reg[1ah], 00h		; Port_6_GlobalSelect register (PRT6GS)
	M8C_SetBank1
	mov	reg[1ah], 00h		; Port_6_IntCtrl_0 register (PRT6IC0)
	mov	reg[1bh], 00h		; Port_6_IntCtrl_1 register (PRT6IC1)
	M8C_SetBank0
	mov	reg[19h], 00h		; Port_6_IntEn register (PRT6IE)
	M8C_SetBank1
	mov	reg[1ch], 00h		; Port_7_DriveMode_0 register (PRT7DM0)
	mov	reg[1dh], 00h		; Port_7_DriveMode_1 register (PRT7DM1)
	M8C_SetBank0
	mov	reg[1fh], 00h		; Port_7_DriveMode_2 register (PRT7DM2)
	mov	reg[1eh], 00h		; Port_7_GlobalSelect register (PRT7GS)
	M8C_SetBank1
	mov	reg[1eh], 00h		; Port_7_IntCtrl_0 register (PRT7IC0)
	mov	reg[1fh], 00h		; Port_7_IntCtrl_1 register (PRT7IC1)
	M8C_SetBank0
	mov	reg[1dh], 00h		; Port_7_IntEn register (PRT7IE)
	M8C_SetBank0
	ret


; PSoC Configuration file trailer PsocConfig.asm