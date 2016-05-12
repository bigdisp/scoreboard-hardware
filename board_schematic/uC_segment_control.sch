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
Sheet 1 16
Title "uC_segment_control"
Date "2016-05-12"
Rev "V0.3.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 950  850  1350 300 
U 5725D7AC
F0 "power_supply_3.3V" 60
F1 "power_supply_3.3V.sch" 60
$EndSheet
$Comp
L ATMEGA88PA-P IC101
U 1 1 5725FA39
P 1900 2750
F 0 "IC101" H 1150 4000 50  0000 L BNN
F 1 "ATMEGA88PA-P" H 2300 1350 50  0000 L BNN
F 2 "Housings_DIP:DIP-28_W7.62mm_LongPads" H 1900 2750 50  0001 C CIN
F 3 "" H 1900 2750 50  0000 C CNN
	1    1900 2750
	1    0    0    -1  
$EndComp
Text Notes 1250 4250 0    60   ~ 0
DIL-package for easy \nisolation-milling-production
$Comp
L C C101
U 1 1 5725FB10
P 750 1800
F 0 "C101" H 775 1900 50  0000 L CNN
F 1 "100n" H 775 1700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 788 1650 50  0001 C CNN
F 3 "" H 750 1800 50  0000 C CNN
	1    750  1800
	1    0    0    -1  
$EndComp
$Comp
L R R107
U 1 1 5725FD50
P 4200 3100
F 0 "R107" V 4280 3100 50  0000 C CNN
F 1 "10k" V 4200 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4130 3100 50  0001 C CNN
F 3 "" H 4200 3100 50  0000 C CNN
	1    4200 3100
	0    -1   -1   0   
$EndComp
$Comp
L CONN_02X05 P128
U 1 1 5725FF13
P 2600 5250
F 0 "P128" H 2600 5550 50  0000 C CNN
F 1 "CONN_02X05" H 2600 4950 50  0000 C CNN
F 2 "Connect:IDC_Header_Straight_10pins" H 2600 4050 50  0001 C CNN
F 3 "" H 2600 4050 50  0000 C CNN
	1    2600 5250
	1    0    0    -1  
$EndComp
$Comp
L R R111
U 1 1 572600A7
P 2100 5050
F 0 "R111" V 2150 4850 50  0000 C CNN
F 1 "5k" V 2100 5050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2030 5050 50  0001 C CNN
F 3 "" H 2100 5050 50  0000 C CNN
	1    2100 5050
	0    -1   -1   0   
$EndComp
$Comp
L R R113
U 1 1 572601AB
P 2100 5250
F 0 "R113" V 2150 5050 50  0000 C CNN
F 1 "5k" V 2100 5250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2030 5250 50  0001 C CNN
F 3 "" H 2100 5250 50  0000 C CNN
	1    2100 5250
	0    -1   -1   0   
$EndComp
$Comp
L R R115
U 1 1 572601FA
P 2100 5350
F 0 "R115" V 2150 5150 50  0000 C CNN
F 1 "5k" V 2100 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2030 5350 50  0001 C CNN
F 3 "" H 2100 5350 50  0000 C CNN
	1    2100 5350
	0    -1   -1   0   
$EndComp
$Comp
L R R119
U 1 1 57260230
P 2100 5450
F 0 "R119" V 2150 5250 50  0000 C CNN
F 1 "5k" V 2100 5450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2030 5450 50  0001 C CNN
F 3 "" H 2100 5450 50  0000 C CNN
	1    2100 5450
	0    -1   -1   0   
$EndComp
Text Notes 1500 6100 0    60   ~ 0
experimental: to reduce part costs\nthe internal protection diodes are used for clamping\n(Flasher 5V --> 3.3V ATMEGA)\nTo make sure that I<1mA even if ATMEGA is off, 5k is used.\n(Application Note AVR182)
$Comp
L GND #PWR01
U 1 1 57260352
P 3450 5450
F 0 "#PWR01" H 3450 5200 50  0001 C CNN
F 1 "GND" H 3450 5300 50  0000 C CNN
F 2 "" H 3450 5450 50  0000 C CNN
F 3 "" H 3450 5450 50  0000 C CNN
	1    3450 5450
	1    0    0    -1  
$EndComp
Text Label 3450 5350 2    60   ~ 0
GND
Text GLabel 750  2000 0    60   Input ~ 0
GND
Text Label 1550 5050 0    60   ~ 0
MOSI
Text Label 1550 5250 0    60   ~ 0
RESET
Text Label 1550 5350 0    60   ~ 0
SCK
Text Label 1550 5450 0    60   ~ 0
MISO
$Comp
L GND #PWR02
U 1 1 572607FB
P 750 2050
F 0 "#PWR02" H 750 1800 50  0001 C CNN
F 1 "GND" H 750 1900 50  0000 C CNN
F 2 "" H 750 2050 50  0000 C CNN
F 3 "" H 750 2050 50  0000 C CNN
	1    750  2050
	1    0    0    -1  
$EndComp
Text Label 750  1650 0    60   ~ 0
+3.3V
$Comp
L GND #PWR03
U 1 1 572609BE
P 1000 3950
F 0 "#PWR03" H 1000 3700 50  0001 C CNN
F 1 "GND" H 1000 3800 50  0000 C CNN
F 2 "" H 1000 3950 50  0000 C CNN
F 3 "" H 1000 3950 50  0000 C CNN
	1    1000 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 57260A08
