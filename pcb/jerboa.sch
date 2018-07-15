EESchema Schematic File Version 4
LIBS:jerboa-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title "Jerboa Balloon Tracker"
Date "2018-06-12"
Rev "1.0"
Comp "Cambridge University Spaceflight"
Comment1 "Greg Brooks"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 500  500  900  2250
U 5A37ABBB
F0 "power" 60
F1 "power.sch" 60
F2 "solar_cells" I R 1400 800 60 
F3 "BATT_V" I R 1400 950 60 
F4 "RADIO_PWR_EN" I R 1400 1250 60 
$EndSheet
$Sheet
S 500  2950 900  2250
U 5A37ABBE
F0 "gps" 60
F1 "gps.sch" 60
F2 "GPS_TX" I R 1400 3400 60 
F3 "GPS_RX" I R 1400 3550 60 
F4 "GPS_~RESET" I R 1400 3700 60 
F5 "GPS_EXTINT" I R 1400 3850 50 
$EndSheet
$Comp
L agg-kicad:GND #PWR017
U 1 1 5A3E3DF5
P 6450 2350
F 0 "#PWR017" H 6320 2390 50  0001 L CNN
F 1 "GND" H 6450 2250 50  0000 C CNN
F 2 "" H 6450 2350 60  0001 C CNN
F 3 "" H 6450 2350 60  0001 C CNN
F 4 "Value" H 6450 2350 50  0001 C CNN "Farnell"
	1    6450 2350
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C8
U 1 1 5A3E3EA9
P 5800 1050
F 0 "C8" H 5850 1245 50  0000 C CNN
F 1 "100nF" H 5850 1154 50  0000 C CNN
F 2 "agg:0402" H 5800 1050 50  0001 C CNN
F 3 "" H 5800 1050 50  0001 C CNN
F 4 "2533923" H 5800 1050 60  0001 C CNN "Farnell"
	1    5800 1050
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR012
U 1 1 5A3E4029
P 5550 1700
F 0 "#PWR012" H 5420 1740 50  0001 L CNN
F 1 "GND" H 5550 1787 50  0000 C CNN
F 2 "" H 5550 1700 60  0001 C CNN
F 3 "" H 5550 1700 60  0001 C CNN
	1    5550 1700
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C5
U 1 1 5A3ED8BD
P 5600 850
F 0 "C5" H 5650 1045 50  0000 C CNN
F 1 "10uF" H 5650 954 50  0000 C CNN
F 2 "agg:0402" H 5600 850 50  0001 C CNN
F 3 "" H 5600 850 50  0001 C CNN
F 4 "2611904" H 5600 850 60  0001 C CNN "Farnell"
	1    5600 850 
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C7
U 1 1 5A3EDC65
P 5600 1650
F 0 "C7" H 5650 1845 50  0000 C CNN
F 1 "1uF" H 5650 1754 50  0000 C CNN
F 2 "agg:0402" H 5600 1650 50  0001 C CNN
F 3 "" H 5600 1650 50  0001 C CNN
F 4 "1758879" H 5600 1650 60  0001 C CNN "Farnell"
	1    5600 1650
	1    0    0    -1  
$EndComp
Text Label 6600 4500 0    60   ~ 0
NRST
$Comp
L agg-kicad:3v3 #PWR014
U 1 1 5A3EFF91
P 5950 750
F 0 "#PWR014" H 5950 860 50  0001 L CNN
F 1 "3v3" H 5950 874 50  0000 C CNN
F 2 "" H 5950 750 60  0001 C CNN
F 3 "" H 5950 750 60  0001 C CNN
	1    5950 750 
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:SWD_TC P1
U 1 1 5A3F34C8
P 7300 4500
F 0 "P1" H 7300 4825 50  0000 C CNN
F 1 "SWD_TC" H 7300 4734 50  0000 C CNN
F 2 "agg:TC2030-NL" H 7000 4200 50  0001 L CNN
F 3 "" H 6900 4600 50  0001 C CNN
	1    7300 4500
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR019
U 1 1 5A3F3ABE
P 6800 4650
F 0 "#PWR019" H 6670 4690 50  0001 L CNN
F 1 "GND" H 6800 4737 50  0000 C CNN
F 2 "" H 6800 4650 60  0001 C CNN
F 3 "" H 6800 4650 60  0001 C CNN
	1    6800 4650
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:3v3 #PWR018
U 1 1 5A3F3B9B
P 6800 4350
F 0 "#PWR018" H 6800 4460 50  0001 L CNN
F 1 "3v3" H 6800 4474 50  0000 C CNN
F 2 "" H 6800 4350 60  0001 C CNN
F 3 "" H 6800 4350 60  0001 C CNN
	1    6800 4350
	1    0    0    -1  
