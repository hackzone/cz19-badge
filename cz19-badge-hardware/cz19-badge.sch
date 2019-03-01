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
S 1050 900  1650 800 
U 5C6C6B0C
F0 "LEDs" 50
F1 "LEDs.sch" 50
F2 "LEDS_IN" I L 1050 1100 50 
F3 "LEDS_OUT" I L 1050 1400 50 
F4 "VCC" I R 2700 1100 50 
F5 "LGND" I R 2700 1400 50 
$EndSheet
Text GLabel 2750 1100 2    50   UnSpc ~ 0
VCC
Text GLabel 4050 2000 2    50   UnSpc ~ 0
GND
$Comp
L RF_Module:ESP32-WROOM-32D U3
U 1 1 5C6EF884
P 2100 5850
F 0 "U3" H 1400 4600 50  0000 C CNN
F 1 "ESP32-WROOM-32D" V 2200 5850 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 2100 4350 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 1800 5900 50  0001 C CNN
	1    2100 5850
	1    0    0    -1  
$EndComp
Text GLabel 2100 4100 1    50   UnSpc ~ 0
3V3
Text GLabel 2100 7400 3    50   UnSpc ~ 0
GND
Wire Wire Line
	2100 7400 2100 7250
$Comp
L Device:R R4
U 1 1 5C6EFE2A
P 1350 4350
F 0 "R4" V 1143 4350 50  0000 C CNN
F 1 "10k" V 1234 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1280 4350 50  0001 C CNN
F 3 "~" H 1350 4350 50  0001 C CNN
	1    1350 4350
	-1   0    0    1   
$EndComp
Text GLabel 3200 4650 2    50   Input ~ 0
ESP_FLASH
$Comp
L Device:R R5
U 1 1 5C6F02EE
P 2850 4350
F 0 "R5" V 2643 4350 50  0000 C CNN
F 1 "10k" V 2734 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2780 4350 50  0001 C CNN
F 3 "~" H 2850 4350 50  0001 C CNN
	1    2850 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4500 2850 4650
Connection ~ 2850 4650
Wire Wire Line
	2850 4650 2700 4650
Wire Wire Line
	2100 4100 2100 4350
Text GLabel 1350 4100 1    50   UnSpc ~ 0
3V3
Text GLabel 2850 4100 1    50   UnSpc ~ 0
3V3
Text GLabel 1000 4650 0    50   Input ~ 0
ESP_EN
Wire Wire Line
	1000 4650 1150 4650
Wire Wire Line
	1350 4500 1350 4650
Connection ~ 1350 4650
Wire Wire Line
	1350 4650 1500 4650
$Comp
L Device:R R6
U 1 1 5C6F13F0
P 3000 4850
F 0 "R6" V 2950 4700 50  0000 C CNN
F 1 "10k" V 3000 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2930 4850 50  0001 C CNN
F 3 "~" H 3000 4850 50  0001 C CNN
	1    3000 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 4850 2700 4850
Text GLabel 3200 4850 2    50   UnSpc ~ 0
GND
Wire Wire Line
	3200 4850 3150 4850
NoConn ~ 2700 5250
NoConn ~ 2700 5550
Text GLabel 3200 4750 2    50   Output ~ 0
ESP_TX
Text GLabel 3200 4950 2    50   Input ~ 0
ESP_RX
Wire Wire Line
	3200 4750 2700 4750
Wire Wire Line
	2700 4950 3200 4950
Text Notes 2750 5300 0    50   ~ 0
Sets VDD_SDIO to 1.8V when driven HIGH
Text Notes 2750 5600 0    50   ~ 0
Hides bootloader output when driven LOW
NoConn ~ 2700 5150
Text Notes 2750 5200 0    50   ~ 0
Changes SDIO timing when driven LOW
Text Notes 3400 4900 0    50   ~ 0
Enables serial bootloader when ESP_FLASH is driven LOW
Text GLabel 3200 5850 2    50   Output ~ 0
LEDS_ENABLE
Text GLabel 3200 5950 2    50   Output ~ 0
LEDS_IN
Wire Wire Line
	4050 2000 4000 2000