P 3950 3350
F 0 "#PWR04" H 3950 3100 50  0001 C CNN
F 1 "GND" H 3950 3200 50  0000 C CNN
F 2 "" H 3950 3350 50  0000 C CNN
F 3 "" H 3950 3350 50  0000 C CNN
	1    3950 3350
	1    0    0    -1  
$EndComp
Text Label 4350 3100 0    60   ~ 0
+3.3V
Text Label 2900 3100 0    60   ~ 0
RESET
Text Label 2900 1950 0    60   ~ 0
MOSI
Text Label 2900 2050 0    60   ~ 0
MISO
Text Label 2900 2150 0    60   ~ 0
SCK
Text Notes 550  650  0    60   ~ 0
Power Supply:
Text Notes 550  1450 0    60   ~ 0
uC:
Text Notes 550  4650 0    60   ~ 0
Flashport:
Text Notes 4750 700  0    118  ~ 24
LED-Driver: Segments
Text Notes 8300 700  0    118  ~ 24
LED-Driver: Color-Groups
Text Label 5000 3000 0    60   ~ 0
S0_6
Text Label 5000 2700 0    60   ~ 0
S0_5
Text Label 5000 2400 0    60   ~ 0
S0_4
Text Label 5000 2100 0    60   ~ 0
S0_3
Text Label 5000 1800 0    60   ~ 0
S0_2
Text Label 5000 1500 0    60   ~ 0
S0_1
Text Label 5000 1200 0    60   ~ 0
S0_0
Text Notes 8200 900  0    39   ~ 0
Hint: For board-routing the connection segment <-->color-group is not interesting.\nSo all names are as general as possible.\n
$Comp
L R R118
U 1 1 57281AF4
P 10400 5400
F 0 "R118" V 10480 5400 50  0000 C CNN
F 1 "3k3" V 10400 5400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10330 5400 50  0001 C CNN
F 3 "" H 10400 5400 50  0000 C CNN
	1    10400 5400
	1    0    0    -1  
$EndComp
$Sheet
S 5250 1150 550  200 
U 572880E3
F0 "p-mos_switch_S0_0.sch" 20
F1 "p-mos_switch.sch" 20
F2 "S_IN" I L 5250 1200 60 
F3 "S_OUT" I R 5800 1300 60 
$EndSheet
$Sheet
S 5250 1450 550  200 
U 572753D2
F0 "p-mos_switch_S0_1.sch" 20
F1 "p-mos_switch.sch" 20
F2 "S_IN" I L 5250 1500 60 
F3 "S_OUT" I R 5800 1600 60 
$EndSheet
$Sheet
S 5250 1750 550  200 
U 57275FE1
F0 "p-mos_switch_S0_2.sch" 20
F1 "p-mos_switch.sch" 20
F2 "S_IN" I L 5250 1800 60 
F3 "S_OUT" I R 5800 1900 60 
$EndSheet
$Sheet
S 5250 2050 550  200 
U 57276A86
F0 "p-mos_switch_S0_3.sch" 20
F1 "p-mos_switch.sch" 20
F2 "S_IN" I L 5250 2100 60 
F3 "S_OUT" I R 5800 2200 60 
$EndSheet
$Sheet
S 5250 2350 550  200 
U 57276A8A
F0 "p-mos_switch_S0_4.sch" 20
F1 "p-mos_switch.sch" 20
F2 "S_IN" I L 5250 2400 60 
F3 "S_OUT" I R 5800 2500 60 
$EndSheet
$Sheet
S 5250 2650 550  200 
U 57276A8E
F0 "p-mos_switch_S0_5.sch" 20
F1 "p-mos_switch.sch" 20
F2 "S_IN" I L 5250 2700 60 
F3 "S_OUT" I R 5800 2800 60 
$EndSheet
$Sheet
S 5250 2950 550  200 
U 57276E10
F0 "p-mos_switch_S0_6.sch" 20
F1 "p-mos_switch.sch" 20
F2 "S_IN" I L 5250 3000 60 
F3 "S_OUT" I R 5800 3100 60 
$EndSheet
Text Label 5000 5350 0    60   ~ 0
S1_6
Text Label 5000 5050 0    60   ~ 0
S1_5
Text Label 5000 4750 0    60   ~ 0
S1_4
Text Label 5000 4450 0    60   ~ 0
S1_3
Text Label 5000 4150 0    60   ~ 0
S1_2
Text Label 5000 3850 0    60   ~ 0
S1_1
Text Label 5000 3550 0    60   ~ 0
S1_0
$Sheet
S 5250 3500 550  200 
U 5727C603
F0 "p-mos_switch_S1_0.sch" 20
F1 "p-mos_switch.sch" 20
F2 "S_IN" I L 5250 3550 60 
F3 "S_OUT" I R 5800 3650 60 
$EndSheet
$Sheet
S 5250 3800 550  200 
U 5727C607
F0 "p-mos_switch_S1_1.sch" 20
F1 "p-mos_switch.sch" 20
F2 "S_IN" I L 5250 3850 60 
F3 "S_OUT" I R 5800 3950 60 
$EndSheet
$Sheet
S 5250 4100 550  200 
U 5727C60B
F0 "p-mos_switch_S1_2.sch" 20
F1 "p-mos_switch.sch" 20
F2 "S_IN" I L 5250 4150 60 
F3 "S_OUT" I R 5800 4250 60 
$EndSheet
$Sheet
S 5250 4400 550  200 
U 5727C60F
F0 "p-mos_switch_S1_3.sch" 20
F1 "p-mos_switch.sch" 20
F2 "S_IN" I L 5250 4450 60 
F3 "S_OUT" I R 5800 4550 60 
$EndSheet
$Sheet
S 5250 4700 550  200 
U 5727C613
F0 "p-mos_switch_S1_4.sch" 20
F1 "p-mos_switch.sch" 20
F2 "S_IN" I L 5250 4750 60 
F3 "S_OUT" I R 5800 4850 60 
$EndSheet
$Sheet
S 5250 5000 550  200 
U 5727C617
F0 "p-mos_switch_S1_5.sch" 20
F1 "p-mos_switch.sch" 20
F2 "S_IN" I L 5250 5050 60 
F3 "S_OUT" I R 5800 5150 60 
$EndSheet
$Sheet
S 5250 5300 550  200 
U 5727C61B
F0 "p-mos_switch_S1_6.sch" 20
F1 "p-mos_switch.sch" 20
F2 "S_IN" I L 5250 5350 60 
F3 "S_OUT" I R 5800 5450 60 
$EndSheet
$Comp
L Q_NMOS_GSD Q104
U 1 1 5727EB50
P 8300 5200
F 0 "Q104" H 8650 5250 50  0000 R CNN
F 1 "IRLML2502" V 8550 5200 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 8500 5300 50  0001 C CNN
F 3 "" H 8300 5200 50  0000 C CNN
	1    8300 5200
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q105
U 1 1 5727EB56
P 9450 5200
F 0 "Q105" H 9800 5250 50  0000 R CNN
F 1 "IRLML2502" V 9700 5200 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 9650 5300 50  0001 C CNN
F 3 "" H 9450 5200 50  0000 C CNN
	1    9450 5200
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q106
U 1 1 5727EB5C
P 10600 5200
F 0 "Q106" H 10950 5250 50  0000 R CNN
F 1 "IRLML2502" V 10850 5200 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 10800 5300 50  0001 C CNN
F 3 "" H 10600 5200 50  0000 C CNN
	1    10600 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5727EB62
