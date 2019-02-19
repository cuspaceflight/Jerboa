EESchema Schematic File Version 4
EELAYER 26 0
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
L agg-kicad:CONN_01x02 J1
U 1 1 5A72385E
P 3800 2750
F 0 "J1" H 3831 2965 50  0000 C CNN
F 1 "BATTERY_HOLDER" H 3831 2874 50  0000 C CNN
F 2 "battery_breakout:AAA_battery_holder" H 3800 2750 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1703957.pdf" H 3800 2750 50  0001 C CNN
F 4 "1702632" H 3800 2750 50  0001 C CNN "Farnell"
	1    3800 2750
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR05
U 1 1 5A7238FD
P 4000 2950
F 0 "#PWR05" H 3870 2990 50  0001 L CNN
F 1 "GND" H 4000 3037 50  0000 C CNN
F 2 "" H 4000 2950 50  0001 C CNN
F 3 "" H 4000 2950 50  0001 C CNN
	1    4000 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2950 4000 2900
Wire Wire Line
	4000 2850 3900 2850
Wire Wire Line
	4000 2750 3900 2750
Text Label 4950 2750 0    50   ~ 0
V_BATT
Text Label 4000 2750 0    50   ~ 0
V_BATT
$Comp
L agg-kicad:PWR #FLG01
U 1 1 5A723EF2
P 4150 2900
F 0 "#FLG01" H 4150 3060 50  0001 C CNN
F 1 "PWR" H 4150 3034 50  0000 C CNN
F 2 "" H 4150 2900 50  0001 C CNN
F 3 "" H 4150 2900 50  0001 C CNN
	1    4150 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2900 4000 2900
Connection ~ 4000 2900
Wire Wire Line
	4000 2900 4000 2850
$Comp
L agg-kicad:CONN_01x02 J4
U 1 1 5A7246DE
P 3800 3250
F 0 "J4" H 3831 3465 50  0000 C CNN
F 1 "BATTERY_HOLDER" H 3831 3374 50  0000 C CNN
F 2 "battery_breakout:AA_battery_holder" H 3800 3250 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1703957.pdf" H 3800 3250 50  0001 C CNN
F 4 "1702629" H 3800 3250 50  0001 C CNN "Farnell"
	1    3800 3250
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR01
U 1 1 5A7246E5
P 4000 3450
F 0 "#PWR01" H 3870 3490 50  0001 L CNN
F 1 "GND" H 4000 3537 50  0000 C CNN
F 2 "" H 4000 3450 50  0001 C CNN
F 3 "" H 4000 3450 50  0001 C CNN
	1    4000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3450 4000 3400
Wire Wire Line
	4000 3350 3900 3350
Wire Wire Line
	4000 3250 3900 3250
Text Label 4000 3250 0    50   ~ 0
V_BATT
$Comp
L agg-kicad:PWR #FLG02
U 1 1 5A7246EF
P 4150 3400
F 0 "#FLG02" H 4150 3560 50  0001 C CNN
F 1 "PWR" H 4150 3534 50  0000 C CNN
F 2 "" H 4150 3400 50  0001 C CNN
F 3 "" H 4150 3400 50  0001 C CNN
	1    4150 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3400 4000 3400
Connection ~ 4000 3400
Wire Wire Line
	4000 3400 4000 3350
Text Notes 3550 2850 0    50   ~ 0
AAA
Text Notes 3600 3350 0    50   ~ 0
AA
Wire Wire Line
	4950 2750 4800 2750
$Comp
L agg-kicad:CONN_01x02 J2
U 1 1 5A722E07
P 4700 2650
F 0 "J2" H 4731 2865 50  0000 C CNN
F 1 "CONN_01x02" H 4731 2774 50  0000 C CNN
F 2 "agg:SIL-254P-02" H 4700 2650 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1518407.pdf" H 4700 2650 50  0001 C CNN
F 4 "1593411" H 4700 2650 50  0001 C CNN "Farnell"
	1    4700 2650
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:CONN_01x02 J3
U 1 1 5A723D3B
P 4700 3100
F 0 "J3" H 4731 3315 50  0000 C CNN
F 1 "CONN_01x02" H 4731 3224 50  0000 C CNN
F 2 "agg:SIL-254P-02" H 4700 3100 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1518407.pdf" H 4700 3100 50  0001 C CNN
F 4 "1593411" H 4700 3100 50  0001 C CNN "Farnell"
	1    4700 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3200 4950 3250
Wire Wire Line
	4800 3200 4950 3200
$Comp
L agg-kicad:GND #PWR02
U 1 1 5A722EF5
P 4950 3250
F 0 "#PWR02" H 4820 3290 50  0001 L CNN
F 1 "GND" H 4950 3337 50  0000 C CNN
F 2 "" H 4950 3250 50  0001 C CNN
F 3 "" H 4950 3250 50  0001 C CNN
	1    4950 3250
	1    0    0    -1  
$EndComp
NoConn ~ 4800 2650
Text Notes 4850 2675 0    50   ~ 0
Pin for solar cell voltage (n/a here)
Text Label 4950 3100 0    50   ~ 0
V_BATT
Wire Wire Line
	4950 3100 4800 3100
$Comp
L agg-kicad:TESTPAD TP?
U 1 1 5C6C84B9
P 4150 3400
F 0 "TP?" H 4248 3400 50  0000 L CNN
F 1 "TESTPAD" H 4150 3325 50  0001 L CNN
F 2 "jerboa:ANT_GND_PASSTHROUGH" H 4150 3250 50  0001 L CNN
F 3 "" H 4150 3400 50  0001 C CNN
	1    4150 3400
	1    0    0    -1  
$EndComp
Connection ~ 4150 3400
$EndSCHEMATC