Text GLabel 900  1100 0    50   Input ~ 0
LEDS_IN
Wire Wire Line
	900  1100 1050 1100
Text GLabel 900  1400 0    50   Output ~ 0
LEDS_OUT
Wire Wire Line
	900  1400 1050 1400
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
P 10500 1700
F 0 "J1" H 10271 1598 50  0000 R CNN
F 1 "USB_B_Micro" H 10271 1689 50  0000 R CNN
F 2 "Connector_USB:USB_Micro-B_Molex_47346-0001" H 10650 1650 50  0001 C CNN
F 3 "~" H 10650 1650 50  0001 C CNN
	1    10500 1700
	-1   0    0    1   
$EndComp
NoConn ~ 10200 1500
Text GLabel 10150 1900 0    50   UnSpc ~ 0
5V_USB
Wire Wire Line
	10150 1900 10200 1900
Wire Wire Line
	10600 1300 10500 1300
Text GLabel 10500 1200 1    50   UnSpc ~ 0
GND
Wire Wire Line
	10500 1200 10500 1300
Connection ~ 10500 1300
Wire Wire Line
	6850 900  6900 900 
Wire Wire Line
	6850 1800 6900 1800
$Comp
L Device:R R1
U 1 1 5C72BD16
P 7850 1100
F 0 "R1" V 7750 1100 50  0000 C CNN
F 1 "10k" V 7850 1100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7780 1100 50  0001 C CNN
F 3 "~" H 7850 1100 50  0001 C CNN
	1    7850 1100
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5C72BEF3
P 7850 1600
F 0 "R3" V 7750 1600 50  0000 C CNN
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
L Jumper:SolderJumper_2_Open JP5
U 1 1 5C7325F3
P 7050 1300
F 0 "JP5" H 7050 1505 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 6800 1400 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 7050 1300 50  0001 C CNN
F 3 "~" H 7050 1300 50  0001 C CNN
	1    7050 1300
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP6
U 1 1 5C73410B
P 7050 1400
F 0 "JP6" H 7050 1200 50  0000 C CNN
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
L Regulator_Linear:AMS1117 U2
U 1 1 5C73D096
P 9550 3300
F 0 "U2" H 9550 3542 50  0000 C CNN
F 1 "AMS1117" H 9550 3451 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 9550 3500 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 9650 3050 50  0001 C CNN
	1    9550 3300
	1    0    0    -1  
$EndComp
Text GLabel 9150 3300 0    50   UnSpc ~ 0
VCC
Wire Wire Line
	9150 3300 9250 3300
Text GLabel 9950 3300 2    50   UnSpc ~ 0
3V3
Wire Wire Line
	9950 3300 9850 3300
Text GLabel 9550 3700 3    50   UnSpc ~ 0
GND
Wire Wire Line
	9550 3700 9550 3600
Text GLabel 10200 2300 3    50   UnSpc ~ 0
VCC
Wire Wire Line
	10200 1950 10200 1900
Connection ~ 10200 1900
Wire Wire Line
	2850 4100 2850 4200
$Comp
L Device:C C193
U 1 1 5C7936CA
P 1150 4350
F 0 "C193" H 1265 4396 50  0000 L CNN
F 1 "100nF" H 1265 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1188 4200 50  0001 C CNN
F 3 "~" H 1150 4350 50  0001 C CNN
	1    1150 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 4500 1150 4650
Text GLabel 1150 4100 1    50   UnSpc ~ 0
GND
Wire Wire Line
	1150 4100 1150 4200
$Comp
L Device:C C194
U 1 1 5C795C91
P 1950 4350
F 0 "C194" V 1698 4350 50  0000 C CNN
F 1 "100nF" V 1789 4350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1988 4200 50  0001 C CNN
F 3 "~" H 1950 4350 50  0001 C CNN
	1    1950 4350
	0    1    1    0   
