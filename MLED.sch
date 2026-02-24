EESchema Schematic File Version 4
LIBS:MLED-cache
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
L 74xx:74HC595 U3
U 1 1 5DB3CF30
P 3500 2500
F 0 "U3" H 3500 3281 50  0000 C CNN
F 1 "74HC595" H 3500 3190 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 3500 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 3500 2500 50  0001 C CNN
	1    3500 2500
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_PIC12:PIC12F615-IP U2
U 1 1 5DB471DC
P 2100 1400
F 0 "U2" H 2100 619 50  0000 C CNN
F 1 "PIC12F615-IP" H 2100 710 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 2700 2050 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/41302D.pdf" H 2100 1400 50  0001 C CNN
	1    2100 1400
	-1   0    0    1   
$EndComp
$Comp
L Device:Battery_Cell coincell1
U 1 1 5DB4AD4D
P 650 1450
F 0 "coincell1" H 768 1546 50  0000 L CNN
F 1 "3V" H 768 1455 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_107_1x23mm" V 650 1510 50  0001 C CNN
F 3 "~" V 650 1510 50  0001 C CNN
	1    650  1450
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell coincell2
U 1 1 5DB4EDA5
P 650 1050
F 0 "coincell2" H 768 1146 50  0000 L CNN
F 1 "3V" H 768 1055 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_107_1x23mm" V 650 1110 50  0001 C CNN
F 3 "~" V 650 1110 50  0001 C CNN
	1    650  1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  1150 650  1250
Text GLabel 650  750  1    50   Input ~ 0
Vcc
Text GLabel 650  1700 3    50   Input ~ 0
GND
Wire Wire Line
	650  750  650  800 
Wire Wire Line
	2100 2000 1250 2000
Wire Wire Line
	1250 2000 1250 800 
Wire Wire Line
	1250 800  650  800 
Connection ~ 650  800 
Wire Wire Line
	650  800  650  850 
Wire Wire Line
	1350 800  2100 800 
Text GLabel 4100 1250 1    50   Input ~ 0
Vcc
Wire Wire Line
	3500 1900 3500 1400
Text GLabel 3000 3700 3    50   Input ~ 0
gnd
Wire Wire Line
	3500 3200 3500 3450
Wire Wire Line
	3500 3450 3000 3450
Wire Wire Line
	3000 3450 3000 3700
Wire Wire Line
	3900 3000 4950 3000
Wire Wire Line
	1500 1300 1450 1300
Wire Wire Line
	1450 1300 1450 2100
Wire Wire Line
	1450 2100 3100 2100
Wire Wire Line
	2700 1500 2800 1500
Wire Wire Line
	2800 1500 2800 1650
Wire Wire Line
	2800 2300 3100 2300
Wire Wire Line
	2800 1650 5100 1650
Connection ~ 2800 1650
Wire Wire Line
	2800 1650 2800 2300
Wire Wire Line
	3100 2400 3000 2400
Wire Wire Line
	3000 2400 3000 1400
Wire Wire Line
	3000 1400 3500 1400
Connection ~ 3500 1400
Connection ~ 3000 3450
Connection ~ 4100 1400
Wire Wire Line
	4100 1400 5200 1400
Connection ~ 5200 1400
Wire Wire Line
	3500 1400 4100 1400
Wire Wire Line
	4100 1250 4100 1400
Wire Wire Line
	5200 2400 5200 1400
Wire Wire Line
	5100 1650 5100 2300
Wire Wire Line
	4950 3000 4950 2100
Wire Wire Line
	4950 2100 5300 2100
Wire Wire Line
	5100 2300 5300 2300
Wire Wire Line
	5300 2400 5200 2400
Wire Wire Line
	5300 2700 5150 2700
Wire Wire Line
	5150 2700 5150 3450
Connection ~ 5150 3450
Wire Wire Line
	3100 2700 3000 2700
Wire Wire Line
	3000 2700 3000 3450
Connection ~ 3500 3450
Wire Wire Line
	3100 2600 2750 2600
Wire Wire Line
	2750 2600 2750 1400
Wire Wire Line
	2750 1400 2700 1400
Wire Wire Line
	5300 2600 5050 2600
Wire Wire Line
	5050 2600 5050 3250
Wire Wire Line
	5050 3250 2750 3250
Wire Wire Line
	2750 3250 2750 2600
Connection ~ 2750 2600
$Comp
L 74xx:74HC595 U4
U 1 1 5DB3F19B
P 5700 2500
F 0 "U4" H 5700 3281 50  0000 C CNN
F 1 "74HC595" H 5700 3190 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 5700 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 5700 2500 50  0001 C CNN
	1    5700 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3450 5150 3450
Wire Wire Line
	5700 1400 5700 1900
Wire Wire Line
	5200 1400 5700 1400
Wire Wire Line
	5700 3450 5700 3200
Wire Wire Line
	5150 3450 5700 3450
$Comp
L Device:R R1
U 1 1 5DB82709
P 5650 4000
F 0 "R1" V 5443 4000 50  0000 C CNN
F 1 "R" V 5534 4000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5580 4000 50  0001 C CNN
F 3 "~" H 5650 4000 50  0001 C CNN
	1    5650 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5DB83A58
P 5650 4150
F 0 "R2" V 5443 4150 50  0000 C CNN
F 1 "R" V 5534 4150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5580 4150 50  0001 C CNN
F 3 "~" H 5650 4150 50  0001 C CNN
	1    5650 4150
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5DB83D18
P 5650 4300
F 0 "R3" V 5443 4300 50  0000 C CNN
F 1 "R" V 5534 4300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5580 4300 50  0001 C CNN
F 3 "~" H 5650 4300 50  0001 C CNN
	1    5650 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5DB8420D
