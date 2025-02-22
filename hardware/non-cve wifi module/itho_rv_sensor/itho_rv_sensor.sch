EESchema Schematic File Version 4
EELAYER 30 0
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
L Sensor_Humidity:SHT30-DIS U1
U 1 1 601D909D
P 4525 3450
F 0 "U1" H 4525 3931 50  0000 C CNN
F 1 "SHT30-DIS" H 4525 3840 50  0000 C CNN
F 2 "Sensor_Humidity:Sensirion_DFN-8-1EP_2.5x2.5mm_P0.5mm_EP1.1x1.7mm" H 4525 3500 50  0001 C CNN
F 3 "https://www.sensirion.com/fileadmin/user_upload/customers/sensirion/Dokumente/2_Humidity_Sensors/Datasheets/Sensirion_Humidity_Sensors_SHT3x_Datasheet_digital.pdf" H 4525 3500 50  0001 C CNN
	1    4525 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 601DA0F5
P 5275 2800
F 0 "R1" H 5345 2846 50  0000 L CNN
F 1 "5k6" H 5345 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5205 2800 50  0001 C CNN
F 3 "~" H 5275 2800 50  0001 C CNN
	1    5275 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 601DBCBB
P 5550 2800
F 0 "R2" H 5620 2846 50  0000 L CNN
F 1 "5k6" H 5620 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5480 2800 50  0001 C CNN
F 3 "~" H 5550 2800 50  0001 C CNN
	1    5550 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 601DCFC6
P 5975 3350
F 0 "R4" V 6182 3350 50  0000 C CNN
F 1 "200" V 6091 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5905 3350 50  0001 C CNN
F 3 "~" H 5975 3350 50  0001 C CNN
	1    5975 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 601DD8FF
P 5700 3450
F 0 "R3" V 5493 3450 50  0000 C CNN
F 1 "200" V 5584 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5630 3450 50  0001 C CNN
F 3 "~" H 5700 3450 50  0001 C CNN
	1    5700 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	4925 3350 5550 3350
Wire Wire Line
	5550 3350 5550 2950
Wire Wire Line
	5550 3350 5825 3350
Connection ~ 5550 3350
Wire Wire Line
	5275 3450 5275 2950
Wire Wire Line
	5275 3450 4925 3450
Connection ~ 5275 3450
Wire Wire Line
	6125 3350 6325 3350
Wire Wire Line
	6325 3350 6325 3250
Wire Wire Line
	5275 2450 5550 2450
Wire Wire Line
	5550 2450 5550 2650
Wire Wire Line
	5275 2450 5275 2650
Wire Wire Line
	5275 3450 5550 3450
$Comp
L Device:R R5
U 1 1 601E819C
P 6450 3700
F 0 "R5" H 6520 3746 50  0000 L CNN
F 1 "5k6" H 6520 3655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6380 3700 50  0001 C CNN
F 3 "~" H 6450 3700 50  0001 C CNN
	1    6450 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3350 6450 3550
Wire Wire Line
	4525 3150 4525 2450
Wire Wire Line
	4525 2450 4975 2450
Connection ~ 5275 2450
Wire Wire Line
	6450 3850 6450 4025
Wire Wire Line
	6450 4025 4975 4025
Wire Wire Line
	4525 4025 4525 3750
Wire Wire Line
	4525 4025 3900 4025
Wire Wire Line
	3900 4025 3900 3550
Wire Wire Line
	3900 3550 4125 3550
Connection ~ 4525 4025
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 601E9803
P 3900 3350
F 0 "JP1" V 3946 3417 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 3855 3417 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 3900 3350 50  0001 C CNN
F 3 "~" H 3900 3350 50  0001 C CNN
	1    3900 3350
	0    -1   -1   0   
$EndComp
Connection ~ 3900 3550
Wire Wire Line
	4050 3350 4125 3350
Wire Wire Line
	3900 3150 3900 2450
Wire Wire Line
	3900 2450 4525 2450
Connection ~ 4525 2450
Wire Wire Line
	6325 3150 6325 2450
Wire Wire Line
	6325 2450 5550 2450
Connection ~ 5550 2450
$Comp
L Device:C C1
U 1 1 601ED854
P 4975 2800
F 0 "C1" H 5090 2846 50  0000 L CNN
F 1 "C" H 5090 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5013 2650 50  0001 C CNN
F 3 "~" H 4975 2800 50  0001 C CNN
	1    4975 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4975 2650 4975 2450
Connection ~ 4975 2450
Wire Wire Line
	4975 2450 5275 2450
Wire Wire Line
	4975 2950 4975 4025
Connection ~ 4975 4025
Wire Wire Line
	4975 4025 4525 4025
$Comp
L Connector_Generic_MountingPin:Conn_02x05_Odd_Even_MountingPin J1
U 1 1 601F0DF9
P 6925 3350
F 0 "J1" H 6975 3767 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even_MountingPin" H 6975 3676 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Horizontal" H 6925 3350 50  0001 C CNN
F 3 "~" H 6925 3350 50  0001 C CNN
	1    6925 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6325 3150 6725 3150
Wire Wire Line
	6325 3250 6725 3250
Wire Wire Line
	6450 3350 6725 3350
Wire Wire Line
	5850 3450 6725 3450
Wire Wire Line
	6725 3550 6675 3550
Wire Wire Line
	6675 3550 6675 4025
Wire Wire Line
	6675 4025 6450 4025
Connection ~ 6450 4025
$Comp
L power:GND #PWR0101
U 1 1 601FD95D
P 4975 4300
F 0 "#PWR0101" H 4975 4050 50  0001 C CNN
F 1 "GND" H 4980 4127 50  0000 C CNN
F 2 "" H 4975 4300 50  0001 C CNN
F 3 "" H 4975 4300 50  0001 C CNN
	1    4975 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4975 4025 4975 4300
$Comp
L power:+5V #PWR0102
U 1 1 601FF0F2
P 4975 2175
F 0 "#PWR0102" H 4975 2025 50  0001 C CNN
F 1 "+5V" H 4990 2348 50  0000 C CNN
F 2 "" H 4975 2175 50  0001 C CNN
F 3 "" H 4975 2175 50  0001 C CNN
	1    4975 2175
	1    0    0    -1  
$EndComp
Wire Wire Line
	4975 2450 4975 2175
$EndSCHEMATC