$EndComp
Text Label 8100 4400 2    60   ~ 0
SWDIO
Text Label 8100 4500 2    60   ~ 0
SWCLK
Text Label 8650 2550 2    60   ~ 0
SWDIO
Text Label 8650 2650 2    60   ~ 0
SWCLK
NoConn ~ 7700 4600
$Comp
L agg-kicad:GND #PWR015
U 1 1 5A3F7FF1
P 6250 2050
F 0 "#PWR015" H 6120 2090 50  0001 L CNN
F 1 "GND" H 6200 1950 50  0000 C CNN
F 2 "" H 6250 2050 60  0001 C CNN
F 3 "" H 6250 2050 60  0001 C CNN
	1    6250 2050
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:LED D1
U 1 1 5A3E82EC
P 9350 2900
F 0 "D1" V 9446 2842 50  0000 R CNN
F 1 "LED_GREEN" V 9355 2842 50  0000 R CNN
F 2 "agg:0603-LED" H 9350 2900 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2057314.pdf?_ga=2.205110360.971487712.1514028244-506493331.1509210212&_gac=1.118829563.1511728794.Cj0KCQiA6enQBRDUARIsAGs1YQiJE2FAEjDkPfQxMJDRdXOREIvhi5-XX62hZWxB6j9IyKlXVrhl04oaArmMEALw_wcB" H 9350 2900 50  0001 C CNN
F 4 "2575345" H 9350 2900 60  0001 C CNN "Farnell"
	1    9350 2900
	0    -1   -1   0   
$EndComp
$Comp
L agg-kicad:R R6
U 1 1 5A3E86C8
P 9100 2750
F 0 "R6" H 9150 2700 50  0000 C CNN
F 1 "120" H 9150 2800 50  0000 C CNN
F 2 "agg:0402" H 9100 2750 50  0001 C CNN
F 3 "" H 9100 2750 50  0001 C CNN
F 4 "2140682" H 9100 2750 60  0001 C CNN "Farnell"
	1    9100 2750
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR020
U 1 1 5A3EA11D
P 9350 2950
F 0 "#PWR020" H 9220 2990 50  0001 L CNN
F 1 "GND" H 9450 2900 50  0000 C CNN
F 2 "" H 9350 2950 60  0001 C CNN
F 3 "" H 9350 2950 60  0001 C CNN
	1    9350 2950
	1    0    0    -1  
