EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "2020-07-14"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 700  1000 0    50   ~ 0
+12V
Text Notes 750  1100 0    50   ~ 0
GND\n
$Comp
L power:+12V #PWR0101
U 1 1 5E334BF7
P 2000 850
F 0 "#PWR0101" H 2000 700 50  0001 C CNN
F 1 "+12V" H 2015 1023 50  0000 C CNN
F 2 "" H 2000 850 50  0001 C CNN
F 3 "" H 2000 850 50  0001 C CNN
	1    2000 850 
	1    0    0    -1  
$EndComp
Text Label 9300 1400 2    50   ~ 0
SCL
Text Label 9300 1300 2    50   ~ 0
SDA
Text Label 1250 1700 0    50   ~ 0
BUTTON
Wire Wire Line
	1950 950  2000 950 
Wire Wire Line
	2000 950  2000 850 
$Comp
L power:GND #PWR0102
U 1 1 5E39CE40
P 2000 1100
F 0 "#PWR0102" H 2000 850 50  0001 C CNN
F 1 "GND" H 2005 927 50  0000 C CNN
F 2 "" H 2000 1100 50  0001 C CNN
F 3 "" H 2000 1100 50  0001 C CNN
	1    2000 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 1650 9400 1600
$Comp
L power:GND #PWR0103
U 1 1 5E33F80F
P 9400 1650
F 0 "#PWR0103" H 9400 1400 50  0001 C CNN
F 1 "GND" H 9405 1477 50  0000 C CNN
F 2 "" H 9400 1650 50  0001 C CNN
F 3 "" H 9400 1650 50  0001 C CNN
	1    9400 1650
	1    0    0    -1  
$EndComp
Text Label 6650 4250 0    50   ~ 0
A1
Text Label 6650 4150 0    50   ~ 0
A0
$Comp
L power:GND #PWR0107
U 1 1 5E45ACFC
P 5900 6050
F 0 "#PWR0107" H 5900 5800 50  0001 C CNN
F 1 "GND" H 5905 5877 50  0000 C CNN
F 2 "" H 5900 6050 50  0001 C CNN
F 3 "" H 5900 6050 50  0001 C CNN
	1    5900 6050
	1    0    0    -1  
$EndComp
Text Label 6650 5150 0    50   ~ 0
BUTTON
Text Label 6650 4650 0    50   ~ 0
SCL
Text Label 6650 4550 0    50   ~ 0
SDA
$Comp
L Device:D D1
U 1 1 5E36DB60
P 1800 950
F 0 "D1" H 1800 1166 50  0001 C CNN
F 1 "D" H 1800 1075 50  0000 C CNN
F 2 "Diode_SMD:D_SMB" H 1800 950 50  0001 C CNN
F 3 "~" H 1800 950 50  0001 C CNN
	1    1800 950 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2000 1050 2000 1100
Text Label 2250 3750 0    50   ~ 0
A0
Text Label 6650 4350 0    50   ~ 0
A2
$Comp
L power:+12V #PWR0108
U 1 1 5F2FDE4C
P 4700 1050
F 0 "#PWR0108" H 4700 900 50  0001 C CNN
F 1 "+12V" H 4715 1223 50  0000 C CNN
F 2 "" H 4700 1050 50  0001 C CNN
F 3 "" H 4700 1050 50  0001 C CNN
	1    4700 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5F30399B
P 5950 1650
F 0 "#PWR0110" H 5950 1400 50  0001 C CNN
F 1 "GND" H 5955 1477 50  0000 C CNN
F 2 "" H 5950 1650 50  0001 C CNN
F 3 "" H 5950 1650 50  0001 C CNN
	1    5950 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 5F30C6C9
P 5950 1100
F 0 "#PWR0111" H 5950 950 50  0001 C CNN
F 1 "+5V" H 5965 1273 50  0000 C CNN
F 2 "" H 5950 1100 50  0001 C CNN
F 3 "" H 5950 1100 50  0001 C CNN
	1    5950 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C7
U 1 1 5F3182B2
P 5950 1350
F 0 "C7" H 6068 1396 50  0000 L CNN
F 1 "100uf" H 6068 1350 50  0000 L CNN
F 2 "Capacitor_SMD:C_2816_7142Metric_Pad3.20x4.45mm_HandSolder" H 5988 1200 50  0001 C CNN
F 3 "~" H 5950 1350 50  0001 C CNN
	1    5950 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5F15C428
