EESchema Schematic File Version 2  date Mon 21 May 2012 12:01:50 PM CEST
LIBS:power
LIBS:digi
LIBS:mycomponents
LIBS:device
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:contrib
LIBS:valves
LIBS:rgb-cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title "panStamp RGB driver board"
Date "21 may 2012"
Rev "1.0"
Comp "www.panstamp.com"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	3300 5400 3300 5500
Wire Wire Line
	4650 5400 4650 5500
Wire Wire Line
	5100 2200 4200 2200
Wire Wire Line
	5400 3400 5400 3500
Wire Wire Line
	4200 2900 4800 2900
Wire Wire Line
	8550 5850 8450 5850
Wire Wire Line
	8550 5750 7950 5750
Connection ~ 8500 5100
Wire Wire Line
	8500 5100 8500 5000
Wire Wire Line
	8500 5000 8600 5000
Wire Wire Line
	8500 5300 8500 5200
Wire Wire Line
	8500 5200 8600 5200
Wire Wire Line
	3350 4000 3350 3800
Connection ~ 3350 3900
Wire Wire Line
	3550 3800 3550 3900
Wire Wire Line
	3550 3900 3150 3900
Wire Wire Line
	3150 3900 3150 3800
Wire Wire Line
	4200 3100 4750 3100
Wire Wire Line
	2450 4800 2450 4900
Wire Wire Line
	2450 4900 2650 4900
Wire Wire Line
	7400 3200 7900 3200
Wire Wire Line
	4750 2800 4200 2800
Wire Wire Line
	4750 2400 4200 2400
Wire Wire Line
	4350 4900 5900 4900
Wire Wire Line
	10200 2550 7050 2550
Wire Wire Line
	7050 2550 7050 3000
Wire Wire Line
	10200 2850 9350 2850
Wire Wire Line
	9350 2850 9350 3000
Wire Wire Line
	8200 3400 8200 3550
Wire Wire Line
	8600 4700 7950 4700
Wire Wire Line
	8600 4900 7950 4900
Connection ~ 5600 4900
Wire Wire Line
	5600 5000 5600 4900
Connection ~ 3300 4900
Wire Wire Line
	5150 5400 5150 5500
Connection ~ 4650 4900
Wire Wire Line
	5150 4900 5150 5000
Connection ~ 5150 4900
Wire Wire Line
	5900 4900 5900 4800
Wire Wire Line
	5600 5400 5600 5500
Wire Wire Line
	9050 3200 8550 3200
Wire Wire Line
	6750 3200 6200 3200
Wire Wire Line
	8600 4800 7950 4800
Wire Wire Line
	9350 3400 9350 3550
Wire Wire Line
	7050 3400 7050 3550
Wire Wire Line
	8200 3000 8200 2700
Wire Wire Line
	8200 2700 10200 2700
Wire Wire Line
	3050 4900 3550 4900
Wire Wire Line
	3950 5200 3950 5500
Wire Wire Line
	4750 2700 4200 2700
Wire Wire Line
	4200 3200 4750 3200
Wire Wire Line
	3450 3800 3450 3900
Connection ~ 3450 3900
Wire Wire Line
	3250 3800 3250 3900
Connection ~ 3250 3900
Wire Wire Line
	3350 1600 3350 1500
Wire Wire Line
	8600 5100 8400 5100
Wire Wire Line
	8550 5650 7950 5650
Wire Wire Line
	8550 6050 7950 6050
Wire Wire Line
	8550 5950 8450 5950
Wire Wire Line
	5300 2900 5400 2900
Wire Wire Line
	5400 2900 5400 3000
Wire Wire Line
	5300 2400 5300 2500
Wire Wire Line
	4650 5000 4650 4900
Wire Wire Line
	3300 5000 3300 4900
$Comp
L CP1 C2
U 1 1 4FBA0DE9
P 4650 5200
F 0 "C2" H 4700 5300 50  0000 L CNN
F 1 "22u" H 4700 5100 50  0000 L CNN
F 2 "SMDCPOL_5" H 4650 5200 60  0001 C CNN
	1    4650 5200
	1    0    0    -1  
$EndComp
$Comp
L CP1 C1
U 1 1 4FBA0DCC
P 3300 5200
F 0 "C1" H 3350 5300 50  0000 L CNN
F 1 "47u" H 3350 5100 50  0000 L CNN
F 2 "SMDCPOL_6.3" H 3300 5200 60  0001 C CNN
	1    3300 5200
	1    0    0    -1  
$EndComp
NoConn ~ 4200 2600
$Comp
L GND #PWR01
U 1 1 4FBA06C9
P 5300 2500
F 0 "#PWR01" H 5300 2500 30  0001 C CNN
F 1 "GND" H 5300 2430 30  0001 C CNN
	1    5300 2500
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH_SMALL SW1
U 1 1 4FBA06BA
P 5200 2300
F 0 "SW1" H 5350 2410 30  0000 C CNN
F 1 "SW_PUSH_SMALL" H 5200 2221 30  0000 C CNN
F 2 "switch-tact-noah" H 5200 2300 60  0001 C CNN
	1    5200 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 4E4246B2
