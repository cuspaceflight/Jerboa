EESchema Schematic File Version 2
LIBS:agg-kicad
LIBS:jerboa-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 500  500  900  2250
U 5A37ABBB
F0 "power" 60
F1 "power.sch" 60
$EndSheet
$Sheet
S 500  2950 900  2250
U 5A37ABBE
F0 "gps" 60
F1 "gps.sch" 60
F2 "GPS_TX" I R 1400 3400 60 
F3 "GPS_RX" I R 1400 3550 60 
$EndSheet
$Comp
L STM32L051K8U6:STM32L051K8U6 U101
U 1 1 5A37D9A9
P 5850 2650
F 0 "U101" H 5850 4247 60  0000 C CNN
F 1 "STM32L051K8U6" H 5850 4141 60  0000 C CNN
F 2 "agg:QFN-32-EP-ST" H 5500 950 60  0001 L CNN
F 3 "http://www.st.com/resource/en/datasheet/stm32l051t8.pdf" H 5500 850 60  0001 L CNN
F 4 "2488323" H 5500 750 60  0001 L CNN "Farnell"
	1    5850 2650
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR01
U 1 1 5A3E3DF5
P 4900 2500
F 0 "#PWR01" H 4770 2540 50  0001 L CNN
F 1 "GND" H 4900 2400 50  0000 C CNN
F 2 "" H 4900 2500 60  0001 C CNN
F 3 "" H 4900 2500 60  0001 C CNN
	1    4900 2500
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C104
U 1 1 5A3E3EA9
P 4250 1200
F 0 "C104" H 4300 1395 50  0000 C CNN
F 1 "100nF" H 4300 1304 50  0000 C CNN
F 2 "agg:0402" H 4250 1200 50  0001 C CNN
F 3 "" H 4250 1200 50  0001 C CNN
F 4 "2496810" H 4250 1200 60  0001 C CNN "Farnell"
	1    4250 1200
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR02
U 1 1 5A3E4029
P 4000 1850
F 0 "#PWR02" H 3870 1890 50  0001 L CNN
F 1 "GND" H 4000 1937 50  0000 C CNN
F 2 "" H 4000 1850 60  0001 C CNN
F 3 "" H 4000 1850 60  0001 C CNN
	1    4000 1850
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C101
U 1 1 5A3ED8BD
P 4050 1000
F 0 "C101" H 4100 1195 50  0000 C CNN
F 1 "10uF" H 4100 1104 50  0000 C CNN
F 2 "" H 4050 1000 50  0001 C CNN
F 3 "" H 4050 1000 50  0001 C CNN
F 4 "Value" H 4050 1000 60  0001 C CNN "Farnell"
	1    4050 1000
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C103
U 1 1 5A3EDC65
P 4050 1800
F 0 "C103" H 4100 1995 50  0000 C CNN
F 1 "1uF" H 4100 1904 50  0000 C CNN
F 2 "agg:0402" H 4050 1800 50  0001 C CNN
F 3 "" H 4050 1800 50  0001 C CNN
F 4 "1327658" H 4050 1800 60  0001 C CNN "Farnell"
	1    4050 1800
	1    0    0    -1  
$EndComp
Text Label 5200 4900 0    60   ~ 0
NRST
$Comp
L agg-kicad:3v3 #PWR03
U 1 1 5A3EFF91
P 4400 900
F 0 "#PWR03" H 4400 1010 50  0001 L CNN
F 1 "3v3" H 4400 1024 50  0000 C CNN
F 2 "" H 4400 900 60  0001 C CNN
F 3 "" H 4400 900 60  0001 C CNN
	1    4400 900 
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR04
U 1 1 5A3F2FB2
P 4900 1950
F 0 "#PWR04" H 4770 1990 50  0001 L CNN
F 1 "GND" H 4950 1850 50  0000 C CNN
F 2 "" H 4900 1950 60  0001 C CNN
F 3 "" H 4900 1950 60  0001 C CNN
	1    4900 1950
	1    0    0    -1  