$EndComp
Text Notes 9250 2700 0    60   ~ 0
16mA max current source
$Comp
L agg-kicad:C C6
U 1 1 5A4085C3
P 5600 1250
F 0 "C6" H 5650 1445 50  0000 C CNN
F 1 "100nF" H 5650 1354 50  0000 C CNN
F 2 "agg:0402" H 5600 1250 50  0001 C CNN
F 3 "" H 5600 1250 50  0001 C CNN
F 4 "2533923" H 5600 1250 60  0001 C CNN "Farnell"
	1    5600 1250
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C9
U 1 1 5A408606
P 5800 1450
F 0 "C9" H 5850 1645 50  0000 C CNN
F 1 "100nF" H 5850 1554 50  0000 C CNN
F 2 "agg:0402" H 5800 1450 50  0001 C CNN
F 3 "" H 5800 1450 50  0001 C CNN
F 4 "2533923" H 5800 1450 60  0001 C CNN "Farnell"
	1    5800 1450
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C10
U 1 1 5A408643
P 6250 1600
F 0 "C10" H 6300 1500 50  0000 C CNN
F 1 "100nF" H 6300 1700 50  0000 C CNN
F 2 "agg:0402" H 6250 1600 50  0001 C CNN
F 3 "" H 6250 1600 50  0001 C CNN
F 4 "2533923" H 6250 1600 60  0001 C CNN "Farnell"
	1    6250 1600
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:C C11
U 1 1 5A4087DD
P 6400 4550
F 0 "C11" H 6450 4745 50  0000 C CNN
F 1 "100nF" H 6450 4654 50  0000 C CNN
F 2 "agg:0402" H 6400 4550 50  0001 C CNN
F 3 "" H 6400 4550 50  0001 C CNN
F 4 "2533923" H 6400 4550 60  0001 C CNN "Farnell"
	1    6400 4550
	0    -1   -1   0   
$EndComp
Text Label 8600 1750 0    60   ~ 0
MCU_MISO
Text Label 8600 1650 0    60   ~ 0
MCU_SCK
Text Label 8600 1850 0    60   ~ 0
MCU_MOSI
Wire Wire Line
	6550 2250 6450 2250
Wire Wire Line
	6450 2250 6450 2350
Wire Wire Line
	5900 1450 5950 1450
Wire Wire Line
	5550 1450 5800 1450
Wire Wire Line
	5600 1250 5550 1250
Wire Wire Line
	5550 850  5550 1050
Connection ~ 5550 1450
Wire Wire Line
	5800 1050 5550 1050
Connection ~ 5550 1250
Wire Wire Line
	5600 850  5550 850 
Connection ~ 5550 1050
Wire Wire Line
	5600 1650 5550 1650
Connection ~ 5550 1650
Wire Wire Line
	5950 1650 5700 1650
Wire Wire Line
	5950 750  5950 850 
Connection ~ 5950 1450
Wire Wire Line
	5950 850  5700 850 
Wire Wire Line
	5900 1050 5950 1050
Connection ~ 5950 1050
Wire Wire Line
	5950 1150 6550 1150
Wire Wire Line
	5700 1250 5950 1250
Wire Wire Line
	5950 1350 6550 1350
Connection ~ 5950 850 
Connection ~ 5950 1150
Connection ~ 5950 1250
Connection ~ 5950 1350
Wire Wire Line
	6600 4500 6900 4500
Wire Wire Line
	6800 4400 6800 4350
Wire Wire Line
	6800 4650 6800 4600
Wire Wire Line
	8100 4400 7700 4400
Wire Wire Line
	7700 4500 8100 4500
Wire Wire Line
	8250 2550 8650 2550
Wire Wire Line
	8650 2650 8250 2650
Wire Wire Line
	6400 4450 6400 4400
Connection ~ 6800 4400
Wire Wire Line
	6400 4600 6400 4550
Connection ~ 6800 4600
Wire Wire Line
	6250 1600 6250 1550
Connection ~ 6250 1550
Wire Wire Line
	9350 2950 9350 2900
Wire Wire Line
	9350 2800 9350 2750
Wire Wire Line
	9350 2750 9200 2750
Wire Wire Line
	8600 1850 8250 1850
Wire Wire Line
	8250 1750 8600 1750
Wire Wire Line
	8600 1650 8250 1650
Wire Wire Line
	8250 1550 8600 1550
Text Label 6200 1550 2    60   ~ 0
NRST
Wire Wire Line
	6200 1550 6250 1550
Text Label 8400 2150 0    60   ~ 0
TX_GPS_from_MCU
Text Label 8400 2250 0    60   ~ 0
RX_GPS_from_MCU
NoConn ~ 6550 2050
NoConn ~ 8250 2450
NoConn ~ 8250 3350
Wire Wire Line
	6400 4600 6800 4600