P 2100 4050
F 0 "C4" H 2215 4096 50  0000 L CNN
F 1 "220uF" H 2215 4050 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2138 3900 50  0001 C CNN
F 3 "~" H 2100 4050 50  0001 C CNN
	1    2100 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5F15F2F4
P 2100 4300
F 0 "#PWR0113" H 2100 4050 50  0001 C CNN
F 1 "GND" H 2105 4127 50  0000 C CNN
F 2 "" H 2100 4300 50  0001 C CNN
F 3 "" H 2100 4300 50  0001 C CNN
	1    2100 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4300 2100 4200
Wire Wire Line
	2100 3900 2100 3750
Wire Wire Line
	2100 3750 2250 3750
Connection ~ 1600 3750
Wire Wire Line
	1650 3750 1600 3750
$Comp
L power:GND #PWR0115
U 1 1 5F17F8DA
P 1600 4300
F 0 "#PWR0115" H 1600 4050 50  0001 C CNN
F 1 "GND" H 1605 4127 50  0000 C CNN
F 2 "" H 1600 4300 50  0001 C CNN
F 3 "" H 1600 4300 50  0001 C CNN
	1    1600 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 4200 1600 4300
Wire Wire Line
	1600 3900 1600 3750
$Comp
L power:+5V #PWR0116
U 1 1 5F1EEB7D
P 1600 3350
F 0 "#PWR0116" H 1600 3200 50  0001 C CNN
F 1 "+5V" H 1615 3523 50  0000 C CNN
F 2 "" H 1600 3350 50  0001 C CNN
F 3 "" H 1600 3350 50  0001 C CNN
	1    1600 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3350 1600 3400
$Comp
L Device:C C1
U 1 1 5F13F8C1
P 1600 4050
F 0 "C1" H 1715 4096 50  0000 L CNN
F 1 "100n" H 1715 4050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1638 3900 50  0001 C CNN
F 3 "~" H 1600 4050 50  0001 C CNN
	1    1600 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5F13EDDA
P 1600 3550
F 0 "R1" H 1670 3596 50  0001 L CNN
F 1 "1k" H 1400 3650 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1530 3550 50  0001 C CNN
F 3 "~" H 1600 3550 50  0001 C CNN
	1    1600 3550
	1    0    0    -1  
$EndComp
Text Label 2250 4800 0    50   ~ 0
A1
$Comp
L Device:R R3
U 1 1 5FD47D5E
P 1800 4800
F 0 "R3" H 1870 4846 50  0001 L CNN
F 1 "2.2k" V 1700 4750 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1730 4800 50  0001 C CNN
F 3 "~" H 1800 4800 50  0001 C CNN
	1    1800 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	1950 4800 2100 4800
$Comp
L Device:C C5
U 1 1 5FD47D65
P 2100 5100
F 0 "C5" H 2215 5146 50  0000 L CNN
F 1 "2uF" H 2215 5100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2138 4950 50  0001 C CNN
F 3 "~" H 2100 5100 50  0001 C CNN
	1    2100 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5FD47D6B
P 2100 5350
F 0 "#PWR0117" H 2100 5100 50  0001 C CNN
F 1 "GND" H 2105 5177 50  0000 C CNN
F 2 "" H 2100 5350 50  0001 C CNN
F 3 "" H 2100 5350 50  0001 C CNN
	1    2100 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 5350 2100 5250
Wire Wire Line
	2100 4950 2100 4800
Connection ~ 2100 4800
Wire Wire Line
	2100 4800 2250 4800
$Comp
L power:GND #PWR0119
U 1 1 5FD47D82
P 1600 5350
F 0 "#PWR0119" H 1600 5100 50  0001 C CNN
F 1 "GND" H 1605 5177 50  0000 C CNN
F 2 "" H 1600 5350 50  0001 C CNN
F 3 "" H 1600 5350 50  0001 C CNN
	1    1600 5350
	1    0    0    -1  
$EndComp
Text Label 2250 5950 0    50   ~ 0
A2
$Comp
L Device:R R4
U 1 1 5FD7A793
P 1800 5950
F 0 "R4" H 1870 5996 50  0001 L CNN
F 1 "2.2k" V 1700 5900 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1730 5950 50  0001 C CNN
F 3 "~" H 1800 5950 50  0001 C CNN
	1    1800 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	1950 5950 2100 5950
$Comp
L Device:C C6
U 1 1 5FD7A79A
P 2100 6250
F 0 "C6" H 2215 6296 50  0000 L CNN
F 1 "2uF" H 2215 6250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2138 6100 50  0001 C CNN
F 3 "~" H 2100 6250 50  0001 C CNN
	1    2100 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5FD7A7A0