P 10700 5650
F 0 "#PWR05" H 10700 5400 50  0001 C CNN
F 1 "GND" H 10700 5500 50  0000 C CNN
F 2 "" H 10700 5650 50  0000 C CNN
F 3 "" H 10700 5650 50  0000 C CNN
	1    10700 5650
	1    0    0    -1  
$EndComp
Text Label 7850 5200 0    60   ~ 0
G1_R
Text Label 9000 5200 0    60   ~ 0
G1_G
Text Label 10150 5200 0    60   ~ 0
G1_B
$Comp
L CONN_01X02 P114
U 1 1 572772EF
P 8600 2250
F 0 "P114" H 8600 2250 50  0000 C CNN
F 1 "CONN_01X02" V 8700 2250 50  0001 C CNN
F 2 "Connect:AK300-2" H 8600 2250 50  0001 C CNN
F 3 "" H 8600 2250 50  0000 C CNN
	1    8600 2250
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P108
U 1 1 57277435
P 8600 2050
F 0 "P108" H 8600 2050 50  0000 C CNN
F 1 "CONN_01X02" V 8700 2050 50  0001 C CNN
F 2 "Connect:AK300-2" H 8600 2050 50  0001 C CNN
F 3 "" H 8600 2050 50  0000 C CNN
	1    8600 2050
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P107
U 1 1 57277549
P 8200 2050
F 0 "P107" H 8200 2050 50  0000 C CNN
F 1 "CONN_01X02" V 8300 2050 50  0001 C CNN
F 2 "Connect:AK300-2" H 8200 2050 50  0001 C CNN
F 3 "" H 8200 2050 50  0000 C CNN
	1    8200 2050
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P113
U 1 1 57278E5C
P 8200 2250
F 0 "P113" H 8200 2250 50  0000 C CNN
F 1 "CONN_01X02" V 8300 2250 50  0001 C CNN
F 2 "Connect:AK300-2" H 8200 2250 50  0001 C CNN
F 3 "" H 8200 2250 50  0000 C CNN
	1    8200 2250
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P116
U 1 1 5727C3F8
P 9750 2250
F 0 "P116" H 9750 2250 50  0000 C CNN
F 1 "CONN_01X02" V 9850 2250 50  0001 C CNN
F 2 "Connect:AK300-2" H 9750 2250 50  0001 C CNN
F 3 "" H 9750 2250 50  0000 C CNN
	1    9750 2250
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P110
U 1 1 5727C3FE
P 9750 2050
F 0 "P110" H 9750 2050 50  0000 C CNN
F 1 "CONN_01X02" V 9850 2050 50  0001 C CNN
F 2 "Connect:AK300-2" H 9750 2050 50  0001 C CNN
F 3 "" H 9750 2050 50  0000 C CNN
	1    9750 2050
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P109
U 1 1 5727C404
P 9350 2050
F 0 "P109" H 9350 2050 50  0000 C CNN
F 1 "CONN_01X02" V 9450 2050 50  0001 C CNN
F 2 "Connect:AK300-2" H 9350 2050 50  0001 C CNN
F 3 "" H 9350 2050 50  0000 C CNN
	1    9350 2050
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P115
U 1 1 5727C446
P 9350 2250
F 0 "P115" H 9350 2250 50  0000 C CNN
F 1 "CONN_01X02" V 9450 2250 50  0001 C CNN
F 2 "Connect:AK300-2" H 9350 2250 50  0001 C CNN
F 3 "" H 9350 2250 50  0000 C CNN
	1    9350 2250
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P118
U 1 1 5727C820
P 10900 2250
F 0 "P118" H 10900 2250 50  0000 C CNN
F 1 "CONN_01X02" V 11000 2250 50  0001 C CNN
F 2 "Connect:AK300-2" H 10900 2250 50  0001 C CNN
F 3 "" H 10900 2250 50  0000 C CNN
	1    10900 2250
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P112
U 1 1 5727C826
P 10900 2050
F 0 "P112" H 10900 2050 50  0000 C CNN
F 1 "CONN_01X02" V 11000 2050 50  0001 C CNN
F 2 "Connect:AK300-2" H 10900 2050 50  0001 C CNN
F 3 "" H 10900 2050 50  0000 C CNN
	1    10900 2050
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P111
U 1 1 5727C82C
P 10500 2050
F 0 "P111" H 10500 2050 50  0000 C CNN
F 1 "CONN_01X02" V 10600 2050 50  0001 C CNN
F 2 "Connect:AK300-2" H 10500 2050 50  0001 C CNN
F 3 "" H 10500 2050 50  0000 C CNN
	1    10500 2050
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P117
U 1 1 5727C86E
P 10500 2250
F 0 "P117" H 10500 2250 50  0000 C CNN
F 1 "CONN_01X02" V 10600 2250 50  0001 C CNN
F 2 "Connect:AK300-2" H 10500 2250 50  0001 C CNN
F 3 "" H 10500 2250 50  0000 C CNN
	1    10500 2250
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P125
U 1 1 57284089
P 8200 4750
F 0 "P125" H 8200 4750 50  0000 C CNN
F 1 "CONN_01X02" V 8300 4750 50  0001 C CNN
F 2 "Connect:AK300-2" H 8200 4750 50  0001 C CNN
F 3 "" H 8200 4750 50  0000 C CNN
	1    8200 4750
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P126
U 1 1 572847EC
P 9350 4750
F 0 "P126" H 9350 4750 50  0000 C CNN
F 1 "CONN_01X02" V 9450 4750 50  0001 C CNN
F 2 "Connect:AK300-2" H 9350 4750 50  0001 C CNN
F 3 "" H 9350 4750 50  0000 C CNN
	1    9350 4750
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P127
U 1 1 57284A32
P 10500 4750
F 0 "P127" H 10500 4750 50  0000 C CNN
F 1 "CONN_01X02" V 10600 4750 50  0001 C CNN
F 2 "Connect:AK300-2" H 10500 4750 50  0001 C CNN
F 3 "" H 10500 4750 50  0000 C CNN
	1    10500 4750
	-1   0    0    1   