$EndComp
Text Notes 4200 2150 0    60   ~ 0
No DFU required
$Comp
L agg-kicad:SWD_TC P101
U 1 1 5A3F34C8
P 5900 4900
F 0 "P101" H 5900 5225 50  0000 C CNN
F 1 "SWD_TC" H 5900 5134 50  0000 C CNN
F 2 "agg:TC2030-NL" H 5600 4600 50  0001 L CNN
F 3 "" H 5500 5000 50  0001 C CNN
	1    5900 4900
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR05
U 1 1 5A3F3ABE
P 5400 5050
F 0 "#PWR05" H 5270 5090 50  0001 L CNN
F 1 "GND" H 5400 5137 50  0000 C CNN
F 2 "" H 5400 5050 60  0001 C CNN
F 3 "" H 5400 5050 60  0001 C CNN
	1    5400 5050
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:3v3 #PWR06
U 1 1 5A3F3B9B
P 5400 4750
F 0 "#PWR06" H 5400 4860 50  0001 L CNN
F 1 "3v3" H 5400 4874 50  0000 C CNN
F 2 "" H 5400 4750 60  0001 C CNN
F 3 "" H 5400 4750 60  0001 C CNN
	1    5400 4750
	1    0    0    -1  
$EndComp
Text Label 6700 4800 2    60   ~ 0
SWDIO
Text Label 6700 4900 2    60   ~ 0
SWCLK
Text Label 7100 2700 2    60   ~ 0
SWDIO
Text Label 7100 2800 2    60   ~ 0
SWCLK
NoConn ~ 6300 5000
$Comp
L agg-kicad:GND #PWR07
U 1 1 5A3F7FF1
P 4700 1950
F 0 "#PWR07" H 4570 1990 50  0001 L CNN
F 1 "GND" H 4650 1850 50  0000 C CNN
F 2 "" H 4700 1950 60  0001 C CNN
F 3 "" H 4700 1950 60  0001 C CNN
	1    4700 1950
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:LED D101
U 1 1 5A3E82EC
P 7150 2350
F 0 "D101" V 7246 2292 50  0000 R CNN
F 1 "LED_GREEN" V 7155 2292 50  0000 R CNN
F 2 "agg:0603-LED" H 7150 2350 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2057314.pdf?_ga=2.205110360.971487712.1514028244-506493331.1509210212&_gac=1.118829563.1511728794.Cj0KCQiA6enQBRDUARIsAGs1YQiJE2FAEjDkPfQxMJDRdXOREIvhi5-XX62hZWxB6j9IyKlXVrhl04oaArmMEALw_wcB" H 7150 2350 50  0001 C CNN
F 4 "2575345" H 7150 2350 60  0001 C CNN "Farnell"
	1    7150 2350
	0    -1   -1   0   
$EndComp
$Comp
L agg-kicad:R R101
U 1 1 5A3E86C8
P 6900 2200
F 0 "R101" H 6950 2150 50  0000 C CNN
F 1 "120" H 6950 2250 50  0000 C CNN
F 2 "agg:0402" H 6900 2200 50  0001 C CNN
F 3 "" H 6900 2200 50  0001 C CNN
F 4 "9239120" H 6900 2200 60  0001 C CNN "Farnell"
	1    6900 2200
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR08
U 1 1 5A3EA11D
P 7150 2400
F 0 "#PWR08" H 7020 2440 50  0001 L CNN
F 1 "GND" H 7250 2350 50  0000 C CNN
F 2 "" H 7150 2400 60  0001 C CNN
F 3 "" H 7150 2400 60  0001 C CNN
	1    7150 2400
	1    0    0    -1  