$EndComp
Connection ~ 2100 4350
Wire Wire Line
	2100 4350 2100 4450
Text GLabel 1800 4100 1    50   UnSpc ~ 0
GND
Wire Wire Line
	1800 4100 1800 4350
$Comp
L Transistor_FET:DMN2050L Q2
U 1 1 5C79C987
P 7400 1100
F 0 "Q2" H 7250 1200 50  0000 L CNN
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
L Transistor_FET:DMN2050L Q4
U 1 1 5C79E677
P 7400 1600
F 0 "Q4" H 7250 1700 50  0000 L CNN
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
L Transistor_FET:DMN2050L Q5
U 1 1 5C7A070A
P 3800 2100
F 0 "Q5" V 3950 1900 50  0000 L CNN
F 1 "AO3400 (A09T)" V 4050 1700 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4000 2025 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/ao3400.pdf" H 3800 2100 50  0001 L CNN
	1    3800 2100
	0    -1   -1   0   
$EndComp
Text GLabel 4050 1400 2    50   UnSpc ~ 0
GND
Wire Wire Line
	4050 1400 4000 1400
Text GLabel 4850 1400 3    50   Input ~ 0
LEDS_ENABLE
$Comp
L Transistor_FET:DMN2050L Q3
U 1 1 5C7A59C7
P 3800 1500
F 0 "Q3" V 3950 1300 50  0000 L CNN
F 1 "AO3400 (A09T)" V 4050 1100 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4000 1425 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/ao3400.pdf" H 3800 1500 50  0001 L CNN
	1    3800 1500
	0    -1   -1   0   
$EndComp
Text GLabel 4050 800  2    50   UnSpc ~ 0
GND
Wire Wire Line
	4050 800  4000 800 
$Comp
L Transistor_FET:DMN2050L Q1
U 1 1 5C7A6AC3
P 3800 900
F 0 "Q1" V 3950 700 50  0000 L CNN
F 1 "AO3400 (A09T)" V 4050 500 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4000 825 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/ao3400.pdf" H 3800 900 50  0001 L CNN
	1    3800 900 
	0    -1   -1   0   
$EndComp
Connection ~ 3600 1400
Wire Wire Line
	3600 1400 3600 2000
Wire Wire Line
	3600 800  3600 1400
Wire Wire Line
	4450 1700 3800 1700
Wire Wire Line
	4450 1100 3800 1100
Wire Wire Line
	4450 1700 4450 2300
Wire Wire Line
	4450 2300 3800 2300
Connection ~ 4450 1700
$Comp
L power:+BATT #PWR01
U 1 1 5C7B5CB3
P 8800 4500
F 0 "#PWR01" H 8800 4350 50  0001 C CNN
F 1 "+BATT" H 8815 4673 50  0000 C CNN
F 2 "" H 8800 4500 50  0001 C CNN
F 3 "" H 8800 4500 50  0001 C CNN
	1    8800 4500
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR02
U 1 1 5C7B5E7B
P 10200 4500
F 0 "#PWR02" H 10200 4350 50  0001 C CNN
F 1 "-BATT" H 10215 4673 50  0000 C CNN
F 2 "" H 10200 4500 50  0001 C CNN
F 3 "" H 10200 4500 50  0001 C CNN
	1    10200 4500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:DMN2050L Q9
U 1 1 5C7B6A21
P 9550 6200
F 0 "Q9" V 9700 6000 50  0000 L CNN
F 1 "AO3400 (A09T)" V 9800 5800 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9750 6125 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/ao3400.pdf" H 9550 6200 50  0001 L CNN
	1    9550 6200
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:DMN2050L Q7
U 1 1 5C7B6A2B
P 9550 5600
F 0 "Q7" V 9700 5400 50  0000 L CNN
F 1 "AO3400 (A09T)" V 9800 5200 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9750 5525 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/ao3400.pdf" H 9550 5600 50  0001 L CNN
	1    9550 5600
	0    -1   -1   0   