P 5400 3500
F 0 "#PWR02" H 5400 3500 30  0001 C CNN
F 1 "GND" H 5400 3430 30  0001 C CNN
	1    5400 3500
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 4E4246A9
P 5400 3200
F 0 "D2" H 5400 3300 50  0000 C CNN
F 1 "LED" H 5400 3100 50  0000 C CNN
F 2 "SM0603S" H 5400 3200 60  0001 C CNN
	1    5400 3200
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 4E424676
P 5050 2900
F 0 "R1" V 5130 2900 50  0000 C CNN
F 1 "470" V 5050 2900 50  0000 C CNN
F 2 "SM0603S" H 5050 2900 60  0001 C CNN
	1    5050 2900
	0    -1   -1   0   
$EndComp
Text Label 7950 6050 0    60   ~ 0
RESET
Text Label 7950 5750 0    60   ~ 0
RXD
Text Label 7950 5650 0    60   ~ 0
TXD
$Comp
L +3.3V #PWR03
U 1 1 4E4243DD
P 8450 5950
F 0 "#PWR03" H 8450 5910 30  0001 C CNN
F 1 "+3.3V" H 8450 6060 30  0000 C CNN
	1    8450 5950
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR04
U 1 1 4E4243D2
P 8450 5850
F 0 "#PWR04" H 8450 5850 30  0001 C CNN
F 1 "GND" H 8450 5780 30  0001 C CNN
	1    8450 5850
	0    1    1    0   
$EndComp
$Comp
L CONN_5 P1
U 1 1 4E4243AD
P 8950 5850
F 0 "P1" V 8900 5850 50  0000 C CNN
F 1 "CONN_5" V 9000 5850 50  0000 C CNN
F 2 "PIN_ARRAY_5X1" H 8950 5850 60  0001 C CNN
	1    8950 5850
	1    0    0    -1  
$EndComp
NoConn ~ 3650 3800
NoConn ~ 4200 3000
NoConn ~ 2550 3200
NoConn ~ 2550 3100
NoConn ~ 2550 3000
NoConn ~ 2550 2900
NoConn ~ 2550 2800
NoConn ~ 2550 2700
NoConn ~ 2550 2600
NoConn ~ 2550 2500
NoConn ~ 2550 2300
NoConn ~ 2550 2200
NoConn ~ 2550 2100
NoConn ~ 4200 2500
NoConn ~ 3450 1600
Text Label 4450 2200 0    60   ~ 0
RESET
$Comp
L +3.3V #PWR05
U 1 1 4E2D12EE
P 3350 1500
F 0 "#PWR05" H 3350 1460 30  0001 C CNN
F 1 "+3.3V" H 3350 1610 30  0000 C CNN
	1    3350 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 4E2D12D3
P 3350 4000
F 0 "#PWR06" H 3350 4000 30  0001 C CNN
F 1 "GND" H 3350 3930 30  0001 C CNN
	1    3350 4000
	1    0    0    -1  
$EndComp
Text Label 4600 3200 0    60   ~ 0
RXD
Text Label 4600 3100 0    60   ~ 0
TXD
$Comp
L PANSTAMP_02 U1
U 1 1 4E2D1188
P 3350 2750
F 0 "U1" H 3750 3650 60  0000 C CNN
F 1 "PANSTAMP_02" H 2950 3650 60  0000 C CNN
F 2 "PANSTAMP_02" H 3350 2750 60  0001 C CNN
	1    3350 2750
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR07
U 1 1 4CCB324B
P 8400 5100
F 0 "#PWR07" H 8400 5050 20  0001 C CNN
F 1 "+12V" H 8400 5200 30  0000 C CNN
	1    8400 5100
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR08
U 1 1 4CCB3242
P 2450 4800
F 0 "#PWR08" H 2450 4750 20  0001 C CNN
F 1 "+12V" H 2450 4900 30  0000 C CNN
	1    2450 4800
	1    0    0    -1  
$EndComp
Text Label 4300 2700 0    60   ~ 0
GREEN_CH
Text Label 7400 3200 0    60   ~ 0
GREEN_CH
$Comp
L GND #PWR09
U 1 1 4BFFE383
P 8500 5300
F 0 "#PWR09" H 8500 5300 30  0001 C CNN
F 1 "GND" H 8500 5230 30  0001 C CNN
	1    8500 5300
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR010
U 1 1 4BFFD8E5
P 5900 4800
F 0 "#PWR010" H 5900 4760 30  0001 C CNN
F 1 "+3.3V" H 5900 4910 30  0000 C CNN
	1    5900 4800
	1    0    0    -1  