$EndComp
Text Notes 7050 2150 0    60   ~ 0
16mA max current source
$Comp
L agg-kicad:C C102
U 1 1 5A4085C3
P 4050 1400
F 0 "C102" H 4100 1595 50  0000 C CNN
F 1 "100nF" H 4100 1504 50  0000 C CNN
F 2 "agg:0402" H 4050 1400 50  0001 C CNN
F 3 "" H 4050 1400 50  0001 C CNN
F 4 "2496810" H 4050 1400 60  0001 C CNN "Farnell"
	1    4050 1400
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C105
U 1 1 5A408606
P 4250 1600
F 0 "C105" H 4300 1795 50  0000 C CNN
F 1 "100nF" H 4300 1704 50  0000 C CNN
F 2 "agg:0402" H 4250 1600 50  0001 C CNN
F 3 "" H 4250 1600 50  0001 C CNN
F 4 "2496810" H 4250 1600 60  0001 C CNN "Farnell"
	1    4250 1600
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C106
U 1 1 5A408643
P 4700 1750
F 0 "C106" H 4750 1650 50  0000 C CNN
F 1 "100nF" H 4750 1850 50  0000 C CNN
F 2 "agg:0402" H 4700 1750 50  0001 C CNN
F 3 "" H 4700 1750 50  0001 C CNN
F 4 "2496810" H 4700 1750 60  0001 C CNN "Farnell"
	1    4700 1750
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:C C107
U 1 1 5A4087DD
P 5000 4950
F 0 "C107" H 5050 5145 50  0000 C CNN
F 1 "100nF" H 5050 5054 50  0000 C CNN
F 2 "agg:0402" H 5000 4950 50  0001 C CNN
F 3 "" H 5000 4950 50  0001 C CNN
F 4 "2496810" H 5000 4950 60  0001 C CNN "Farnell"
	1    5000 4950
	0    -1   -1   0   
$EndComp
Text Label 7050 1900 0    60   ~ 0
MCU_MISO_TO_RADIO
Text Label 7050 1800 0    60   ~ 0
MCU_SCK_TO_RADIO
Text Label 7050 1700 0    60   ~ 0
MCU_NSS_TO_RADIO
Text Label 7050 2000 0    60   ~ 0
MCU_MOSI_TO_RADIO
Wire Wire Line
	5000 2400 4900 2400
Wire Wire Line
	4900 2400 4900 2500
Wire Wire Line
	4350 1600 4400 1600
Wire Wire Line
	4000 1600 4250 1600
Wire Wire Line
	4050 1400 4000 1400
Wire Wire Line
	4000 1000 4000 1850
Connection ~ 4000 1600
Wire Wire Line
	4250 1200 4000 1200
Connection ~ 4000 1400
Wire Wire Line
	4050 1000 4000 1000
Connection ~ 4000 1200
Wire Wire Line
	4050 1800 4000 1800
Connection ~ 4000 1800
Wire Wire Line
	4400 1800 4150 1800
Wire Wire Line
	4400 900  4400 1800
Connection ~ 4400 1600
Wire Wire Line
	4400 1000 4150 1000
Wire Wire Line
	4350 1200 4400 1200
Connection ~ 4400 1200
Wire Wire Line
	4400 1300 5000 1300
Wire Wire Line
	4150 1400 5000 1400
Wire Wire Line
	4400 1500 5000 1500
Connection ~ 4400 1000
Connection ~ 4400 1300
Connection ~ 4400 1400
Connection ~ 4400 1500
Wire Wire Line
	5200 4900 5500 4900
Wire Wire Line
	5400 4800 5400 4750
Wire Wire Line
	5400 5050 5400 5000
Wire Wire Line
	6700 4800 6300 4800
Wire Wire Line
	6300 4900 6700 4900
Wire Wire Line
	6700 2700 7100 2700
Wire Wire Line
	7100 2800 6700 2800
Wire Wire Line
	5000 4850 5000 4800
Connection ~ 5400 4800
Wire Wire Line
	5000 5000 5000 4950