Wire Wire Line
	6400 4400 6800 4400
Text Label 1600 6150 0    60   ~ 0
SI4460_NSS
Text Label 1600 5700 0    60   ~ 0
MCU_SCK
Text Label 1600 5850 0    60   ~ 0
MCU_MISO
Text Label 1600 6000 0    60   ~ 0
MCU_MOSI
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
Text Label 9850 1350 0    60   ~ 0
MCU_SHUTDOWN_TO_RADIO
Text Label 8600 1450 0    60   ~ 0
MCU_nIRQ_TO_RADIO
Wire Wire Line
	8250 1450 8600 1450
Text Label 1600 5550 0    60   ~ 0
MCU_SHUTDOWN_TO_RADIO
Text Label 1600 6300 0    60   ~ 0
MCU_nIRQ_TO_RADIO
$Comp
L agg-kicad:R R9
U 1 1 5A6E5B1D
P 9650 1400
F 0 "R9" V 9654 1441 50  0000 L CNN
F 1 "1M" V 9745 1441 50  0000 L CNN
F 2 "agg:0402" H 9650 1400 50  0001 C CNN
F 3 "" H 9650 1400 50  0001 C CNN
F 4 "2447127" H 9650 1400 50  0001 C CNN "Farnell"
	1    9650 1400
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:GND #PWR022
U 1 1 5A6E5C1D
P 9650 1550
F 0 "#PWR022" H 9520 1590 50  0001 L CNN
F 1 "GND" H 9650 1450 50  0000 C CNN
F 2 "" H 9650 1550 50  0001 C CNN
F 3 "" H 9650 1550 50  0001 C CNN
	1    9650 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 1550 9650 1500
Wire Wire Line
	9650 1400 9650 1350
Wire Wire Line
	1400 3700 1600 3700
Text Label 1600 3700 0    60   ~ 0
GPS_~RESET
Text Label 8400 2350 0    50   ~ 0
GPS_~RESET
$Comp
L agg-kicad:CONN_01x02 J1
U 1 1 5A89E783
P 3200 1750
F 0 "J1" H 3231 1965 50  0000 C CNN
F 1 "CONN_01x02" H 3231 1874 50  0000 C CNN
F 2 "agg:SIL-254P-02" H 3200 1750 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2290158.pdf" H 3200 1750 50  0001 C CNN
F 4 "1593458" H 3200 1750 50  0001 C CNN "Farnell"
	1    3200 1750
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR06
U 1 1 5A89E908
P 3550 1900
F 0 "#PWR06" H 3420 1940 50  0001 L CNN
F 1 "GND" H 3550 1800 50  0000 C CNN
F 2 "" H 3550 1900 60  0001 C CNN
F 3 "" H 3550 1900 60  0001 C CNN
F 4 "Value" H 3550 1900 50  0001 C CNN "Farnell"
	1    3550 1900
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:3v3 #PWR05
U 1 1 5A89EBB4
P 3550 1700
F 0 "#PWR05" H 3550 1810 50  0001 L CNN
F 1 "3v3" H 3550 1824 50  0000 C CNN
F 2 "" H 3550 1700 60  0001 C CNN
F 3 "" H 3550 1700 60  0001 C CNN
	1    3550 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1900 3550 1850
Wire Wire Line
	3550 1850 3300 1850
Wire Wire Line
	3300 1750 3550 1750
Wire Wire Line
	3550 1750 3550 1700
$Comp
L agg-kicad:CONN_01x03 J2
U 1 1 5A8A71F9
P 3200 2300
F 0 "J2" H 3231 2515 50  0000 C CNN
F 1 "CONN_01x03" H 3231 2424 50  0000 C CNN
F 2 "agg:SIL-254P-03" H 3200 2300 50  0001 C CNN
F 3 "" H 3200 2300 50  0001 C CNN
F 4 "1593459" H 3200 2300 50  0001 C CNN "Farnell"
	1    3200 2300
	1    0    0    -1  