P 2100 6500
F 0 "#PWR0120" H 2100 6250 50  0001 C CNN
F 1 "GND" H 2105 6327 50  0000 C CNN
F 2 "" H 2100 6500 50  0001 C CNN
F 3 "" H 2100 6500 50  0001 C CNN
	1    2100 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 6500 2100 6400
Wire Wire Line
	2100 6100 2100 5950
Connection ~ 2100 5950
Wire Wire Line
	2100 5950 2250 5950
$Comp
L power:GND #PWR0122
U 1 1 5FD7A7B7
P 1600 6500
F 0 "#PWR0122" H 1600 6250 50  0001 C CNN
F 1 "GND" H 1605 6327 50  0000 C CNN
F 2 "" H 1600 6500 50  0001 C CNN
F 3 "" H 1600 6500 50  0001 C CNN
	1    1600 6500
	1    0    0    -1  
$EndComp
$Comp
L misc:mini-360 U1
U 1 1 62BC65E9
P 5300 1100
F 0 "U1" H 5300 1275 50  0000 C CNN
F 1 "mini-360" H 5300 1184 50  0000 C CNN
F 2 "misc:mini-360" H 5420 980 50  0001 C CNN
F 3 "" H 5420 980 50  0001 C CNN
	1    5300 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 62BE8000
P 1600 5100
F 0 "C2" H 1715 5146 50  0001 L CNN
F 1 "100n" H 1715 5100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1638 4950 50  0001 C CNN
F 3 "~" H 1600 5100 50  0001 C CNN
	1    1600 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 4950 1600 4800
Wire Wire Line
	1600 4800 1650 4800
$Comp
L Device:C C3
U 1 1 62BF9479
P 1600 6250
F 0 "C3" H 1715 6296 50  0000 L CNN
F 1 "100n" H 1715 6250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1638 6100 50  0001 C CNN
F 3 "~" H 1600 6250 50  0001 C CNN
	1    1600 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 6100 1600 5950
Wire Wire Line
	1600 5950 1650 5950
Wire Wire Line
	4800 3300 4800 3250
Wire Wire Line
	5900 2850 5950 2850
$Comp
L power:+5V #PWR0105
U 1 1 62C513F4
P 5950 2800
F 0 "#PWR0105" H 5950 2650 50  0001 C CNN
F 1 "+5V" H 5965 2973 50  0000 C CNN
F 2 "" H 5950 2800 50  0001 C CNN
F 3 "" H 5950 2800 50  0001 C CNN
	1    5950 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2800 5950 2850
Connection ~ 5950 2850
Wire Wire Line
	5950 2850 6000 2850
Wire Wire Line
	5900 2950 5900 2850
Wire Wire Line
	6650 4650 6500 4650
Wire Wire Line
	6500 4550 6650 4550
Wire Wire Line
	6650 4350 6500 4350
Wire Wire Line
	6500 4250 6650 4250
Wire Wire Line
	6650 4150 6500 4150
Wire Wire Line
	5900 6050 5900 5950
Wire Wire Line
	4800 3250 5300 3250
Wire Wire Line
	6000 2850 6000 2950
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U2
U 1 1 62C338F7
P 5900 4450
F 0 "U2" H 5850 3650 50  0000 C CNN
F 1 "ATmega328P-AU" H 5800 3500 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 5900 4450 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 5900 4450 50  0001 C CNN
	1    5900 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 62C5ABE2
P 7450 4750
F 0 "R5" H 7520 4796 50  0001 L CNN
F 1 "10k" V 7350 4700 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7380 4750 50  0001 C CNN
F 3 "~" H 7450 4750 50  0001 C CNN
	1    7450 4750
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 62C5BA56
P 7600 4650
F 0 "#PWR0106" H 7600 4500 50  0001 C CNN
F 1 "+5V" H 7615 4823 50  0000 C CNN
F 2 "" H 7600 4650 50  0001 C CNN
F 3 "" H 7600 4650 50  0001 C CNN
	1    7600 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4750 7600 4650
Wire Wire Line
	4800 3700 4800 3600
$Comp
L power:GND #PWR0109
U 1 1 62C494C6
P 4800 3700
F 0 "#PWR0109" H 4800 3450 50  0001 C CNN
F 1 "GND" H 4805 3527 50  0000 C CNN
F 2 "" H 4800 3700 50  0001 C CNN
F 3 "" H 4800 3700 50  0001 C CNN
	1    4800 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 62C45AF1
