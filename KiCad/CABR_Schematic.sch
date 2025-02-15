EESchema Schematic File Version 4
LIBS:CABR_Schematic-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:Battery BT1
U 1 1 5D2E45C1
P 5000 2300
F 0 "BT1" H 5108 2346 50  0000 L CNN
F 1 "11.1v" H 5108 2255 50  0000 L CNN
F 2 "" V 5000 2360 50  0001 C CNN
F 3 "~" V 5000 2360 50  0001 C CNN
	1    5000 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5D2EDCE1
P 6200 1850
F 0 "C2" H 6318 1896 50  0000 L CNN
F 1 "10uF" H 6318 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6238 1700 50  0001 C CNN
F 3 "~" H 6200 1850 50  0001 C CNN
	1    6200 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5D2EE666
P 5300 1850
F 0 "C1" H 5418 1896 50  0000 L CNN
F 1 "10uF" H 5418 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5338 1700 50  0001 C CNN
F 3 "~" H 5300 1850 50  0001 C CNN
	1    5300 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1700 5450 1700
Wire Wire Line
	6050 1700 6200 1700
Wire Wire Line
	4800 1700 5300 1700
Connection ~ 5300 1700
$Comp
L Switch:SW_SP3T SW1
U 1 1 5D2F3271
P 7300 1950
F 0 "SW1" H 7300 2233 50  0000 C CNN
F 1 "Fire Mode" H 7300 2142 50  0000 C CNN
F 2 "" H 6675 2125 50  0001 C CNN
F 3 "~" H 6675 2125 50  0001 C CNN
	1    7300 1950
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 5D2F8F51
P 6200 2750
F 0 "R1" V 6405 2750 50  0000 C CNN
F 1 "10k" V 6314 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6240 2740 50  0001 C CNN
F 3 "~" H 6200 2750 50  0001 C CNN
	1    6200 2750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R2
U 1 1 5D2FB3DC
P 6200 3150
F 0 "R2" V 5995 3150 50  0000 C CNN
F 1 "10k" V 6086 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6240 3140 50  0001 C CNN
F 3 "~" H 6200 3150 50  0001 C CNN
	1    6200 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 2450 7100 3150
Wire Wire Line
	6950 2400 6950 2750
Wire Wire Line
	6950 4000 7150 4000
Wire Wire Line
	6350 2750 6950 2750
Connection ~ 6950 2750
Wire Wire Line
	6950 2750 6950 4000
Wire Wire Line
	6350 3150 7100 3150
Connection ~ 7100 3150
Wire Wire Line
	7100 3150 7100 3900
$Comp
L Switch:SW_Push SW2
U 1 1 5D304392
P 6600 3300
F 0 "SW2" H 6600 3585 50  0000 C CNN
F 1 "Microswitch" H 6600 3494 50  0000 C CNN
F 2 "" H 6600 3500 50  0001 C CNN
F 3 "~" H 6600 3500 50  0001 C CNN
	1    6600 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2400 7600 2500
Wire Wire Line
	7600 2500 7250 2500
Wire Wire Line
	7250 2500 7250 3650
Wire Wire Line
	6400 3650 6400 4100
Wire Wire Line
	6400 4100 7450 4100
Wire Wire Line
	6250 3650 6400 3650
$Comp
L Device:LED_ALT D1
U 1 1 5D2FE43A
P 6600 4200
F 0 "D1" H 6593 4416 50  0000 C CNN
F 1 "Green" H 6593 4325 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 6600 4200 50  0001 C CNN
F 3 "~" H 6600 4200 50  0001 C CNN
	1    6600 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 5D306AB2
P 6100 3650
F 0 "R4" V 5895 3650 50  0000 C CNN
F 1 "10k" V 5986 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6140 3640 50  0001 C CNN
F 3 "~" H 6100 3650 50  0001 C CNN
	1    6100 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 2400 4550 2400
Connection ~ 4800 2400
Wire Wire Line
	4800 2400 4800 1700
$Comp
L Motor:Motor_DC_ALT M1
U 1 1 5D318954
P 4300 3100
F 0 "M1" H 4000 3500 50  0000 L CNN
F 1 "Solenoid" H 3900 3600 50  0000 L CNN
F 2 "" H 4300 3010 50  0001 C CNN
F 3 "~" H 4300 3010 50  0001 C CNN
	1    4300 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 4200 6150 4200
$Comp
L Device:R_US R3
U 1 1 5D300B08
P 6000 4200
F 0 "R3" V 5795 4200 50  0000 C CNN
F 1 "2.7k" V 5886 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6040 4190 50  0001 C CNN
F 3 "~" H 6000 4200 50  0001 C CNN
	1    6000 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	5950 3650 5750 3650
Wire Wire Line
	5850 4200 5750 4200
Wire Wire Line
	5750 4200 5750 3650
$Comp
L power:GND #PWR04
U 1 1 5D36C3A6
P 6050 3150
F 0 "#PWR04" H 6050 2900 50  0001 C CNN
F 1 "GND" H 6100 3000 50  0000 R CNN
F 2 "" H 6050 3150 50  0001 C CNN
F 3 "" H 6050 3150 50  0001 C CNN
	1    6050 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5D36E3F2
