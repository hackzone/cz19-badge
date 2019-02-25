EESchema Schematic File Version 4
LIBS:cz19-badge-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "CampZone 2019 Event Badge"
Date "2019-02-19"
Rev ""
Comp "HackZone"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1200 6050 1650 800 
U 5C6C6B0C
F0 "LEDs" 50
F1 "LEDs.sch" 50
F2 "LEDS_IN" I L 1200 6250 50 
F3 "LEDS_OUT" I L 1200 6550 50 
F4 "LED_GND" I R 2850 6550 50 
F5 "VCC" I R 2850 6250 50 
$EndSheet
Text GLabel 2850 6250 2    50   UnSpc ~ 0
VCC
Text GLabel 3550 7150 2    50   UnSpc ~ 0
GND
$Comp
L RF_Module:ESP32-WROOM-32D U2
U 1 1 5C6EF884
P 2350 2600
F 0 "U2" H 1650 1350 50  0000 C CNN
F 1 "ESP32-WROOM-32D" V 2450 2600 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 2350 1100 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 2050 2650 50  0001 C CNN
	1    2350 2600
	1    0    0    -1  
$EndComp
Text GLabel 2350 850  1    50   UnSpc ~ 0
3V3
Text GLabel 2350 4150 3    50   UnSpc ~ 0
GND
Wire Wire Line
	2350 4150 2350 4000
$Comp
L Device:R R3
U 1 1 5C6EFE2A
P 1450 1250
F 0 "R3" V 1243 1250 50  0000 C CNN
F 1 "10k" V 1334 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1380 1250 50  0001 C CNN
F 3 "~" H 1450 1250 50  0001 C CNN
	1    1450 1250
	0    1    1    0   
$EndComp
Text GLabel 3450 1400 2    50   Input ~ 0
ESP_FLASH
Wire Wire Line
	3450 1400 3300 1400
$Comp
L Device:R R1
U 1 1 5C6F02EE
P 3100 1100
F 0 "R1" V 2893 1100 50  0000 C CNN
F 1 "10k" V 2984 1100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3030 1100 50  0001 C CNN
F 3 "~" H 3100 1100 50  0001 C CNN
	1    3100 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1250 3100 1400
Connection ~ 3100 1400
Wire Wire Line
	3100 1400 2950 1400
Wire Wire Line
	2350 850  2350 1100
Text GLabel 1250 1250 0    50   UnSpc ~ 0
3V3
Wire Wire Line
	1250 1250 1300 1250
Text GLabel 3100 850  1    50   UnSpc ~ 0
3V3
Text GLabel 1250 1400 0    50   Input ~ 0
ESP_EN
Wire Wire Line
	1250 1400 1600 1400
Wire Wire Line
	1600 1250 1600 1400
Connection ~ 1600 1400
Wire Wire Line
	1600 1400 1750 1400
$Comp
L Device:R R4
U 1 1 5C6F13F0
P 3250 1600
F 0 "R4" V 3200 1450 50  0000 C CNN
F 1 "10k" V 3250 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3180 1600 50  0001 C CNN
F 3 "~" H 3250 1600 50  0001 C CNN
	1    3250 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 1600 2950 1600
Text GLabel 3450 1600 2    50   UnSpc ~ 0
GND
Wire Wire Line
	3450 1600 3400 1600
NoConn ~ 2950 2000
NoConn ~ 2950 2300
Text GLabel 3450 1500 2    50   Output ~ 0
ESP_TX
Text GLabel 3450 1700 2    50   Input ~ 0
ESP_RX
Wire Wire Line
	3450 1500 2950 1500
Wire Wire Line
	2950 1700 3450 1700
Text Notes 3000 2050 0    50   ~ 0
Sets VDD_SDIO to 1.8V when driven HIGH
Text Notes 3000 2350 0    50   ~ 0
Hides bootloader output when driven LOW
NoConn ~ 2950 1900
Text Notes 3000 1950 0    50   ~ 0
Changes SDIO timing when driven LOW
Text Notes 3650 1650 0    50   ~ 0
Enables serial bootloader when ESP_FLASH is driven LOW
Text GLabel 3450 2600 2    50   Output ~ 0
LEDS_ENABLE
Wire Wire Line
	3450 2600 2950 2600
Text GLabel 3450 2700 2    50   Output ~ 0
LEDS_IN
Wire Wire Line
	3450 2700 2950 2700
Wire Wire Line
	3550 7150 3500 7150
Text GLabel 1050 6250 0    50   Input ~ 0
LEDS_IN
Wire Wire Line
	1050 6250 1200 6250
Text GLabel 1050 6550 0    50   Output ~ 0
LEDS_OUT
Wire Wire Line
	1050 6550 1200 6550
