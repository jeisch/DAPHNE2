# DAPHNE2
Firmware for the DAPHNE2 Front End Board

## Overview of Firmware Modules

### Front End Logic

New for this firmware is a fully automatic front end. DAPHNE has 5 AFE chips, each with 8 high speed serial data outputs. This front end logic adjusts the input data streams so that the sample clock is in the optimal center of the eye (IDELAYE2), and then adjusts the serial to parallel shift register logic (ISERDESE2) to properly recover the 14 bit parallel data. Works for all 40 AFE channels and requires no user intervention aside from a soft reset after the FPGA is programmed. The output of the front end logic is 40 14-bit data buses synchronized to the master 62.5 MHz clock domain.

### Streaming Core

The streaming core design takes 4 AFE data streams and packs 64 samples from each stream them into an output frame for transmission to FELIX DAQ. The output link runs at 4.809 Gbps. This design runs continuously and there are a few idle words inserted between output frames.

### Self-Triggered Core

The self triggered core logic is built upon a modular approach. The STC module monitors a single AFE data stream. It waits until a trigger condition is satisfied, then it grabs the 1024 samples (including 64 pre-trigger samples), forms an output frame around this data, and stores this frame in a FIFO. This FIFO is deep enough to store ~8.9 events. Then, on the backend, a state machine scans across N modules looking to see who has an output record ready to send in the FIFO. In a round robin manner these STC modules are selected to dump data to the output link to FELIX. And the process repeats. The current design has 10 input modules feeding one output, but can easily be changed to have any number of input modules feeding one output.

### Timing Endpoint

The timing endpoint firmware block interfaces to the DAPHNE timing input (optical link) and generates the master 62.5 MHz clock and a 64 bit timestamp. Developed by Adrian for the WIB board. This has not yet been included in this design. This design currently runs asynchronously and generates a fake incrementing timestamp.

### Spy Buffers

When triggered, the spy buffers will capture 64 pre-trigger samples followed by 4032 samples on EACH AFE channel. These buffers are memory mapped into the GBE internal address space and then can be read out at any time. The trigger may come from an external input to the DAPHNE2 board or by writing to a particular register in the GbE address space.

### Gigabit Ethernet

The GbE Interface is always active, but is not required for operation. This interface is intended for debug readout of the spy buffers. This interface is based on the "off the shelf Ethernet Interface" developed at Fermilab by Ryan Rivera.

## Overview of Hardware Subsystems

### Board Revision

This firmware is designed for the DAPHNE V2A hardware only. It cannot be used on DAPHNE V1 boards.

### Clocks

Programmable clock generator U18 should be configured to output the following clocks: CLK0 = 120.237MHz, CLK1 = 100MHz, CLK2 = 62.5MHz, CLK3 = 125MHz.

CLK0 connects to MGT Quad 216, REFCLK0, pins F11/E11. Used for FELIX DAQ.
CLK1 connects to bank 33, pins AA4/AB4. General purpose 100MHz clock.
CLK2 connects to bank 33, pins AA3/AA2. Currently not used by the FPGA.
CLK3 connects to MGT Quad 213, REFCLK0, pins AA13/AB13. Used for GBE.

The FPGA outputs a 62.5MHz clock on pins AF5/AF4. This clock goes to clock fanout buffer U20 and then copies of this clock go the 5 AFE chips.

### Timing Interface

The DAPHNE2 board includes the CDR chip ADN2814CPZ U16. This device sends differential clock and data, as well as LOS and LOL indicators, to to FPGA. Currently this interface is unused and we running with the local clocks only.

### Gigabit Ethernet

This firmware uses a Gigabit Ethernet Interface based on the OEI "Off the Shelf Ethernet Interface" developed by Ryan Rivera. This Ethernet interface is fiber and the SFP module connects to Quad 213, channel 0. The default IP address for this interface is 192.168.133.12.

### High Speed Serial Links

Quad 213 channel 0 is used for GbE. The FPGA can control the TX_DISABLE pin on this SFP. The FPGA can monitor the LOS and ABS signals on the SFP, as well as communicate with the SFP management interface (I2C).

Quad 216 is used for FELIX DAQ links. All four channels in this quad may be used. For FELIX generally only the MGT TX is used and the RX is disabled for each transceiver. The FPGA can control the TX_DISABLE, monitor the LOS and ABS signals, and communicate with the SFP management interface (I2C).

### Microcontroller Interface (Slow Controls)

The DAPHNE microcontroller can hard reset the FPGA by pulling the RESETn line LOW momentarily.

The DAPHNE microcontroller can monitor and control some of the FPGA functions through a dedicated SPI interface. From the microcontroller's perspective the FPGA looks like a small SPI memory device (256 x 8). Some of the bits in this small memory space are read only (e.g. status bits) while other bits are read-write (control bits). This memory map is TBD. 

### Status LEDs

There are 5 status LEDs. All are pulse stretched in the firmware so that momenary pulses are visible. Refer to the top level VHDL file for the meaning of these LEDS.

## Simulation

Many of the firmware modules have separate testbench files, written in VHDL. The simulator I use is Aldec Active-HDL. The Vivado simulator should also work with some modifications.

## Build Instructions

Xilinx Vivado, batch mode. Instructions coming soon...