Connection ~ 5400 5000
Wire Wire Line
	4700 1950 4700 1850
Wire Wire Line
	4700 1750 4700 1700
Connection ~ 4700 1700
Wire Wire Line
	6700 2200 6900 2200
Wire Wire Line
	7150 2400 7150 2350
Wire Wire Line
	7150 2250 7150 2200
Wire Wire Line
	7150 2200 7000 2200
Wire Wire Line
	4900 1900 5000 1900
Wire Wire Line
	4900 1950 4900 1900
Wire Wire Line
	7050 2000 6700 2000
Wire Wire Line
	6700 1900 7050 1900
Wire Wire Line
	7050 1800 6700 1800
Wire Wire Line
	6700 1700 7050 1700
Text Label 4650 1700 2    60   ~ 0
NRST
Wire Wire Line
	4650 1700 5000 1700
Text Label 6850 3800 0    60   ~ 0
TX_GPS_from_MCU
Text Label 6850 3900 0    60   ~ 0
RX_GPS_from_MCU
Wire Wire Line
	6700 3800 6850 3800
Wire Wire Line
	6700 3900 6850 3900
NoConn ~ 5000 2100
NoConn ~ 5000 2200
NoConn ~ 6700 1300
NoConn ~ 6700 1400
NoConn ~ 6700 2300
NoConn ~ 6700 2400
NoConn ~ 6700 2500
NoConn ~ 6700 2600
NoConn ~ 6700 2900
NoConn ~ 6700 3100
NoConn ~ 6700 3200
NoConn ~ 6700 3300
NoConn ~ 6700 3500
NoConn ~ 6700 4100
Wire Wire Line
	5000 5000 5500 5000
Wire Wire Line
	5000 4800 5500 4800
Text Label 1600 6150 0    60   ~ 0
MCU_NSS_TO_RADIO
Text Label 1600 5700 0    60   ~ 0
MCU_SCK_TO_RADIO
Text Label 1600 5850 0    60   ~ 0
MCU_MISO_TO_RADIO
Text Label 1600 6000 0    60   ~ 0
MCU_MOSI_TO_RADIO
$Sheet
S 500  5450 900  2250
U 5A37ABC3
F0 "radio" 60
F1 "radio.sch" 60
F2 "RADIO_SDN" I R 1400 5550 60 
F3 "RADIO_SCLK" I R 1400 5700 60 
F4 "RADIO_SDO" I R 1400 5850 60 
F5 "RADIO_SDI" I R 1400 6000 60 
F6 "RADIO_nSEL" I R 1400 6150 60 
F7 "RADIO_nIRQ" I R 1400 6300 60 
$EndSheet
Wire Wire Line
	1400 6000 1600 6000
Wire Wire Line
	1400 5850 1600 5850
Wire Wire Line
	1400 5700 1600 5700
Text Label 1600 3550 0    60   ~ 0
TX_GPS_from_MCU
Text Label 1600 3400 0    60   ~ 0
RX_GPS_from_MCU
Wire Wire Line
	1400 3400 1600 3400
Wire Wire Line
	1400 3550 1600 3550
Wire Wire Line
	1400 6150 1600 6150
Wire Wire Line
	1400 5550 1600 5550
Wire Wire Line
	1400 6300 1600 6300
NoConn ~ 6700 3600
NoConn ~ 6700 3700
Text Label 7050 1500 0    60   ~ 0
MCU_SHUTDOWN_TO_RADIO
Text Label 7050 1600 0    60   ~ 0
MCU_nIRQ_TO_RADIO
Wire Wire Line
	6700 1600 7050 1600
Wire Wire Line
	6700 1500 7050 1500
Text Label 1600 5550 0    60   ~ 0
MCU_SHUTDOWN_TO_RADIO
Text Label 1600 6300 0    60   ~ 0
MCU_nIRQ_TO_RADIO
$EndSCHEMATC