$Comp
L Interface_USB:CH340G U1
U 1 1 5C797759
P 8750 1700
F 0 "U1" H 8750 922 50  0000 C CNN
F 1 "CH340C" H 8750 1013 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 8800 1150 50  0001 L CNN
F 3 "https://www.mpja.com/download/35227cpdata.pdf" H 8400 2500 50  0001 C CNN
	1    8750 1700
	-1   0    0    1   
$EndComp
NoConn ~ 9150 1300
NoConn ~ 9150 1500
Text GLabel 8150 2000 0    50   Input ~ 0
ESP_TX
Text GLabel 8150 2100 0    50   Output ~ 0
ESP_RX
Wire Wire Line
	8350 2000 8150 2000
Wire Wire Line
	8150 2100 8350 2100
Text GLabel 6850 1800 0    50   Output ~ 0
ESP_EN
Text GLabel 6850 900  0    50   Output ~ 0
ESP_FLASH
NoConn ~ 8350 1800
NoConn ~ 8350 1700
NoConn ~ 8350 1600
NoConn ~ 8350 1500
NoConn ~ 9150 2000
Wire Wire Line
	8850 2300 8750 2300
Text GLabel 8750 2450 3    50   UnSpc ~ 0
3V3
Wire Wire Line
	8750 2450 8750 2300
Connection ~ 8750 2300
$Comp
L Connector:USB_B_Micro J1
U 1 1 5C79B386
P 10000 1800
F 0 "J1" H 9771 1698 50  0000 R CNN
F 1 "USB_B_Micro" H 9771 1789 50  0000 R CNN
F 2 "Connector_USB:USB_Micro-B_Molex_47346-0001" H 10150 1750 50  0001 C CNN
F 3 "~" H 10150 1750 50  0001 C CNN
	1    10000 1800
	-1   0    0    1   
$EndComp
NoConn ~ 9700 1600
Wire Wire Line
	9700 1700 9150 1700
Wire Wire Line
	9150 1800 9700 1800
Text GLabel 9650 2000 0    50   UnSpc ~ 0
5V_USB
Wire Wire Line
	9650 2000 9700 2000
Wire Wire Line
	10100 1400 10000 1400
Text GLabel 10000 1300 1    50   UnSpc ~ 0
GND
Wire Wire Line
	10000 1300 10000 1400
Connection ~ 10000 1400
Wire Wire Line
	6850 900  6900 900 
Wire Wire Line
	6850 1800 6900 1800
$Comp
L Device:R R2
U 1 1 5C72BD16
P 7850 1100
F 0 "R2" V 7750 1100 50  0000 C CNN
F 1 "10k" V 7850 1100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7780 1100 50  0001 C CNN
F 3 "~" H 7850 1100 50  0001 C CNN
	1    7850 1100
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5C72BEF3
P 7850 1600
F 0 "R5" V 7750 1600 50  0000 C CNN
F 1 "10k" V 7850 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7780 1600 50  0001 C CNN
F 3 "~" H 7850 1600 50  0001 C CNN
	1    7850 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7700 1600 7600 1600
Wire Wire Line
	7600 1100 7700 1100
Wire Wire Line
	8000 1300 8000 1100
Wire Wire Line
	8000 1300 7750 1300
Wire Wire Line
	7750 1300 7750 1350
Wire Wire Line
	7750 1350 7650 1350
Wire Wire Line
	7650 1350 7650 1400
Connection ~ 8000 1300
Wire Wire Line
	7700 1300 7700 1400
Wire Wire Line
	7700 1400 8000 1400
Wire Wire Line
	8000 1400 8000 1600
Connection ~ 8000 1400
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5C7325F3
P 7050 1300
F 0 "JP1" H 7050 1505 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 6800 1400 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 7050 1300 50  0001 C CNN
F 3 "~" H 7050 1300 50  0001 C CNN
	1    7050 1300
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP2
U 1 1 5C73410B
P 7050 1400
F 0 "JP2" H 7050 1200 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 6800 1300 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 7050 1400 50  0001 C CNN
F 3 "~" H 7050 1400 50  0001 C CNN
	1    7050 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1400 8350 1400
Wire Wire Line
	8000 1300 8350 1300
Wire Wire Line
	6900 1300 6900 900 
Connection ~ 6900 900 
Wire Wire Line
	6900 900  7300 900 
Wire Wire Line
	6900 1400 6900 1800
Connection ~ 6900 1800
Wire Wire Line
	6900 1800 7300 1800
Text Notes 5500 1400 0    50   ~ 0
Jumpers are for prototype so\nwe won’t have to use the transistors
$Comp
L Regulator_Linear:AMS1117 U3
U 1 1 5C73D096
P 9750 3450
F 0 "U3" H 9750 3692 50  0000 C CNN
F 1 "AMS1117" H 9750 3601 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 9750 3650 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 9850 3200 50  0001 C CNN
	1    9750 3450
	1    0    0    -1  