$EndComp
$Comp
L R R117
U 1 1 5728A5E2
P 9250 5400
F 0 "R117" V 9330 5400 50  0000 C CNN
F 1 "3k3" V 9250 5400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9180 5400 50  0001 C CNN
F 3 "" H 9250 5400 50  0000 C CNN
	1    9250 5400
	1    0    0    -1  
$EndComp
$Comp
L R R116
U 1 1 5728DB30
P 8100 5400
F 0 "R116" V 8180 5400 50  0000 C CNN
F 1 "3k3" V 8100 5400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8030 5400 50  0001 C CNN
F 3 "" H 8100 5400 50  0000 C CNN
	1    8100 5400
	1    0    0    -1  
$EndComp
$Comp
L R R109
U 1 1 5729CADD
P 3250 3750
F 0 "R109" V 3200 3950 50  0000 C CNN
F 1 "270" V 3250 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3180 3750 50  0001 C CNN
F 3 "" H 3250 3750 50  0000 C CNN
	1    3250 3750
	0    1    1    0   
$EndComp
$Comp
L R R106
U 1 1 572B94C4
P 10400 2850
F 0 "R106" V 10480 2850 50  0000 C CNN
F 1 "3k3" V 10400 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10330 2850 50  0001 C CNN
F 3 "" H 10400 2850 50  0000 C CNN
	1    10400 2850
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q101
U 1 1 572B94CA
P 8300 2650
F 0 "Q101" H 8650 2700 50  0000 R CNN
F 1 "IRLML2502" V 8550 2650 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 8500 2750 50  0001 C CNN
F 3 "" H 8300 2650 50  0000 C CNN
	1    8300 2650
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q102
U 1 1 572B94D0
P 9450 2650
F 0 "Q102" H 9800 2700 50  0000 R CNN
F 1 "IRLML2502" V 9700 2650 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 9650 2750 50  0001 C CNN
F 3 "" H 9450 2650 50  0000 C CNN
	1    9450 2650
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q103
U 1 1 572B94D6
P 10600 2650
F 0 "Q103" H 10950 2700 50  0000 R CNN
F 1 "IRLML2502" V 10850 2650 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 10800 2750 50  0001 C CNN
F 3 "" H 10600 2650 50  0000 C CNN
	1    10600 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 572B94DC
P 10700 3100
F 0 "#PWR06" H 10700 2850 50  0001 C CNN
F 1 "GND" H 10700 2950 50  0000 C CNN
F 2 "" H 10700 3100 50  0001 C CNN
F 3 "" H 10700 3100 50  0001 C CNN
	1    10700 3100
	1    0    0    -1  