P 4950 3000
F 0 "#PWR03" H 4950 2750 50  0001 C CNN
F 1 "GND" H 5200 2950 50  0000 R CNN
F 2 "" H 4950 3000 50  0001 C CNN
F 3 "" H 4950 3000 50  0001 C CNN
	1    4950 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5D37BC94
P 5750 4200
F 0 "#PWR05" H 5750 3950 50  0001 C CNN
F 1 "GND" H 5755 4027 50  0000 C CNN
F 2 "" H 5750 4200 50  0001 C CNN
F 3 "" H 5750 4200 50  0001 C CNN
	1    5750 4200
	1    0    0    -1  
$EndComp
Connection ~ 5750 4200
$Comp
L Device:R_US R6
U 1 1 5D38E3F6
P 5250 3850
F 0 "R6" V 5455 3850 50  0000 C CNN
F 1 "1k" V 5364 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5290 3840 50  0001 C CNN
F 3 "~" H 5250 3850 50  0001 C CNN
	1    5250 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	5300 2000 5300 2900
Wire Wire Line
	5300 2900 4950 2900
Wire Wire Line
	4950 2900 4950 3000
Connection ~ 5300 2000
Connection ~ 4950 3000
Wire Wire Line
	4950 3000 4800 3000
Wire Wire Line
	5600 3800 5700 3800
$Comp
L Device:R_US R5
U 1 1 5D2ECBFF
P 5700 3950
F 0 "R5" H 5632 3904 50  0000 R CNN
F 1 "10k" H 5632 3995 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5740 3940 50  0001 C CNN
F 3 "~" H 5700 3950 50  0001 C CNN
	1    5700 3950
	-1   0    0    1   
$EndComp
Connection ~ 5700 3800
$Comp
L Diode:1N4148 D2
U 1 1 5D2EE859
P 4050 3200
F 0 "D2" V 3950 2900 50  0000 L CNN
F 1 "MMSD4148T3G" V 4050 2550 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 4050 3025 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4050 3200 50  0001 C CNN
	1    4050 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 2800 4050 2800
Wire Wire Line
	4050 2800 4050 3050
Connection ~ 4550 2800
Wire Wire Line
	4050 3350 4050 3500
Wire Wire Line
	4050 3500 4550 3500
Wire Wire Line
	6200 1700 7600 1700
Wire Wire Line
	7600 1700 7600 2400
Connection ~ 6200 1700
Connection ~ 7600 2400
Wire Wire Line
	7600 2500 7600 3300
Connection ~ 7600 2500
$Comp
L power:GND #PWR06
U 1 1 5D31EE00
P 8050 4950
F 0 "#PWR06" H 8050 4700 50  0001 C CNN
F 1 "GND" H 8055 4777 50  0000 C CNN
F 2 "" H 8050 4950 50  0001 C CNN
F 3 "" H 8050 4950 50  0001 C CNN
	1    8050 4950
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATtiny:ATtiny85-20SU U2
U 1 1 5D378957
P 8050 4100
F 0 "U2" H 7520 4146 50  0000 R CNN
F 1 "ATtiny85-20SU" H 7520 4055 50  0000 R CNN
F 2 "Package_SO:SOIJ-8_5.3x5.3mm_P1.27mm" H 8050 4100 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 8050 4100 50  0001 C CNN
	1    8050 4100
	-1   0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_Darlington_BEC Q1
U 1 1 5D37E1CE
P 4850 3950
F 0 "Q1" H 5041 3996 50  0000 L CNN
F 1 "FQP30N06L" H 5041 3905 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5050 4050 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PBSS4250X.pdf" H 4850 3950 50  0001 C CNN
	1    4850 3950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5700 4100 5700 4150
Wire Wire Line
	5700 4200 5750 4200
Wire Wire Line
	4550 3500 4750 3500
Wire Wire Line
	4750 3500 4750 3750
Connection ~ 4550 3500
Connection ~ 5700 4150
Wire Wire Line
	5700 4150 5700 4200
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 5D3885D8
P 7300 2200
F 0 "J2" V 7362 2344 50  0000 L CNN
F 1 "0.1\" Header" V 7350 1550 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7300 2200 50  0001 C CNN
F 3 "~" H 7300 2200 50  0001 C CNN
	1    7300 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 2400 7600 2400
Wire Wire Line
	7100 2450 7300 2450
Wire Wire Line
	7300 2450 7300 2400
Wire Wire Line
	6950 2400 7200 2400
NoConn ~ 7100 1850
NoConn ~ 7100 1950
NoConn ~ 7100 2050
NoConn ~ 7500 1950
Wire Wire Line
	4800 2750 4800 3000
Wire Wire Line
	4800 2400 4800 2650
NoConn ~ 5000 2500
NoConn ~ 5000 2100
Wire Wire Line
	5300 2000 5750 2000