$EndComp
Text GLabel 9250 4900 0    50   UnSpc ~ 0
GND
$Comp
L Transistor_FET:DMN2050L Q6
U 1 1 5C7B6A34
P 9550 5000
F 0 "Q6" V 9700 4800 50  0000 L CNN
F 1 "AO3400 (A09T)" V 9800 4600 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9750 4925 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/ao3400.pdf" H 9550 5000 50  0001 L CNN
	1    9550 5000
	0    -1   -1   0   
$EndComp
Text GLabel 9250 5500 0    50   UnSpc ~ 0
GND
Text GLabel 9250 6100 0    50   UnSpc ~ 0
GND
Wire Wire Line
	9750 4900 10000 4900
Wire Wire Line
	10000 4900 10000 5500
Wire Wire Line
	10000 5500 10200 5500
Wire Wire Line
	10000 5500 9750 5500
Connection ~ 10000 5500
Wire Wire Line
	9750 6100 10000 6100
Wire Wire Line
	10000 6100 10000 5500
Wire Wire Line
	9350 4900 9250 4900
Wire Wire Line
	9350 5500 9250 5500
Wire Wire Line
	9350 6100 9250 6100
Wire Wire Line
	8800 6400 9550 6400
Wire Wire Line
	9550 5200 9000 5200
Wire Wire Line
	9000 5200 9000 5600
Wire Wire Line
	9000 5600 8800 5600
Wire Wire Line
	8800 5600 8800 5800
Wire Wire Line
	9550 5800 8800 5800
Connection ~ 8800 5800
Wire Wire Line
	8800 5800 8800 6400
Text GLabel 8700 4550 0    50   UnSpc ~ 0
VCC
$Comp
L Device:R R7
U 1 1 5C7E3C14
P 8800 5150
F 0 "R7" V 8700 5150 50  0000 C CNN
F 1 "10k" V 8800 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8730 5150 50  0001 C CNN
F 3 "~" H 8800 5150 50  0001 C CNN
	1    8800 5150
	-1   0    0    1   
$EndComp
Wire Wire Line
	8700 4550 8800 4550
Wire Wire Line
	8800 4550 8800 4500
Connection ~ 8800 4550
Wire Wire Line
	10200 4500 10200 5500
Text GLabel 8050 5900 0    50   UnSpc ~ 0
5V_USB
Wire Wire Line
	8800 5300 8800 5600
Connection ~ 8800 5600
Wire Wire Line
	8800 4550 8800 5000
$Comp
L Transistor_FET:DMN2050L Q8
U 1 1 5C7FA4CC
P 8350 5700
F 0 "Q8" V 8500 5500 50  0000 L CNN
F 1 "AO3400 (A09T)" V 8600 5300 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8550 5625 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/ao3400.pdf" H 8350 5700 50  0001 L CNN
	1    8350 5700
	0    1    -1   0   
$EndComp
Wire Wire Line
	8050 5900 8250 5900
Text GLabel 8050 5600 0    50   UnSpc ~ 0
GND
Wire Wire Line
	8050 5600 8150 5600
Wire Wire Line
	8550 5600 8800 5600
NoConn ~ 1500 5850
NoConn ~ 1500 5950
NoConn ~ 1500 6050
NoConn ~ 1500 6150
NoConn ~ 1500 6250
NoConn ~ 1500 6350
$Comp
L Device:R R8
U 1 1 5C76D27F
P 3000 5850
F 0 "R8" V 2950 5700 50  0000 C CNN
F 1 "10k" V 3000 5850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2930 5850 50  0001 C CNN
F 3 "~" H 3000 5850 50  0001 C CNN
	1    3000 5850
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5C76D3B2
P 3000 5950
F 0 "R9" V 2950 5800 50  0000 C CNN
F 1 "10k" V 3000 5950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2930 5950 50  0001 C CNN
F 3 "~" H 3000 5950 50  0001 C CNN
	1    3000 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 5950 3200 5950
