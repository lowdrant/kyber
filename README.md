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

### Subcircuits
- Power: reverse polarity protection, low-voltage shutoff, & 3V3 bus
- Sensing: Motor current sensing, battery voltage tracking, acceleration (for that sweet, sweet _zwooom_)
- Actuation: Hbridges, amplifiers (really drain-followers)

### Non-electrical considerations
- Cost: 2 layers, keep as much pull-down/ADC stuff inside the microcontroller as possible
- I'm not sure I want to hand-solder QFN packages
- Size: Needs to fit inside a saber hilt along with batteries, springs, and other fun odds&ends
- Power: Meh, I can increase resistances after fab if it's a battery killer


## [cad](cad/)
This is a TODO, but I will likely modify some open-source/compatibly-licensed STL from thingiverse/gradCAD. I also need to figure out spring sizing.