$Comp
L Regulator_Linear:AZ1117-5.0 U1
U 1 1 5D3A40A6
P 5750 1700
F 0 "U1" H 5750 1942 50  0000 C CNN
F 1 "AZ1117-5.0" H 5750 1851 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 5750 1950 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AZ1117.pdf" H 5750 1700 50  0001 C CNN
	1    5750 1700
	1    0    0    -1  
$EndComp
Connection ~ 5750 2000
Wire Wire Line
	5750 2000 6200 2000
Wire Wire Line
	6050 2750 6050 3150
Connection ~ 6050 3150
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5D3A2F3D
P 6650 3450
F 0 "J4" V 6712 3494 50  0000 L CNN
F 1 "MicroSwitch" V 6600 3200 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6650 3450 50  0001 C CNN
F 3 "~" H 6650 3450 50  0001 C CNN
	1    6650 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	6650 3650 7250 3650
Wire Wire Line
	6550 3650 6400 3650
Connection ~ 6400 3650
NoConn ~ 6800 3300
NoConn ~ 6400 3300
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5D3AE752
P 4750 3150
F 0 "J1" H 4700 2950 50  0000 L CNN
F 1 "XT60" H 4650 2850 50  0000 L CNN
F 2 "XT60:XT60" H 4750 3150 50  0001 C CNN
F 3 "~" H 4750 3150 50  0001 C CNN
	1    4750 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3250 4550 3500
Wire Wire Line
	4550 2800 4550 3150
$Comp
L Connector:Screw_Terminal_01x02 J5
U 1 1 5D3B2F49
P 5000 2650
F 0 "J5" H 5080 2642 50  0000 L CNN
F 1 "XT60" H 5080 2551 50  0000 L CNN
F 2 "XT60:XT60" H 5000 2650 50  0001 C CNN
F 3 "~" H 5000 2650 50  0001 C CNN
	1    5000 2650
	1    0    0    -1  
$EndComp
NoConn ~ 4300 2900
NoConn ~ 4300 3400
Wire Wire Line
	8050 3300 8050 3500
Wire Wire Line
	7600 3300 8050 3300
$Comp
L Device:C C3
U 1 1 5D5D8A62
P 8650 3300
F 0 "C3" V 8902 3300 50  0000 C CNN
F 1 "0.1uF" V 8811 3300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8688 3150 50  0001 C CNN
F 3 "~" H 8650 3300 50  0001 C CNN
	1    8650 3300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5D5D9924
P 9000 3300
F 0 "#PWR0101" H 9000 3050 50  0001 C CNN
F 1 "GND" V 9005 3172 50  0000 R CNN
F 2 "" H 9000 3300 50  0001 C CNN
F 3 "" H 9000 3300 50  0001 C CNN
	1    9000 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8050 3300 8500 3300
Connection ~ 8050 3300
Wire Wire Line
	8800 3300 9000 3300
Wire Wire Line
	4750 4150 5700 4150
Wire Wire Line
	5700 3800 7300 3800
Wire Wire Line
	8050 4700 8050 4850
$Comp
L Connector_Generic:Conn_02x03_Top_Bottom J3
U 1 1 5D387500
P 7200 4900
F 0 "J3" H 7250 5217 50  0000 C CNN
F 1 "Program Header" H 7250 5126 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 7200 4900 50  0001 C CNN
F 3 "~" H 7200 4900 50  0001 C CNN
	1    7200 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3300 6900 3300
Wire Wire Line
	6900 3300 6900 4900
Wire Wire Line
	6900 4900 7000 4900
Connection ~ 7600 3300
Wire Wire Line
	7000 5000 6750 5000
Wire Wire Line
	6750 5000 6750 4450
Wire Wire Line
	6750 4450 7150 4450
Wire Wire Line
	6750 4200 7450 4200
Wire Wire Line
	7150 4450 7150 4000
Connection ~ 7150 4000
Wire Wire Line
	7150 4000 7450 4000
Wire Wire Line
	7500 4800 7500 4400
Wire Wire Line
	7500 4400 7300 4400
Wire Wire Line
	7300 4400 7300 3800
Connection ~ 7300 3800
Wire Wire Line
	7300 3800 7450 3800
Wire Wire Line
	7500 4900 7700 4900
Wire Wire Line
	7700 4900 7700 4700
Wire Wire Line
	7700 4700 7450 4700
Wire Wire Line
	7450 4700 7450 4300
Wire Wire Line
	7500 5000 7850 5000
Wire Wire Line
	7850 5000 7850 4850
Wire Wire Line
	7850 4850 8050 4850
Connection ~ 8050 4850
Wire Wire Line
	8050 4850 8050 4950
Wire Wire Line
	7000 4800 7000 3900
Wire Wire Line
	7000 3900 7100 3900
Connection ~ 7100 3900
Wire Wire Line
	7100 3900 7450 3900
Wire Wire Line
	5600 3800 5600 3850
Wire Wire Line
	5600 3850 5400 3850
Wire Wire Line
	4550 2400 4550 2800
Wire Wire Line
	5100 3850 5050 3850
Wire Wire Line
	5050 3850 5050 3950
$EndSCHEMATC