Wire Wire Line
	3200 5850 3150 5850
Wire Wire Line
	2850 5850 2700 5850
Wire Wire Line
	2700 5950 2850 5950
Wire Notes Line
	5000 450  5000 2750
Wire Notes Line
	7000 6550 7000 2750
Wire Notes Line
	11200 4000 7000 4000
Wire Notes Line
	450  2750 11200 2750
Text Notes 1600 2550 0    98   ~ 0
LED matrix
Text Notes 6250 2550 0    98   ~ 0
USB + UART
Text Notes 7200 3450 0    98   ~ 0
3V power
Text Notes 7200 5000 0    98   ~ 0
Battery reverse\npolarity + USB \npower switching
Text Notes 1600 3300 0    98   ~ 0
Microcontroller
$Comp
L Device:R R10
U 1 1 5C79DFD1
P 8250 6050
F 0 "R10" V 8150 6050 50  0000 C CNN
F 1 "10k" V 8250 6050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8180 6050 50  0001 C CNN
F 3 "~" H 8250 6050 50  0001 C CNN
	1    8250 6050
	-1   0    0    1   
$EndComp
Connection ~ 8250 5900
Wire Wire Line
	8250 5900 8350 5900
Text GLabel 8250 6250 3    50   UnSpc ~ 0
GND
Wire Wire Line
	8250 6250 8250 6200
Wire Wire Line
	1350 4100 1350 4200
Connection ~ 1150 4650
Wire Wire Line
	1150 4650 1350 4650
Wire Wire Line
	2850 4650 3200 4650
$Comp
L Device:Battery BT1
U 1 1 5C76EEF3
P 9500 4400
F 0 "BT1" V 9745 4400 50  0000 C CNN
F 1 "Battery" V 9654 4400 50  0000 C CNN
F 2 "LiPoHolder:BatteryHolder_Keystone_1042_1x18650" V 9500 4460 50  0001 C CNN
F 3 "~" V 9500 4460 50  0001 C CNN
	1    9500 4400
	0    -1   -1   0   
$EndComp
$Comp
L power:+BATT #PWR0101
U 1 1 5C76F2E7
P 9200 4400
F 0 "#PWR0101" H 9200 4250 50  0001 C CNN
F 1 "+BATT" H 9215 4573 50  0000 C CNN
F 2 "" H 9200 4400 50  0001 C CNN
F 3 "" H 9200 4400 50  0001 C CNN
	1    9200 4400
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR0102
U 1 1 5C76F61E
P 9800 4400
F 0 "#PWR0102" H 9800 4250 50  0001 C CNN
F 1 "-BATT" H 9815 4573 50  0000 C CNN
F 2 "" H 9800 4400 50  0001 C CNN
F 3 "" H 9800 4400 50  0001 C CNN
	1    9800 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 4400 9700 4400
Wire Wire Line
	9300 4400 9200 4400
Text GLabel 10200 1600 0    50   BiDi ~ 0
USB_DN
Text GLabel 10200 1700 0    50   BiDi ~ 0
USB_DP
Text GLabel 9150 1700 2    50   BiDi ~ 0
USB_DN
Text GLabel 9150 1800 2    50   BiDi ~ 0
USB_DP
Text GLabel 2750 1400 2    50   UnSpc ~ 0
LED_GND
Text GLabel 3550 1400 0    50   UnSpc ~ 0
LED_GND
Wire Wire Line
	3550 1400 3600 1400
Wire Wire Line
	4450 1100 4450 1400
Wire Wire Line
	4450 1400 4650 1400
Connection ~ 4450 1400
Wire Wire Line
	4450 1400 4450 1700
Wire Wire Line
	2750 1400 2700 1400
Wire Wire Line
	2750 1100 2700 1100