$EndComp
Text Label 7850 2650 0    60   ~ 0
G0_R
Text Label 9000 2650 0    60   ~ 0
G0_G
Text Label 10150 2650 0    60   ~ 0
G0_B
$Comp
L R R105
U 1 1 572B94E5
P 9250 2850
F 0 "R105" V 9330 2850 50  0000 C CNN
F 1 "3k3" V 9250 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9180 2850 50  0001 C CNN
F 3 "" H 9250 2850 50  0000 C CNN
	1    9250 2850
	1    0    0    -1  
$EndComp
$Comp
L R R104
U 1 1 572B94EB
P 8100 2850
F 0 "R104" V 8180 2850 50  0000 C CNN
F 1 "3k3" V 8100 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8030 2850 50  0001 C CNN
F 3 "" H 8100 2850 50  0000 C CNN
	1    8100 2850
	1    0    0    -1  
$EndComp
Text Notes 7150 6300 1    118  ~ 24
LED-strips between connectors on the left and on the right.
Text Notes 6850 700  0    118  ~ 24
LEDs
Wire Wire Line
	2250 5050 2350 5050
Wire Wire Line
	2350 5250 2250 5250
Wire Wire Line
	2350 5350 2250 5350
Wire Wire Line
	2350 5450 2250 5450
Wire Wire Line
	1950 5050 1550 5050
Wire Wire Line
	1950 5250 1550 5250
Wire Wire Line
	1950 5350 1550 5350
Wire Wire Line
	1950 5450 1550 5450
Wire Wire Line
	2850 5350 3450 5350
Wire Wire Line
	2850 5450 3450 5450
Wire Wire Line
	3450 5450 3450 5350
Wire Wire Line
	750  1950 750  2050
Wire Wire Line
	1000 1950 1000 1650
Wire Wire Line
	1000 3950 1000 3850
Wire Notes Line
	4700 500  4700 7650
Wire Wire Line
	5250 3000 5000 3000
Wire Wire Line
	5250 2400 5000 2400
Wire Wire Line
	5250 1800 5000 1800
Wire Wire Line
	5250 1500 5000 1500
Wire Wire Line
	5250 1200 5000 1200
Wire Wire Line
	5250 2100 5000 2100
Wire Wire Line
	5250 2700 5000 2700
Wire Notes Line
	4750 6350 11150 6350
Wire Notes Line
	11150 6000 11150 5950
Wire Wire Line
	5250 5350 5000 5350
Wire Wire Line
	5250 4750 5000 4750
Wire Wire Line
	5250 4150 5000 4150
Wire Wire Line
	5250 3850 5000 3850
Wire Wire Line
	5250 3550 5000 3550
Wire Wire Line
	5250 4450 5000 4450
Wire Wire Line
	5250 5050 5000 5050
Wire Wire Line
	8400 5400 8400 5650
Wire Wire Line
	9550 5400 9550 5650
Connection ~ 8400 1700
Connection ~ 8400 1800
Connection ~ 8400 1900
Connection ~ 8400 2000
Connection ~ 8400 2100
Connection ~ 8400 2200
Connection ~ 8400 2300
Connection ~ 9550 1700
Connection ~ 9550 1800
Connection ~ 9550 1900
Connection ~ 9550 2000
Connection ~ 9550 2100
Connection ~ 9550 2200
Connection ~ 9550 2300
Connection ~ 10700 1700
Connection ~ 10700 1800
Connection ~ 10700 1900
Connection ~ 10700 2000
Connection ~ 10700 2100
Connection ~ 10700 2200
Connection ~ 10700 2300
Connection ~ 8400 4700
Connection ~ 8400 4800
Connection ~ 9550 4700
Connection ~ 9550 4800
Connection ~ 10700 4700
Connection ~ 10700 4800
Wire Wire Line
	10150 5200 10400 5200
Wire Wire Line
	9000 5200 9250 5200
Wire Wire Line
	10700 5650 8100 5650
Connection ~ 10700 5650
Wire Wire Line
	10400 5550 10400 5650
Connection ~ 10400 5650
Wire Wire Line
	10400 5200 10400 5250
Wire Wire Line
	9250 5200 9250 5250
Wire Wire Line
	9250 5550 9250 5650
Connection ~ 9250 5650
Connection ~ 9550 5650
Connection ~ 8400 5650
Wire Wire Line
	8100 5650 8100 5550
Wire Wire Line
	8100 5200 8100 5250
Wire Wire Line
	7850 5200 8100 5200
Wire Wire Line
	10700 5650 10700 5400
Wire Wire Line
	8400 2850 8400 3100
Wire Wire Line
	9550 2850 9550 3100
Wire Wire Line
	10150 2650 10400 2650
Wire Wire Line
	9000 2650 9250 2650
Wire Wire Line
	10700 3100 8100 3100
Connection ~ 10700 3100
Wire Wire Line
	10400 3000 10400 3100
Connection ~ 10400 3100
Wire Wire Line
	10400 2650 10400 2700
Wire Wire Line
	9250 2650 9250 2700
Wire Wire Line
	9250 3000 9250 3100
Connection ~ 9250 3100
Connection ~ 9550 3100
Connection ~ 8400 3100
Wire Wire Line
	8100 3100 8100 3000
Wire Wire Line
	8100 2650 8100 2700
Wire Wire Line
	7850 2650 8100 2650
Wire Wire Line
	10700 3100 10700 2850
Wire Notes Line
	6750 500  6750 6350
Wire Notes Line
	7400 6350 7400 500 
Wire Notes Line
	500  1350 4700 1350
Wire Notes Line
	500  4550 4700 4550
Wire Notes Line
	7500 1100 7500 4750
Wire Wire Line
	10700 4700 10700 5000