P 5650 4450
F 0 "R4" V 5443 4450 50  0000 C CNN
F 1 "R" V 5534 4450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5580 4450 50  0001 C CNN
F 3 "~" H 5650 4450 50  0001 C CNN
	1    5650 4450
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5DB87150
P 5650 4600
F 0 "R5" V 5443 4600 50  0000 C CNN
F 1 "R" V 5534 4600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5580 4600 50  0001 C CNN
F 3 "~" H 5650 4600 50  0001 C CNN
	1    5650 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5DB873B2
P 5650 4750
F 0 "R6" V 5443 4750 50  0000 C CNN
F 1 "R" V 5534 4750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5580 4750 50  0001 C CNN
F 3 "~" H 5650 4750 50  0001 C CNN
	1    5650 4750
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5DB87620
P 5650 4900
F 0 "R7" V 5443 4900 50  0000 C CNN
F 1 "R" V 5534 4900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5580 4900 50  0001 C CNN
F 3 "~" H 5650 4900 50  0001 C CNN
	1    5650 4900
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5DB878C3
P 5650 5050
F 0 "R8" V 5443 5050 50  0000 C CNN
F 1 "R" V 5534 5050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5580 5050 50  0001 C CNN
F 3 "~" H 5650 5050 50  0001 C CNN
	1    5650 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 4000 5900 4000
Wire Wire Line
	5900 4150 5800 4150
Wire Wire Line
	5800 4300 5900 4300
Wire Wire Line
	5900 4450 5800 4450
Wire Wire Line
	5800 4600 5900 4600
Wire Wire Line
	5900 4750 5800 4750
Wire Wire Line
	5800 4900 5900 4900
Wire Wire Line
	5900 5050 5800 5050
Wire Wire Line
	3900 2100 4850 2100
Wire Wire Line
	4850 2100 4850 4000
Wire Wire Line
	4850 4000 5500 4000
Wire Wire Line
	3900 2200 4800 2200
Wire Wire Line
	4800 2200 4800 4150
Wire Wire Line
	4800 4150 5500 4150
Wire Wire Line
	3900 2300 4750 2300
Wire Wire Line
	4750 4300 5500 4300
Wire Wire Line
	4750 2300 4750 4300
Wire Wire Line
	3900 2400 4700 2400
Wire Wire Line
	4700 2400 4700 4450
Wire Wire Line
	4700 4450 5500 4450
Wire Wire Line
	5500 4600 4650 4600
Wire Wire Line
	4650 4600 4650 2500
Wire Wire Line
	4650 2500 3900 2500
Wire Wire Line
	3900 2600 4600 2600
Wire Wire Line
	4600 2600 4600 4750
Wire Wire Line
	4600 4750 5500 4750
Wire Wire Line
	5500 4900 4550 4900
Wire Wire Line
	4550 4900 4550 2700
Wire Wire Line
	4550 2700 3900 2700
Wire Wire Line
	3900 2800 4500 2800
Wire Wire Line
	4500 2800 4500 5050
Wire Wire Line
	4500 5050 5500 5050
Wire Wire Line
	6100 2100 6700 2100
Wire Wire Line
	6700 2100 6700 4000
Wire Wire Line
	6100 2200 6750 2200
Wire Wire Line
	6750 2200 6750 4150
Wire Wire Line
	6750 4150 6700 4150
Wire Wire Line
	6100 2300 6800 2300
Wire Wire Line
	6800 2300 6800 4300
Wire Wire Line
	6800 4300 6700 4300
$Comp
L MLED-rescue:1588BS-1588bs U1
U 1 1 5DB386F7
P 6300 4500
F 0 "U1" H 6300 5315 50  0000 C CNN
F 1 "1588BS" H 6300 5224 50  0000 C CNN
F 2 "1588BS:1588BS" H 6250 5350 50  0001 C CNN
F 3 "" H 6250 5350 50  0001 C CNN
	1    6300 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2400 6850 2400
Wire Wire Line
	6850 2400 6850 4450
Wire Wire Line
	6850 4450 6700 4450
Wire Wire Line
	6700 4600 6900 4600
Wire Wire Line
	6900 4600 6900 2500
Wire Wire Line
	6900 2500 6100 2500
Wire Wire Line
	6100 2600 6950 2600
Wire Wire Line
	6950 2600 6950 4750
Wire Wire Line
	6950 4750 6700 4750
Wire Wire Line
	6700 4900 7000 4900
Wire Wire Line
	7000 4900 7000 2700
Wire Wire Line
	7000 2700 6100 2700
Wire Wire Line
	6100 2800 7050 2800
Wire Wire Line
	7050 2800 7050 5050
Wire Wire Line
	7050 5050 6700 5050
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 5DB5F466
P 850 2250
F 0 "J1" H 958 2531 50  0000 C CNN
F 1 "switch" H 958 2440 50  0000 C CNN
F 2 "" H 850 2250 50  0001 C CNN
F 3 "~" H 850 2250 50  0001 C CNN
	1    850  2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  1550 650  1650
Wire Wire Line
	650  1650 1050 1650
Wire Wire Line
	1050 1650 1050 2150
Connection ~ 650  1650
Wire Wire Line
	650  1650 650  1700
Wire Wire Line
	1050 2250 1350 2250
Wire Wire Line
	1350 800  1350 2250
$EndSCHEMATC
