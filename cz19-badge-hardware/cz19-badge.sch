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
S 1200 6600 1650 800 
U 5C6C6B0C
F0 "LEDs" 50
F1 "LEDs.sch" 50
F2 "LEDS_IN" I L 1200 6800 50 
F3 "LEDS_OUT" I L 1200 7100 50 
F4 "GND" I R 2850 7100 50 
F5 "3V7" I R 2850 6800 50 
$EndSheet
Text GLabel 2850 6800 2    50   UnSpc ~ 0
3V7
Text GLabel 3450 7100 2    50   UnSpc ~ 0
GND
$Comp
L RF_Module:ESP32-WROOM-32D U2
U 1 1 5C6EF884
P 2350 2600
F 0 "U2" H 2150 3150 50  0000 C CNN
F 1 "ESP32-WROOM-32D" V 2450 2600 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 2350 1100 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 2050 2650 50  0001 C CNN
	1    2350 2600
	1    0    0    -1  
$EndComp
Text GLabel 2350 1100 1    50   UnSpc ~ 0
3V3
Text GLabel 2350 4150 3    50   UnSpc ~ 0
GND
Wire Wire Line
	2350 4150 2350 4000
$Comp
L Device:R R1
U 1 1 5C6EFE2A
P 1450 1250
F 0 "R1" V 1243 1250 50  0000 C CNN
F 1 "10k" V 1334 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1380 1250 50  0001 C CNN
F 3 "~" H 1450 1250 50  0001 C CNN
	1    1450 1250
	0    1    1    0   
$EndComp
Text GLabel 3450 1400 2    50   Input ~ 0
ESP_FLASH
Wire Wire Line
	3450 1400 3100 1400
$Comp
L Device:R R2
U 1 1 5C6F02EE
P 3250 1250
F 0 "R2" V 3043 1250 50  0000 C CNN
F 1 "10k" V 3134 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3180 1250 50  0001 C CNN
F 3 "~" H 3250 1250 50  0001 C CNN
	1    3250 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 1250 3100 1400
Connection ~ 3100 1400
Wire Wire Line
	3100 1400 2950 1400
Wire Wire Line
	2350 1100 2350 1200
Text GLabel 1250 1250 0    50   UnSpc ~ 0
3V3
Wire Wire Line
	1250 1250 1300 1250
Text GLabel 3450 1250 2    50   UnSpc ~ 0
3V3
Wire Wire Line
	3450 1250 3400 1250
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
L Device:R R3
U 1 1 5C6F13F0
P 3250 1600
F 0 "R3" V 3200 1450 50  0000 C CNN
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
$Comp
L Transistor_FET:FDS2734 Q1
U 1 1 5C7939A1
P 3200 7200
F 0 "Q1" V 3543 7200 50  0000 C CNN
F 1 "FDS8896" V 3452 7200 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3400 7100 50  0001 L CNN
F 3 "" H 3100 7200 50  0001 L CNN
	1    3200 7200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2850 7100 3000 7100
Text GLabel 3450 2600 2    50   Output ~ 0
LEDS_ENABLE
Wire Wire Line
	3450 2600 2950 2600
Text GLabel 3450 2700 2    50   Output ~ 0
LEDS_IN
Wire Wire Line
	3450 2700 2950 2700
Wire Wire Line
	3450 7100 3400 7100
Text GLabel 3200 7450 2    50   Input ~ 0
LEDS_ENABLE
Wire Wire Line
	3200 7450 3200 7400
Text GLabel 1050 6800 0    50   Input ~ 0
LEDS_IN
Wire Wire Line
	1050 6800 1200 6800
Text GLabel 1050 7100 0    50   Output ~ 0
LEDS_OUT
Wire Wire Line
	1050 7100 1200 7100
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
Text GLabel 8150 1300 0    50   Output ~ 0
ESP_EN
Wire Wire Line
	8150 1300 8350 1300
Text GLabel 8150 1400 0    50   Output ~ 0
ESP_FLASH
Wire Wire Line
	8150 1400 8350 1400
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
$EndSCHEMATC