Wire Wire Line
	9550 4700 9550 5000
Wire Wire Line
	8400 4700 8400 5000
Wire Notes Line
	7500 1100 7250 1100
Wire Notes Line
	7500 1950 8000 1950
Wire Notes Line
	7500 4750 8000 4750
$Comp
L R R110
U 1 1 5731ACF8
P 3250 3850
F 0 "R110" V 3200 4050 50  0000 C CNN
F 1 "270" V 3250 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3180 3850 50  0001 C CNN
F 3 "" H 3250 3850 50  0000 C CNN
	1    3250 3850
	0    1    1    0   
$EndComp
$Comp
L R R108
U 1 1 5731AE5F
P 3250 3550
F 0 "R108" V 3200 3750 50  0000 C CNN
F 1 "270" V 3250 3550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3180 3550 50  0001 C CNN
F 3 "" H 3250 3550 50  0000 C CNN
	1    3250 3550
	0    1    1    0   
$EndComp
$Comp
L R R103
U 1 1 5731DF43
P 3250 1950
F 0 "R103" V 3200 2150 50  0000 C CNN
F 1 "270" V 3250 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3180 1950 50  0001 C CNN
F 3 "" H 3250 1950 50  0000 C CNN
	1    3250 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 2050 3800 2050
Wire Wire Line
	2900 2150 3800 2150
$Comp
L R R102
U 1 1 573203C9
P 3250 1850
F 0 "R102" V 3200 2050 50  0000 C CNN
F 1 "270" V 3250 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3180 1850 50  0001 C CNN
F 3 "" H 3250 1850 50  0000 C CNN
	1    3250 1850
	0    1    1    0   
$EndComp
$Comp
L R R101
U 1 1 5732053B
P 3250 1750
F 0 "R101" V 3200 1950 50  0000 C CNN
F 1 "270" V 3250 1750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3180 1750 50  0001 C CNN
F 3 "" H 3250 1750 50  0000 C CNN
	1    3250 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 1750 3800 1750
Wire Wire Line
	3400 1850 3800 1850
Wire Wire Line
	3400 1950 3800 1950
Text Label 3800 1750 2    60   ~ 0
G0_G
Text Label 3800 1850 2    60   ~ 0
G1_G
Text Label 3800 1950 2    60   ~ 0
G0_B
Wire Wire Line
	3400 3550 3800 3550
Text Label 3800 3550 2    60   ~ 0
G1_B
Wire Wire Line
	3400 3750 3800 3750
Wire Wire Line
	3400 3850 3800 3850
Text Label 3800 3750 2    60   ~ 0
G1_R
Text Label 3800 3850 2    60   ~ 0
G0_R
$Comp
L C_Small C102
U 1 1 5733ECAD
P 3950 3250
F 0 "C102" H 3960 3320 50  0000 L CNN
F 1 "100n" H 3960 3170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3950 3250 50  0001 C CNN
F 3 "" H 3950 3250 50  0000 C CNN
	1    3950 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3100 4050 3100
Text Notes 3150 4200 0    39   ~ 0
Series R to reduce I_max. \n(I<I_max of uC + reducing \nelectromagnetic interference).
Wire Wire Line
	2900 1650 3800 1650
Text Label 3800 1650 2    60   ~ 0
S0_0
Wire Wire Line
	4350 3100 4600 3100
Connection ~ 3950 3100
Text Label 3800 2050 2    60   ~ 0
S0_1
Text Label 3800 2150 2    60   ~ 0
S0_2
Wire Wire Line
	2900 2250 3800 2250
Text Label 3800 2250 2    60   ~ 0
S0_3
Wire Wire Line
	2900 2350 3800 2350
Text Label 3800 2350 2    60   ~ 0
S0_4
Wire Wire Line
	2900 2500 3800 2500
Text Label 3800 2500 2    60   ~ 0
S0_5
Wire Wire Line
	2900 2600 3800 2600
Text Label 3800 2600 2    60   ~ 0
S0_6
Wire Wire Line
	2900 2700 3800 2700
Text Label 3800 2700 2    60   ~ 0
S1_0
Wire Wire Line
	2900 2800 3800 2800
Text Label 3800 2800 2    60   ~ 0
S1_1
Wire Wire Line
	2900 2900 3800 2900
Text Label 3800 2900 2    60   ~ 0
SDA
Wire Wire Line
	2900 3000 3800 3000
Text Label 3800 3000 2    60   ~ 0
SCL
Wire Wire Line
	1000 1650 750  1650
Wire Wire Line
	2900 3250 3800 3250
Text Label 3800 3250 2    60   ~ 0
S1_2
Wire Wire Line
	2900 3350 3800 3350
Text Label 3800 3350 2    60   ~ 0
S1_3
Wire Wire Line
	2900 3450 3800 3450
Text Label 3800 3450 2    60   ~ 0
S1_4
Wire Wire Line
	2900 3650 3800 3650
Text Label 3800 3650 2    60   ~ 0
S1_5
Wire Wire Line
	2900 3950 3800 3950