P 4800 3450
F 0 "C9" H 4915 3496 50  0001 L CNN
F 1 "100n" H 4915 3450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4838 3300 50  0001 C CNN
F 3 "~" H 4800 3450 50  0001 C CNN
	1    4800 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 62C66EBD
P 7200 4950
F 0 "C12" H 7315 4996 50  0001 L CNN
F 1 "100n" H 7315 4950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7238 4800 50  0001 C CNN
F 3 "~" H 7200 4950 50  0001 C CNN
	1    7200 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 62C673CB
P 7200 5200
F 0 "#PWR0112" H 7200 4950 50  0001 C CNN
F 1 "GND" H 7205 5027 50  0000 C CNN
F 2 "" H 7200 5200 50  0001 C CNN
F 3 "" H 7200 5200 50  0001 C CNN
	1    7200 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4750 7200 4800
Wire Wire Line
	7200 5100 7200 5200
Wire Wire Line
	6500 4750 7200 4750
Connection ~ 7200 4750
Wire Wire Line
	7200 4750 7300 4750
$Comp
L Device:Crystal Y1
U 1 1 62C7D62F
P 7250 3900
F 0 "Y1" V 7204 4031 50  0000 L CNN
F 1 "16MHz" V 7295 4031 50  0000 L CNN
F 2 "Crystal:Crystal_HC52-U_Vertical" H 7250 3900 50  0001 C CNN
F 3 "~" H 7250 3900 50  0001 C CNN
	1    7250 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 3850 6950 3850
Wire Wire Line
	6950 3850 6950 3750
Wire Wire Line
	6950 3750 7250 3750
Wire Wire Line
	6500 3950 6950 3950
Wire Wire Line
	6950 3950 6950 4050
Wire Wire Line
	6950 4050 7250 4050
$Comp
L Device:C C14
U 1 1 62C85B79
P 7700 4050
F 0 "C14" H 7815 4096 50  0001 L CNN
F 1 "22p" V 7850 3950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7738 3900 50  0001 C CNN
F 3 "~" H 7700 4050 50  0001 C CNN
	1    7700 4050
	0    1    1    0   
$EndComp
$Comp
L Device:C C13
U 1 1 62C8610A
P 7700 3750
F 0 "C13" H 7815 3796 50  0001 L CNN
F 1 "22p" V 7550 3650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7738 3600 50  0001 C CNN
F 3 "~" H 7700 3750 50  0001 C CNN
	1    7700 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 3750 7550 3750
Wire Wire Line
	7950 3750 7950 4050
Wire Wire Line
	7950 4050 7850 4050
Wire Wire Line
	7550 4050 7250 4050
Wire Wire Line
	7850 3750 7950 3750
Connection ~ 7250 3750
Connection ~ 7250 4050
$Comp
L power:GND #PWR0114
U 1 1 62C90E68
P 7950 4100
F 0 "#PWR0114" H 7950 3850 50  0001 C CNN
F 1 "GND" H 7955 3927 50  0000 C CNN
F 2 "" H 7950 4100 50  0001 C CNN
F 3 "" H 7950 4100 50  0001 C CNN
	1    7950 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 4100 7950 4050
Connection ~ 7950 4050
$Comp
L Device:C C11
U 1 1 62CA7B76
P 5100 4900
F 0 "C11" H 5215 4946 50  0001 L CNN
F 1 "100n" H 4900 5000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5138 4750 50  0001 C CNN
F 3 "~" H 5100 4900 50  0001 C CNN
	1    5100 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 62CA9238
P 4950 5100
F 0 "#PWR0118" H 4950 4850 50  0001 C CNN
F 1 "GND" H 4955 4927 50  0000 C CNN
F 2 "" H 4950 5100 50  0001 C CNN
F 3 "" H 4950 5100 50  0001 C CNN
	1    4950 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0121
U 1 1 62CA960B
P 4950 4700
F 0 "#PWR0121" H 4950 4550 50  0001 C CNN
F 1 "+5V" H 4965 4873 50  0000 C CNN
F 2 "" H 4950 4700 50  0001 C CNN
F 3 "" H 4950 4700 50  0001 C CNN
	1    4950 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 62CB50E0
P 4800 4900
F 0 "C10" H 4915 4946 50  0001 L CNN
F 1 "100n" H 4600 5000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4838 4750 50  0001 C CNN
F 3 "~" H 4800 4900 50  0001 C CNN
	1    4800 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4750 4800 4700