$EndComp
Text GLabel 9350 3450 0    50   UnSpc ~ 0
VCC
Wire Wire Line
	9350 3450 9450 3450
Text GLabel 10150 3450 2    50   UnSpc ~ 0
3V3
Wire Wire Line
	10150 3450 10050 3450
Text GLabel 9750 3850 3    50   UnSpc ~ 0
GND
Wire Wire Line
	9750 3850 9750 3750
Text GLabel 9700 2200 3    50   UnSpc ~ 0
VCC
Wire Wire Line
	9700 2200 9700 2000
Connection ~ 9700 2000
Text Notes 9800 2400 0    50   ~ 0
TODO: add battery w/ proper \nautomatic source selection
Wire Wire Line
	3100 850  3100 950 
$Comp
L Device:C C2
U 1 1 5C7936CA
P 3300 1100
F 0 "C2" H 3415 1146 50  0000 L CNN
F 1 "100nF" H 3415 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3338 950 50  0001 C CNN
F 3 "~" H 3300 1100 50  0001 C CNN
	1    3300 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1250 3300 1400
Connection ~ 3300 1400
Wire Wire Line
	3300 1400 3100 1400
Text GLabel 3300 850  1    50   UnSpc ~ 0
GND
Wire Wire Line
	3300 850  3300 950 
$Comp
L Device:C C1
U 1 1 5C795C91
P 2200 1100
F 0 "C1" V 1948 1100 50  0000 C CNN
F 1 "100nF" V 2039 1100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2238 950 50  0001 C CNN
F 3 "~" H 2200 1100 50  0001 C CNN
	1    2200 1100
	0    1    1    0   
$EndComp
Connection ~ 2350 1100
Wire Wire Line
	2350 1100 2350 1200
Text GLabel 2050 850  1    50   UnSpc ~ 0
GND
Wire Wire Line
	2050 850  2050 1100
$Comp
L Transistor_FET:DMN2050L Q1
U 1 1 5C79C987
P 7400 1100
F 0 "Q1" H 7250 1200 50  0000 L CNN
F 1 "AO3400 (A09T)" H 7200 1350 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7600 1025 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/ao3400.pdf" H 7400 1100 50  0001 L CNN
	1    7400 1100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7200 1300 7300 1300
Connection ~ 7300 1300
Wire Wire Line
	7300 1300 7700 1300
Wire Wire Line
	7200 1400 7300 1400
$Comp
L Transistor_FET:DMN2050L Q2
U 1 1 5C79E677
P 7400 1600
F 0 "Q2" H 7250 1700 50  0000 L CNN
F 1 "AO3400 (A09T)" H 7200 1850 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7600 1525 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/ao3400.pdf" H 7400 1600 50  0001 L CNN
	1    7400 1600
	-1   0    0    1   
$EndComp
Connection ~ 7300 1400
Wire Wire Line
	7300 1400 7650 1400
$Comp
L Transistor_FET:DMN2050L Q8
U 1 1 5C7A070A
P 3300 7250
F 0 "Q8" V 3450 7050 50  0000 L CNN
F 1 "AO3400 (A09T)" V 3550 6850 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3500 7175 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/ao3400.pdf" H 3300 7250 50  0001 L CNN
	1    3300 7250
	0    -1   -1   0   
$EndComp
Text GLabel 3550 6550 2    50   UnSpc ~ 0
GND
Wire Wire Line
	3550 6550 3500 6550
Text GLabel 3950 6550 2    50   Input ~ 0
LEDS_ENABLE
$Comp
L Transistor_FET:DMN2050L Q7
U 1 1 5C7A59C7
P 3300 6650
F 0 "Q7" V 3450 6450 50  0000 L CNN
F 1 "AO3400 (A09T)" V 3550 6250 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3500 6575 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/ao3400.pdf" H 3300 6650 50  0001 L CNN
	1    3300 6650
	0    -1   -1   0   
$EndComp
Text GLabel 3550 5950 2    50   UnSpc ~ 0
GND
Wire Wire Line
	3550 5950 3500 5950
$Comp
L Transistor_FET:DMN2050L Q6
U 1 1 5C7A6AC3
P 3300 6050
F 0 "Q6" V 3450 5850 50  0000 L CNN
F 1 "AO3400 (A09T)" V 3550 5650 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3500 5975 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/ao3400.pdf" H 3300 6050 50  0001 L CNN
	1    3300 6050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2850 6550 3100 6550
Connection ~ 3100 6550
Wire Wire Line
	3100 6550 3100 7150
Wire Wire Line
	3100 5950 3100 6550
Wire Wire Line
	3950 6850 3300 6850
