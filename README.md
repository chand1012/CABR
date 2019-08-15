
# CABR

[![Build Status](https://jenkins.chand1012.net/job/CABR-Firmware/badge/icon)](https://jenkins.chand1012.net/job/CABR-Firmware/)

The CABR (Pronounced KAY-BER) is a 3D printed Nerf Computerized Adaptive Bullpup Rifle for full length darts.

![CABR](https://raw.githubusercontent.com/chand1012/CABR/master/Images/CABRPrototype1.jpg)

# Features

- Simple design: only 8 printed parts for the blaster.
- Toolless access to the battery compartment, flywheel cage and barrel.
- Dual stage trigger.
- 41.5mm flywheel gap for the integral flywheel cage.
- Full length dart feed guide.
- FTW solenoid pusher.
- Full length picatinny top rail.
- Optional side picatinny rails.
- Integrated sling mounts.
- Computerized Semi, Burst, and Automatic modes.
- Battery buzzer for power detection.

# Required Parts

|Part            |Quantity  |Description                                                       |
|----------------|----------|------------------------------------------------------------------|
|Flywheel motors |2         |130 or 180 sized motors for flywheels [Purchase Link](https://outofdarts.com/collections/motors-2019/products/ood-kraken-motor) |
|Flywheels       |2         |Flywheels [Purchase Link](https://outofdarts.com/collections/flywheels-cages/products/containment-crew-inferno-flywheels-pair) |
|FTW Solenoid    |1         |FTW Solenoid for the pusher [Purchase Link](https://www.banggood.com/DC-12V-35mm-Long-Stroke-Push-Pull-Solenoid-Small-Electromagnetic-Electric-Magnet-p-1217063.html?cur_warehouse=CN) |
|Microswitch              | 2 | For activating the motors and solenoid [Purchase Link](https://outofdarts.com/collections/electronics/products/21a-microswitch-button-clone)                        |
|Silicone insulated wire  |   | Wiring [Purchase Link](https://www.amazon.com/BNTECHGO-Silicone-Flexible-Strands-Stranded/dp/B01C5CANVG/ref=pd_lpo_sbs_60_t_2?_encoding=UTF8&psc=1&refRID=DZD6XCXG9PDEQ4CW3V4W)                                                        |
|Heat set threaded inserts| 10 | To hold in screws (McMaster 94180A333 for 100)                |
|Compression Spring       | 1 | For trigger (McMaster 9657K56 for 12)                          |
|Torsion Spring           | 1 | For magazine release (McMaster 9271K579 for 6)                 |
|M4x10 Socket head screw  | 1 | For securing the solenoid                                      |
|M3x10 Socket head screws | 7 |                                                                |
|M3x25 Socket head screws | 2 | Used for flywheel switch and trigger                           |
|M3x35 Socket head screw  | 1 | For magazine release                                           |
|M2 screws                | 4 | For motors                                                     |
|2 1/2" x 3/16" Pins      | 3 | For securing the battery and stock (McMaster 98330A125 for 10) |

# Additional Parts for circuitry

|Quantity|Ref Des       |Desc               |Part #                 |Manufacterer                   |Link                                                                                                            |
|--------|--------------|-------------------|-----------------------|-------------------------------|----------------------------------------------------------------------------------------------------------------|
|1       |U1            |Attiny85-20SU      |Attiny85-20SU          |Atmel                          |[Digikey](https://www.digikey.com/product-detail/en/microchip-technology/ATTINY85-20SU/ATTINY85-20SU-ND/735470)            |
|1       |Q1            |Solenoid Transistor|PBSS4250X,115          |NXP                            |[Digikey](https://www.digikey.com/product-detail/en/nexperia-usa-inc/PBSS4250X115/1727-5750-1-ND/2697143)                  |
|1       |U2            |Voltage Reg        |AZ1117CH-5.0TRG1DICT-ND|Diodes Inc                     |[Digikey](https://www.digikey.com/product-detail/en/diodes-incorporated/AZ1117CH-5.0TRG1/AZ1117CH-5.0TRG1DICT-ND/4505207)  |
|1       |D2            |Solenoid Diode     |MMSD4148T3GOSTR-ND     |ON Semi                        |[Digikey](https://www.digikey.com/product-detail/en/on-semiconductor/MMSD4148T3G/MMSD4148T3GOSCT-ND/1967161)               |
|1       |C1            |Filter Cap         |EMK212BBJ106MGHT       |Taiyo Yuden                    |[Digikey](https://www.digikey.com/product-detail/en/taiyo-yuden/EMK212BBJ106MGHT/587-6311-1-ND/9949897)                    |
|1       |D1            |Status LED         |LTST-C171GKT           |Lite-On Inc                    |[Digikey](https://www.digikey.com/product-detail/en/lite-on-inc/LTST-C171GKT/160-1423-1-ND/386792)                         |
|4       |R1, R2, R4, R5|Resistor           |RNCP0805FTD10K0        |Stackpole Electronics          |[Digikey](https://www.digikey.com/product-detail/en/stackpole-electronics-inc/RNCP0805FTD10K0/RNCP0805FTD10K0CT-ND/2240601)|
|1       |R3            |Resistor           |CRG0805F2K7            |TE Connectivity Passive Product|[Digikey](https://www.digikey.com/product-detail/en/te-connectivity-passive-product/CRG0805F2K7/A126359CT-ND/7603414)      |
|1       |R6            |Resistor           |RR1220P-102-D          |Susumu                         |[Digikey](https://www.digikey.com/product-detail/en/susumu/RR1220P-102-D/RR12P1.0KDCT-ND/432830)                           |
|1       |C3            |MicroController Cap|CL21F104ZBCNNNC        |Samsung Electro-Mechanics      |[Digikey](https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL21F104ZBCNNNC/1276-1007-1-ND/3889093)      |
|1       |C2            |Filter Cap         |TMK212BBJ106KG-T       |Taiyo Yuden                    |[Digikey](https://www.digikey.com/product-detail/en/taiyo-yuden/TMK212BBJ106KG-T/587-2985-1-ND/2714178)                    |
|1       |J2            |Fire Mode Switch   |SS-13D16-VG 4 PA       |C&K                            |[Digikey](https://www.digikey.com/product-detail/en/SS-13D16-VG+4+PA/CKN10371-ND/2747181)                                  |


# Printing Parameters

Prototypes were printed using these parameters:

- PLA
- .3mm layer height
- .4mm nozzle
- 1.2mm vertical wall thickness
/- No supports (Except for the back of the reciever)

# Assembly

[Assembly guide on the repository wiki](https://github.com/chand1012/SABR/wiki/Assembly)

# Contributing

The project was designed using Fusion 360, under their hobbyist license.

# Attributions

This project uses the [FTW Solenoid by FlywheelTheWorld](https://www.thingiverse.com/thing:3518739) and the [FTW Solenoid Pusher Head by FlywheelTheWorld](https://www.thingiverse.com/thing:3307908).