Wire Wire Line
	4800 4700 4950 4700
Wire Wire Line
	5100 4700 5100 4750
Wire Wire Line
	5100 5100 4950 5100
Wire Wire Line
	4800 5100 4800 5050
Wire Wire Line
	5100 5050 5100 5100
Connection ~ 4950 4700
Wire Wire Line
	4950 4700 5100 4700
Connection ~ 4950 5100
Wire Wire Line
	4950 5100 4800 5100
$Comp
L Device:CP C8
U 1 1 62BE5675
P 4700 1350
F 0 "C8" H 4818 1396 50  0000 L CNN
F 1 "100uf" H 4350 1350 50  0000 L CNN
F 2 "Capacitor_SMD:C_2816_7142Metric_Pad3.20x4.45mm_HandSolder" H 4738 1200 50  0001 C CNN
F 3 "~" H 4700 1350 50  0001 C CNN
	1    4700 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1050 4700 1150
Wire Wire Line
	4900 1150 4700 1150
Connection ~ 4700 1150
Wire Wire Line
	4700 1150 4700 1200
Wire Wire Line
	4900 1500 4700 1500
$Comp
L power:GND #PWR0123
U 1 1 62BF90DD
P 4700 1600
F 0 "#PWR0123" H 4700 1350 50  0001 C CNN
F 1 "GND" H 4705 1427 50  0000 C CNN
F 2 "" H 4700 1600 50  0001 C CNN
F 3 "" H 4700 1600 50  0001 C CNN
	1    4700 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1600 4700 1500
Connection ~ 4700 1500
Wire Wire Line
	5950 1100 5950 1150
Wire Wire Line
	5700 1150 5950 1150
Connection ~ 5950 1150
Wire Wire Line
	5950 1150 5950 1200
Wire Wire Line
	5700 1500 5950 1500
Wire Wire Line
	5950 1650 5950 1500
Connection ~ 5950 1500
Text GLabel 1400 3750 0    50   Input ~ 0
TEMP_SENSOR
Wire Wire Line
	1400 3750 1600 3750
Wire Wire Line
	1600 3700 1600 3750
Wire Wire Line
	1600 5250 1600 5350
Wire Wire Line
	1600 6400 1600 6500
Text GLabel 1550 5950 0    50   Input ~ 0
FUEL_PRESSURE
Wire Wire Line
	1550 5950 1600 5950
Connection ~ 1600 5950
Connection ~ 1600 4800
Wire Wire Line
	1150 1050 2000 1050
Wire Wire Line
	1150 950  1650 950 
Text GLabel 1250 1150 2    50   Input ~ 0
TEMP_SENSOR
Wire Wire Line
	1550 4800 1600 4800
Text GLabel 1550 4800 0    50   Input ~ 0
OIL_PRESSURE
Text GLabel 1250 1250 2    50   Input ~ 0
OIL_PRESSURE
Text GLabel 1250 1350 2    50   Input ~ 0
FUEL_PRESSURE
Wire Wire Line
	1150 1150 1250 1150
Wire Wire Line
	1250 1250 1150 1250
Wire Wire Line
	1150 1350 1250 1350
Connection ~ 2100 3750
Wire Wire Line
	1950 3750 2100 3750
Wire Wire Line
	6650 5150 6500 5150
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 62D83003
P 9600 1500
F 0 "J3" H 9572 1382 50  0000 R CNN
F 1 "Conn_01x04_Male" H 9572 1473 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9600 1500 50  0001 C CNN
F 3 "~" H 9600 1500 50  0001 C CNN
	1    9600 1500
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 62D951A1
P 950 1700
F 0 "J2" H 1058 1881 50  0000 C CNN
F 1 "button input" H 1058 1790 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 950 1700 50  0001 C CNN
F 3 "~" H 950 1700 50  0001 C CNN
	1    950  1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1700 1150 1700
$Comp
L power:GND #PWR0124
U 1 1 62D9B362
P 1300 1800
F 0 "#PWR0124" H 1300 1550 50  0001 C CNN
F 1 "GND" H 1305 1627 50  0000 C CNN
F 2 "" H 1300 1800 50  0001 C CNN
F 3 "" H 1300 1800 50  0001 C CNN
	1    1300 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1800 1150 1800