$EndComp
Text Label 3400 2300 0    60   ~ 0
WSPR_ENABLE
Wire Wire Line
	3400 2300 3300 2300
Wire Wire Line
	3300 2400 3400 2400
Wire Wire Line
	3300 2500 3400 2500
Text Notes 2950 1500 0    60   ~ 0
WSPR
Wire Notes Line
	2950 1400 2950 2600
Wire Notes Line
	2950 2600 4100 2600
Wire Notes Line
	2950 1400 4100 1400
Wire Notes Line
	4100 1400 4100 2600
Wire Wire Line
	5550 1450 5550 1650
Wire Wire Line
	5550 1250 5550 1450
Wire Wire Line
	5550 1050 5550 1250
Wire Wire Line
	5550 1650 5550 1700
Wire Wire Line
	5950 1450 5950 1650
Wire Wire Line
	5950 1050 5950 1150
Wire Wire Line
	5950 850  5950 1050
Wire Wire Line
	5950 1150 5950 1250
Wire Wire Line
	5950 1250 6550 1250
Wire Wire Line
	5950 1250 5950 1350
Wire Wire Line
	5950 1350 5950 1450
Wire Wire Line
	6800 4400 6900 4400
Wire Wire Line
	6800 4600 6900 4600
Wire Wire Line
	6250 1550 6550 1550
Wire Wire Line
	9650 1350 9850 1350
Text Label 9750 3650 0    60   ~ 0
I2C_SCL
Text Label 9750 3750 0    60   ~ 0
I2C_SDA
Text Label 8400 3550 0    60   ~ 0
WSPR_ENABLE
Wire Wire Line
	8250 2150 8400 2150
Wire Wire Line
	8400 2250 8250 2250
Wire Wire Line
	8250 3550 8400 3550
Wire Wire Line
	1400 950  1600 950 
Wire Wire Line
	1600 800  1400 800 
Text Label 8350 2950 0    50   ~ 0
BATT_V
Text Label 1600 800  0    50   ~ 0
SOLAR_CELL_VOLTAGE
Text Label 1600 950  0    50   ~ 0
BATT_V
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
F8 "FREQ_CTRL" I R 1400 6450 60 
$EndSheet
Text Label 8600 1550 0    60   ~ 0
SI4460_NSS
Text Label 3400 2400 0    60   ~ 0
I2C_SCL
Text Label 3400 2500 0    60   ~ 0
I2C_SDA
$Comp
L agg-kicad:R R?
U 1 1 5B4501B9
P 9200 3600
AR Path="/5A37ABC3/5B4501B9" Ref="R?"  Part="1" 
AR Path="/5B4501B9" Ref="R7"  Part="1" 
F 0 "R7" V 9296 3559 50  0000 R CNN
F 1 "4k7" V 9205 3559 50  0000 R CNN
F 2 "agg:0402" H 9200 3600 50  0001 C CNN
F 3 "" H 9200 3600 50  0001 C CNN
F 4 "2447187" H 0   0   50  0001 C CNN "Farnell"
	1    9200 3600
	0    -1   -1   0   
$EndComp
$Comp
L agg-kicad:R R?
U 1 1 5B461FB6
P 9500 3600
AR Path="/5A37ABC3/5B461FB6" Ref="R?"  Part="1" 
AR Path="/5B461FB6" Ref="R8"  Part="1" 
F 0 "R8" V 9596 3559 50  0000 R CNN
F 1 "4k7" V 9505 3559 50  0000 R CNN
F 2 "agg:0402" H 9500 3600 50  0001 C CNN
F 3 "" H 9500 3600 50  0001 C CNN
F 4 "2447187" H 0   0   50  0001 C CNN "Farnell"
	1    9500 3600
	0    -1   -1   0   
$EndComp
$Comp
L agg-kicad:3v3 #PWR021
U 1 1 5B467DD6
P 9350 3400
F 0 "#PWR021" H 9350 3510 50  0001 L CNN
F 1 "3v3" H 9350 3524 50  0000 C CNN
F 2 "" H 9350 3400 60  0001 C CNN
F 3 "" H 9350 3400 60  0001 C CNN
	1    9350 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 3750 9500 3750