$EndComp
$Comp
L LF33 U2
U 1 1 4BFFD798
P 3950 4950
F 0 "U2" H 4100 4754 60  0000 C CNN
F 1 "UA78M33" H 3950 5150 60  0000 C CNN
F 2 "SOT223" H 3950 4950 60  0001 C CNN
	1    3950 4950
	1    0    0    -1  
$EndComp
Text Label 4350 2800 0    60   ~ 0
BLUE_CH
Text Label 4400 2400 0    60   ~ 0
RED_CH
$Comp
L GND #PWR011
U 1 1 48C4C07A
P 7050 3550
F 0 "#PWR011" H 7050 3550 30  0001 C CNN
F 1 "GND" H 7050 3480 30  0001 C CNN
	1    7050 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 48C4C075
P 8200 3550
F 0 "#PWR012" H 8200 3550 30  0001 C CNN
F 1 "GND" H 8200 3480 30  0001 C CNN
	1    8200 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 48C4C06D
P 9350 3550
F 0 "#PWR013" H 9350 3550 30  0001 C CNN
F 1 "GND" H 9350 3480 30  0001 C CNN
	1    9350 3550
	1    0    0    -1  
$EndComp
Text Label 7950 4900 0    60   ~ 0
BLUE_PWR
Text Label 7950 4800 0    60   ~ 0
GREEN_PWR
Text Label 7950 4700 0    60   ~ 0
RED_PWR
$Comp
L CONN_6 K1
U 1 1 48BF9991
P 8950 4950
F 0 "K1" V 8900 4950 50  0000 C CNN
F 1 "CONN_6" V 9000 4950 40  0000 C CNN
F 2 "terminal_block_5mm_6P" H 8950 4950 60  0001 C CNN
	1    8950 4950
	1    0    0    -1  
$EndComp
Text Label 9750 2550 0    60   ~ 0
RED_PWR
Text Label 9650 2700 0    60   ~ 0
GREEN_PWR
Text Label 9700 2850 0    60   ~ 0
BLUE_PWR
Text Label 6200 3200 0    60   ~ 0
RED_CH
Text Label 8550 3200 0    60   ~ 0
BLUE_CH
$Comp
L MOS_N Q3
U 1 1 48BEC063
P 9250 3200
F 0 "Q3" H 9260 3370 60  0000 R CNN
F 1 "MOS_N" H 9260 3050 60  0000 R CNN
F 2 "SOT23GDS" H 9250 3200 60  0001 C CNN
	1    9250 3200
	1    0    0    -1  
$EndComp
$Comp
L MOS_N Q2
U 1 1 48BEC038
P 8100 3200
F 0 "Q2" H 8110 3370 60  0000 R CNN
F 1 "MOS_N" H 8110 3050 60  0000 R CNN
F 2 "SOT23GDS" H 8100 3200 60  0001 C CNN
	1    8100 3200
	1    0    0    -1  
$EndComp
$Comp
L MOS_N Q1
U 1 1 48BEC005
P 6950 3200
F 0 "Q1" H 6960 3370 60  0000 R CNN
F 1 "MOS_N" H 6960 3050 60  0000 R CNN
F 2 "SOT23GDS" H 6950 3200 60  0001 C CNN
	1    6950 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 48B3CC0B
P 5600 5500
F 0 "#PWR014" H 5600 5500 30  0001 C CNN
F 1 "GND" H 5600 5430 30  0001 C CNN
	1    5600 5500
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 48B3CBEC
P 5600 5200
F 0 "C4" H 5650 5300 50  0000 L CNN
F 1 "100n" H 5650 5100 50  0000 L CNN
F 2 "SM0603S" H 5600 5200 60  0001 C CNN
	1    5600 5200
	1    0    0    -1  
$EndComp
$Comp
L DIODESCH D1
U 1 1 48B3C75B
P 2850 4900
F 0 "D1" H 2850 5000 40  0000 C CNN
F 1 "DIODESCH" H 2850 4800 40  0000 C CNN
F 2 "SMA" H 2850 4900 60  0001 C CNN
	1    2850 4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 48B2DC35
P 3950 5500
F 0 "#PWR015" H 3950 5500 30  0001 C CNN
F 1 "GND" H 3950 5430 30  0001 C CNN
	1    3950 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 48B2D42A
P 3300 5500
F 0 "#PWR016" H 3300 5500 30  0001 C CNN
F 1 "GND" H 3300 5430 30  0001 C CNN
	1    3300 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 48B2D427
P 4650 5500
F 0 "#PWR017" H 4650 5500 30  0001 C CNN
F 1 "GND" H 4650 5430 30  0001 C CNN
	1    4650 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 48B2D41E
P 5150 5500
F 0 "#PWR018" H 5150 5500 30  0001 C CNN
F 1 "GND" H 5150 5430 30  0001 C CNN
	1    5150 5500
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 48B2D401
P 5150 5200
F 0 "C3" H 5200 5300 50  0000 L CNN
F 1 "1u" H 5200 5100 50  0000 L CNN
F 2 "SM0603S" H 5150 5200 60  0001 C CNN
	1    5150 5200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