$Comp
L power:+5V #PWR0104
U 1 1 62DE99E8
P 9000 1350
F 0 "#PWR0104" H 9000 1200 50  0001 C CNN
F 1 "+5V" H 9015 1523 50  0000 C CNN
F 2 "" H 9000 1350 50  0001 C CNN
F 3 "" H 9000 1350 50  0001 C CNN
	1    9000 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 1500 9000 1500
Wire Wire Line
	9000 1350 9000 1500
Wire Wire Line
	9300 1400 9400 1400
Wire Wire Line
	9300 1300 9400 1300
$Comp
L Connector:Conn_01x01_Male J1
U 1 1 62E2C043
P 950 950
F 0 "J1" H 1058 1039 50  0000 C CNN
F 1 "Conn_01x01_Male" H 1058 1040 50  0001 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 950 950 50  0001 C CNN
F 3 "~" H 950 950 50  0001 C CNN
	1    950  950 
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J5
U 1 1 62E2C60A
P 950 1050
F 0 "J5" H 1058 1139 50  0000 C CNN
F 1 "Conn_01x01_Male" H 1058 1140 50  0001 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 950 1050 50  0001 C CNN
F 3 "~" H 950 1050 50  0001 C CNN
	1    950  1050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J6
U 1 1 62E2C771
P 950 1150
F 0 "J6" H 1058 1239 50  0000 C CNN
F 1 "Conn_01x01_Male" H 1058 1240 50  0001 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 950 1150 50  0001 C CNN
F 3 "~" H 950 1150 50  0001 C CNN
	1    950  1150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J7
U 1 1 62E2C8E0
P 950 1250
F 0 "J7" H 1058 1339 50  0000 C CNN
F 1 "Conn_01x01_Male" H 1058 1340 50  0001 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 950 1250 50  0001 C CNN
F 3 "~" H 950 1250 50  0001 C CNN
	1    950  1250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J8
U 1 1 62E2CB26
P 950 1350
F 0 "J8" H 1058 1439 50  0000 C CNN
F 1 "Conn_01x01_Male" H 1058 1440 50  0001 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 950 1350 50  0001 C CNN
F 3 "~" H 950 1350 50  0001 C CNN
	1    950  1350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J4
U 1 1 62E42B77
P 950 750
F 0 "J4" H 1058 839 50  0000 C CNN
F 1 "Conn_01x01_Male" H 1058 840 50  0001 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 950 750 50  0001 C CNN
F 3 "~" H 950 750 50  0001 C CNN
	1    950  750 
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0125
U 1 1 62E45E7B
P 1250 700
F 0 "#PWR0125" H 1250 550 50  0001 C CNN
F 1 "+12V" H 1265 873 50  0000 C CNN
F 2 "" H 1250 700 50  0001 C CNN
F 3 "" H 1250 700 50  0001 C CNN
	1    1250 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 700  1250 750 
Wire Wire Line
	1250 750  1150 750 
$Comp
L Connector:Conn_01x03_Male J9
U 1 1 62BA8980
P 6850 3650
F 0 "J9" H 6822 3582 50  0000 R CNN
F 1 "programming" H 7100 3400 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6850 3650 50  0001 C CNN
F 3 "~" H 6850 3650 50  0001 C CNN
	1    6850 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	6500 3550 6650 3550
Wire Wire Line
	6500 3650 6650 3650
Wire Wire Line
	6500 3750 6650 3750
$Comp
L Connector:Conn_01x02_Male J10
U 1 1 62BBFE92
P 6850 5050
F 0 "J10" H 6800 5000 50  0000 C CNN
F 1 "serial" H 6900 4850 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6850 5050 50  0001 C CNN
F 3 "~" H 6850 5050 50  0001 C CNN
	1    6850 5050
	-1   0    0    1   
$EndComp
Wire Wire Line
	6650 4950 6500 4950
Wire Wire Line
	6500 5050 6650 5050
$Comp
L Connector:Conn_01x01_Male J11
U 1 1 62BC8765
P 7200 4450
F 0 "J11" V 7262 4494 50  0000 L CNN
F 1 "reset" V 7353 4494 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 7200 4450 50  0001 C CNN
F 3 "~" H 7200 4450 50  0001 C CNN
	1    7200 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	7200 4650 7200 4750
$Comp
L Device:R R2
U 1 1 5F151BDF
P 1800 3750
F 0 "R2" H 1870 3796 50  0001 L CNN
F 1 "2.2k" V 1700 3700 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1730 3750 50  0001 C CNN
F 3 "~" H 1800 3750 50  0001 C CNN
	1    1800 3750
	0    1    1    0   
$EndComp
$EndSCHEMATC
