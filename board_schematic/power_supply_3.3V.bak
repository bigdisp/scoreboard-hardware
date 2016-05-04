EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:project_parts
LIBS:uC_segment_control-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 16
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 5450 2300 0    60   ~ 0
LF33 chosen:\n+ fixed output voltage\n+ cheap\n+ PSRR ok (compared to MCP1703)
$Comp
L LF33 U1
U 1 1 5725E236
P 5800 2500
F 0 "U1" H 6050 2100 60  0000 C CNN
F 1 "LF33" H 5800 2600 60  0000 C CNN
F 2 "project_footprints:D-PAK" H 5750 2600 60  0001 C CNN
F 3 "" H 5750 2600 60  0000 C CNN
	1    5800 2500
	1    0    0    -1  
$EndComp
$Comp
L CP C4
U 1 1 5725EB02
P 6500 2800
F 0 "C4" H 6525 2900 50  0000 L CNN
F 1 "10uF (X5R-G0805 10/16)" H 6525 2700 50  0000 L CNN
F 2 "" H 6538 2650 50  0001 C CNN
F 3 "" H 6500 2800 50  0000 C CNN
	1    6500 2800
	1    0    0    -1  
$EndComp
Text Label 6850 2500 0    60   ~ 0
+3.3V
Text GLabel 7100 2500 2    60   Input ~ 0
+3.3V
$Comp
L GND #PWR06
U 1 1 5725EBDD
P 7150 3050
F 0 "#PWR06" H 7150 2800 50  0001 C CNN
F 1 "GND" H 7150 2900 50  0000 C CNN
F 2 "" H 7150 3050 50  0000 C CNN
F 3 "" H 7150 3050 50  0000 C CNN
	1    7150 3050
	1    0    0    -1  
$EndComp
$Comp
L F_Small F1
U 1 1 5725EBF5
P 3950 2500
F 0 "F1" H 3910 2560 50  0000 L CNN
F 1 "2.5A" H 3830 2440 50  0000 L CNN
F 2 "Fuse_Holders_and_Fuses:Fuseholder5x20_horiz_SemiClosed_Casing10x25mm" H 3950 2500 50  0001 C CNN
F 3 "" H 3950 2500 50  0000 C CNN
	1    3950 2500
	1    0    0    -1  
$EndComp
Text Notes 3800 2300 0    60   ~ 0
reverse battery protection \nwith diode leads to voltage drop \n(not acceptable). \nBy the way: P_lost~1.5W
Wire Wire Line
	6300 2500 7100 2500
Wire Wire Line
	6500 2500 6500 2650
Connection ~ 6500 2500
Connection ~ 6500 3050
Wire Wire Line
	6500 3050 5800 3050
Connection ~ 5800 3050
Wire Wire Line
	3850 2500 3500 2500
Text GLabel 3500 2500 0    60   Input ~ 0
+12V_IN
Text GLabel 3500 3050 0    60   Input ~ 0
GND
$Comp
L ZENER D1
U 1 1 5725F0CE
P 4200 2750
F 0 "D1" H 4200 2850 50  0000 C CNN
F 1 "ZD 15" H 4200 2650 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-41_SOD81_Horizontal_RM10" H 4200 2750 50  0001 C CNN
F 3 "" H 4200 2750 50  0000 C CNN
	1    4200 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 2950 4200 3050
Text Notes 4250 3000 0    20   ~ 0
15V\nhopefully no bigger pads as heat sink necessary\nbecause in case of a reverse polarity the time span\n until the fuse reacts is so short that it depends \nmainly on the heat capacity of the diode (?).
$Comp
L CP C3
U 1 1 5725F565
P 5350 2800
F 0 "C3" H 5375 2900 50  0000 L CNN
F 1 "1uF" H 5375 2700 50  0000 L CNN
F 2 "" H 5388 2650 50  0001 C CNN
F 3 "" H 5350 2800 50  0000 C CNN
	1    5350 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2950 6500 3050
Wire Wire Line
	5350 2950 5350 3050
Connection ~ 5350 3050
Wire Wire Line
	4200 2550 4200 2500
Connection ~ 4200 2500
Connection ~ 4200 3050
Wire Wire Line
	5350 2600 5350 2650
Wire Wire Line
	5350 2500 5350 1850
Wire Wire Line
	5350 1850 7100 1850
Text GLabel 7100 1850 2    60   Input ~ 0
+12.0V
Text Label 6750 1850 0    60   ~ 0
+12.0V
$Comp
L CONN_01X02 P2
U 1 1 5725F7CB
P 2750 2800
F 0 "P2" H 2750 2950 50  0000 C CNN
F 1 "POWER_IN" V 2850 2800 50  0000 C CNN
F 2 "Connect:bornier2" H 2750 2800 50  0001 C CNN
F 3 "" H 2750 2800 50  0000 C CNN
	1    2750 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	2950 2750 3550 2750
Wire Wire Line
	3550 2750 3550 2500
Connection ~ 3550 2500
Wire Wire Line
	2950 2850 3550 2850
Wire Wire Line
	3550 2850 3550 3050
Connection ~ 3550 3050
Wire Wire Line
	3500 3050 7150 3050
Wire Wire Line
	4050 2500 5350 2500
$EndSCHEMATC