Text Label 3800 3950 2    60   ~ 0
S1_6
Text Notes 3850 1850 0    28   ~ 0
Maybe green is the most \ninteresting color for a display. \n--> Put that to 16Bit-Timer1 \n(instead of 8-Bit).
Text Notes 8100 6000 0    39   ~ 0
Pulldown to \n+ prevent NMOS to reach a state between ON and OFF (getting hot)\n+ small enough that even with accidently uC-Pin as INPUT (Pullup=20k) nothing happens.\n(V_GS<0.6V and I_max=1mA --> R=3k3)
Text Label 2900 3250 0    60   ~ 0
RXD
Text Label 2900 3350 0    60   ~ 0
TXD
Text Label 3450 5250 2    60   ~ 0
TXD
Text Label 3450 5150 2    60   ~ 0
RXD
Text Notes 2950 5050 0    60   ~ 0
TXD/RXD for debugging
Text Notes 550  6450 0    60   ~ 0
I2C:
Wire Notes Line
	500  6350 4700 6350
$Comp
L R R121
U 1 1 572B1FD8
P 1950 6950
F 0 "R121" V 2050 6950 50  0000 C CNN
F 1 "100" V 1950 6950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1880 6950 50  0001 C CNN
F 3 "" H 1950 6950 50  0000 C CNN
	1    1950 6950
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02 P130
U 1 1 572B2240
P 2300 6900
F 0 "P130" H 2300 6900 50  0000 C CNN
F 1 "CONN_01X02" V 2400 6900 50  0001 C CNN
F 2 "Connect:AK300-2" H 2300 6900 50  0001 C CNN
F 3 "" H 2300 6900 50  0000 C CNN
	1    2300 6900
	1    0    0    -1  
$EndComp
$Comp
L R R120
U 1 1 572B2B36
P 1950 6850
F 0 "R120" V 1850 6850 50  0000 C CNN
F 1 "100" V 1950 6850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1880 6850 50  0001 C CNN
F 3 "" H 1950 6850 50  0000 C CNN
	1    1950 6850
	0    1    1    0   
$EndComp
Text Notes 1700 7200 0    60   ~ 0
protection: short/spikes...
Wire Wire Line
	1800 6850 1500 6850
Wire Wire Line
	1800 6950 1500 6950
Text Label 1500 6850 0    60   ~ 0
SDA
Text Label 1500 6950 0    60   ~ 0
SCL
$Comp
L CONN_01X02 P124
U 1 1 572B95D9
P 6350 3900
F 0 "P124" H 6350 3900 50  0000 C CNN
F 1 "CONN_01X02" V 6450 3900 50  0001 C CNN
F 2 "Connect:AK300-2" H 6350 3900 50  0001 C CNN
F 3 "" H 6350 3900 50  0000 C CNN
	1    6350 3900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P123
U 1 1 572B9818
P 6350 3700
F 0 "P123" H 6350 3700 50  0000 C CNN
F 1 "CONN_01X02" V 6450 3700 50  0001 C CNN
F 2 "Connect:AK300-2" H 6350 3700 50  0001 C CNN
F 3 "" H 6350 3700 50  0000 C CNN
	1    6350 3700
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P120
U 1 1 572BAFF1
P 6350 2900
F 0 "P120" H 6350 2900 50  0000 C CNN
F 1 "CONN_01X02" V 6450 2900 50  0001 C CNN
F 2 "Connect:AK300-2" H 6350 2900 50  0001 C CNN
F 3 "" H 6350 2900 50  0000 C CNN
	1    6350 2900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P119
U 1 1 572BAFF7
P 6350 2700
F 0 "P119" H 6350 2700 50  0000 C CNN
F 1 "CONN_01X02" V 6450 2700 50  0001 C CNN
F 2 "Connect:AK300-2" H 6350 2700 50  0001 C CNN
F 3 "" H 6350 2700 50  0000 C CNN
	1    6350 2700
	1    0    0    -1  
$EndComp
Wire Notes Line
	6900 2550 6650 2550
Wire Notes Line
	6650 2550 6650 3250
Wire Notes Line
	6650 3250 6450 3250
Wire Wire Line
	5800 1300 6150 1300
Wire Wire Line
	6150 1300 6150 2650
Wire Wire Line
	5800 1600 6100 1600
Wire Wire Line
	6100 1600 6100 2750
Wire Wire Line
	6100 2750 6150 2750
Wire Wire Line
	5800 1900 6050 1900
Wire Wire Line
	6050 1900 6050 2850
Wire Wire Line
	6050 2850 6150 2850
Wire Wire Line
	5800 2200 6000 2200
Wire Wire Line
	6000 2200 6000 2950
Wire Wire Line
	6000 2950 6150 2950
Wire Wire Line
	5800 2500 5950 2500
Wire Wire Line
	5950 2500 5950 3050
Wire Wire Line
	5950 3050 6150 3050
Wire Wire Line
	5800 2800 5900 2800
Wire Wire Line
	5900 2800 5900 3150
Wire Wire Line
	5900 3150 6150 3150
Wire Wire Line
	5800 3100 5850 3100
Wire Wire Line
	5850 3100 5850 3250
Wire Wire Line
	5850 3250 6150 3250
Wire Wire Line
	6150 3350 5850 3350
Wire Wire Line
	5850 3350 5850 3650
Wire Wire Line
	5850 3650 5800 3650
Wire Wire Line
	6150 3450 5900 3450
Wire Wire Line
	5900 3450 5900 3950
Wire Wire Line
	5900 3950 5800 3950
Wire Wire Line
	6150 3550 5950 3550
Wire Wire Line
	5950 3550 5950 4250
Wire Wire Line
	5950 4250 5800 4250
Wire Wire Line
	6150 3650 6000 3650
Wire Wire Line
	6000 3650 6000 4550
Wire Wire Line
	6000 4550 5800 4550
Wire Wire Line
	6150 3750 6050 3750
Wire Wire Line
	6050 3750 6050 4850