$Comp
L Device:D D193
U 1 1 5C7879BB
P 10200 2100
F 0 "D193" V 10246 2021 50  0000 R CNN
F 1 "D" V 10155 2021 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 10200 2100 50  0001 C CNN
F 3 "~" H 10200 2100 50  0001 C CNN
	1    10200 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10200 2300 10200 2250
Text Notes 4900 3350 0    50   ~ 0
TODO:\n- Check if PWM on SK6812 GND works\n- Decide which diode footprint to use for vUSB\n- Add buttons\n- Add voltage sensing to vUSB + vBatt\n- Add lipo charging circuit\n- Add audio
Text Notes 2750 6350 0    50   ~ 0
I2S raw output 1
Text Notes 2750 6450 0    50   ~ 0
I2S raw output 2
$Comp
L Device:R R?
U 1 1 5C797B8C
P 4650 1250
F 0 "R?" V 4600 1100 50  0000 C CNN
F 1 "10k" V 4650 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4580 1250 50  0001 C CNN
F 3 "~" H 4650 1250 50  0001 C CNN
	1    4650 1250
	-1   0    0    1   
$EndComp
Connection ~ 4650 1400
Wire Wire Line
	4650 1400 4850 1400
Text GLabel 4650 1050 1    50   UnSpc ~ 0
GND
Wire Wire Line
	4650 1050 4650 1100
$Comp
L tp4056:TP4056 U?
U 1 1 5C7A47D9
P 5850 6500
F 0 "U?" H 5850 6930 60  0000 C CNN
F 1 "TP4056" H 5850 7036 60  0000 C CNN
F 2 "" H 5850 6500 60  0000 C CNN
F 3 "" H 5850 6500 60  0000 C CNN
	1    5850 6500
	-1   0    0    1   
$EndComp
Text GLabel 6400 6750 2    50   UnSpc ~ 0
5V_USB
Wire Wire Line
	6400 6750 6350 6750
Wire Wire Line
	6350 6750 6350 6650
Connection ~ 6350 6750
$Comp
L power:+BATT #PWR?
U 1 1 5C7AC3F8
P 5250 6750
F 0 "#PWR?" H 5250 6600 50  0001 C CNN
F 1 "+BATT" H 5265 6923 50  0000 C CNN
F 2 "" H 5250 6750 50  0001 C CNN
F 3 "" H 5250 6750 50  0001 C CNN
	1    5250 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 6750 5350 6750
Wire Wire Line
	5800 6100 5850 6100
Wire Wire Line
	5850 6100 5850 5900
Connection ~ 5850 6100
$Comp
L Device:D D?
U 1 1 5C7B6FA5
P 6000 5900
F 0 "D?" V 6046 5821 50  0000 R CNN
F 1 "D" V 5955 5821 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 6000 5900 50  0001 C CNN
F 3 "~" H 6000 5900 50  0001 C CNN
	1    6000 5900
	-1   0    0    1   
$EndComp
$Comp
L Device:D D?
U 1 1 5C7B7D97
P 5700 5900
F 0 "D?" V 5746 5821 50  0000 R CNN
F 1 "D" V 5655 5821 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 5700 5900 50  0001 C CNN
F 3 "~" H 5700 5900 50  0001 C CNN
	1    5700 5900
	1    0    0    1   
$EndComp
$Comp
L power:-BATT #PWR?
U 1 1 5C7BC2F3
P 6350 5900
F 0 "#PWR?" H 6350 5750 50  0001 C CNN
F 1 "-BATT" H 6365 6073 50  0000 C CNN
F 2 "" H 6350 5900 50  0001 C CNN
F 3 "" H 6350 5900 50  0001 C CNN
	1    6350 5900
	1    0    0    -1  
$EndComp
Text GLabel 5400 5900 0    50   UnSpc ~ 0
GND
Wire Wire Line
	5400 5900 5550 5900
Wire Wire Line
	6150 5900 6350 5900
Connection ~ 5850 5900
$EndSCHEMATC