Wire Wire Line
	3950 6250 3300 6250
Wire Wire Line
	3950 6250 3950 6850
Wire Wire Line
	3950 6850 3950 7450
Wire Wire Line
	3950 7450 3300 7450
Connection ~ 3950 6850
$Comp
L power:+BATT #PWR01
U 1 1 5C7B5CB3
P 6750 3750
F 0 "#PWR01" H 6750 3600 50  0001 C CNN
F 1 "+BATT" H 6765 3923 50  0000 C CNN
F 2 "" H 6750 3750 50  0001 C CNN
F 3 "" H 6750 3750 50  0001 C CNN
	1    6750 3750
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR02
U 1 1 5C7B5E7B
P 8150 3750
F 0 "#PWR02" H 8150 3600 50  0001 C CNN
F 1 "-BATT" H 8165 3923 50  0000 C CNN
F 2 "" H 8150 3750 50  0001 C CNN
F 3 "" H 8150 3750 50  0001 C CNN
	1    8150 3750
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:DMN2050L Q5
U 1 1 5C7B6A21
P 7500 5450
F 0 "Q5" V 7650 5250 50  0000 L CNN
F 1 "AO3400 (A09T)" V 7750 5050 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7700 5375 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/ao3400.pdf" H 7500 5450 50  0001 L CNN
	1    7500 5450
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:DMN2050L Q4
U 1 1 5C7B6A2B
P 7500 4850
F 0 "Q4" V 7650 4650 50  0000 L CNN
F 1 "AO3400 (A09T)" V 7750 4450 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7700 4775 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/ao3400.pdf" H 7500 4850 50  0001 L CNN
	1    7500 4850
	0    -1   -1   0   
$EndComp
Text GLabel 7200 4150 0    50   UnSpc ~ 0
GND
$Comp
L Transistor_FET:DMN2050L Q3
U 1 1 5C7B6A34
P 7500 4250
F 0 "Q3" V 7650 4050 50  0000 L CNN
F 1 "AO3400 (A09T)" V 7750 3850 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7700 4175 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/ao3400.pdf" H 7500 4250 50  0001 L CNN
	1    7500 4250
	0    -1   -1   0   
$EndComp
Text GLabel 7200 4750 0    50   UnSpc ~ 0
GND
Text GLabel 7200 5350 0    50   UnSpc ~ 0
GND
Wire Wire Line
	7700 4150 7950 4150
Wire Wire Line
	7950 4150 7950 4750
Wire Wire Line
	7950 4750 8150 4750
Wire Wire Line
	7950 4750 7700 4750
Connection ~ 7950 4750
Wire Wire Line
	7700 5350 7950 5350
Wire Wire Line
	7950 5350 7950 4750
Wire Wire Line
	7300 4150 7200 4150
Wire Wire Line
	7300 4750 7200 4750
Wire Wire Line
	7300 5350 7200 5350
Wire Wire Line
	6750 5650 7500 5650
Wire Wire Line
	7500 4450 6950 4450
Wire Wire Line
	6950 4450 6950 4850
Wire Wire Line
	6950 4850 6750 4850
Wire Wire Line
	6750 4850 6750 5050
Wire Wire Line
	7500 5050 6750 5050
Connection ~ 6750 5050
Wire Wire Line
	6750 5050 6750 5650
Text GLabel 6650 3800 0    50   UnSpc ~ 0
VCC
$Comp
L Device:R R?
U 1 1 5C7E3C14
P 6750 4400
F 0 "R?" V 6650 4400 50  0000 C CNN
F 1 "10k" V 6750 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6680 4400 50  0001 C CNN
F 3 "~" H 6750 4400 50  0001 C CNN
	1    6750 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6650 3800 6750 3800
Wire Wire Line
	6750 3800 6750 3750
Connection ~ 6750 3800
Wire Wire Line
	8150 3750 8150 4750
Text GLabel 6000 5150 0    50   UnSpc ~ 0
5V_USB
Wire Wire Line
	6750 4550 6750 4850
Connection ~ 6750 4850
Wire Wire Line
	6750 3800 6750 4250
$Comp
L Transistor_FET:DMN2050L Q?
U 1 1 5C7FA4CC
P 6300 4950
F 0 "Q?" V 6450 4750 50  0000 L CNN
F 1 "AO3400 (A09T)" V 6550 4550 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6500 4875 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/ao3400.pdf" H 6300 4950 50  0001 L CNN
	1    6300 4950
	0    1    -1   0   
$EndComp
Wire Wire Line
	6000 5150 6300 5150
Text GLabel 6000 4850 0    50   UnSpc ~ 0
GND
Wire Wire Line
	6000 4850 6100 4850
Wire Wire Line
	6500 4850 6750 4850
$EndSCHEMATC
