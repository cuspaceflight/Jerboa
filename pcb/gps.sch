EESchema Schematic File Version 4
LIBS:jerboa-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
L agg-kicad:C C301
U 1 1 5A6DE6E0
P 4950 2700
F 0 "C301" H 5000 2770 50  0000 C CNN
F 1 "100nF" H 5000 2600 50  0000 C CNN
F 2 "agg:0402" H 4950 2700 50  0001 C CNN
F 3 "" H 4950 2700 50  0001 C CNN
F 4 "1288282" H 4950 2700 50  0001 C CNN "Farnell"
	1    4950 2700
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:COAX P301
U 1 1 5A6DE78F
P 6800 3500
F 0 "P301" H 6800 3600 50  0000 C CNN
F 1 "COAX" H 6800 3350 50  0000 C CNN
F 2 "agg:SMA-EDGE" H 6800 3290 50  0001 C CNN
F 3 "" H 6900 3400 50  0001 C CNN
F 4 "1608592" H 6800 3220 50  0001 C CNN "Farnell"
	1    6800 3500
	1    0    0    -1  
$EndComp
Text Notes 5600 2150 0    118  ~ 0
GPS
Text HLabel 6500 2900 2    60   Input ~ 0
GPS_TX
Text HLabel 6500 2800 2    60   Input ~ 0
GPS_RX
$Comp
L agg-kicad:MAX-M8Q IC?
U 1 1 5A6E4106
P 5800 3000
F 0 "IC?" H 5800 3725 50  0000 C CNN
F 1 "MAX-M8Q" H 5800 3634 50  0000 C CNN
F 2 "agg:MAX-M8Q" H 5300 2300 50  0001 L CNN
F 3 "https://www.u-blox.com/sites/default/files/MAX-M8-FW3_DataSheet_%28UBX-15031506%29.pdf" H 5300 2200 50  0001 L CNN
	1    5800 3000
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:3v3 #PWR?
U 1 1 5A6F25D1
P 5100 2450
F 0 "#PWR?" H 5100 2560 50  0001 L CNN
F 1 "3v3" H 5100 2540 50  0000 C CNN
F 2 "" H 5100 2450 60  0000 C CNN
F 3 "" H 5100 2450 60  0000 C CNN
	1    5100 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2500 5100 2500
Wire Wire Line
	5100 2450 5100 2700
Wire Wire Line
	4950 2700 5200 2700
Connection ~ 5100 2500
Wire Wire Line
	5200 2600 5100 2600
Connection ~ 5100 2600
$Comp
L agg-kicad:GND #PWR?
U 1 1 5A6F2D41
P 5100 3050
F 0 "#PWR?" H 4970 3090 50  0001 L CNN
F 1 "GND" H 5000 3000 50  0000 C CNN
F 2 "" H 5100 3050 60  0000 C CNN
F 3 "" H 5100 3050 60  0000 C CNN
	1    5100 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2800 5100 3050
Wire Wire Line
	5100 3000 5200 3000
Wire Wire Line
	5200 2900 5100 2900
Connection ~ 5100 3000
Wire Wire Line
	4950 2800 5200 2800
Connection ~ 5100 2900
NoConn ~ 6400 2500
NoConn ~ 6400 2600
Wire Wire Line
	6500 2800 6400 2800
Wire Wire Line
	6400 2900 6500 2900
NoConn ~ 6400 3100
NoConn ~ 6400 3200
NoConn ~ 6400 3300
$Comp
L agg-kicad:ESD_DIODE D?
U 1 1 5A6F5EFB
P 6500 3600
F 0 "D?" V 6500 3658 50  0000 L CNN
F 1 "ESD_DIODE" H 6450 3500 50  0001 L CNN
F 2 "agg:0402" H 6450 3400 50  0001 L CNN
F 3 "http://www.farnell.com/datasheets/1772768.pdf" H 6400 3600 50  0001 C CNN
F 4 "2368169" H 6450 3300 50  0001 L CNN "Farnell"
	1    6500 3600
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:GND #PWR?
U 1 1 5A6F5FFD
P 6500 3800
F 0 "#PWR?" H 6370 3840 50  0001 L CNN
F 1 "GND" H 6500 3887 50  0000 C CNN
F 2 "" H 6500 3800 50  0001 C CNN
F 3 "" H 6500 3800 50  0001 C CNN
	1    6500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3700 6500 3800
Wire Wire Line
	6400 3500 6700 3500
Connection ~ 6500 3500
Wire Wire Line
	6700 3600 6700 3750
Wire Wire Line
	6700 3750 6500 3750
Connection ~ 6500 3750
NoConn ~ 5200 3400
NoConn ~ 5200 3300
Text HLabel 5150 3200 0    60   Input ~ 0
GPS_~RESET
Wire Wire Line
	5200 3200 5150 3200
NoConn ~ 5200 3500
Connection ~ 5100 2700
Connection ~ 5100 2800
$EndSCHEMATC
