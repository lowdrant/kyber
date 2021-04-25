# saber
Building the toy lightsaber I always wanted as a kid

## Goals
- Build a lightsaber that extends/retracts, lights up, and makes sound
- Demonstrate "full-stack" electronics engineering skills + some mechanical design
- Stay sane for the rest of the pandemic (everyone needs a hobby)
- Maybe have a Luke Skywalker costume by Halloween 2021?

## [fw](fw/)
I am writing code for the [STM32L031F4P6](https://www.st.com/content/ccc/resource/technical/document/datasheet/c6/fd/d9/98/8e/95/41/a1/DM00152023.pdf/files/DM00152023.pdf/jcr:content/translations/en.DM00152023.pdf) microcontroller, but it should be translatable to anything else in the STM32 ecosystem. Broadly speaking, all the fancy bits are done in firmware, and I will upload a state diagram sometime in June.

## [hw](hw/)
Simulation, schematics, and layout. 

### Component Selection Rules
Try to use parts I can take off the breakout boards I have lying around, but also try to have the thing work on the first rev.

### Current (A) Budget
To size my battery protections further down.
|Component  |Amperage  |Reasoning                        |
|-----------|----------|---------------------------------|
|motor      |10A       |stall current of on-hand dc motor|
|solenoid   |1A        |12V/13Ohms rounded up            |
|3V3 bus    |1A        |typical LDO rating               |
|waste      |0.5A      |safety factor                    |
|-----------|----------|---------------------------------|
|total      |12.5A     |                                 |

### Voltage Loss Budget
Mostly concerned with battery protection I<sup>2</sup>R losses. Target < 0.5V peak drop (instinctive spec, not computed)

Major concerns are
- falling below the solenoid turn-on voltage, although I haven't _really_ settled on a solenoid
- throwing off motor control

Current resolution: standardize on D2PAK for its ubiquity

### Subcircuits
#### Reverse Polarity Protection
Use the built-in protection of the hbridge. Need to characterise I<sup>2</sup>R losses. This will help prevent the Big Dumb<sup>TM</sup> since I plan to use terminal blocks for my main connector.
#### Low-Voltage Shutoff
Simple Zener-NMOS-PMOS circuit I designed for a student club a while back. Zener triggers NMOS, which in turn drives the PMOS. It has decent switching characteristics. PMOS here should match the RPP PMOS. 

TODO:add schematic + sim plots
#### 3V3 Bus
LDO; I do not want to deal with buck converters today. I am not being paid for this design.
### Accelerometer/Gyro
for that sweet, sweet _zwooom_
#### Motor Current Sensing
I want to use torque control to retract the saber. I'm planning to extend it with a spring, so I have a better known "retracted torque" than "retracted position".
#### HBridge
I found a high-current hbridge IC that does not require complementary PWM (thank you ST). I have limited PWM capabilities atm. I am using ST's low-power MCU line due to the current semiconductor shortage and wanting a small (as opposed to high-density) package

### Non-electrical considerations
- Cost: 2 layers, keep as much pull-down/ADC stuff inside the microcontroller as possible
- I'm not sure I want to hand-solder QFN packages
- Size: Needs to fit inside a saber hilt along with batteries, springs, and other fun odds&ends
- Power budget: Meh, I can increase resistances after fab if it's a battery killer


## [cad](cad/)
This is a TODO, but I will likely modify some open-source/compatibly-licensed STL from thingiverse/gradCAD. I also need to figure out spring sizing.