Wire Wire Line
	8250 3650 9200 3650
Wire Wire Line
	9200 3600 9200 3650
Connection ~ 9200 3650
Wire Wire Line
	9200 3650 9750 3650
Wire Wire Line
	9500 3600 9500 3750
Connection ~ 9500 3750
Wire Wire Line
	9500 3750 9750 3750
Wire Wire Line
	9500 3500 9500 3450
Wire Wire Line
	9500 3450 9350 3450
Wire Wire Line
	9200 3450 9200 3500
Wire Wire Line
	9350 3400 9350 3450
Connection ~ 9350 3450
Wire Wire Line
	9350 3450 9200 3450
$Comp
L agg-kicad:PART X1
U 1 1 5B50EEE8
P 7050 5550
F 0 "X1" H 7578 5646 50  0000 L CNN
F 1 "MOUNT" H 7578 5555 50  0000 L CNN
F 2 "agg:M2.5_HOLE" H 7050 5550 50  0001 C CNN
F 3 "" H 7050 5550 50  0001 C CNN
	1    7050 5550
	1    0    0    -1  
$EndComp
NoConn ~ 8250 1150
Wire Wire Line
	8250 3050 8350 3050
NoConn ~ 8250 3950
Text Label 1600 6450 0    50   ~ 0
FREQ_CTRL
Text Label 8600 1250 0    50   ~ 0
FREQ_CTRL
Text Label 8350 3050 0    50   ~ 0
SOLAR_CELL_VOLTAGE
Wire Wire Line
	8250 2950 8350 2950
NoConn ~ 8250 3450
$Comp
L STM32L051K8U6:STM32L051K8U6 U1
U 1 1 5A37D9A9
P 7400 2500
F 0 "U1" H 7400 4097 60  0000 C CNN
F 1 "STM32L051K8U6" H 7400 3991 60  0000 C CNN
F 2 "agg:QFN-32-EP-ST" H 7050 800 60  0001 L CNN
F 3 "http://www.st.com/resource/en/datasheet/stm32l051t8.pdf" H 7050 700 60  0001 L CNN
F 4 "2488323" H 7050 600 60  0001 L CNN "Farnell"
	1    7400 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 1250 8250 1250
Wire Wire Line
	8250 1350 9650 1350
Connection ~ 9650 1350
Wire Wire Line
	8250 2350 8400 2350
Wire Wire Line
	1400 6450 1600 6450
Wire Wire Line
	6250 1700 6250 1750
Wire Wire Line
	6550 1950 6250 1950
Connection ~ 6250 1950
Wire Wire Line
	6250 1950 6250 2050
Wire Wire Line
	6250 1750 6550 1750
Connection ~ 6250 1750
Wire Wire Line
	6250 1750 6250 1950
Text Label 1600 1250 0    50   ~ 0
RADIO_PWR_EN
Text Label 8350 3150 0    50   ~ 0
RADIO_PWR_EN
Wire Wire Line
	1400 1250 1600 1250
Wire Wire Line
	8350 3150 8250 3150
Wire Wire Line
	8250 2750 9100 2750
Text Label 1600 3850 0    60   ~ 0
GPS_EXTINT
Wire Wire Line
	1400 3850 1600 3850
Text Label 8400 2050 0    60   ~ 0
GPS_EXTINT
Wire Wire Line
	8400 2050 8250 2050
$Comp
L agg-kicad:PART X2
U 1 1 5B4BB0BB
P 7050 6100
F 0 "X2" H 7578 6196 50  0000 L CNN
F 1 "CUSF_LOGO" H 7578 6105 50  0000 L CNN
F 2 "Jerboa:cusf_logo" H 7050 6100 50  0001 C CNN
F 3 "" H 7050 6100 50  0001 C CNN
	1    7050 6100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