Wire Wire Line
	6050 4850 5800 4850
Wire Wire Line
	6150 3850 6100 3850
Wire Wire Line
	6100 3850 6100 5150
Wire Wire Line
	6100 5150 5800 5150
Wire Wire Line
	6150 3950 6150 5450
Wire Wire Line
	6150 5450 5800 5450
$Comp
L CONN_01X02 P129
U 1 1 572B375E
P 6350 5850
F 0 "P129" H 6350 5850 50  0000 C CNN
F 1 "CONN_01X02" V 6450 5850 50  0001 C CNN
F 2 "Connect:AK300-2" H 6350 5850 50  0001 C CNN
F 3 "" H 6350 5850 50  0000 C CNN
	1    6350 5850
	1    0    0    -1  
$EndComp
Text GLabel 6150 5800 0    39   Input ~ 0
+12.0V
Wire Wire Line
	6150 5800 6150 5900
Text Notes 4950 6100 0    39   ~ 0
12V Output if all 14 segments are connected to PWM G0\nand one segment should be used with G1.
Wire Wire Line
	2900 1750 3100 1750
Wire Wire Line
	3100 1850 2900 1850
Wire Wire Line
	2900 1950 3100 1950
Wire Wire Line
	3950 3150 3950 3100
Wire Wire Line
	3100 3850 2900 3850
Wire Wire Line
	2900 3750 3100 3750
Wire Wire Line
	3100 3550 2900 3550
Text GLabel 750  1650 0    39   Input ~ 0
+3.3V
NoConn ~ 1000 2250
NoConn ~ 2850 5050
NoConn ~ 2350 5150
$Comp
L CONN_01X03 P102
U 1 1 5735176C
P 8600 1800
F 0 "P102" H 8600 1850 50  0000 C CNN
F 1 "CONN_01X03" V 8700 1800 50  0001 C CNN
F 2 "Connect:AK300-3" H 8600 1800 50  0001 C CNN
F 3 "" H 8600 1800 50  0000 C CNN
	1    8600 1800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P101
U 1 1 57351DF9
P 8200 1800
F 0 "P101" H 8200 1750 50  0000 C CNN
F 1 "CONN_01X03" V 8300 1800 50  0001 C CNN
F 2 "Connect:AK300-3" H 8200 1800 50  0001 C CNN
F 3 "" H 8200 1800 50  0000 C CNN
	1    8200 1800
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X03 P104
U 1 1 57352FC8
P 9750 1800
F 0 "P104" H 9750 1850 50  0000 C CNN
F 1 "CONN_01X03" V 9850 1800 50  0001 C CNN
F 2 "Connect:AK300-3" H 9750 1800 50  0001 C CNN
F 3 "" H 9750 1800 50  0000 C CNN
	1    9750 1800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P103
U 1 1 57353156
P 9350 1800
F 0 "P103" H 9350 1750 50  0000 C CNN
F 1 "CONN_01X03" V 9450 1800 50  0001 C CNN
F 2 "Connect:AK300-3" H 9350 1800 50  0001 C CNN
F 3 "" H 9350 1800 50  0000 C CNN
	1    9350 1800
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X03 P106
U 1 1 573532C1
P 10900 1800
F 0 "P106" H 10900 1850 50  0000 C CNN
F 1 "CONN_01X03" V 11000 1800 50  0001 C CNN
F 2 "Connect:AK300-3" H 10900 1800 50  0001 C CNN
F 3 "" H 10900 1800 50  0000 C CNN
	1    10900 1800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P105
U 1 1 5735344B
P 10500 1800
F 0 "P105" H 10500 1750 50  0000 C CNN
F 1 "CONN_01X03" V 10600 1800 50  0001 C CNN
F 2 "Connect:AK300-3" H 10500 1800 50  0001 C CNN
F 3 "" H 10500 1800 50  0000 C CNN
	1    10500 1800
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X03 P121
U 1 1 57356375
P 6350 3150
F 0 "P121" H 6350 3200 50  0000 C CNN
F 1 "CONN_01X03" V 6450 3150 50  0001 C CNN
F 2 "Connect:AK300-3" H 6350 3150 50  0001 C CNN
F 3 "" H 6350 3150 50  0000 C CNN
	1    6350 3150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P122
U 1 1 57356AFC
P 6350 3450
F 0 "P122" H 6350 3500 50  0000 C CNN
F 1 "CONN_01X03" V 6450 3450 50  0001 C CNN
F 2 "Connect:AK300-3" H 6350 3450 50  0001 C CNN
F 3 "" H 6350 3450 50  0000 C CNN
	1    6350 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1700 8400 2450
Wire Wire Line
	9550 1700 9550 2450
Wire Wire Line
	10700 1700 10700 2450
$Comp
L R R112
U 1 1 5734C019
P 3000 5150
F 0 "R112" V 3050 4950 50  0000 C CNN
F 1 "5k" V 3000 5150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2930 5150 50  0001 C CNN
F 3 "" H 3000 5150 50  0000 C CNN
	1    3000 5150
	0    -1   -1   0   
$EndComp
$Comp
L R R114
U 1 1 5734C92D
P 3000 5250
F 0 "R114" V 3050 5050 50  0000 C CNN
F 1 "5k" V 3000 5250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2930 5250 50  0001 C CNN
F 3 "" H 3000 5250 50  0000 C CNN
	1    3000 5250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 5150 3450 5150
Wire Wire Line
	3150 5250 3450 5250
$EndSCHEMATC
