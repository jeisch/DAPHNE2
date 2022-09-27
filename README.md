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

The GbE Interface is always active, but is not required for operation. This interface is intended for debugging and provides fast access to various spy buffers. This interface is based on the "off the shelf Ethernet Interface" developed at Fermilab by Ryan Rivera. The default IP address is 192.168.133.12. Example python code is located in the oei directory. 

The memory map is as follows:
```
0x70000 - 0x703FF  Test BlockRam 1kx36, R/W, 36 bit
0xAA55             Test register R/O always returns 0xDEADBEEF, R/O, 32 bit
0x1974             Status vector for the PCS/PMA IP Core, R/O, 16 bit
0x9000             Read the FW version aka git commit hash ID, 28 bits, R/O
0x12345678         Test register, R/W, 64 bit
0x80000000         Test FIFO, 512 x 64, R/W, 64-bit

0x2000  Write anything to trigger spy buffers
0x2001  Write anything to reset the AFE front end logic and error counters
0x2002  Read the status of the AFE automatic alignment front end, lower 5 bits should be HIGH
0x2010  Number of errors observed for AFE0 frame marker, stops at 255.
0x2011  Number of errors observed for AFE1 frame marker, stops at 255.
0x2012  Number of errors observed for AFE2 frame marker, stops at 255.
0x2013  Number of errors observed for AFE3 frame marker, stops at 255.
0x2014  Number of errors observed for AFE4 frame marker, stops at 255.

0x40000000 - 0x400003FF Spy Buffer AFE0 data0 
0x40010000 - 0x400103FF Spy Buffer AFE0 data1
0x40020000 - 0x400203FF Spy Buffer AFE0 data2
0x40030000 - 0x400303FF Spy Buffer AFE0 data3
0x40040000 - 0x400403FF Spy Buffer AFE0 data4
0x40050000 - 0x400503FF Spy Buffer AFE0 data5
0x40060000 - 0x400603FF Spy Buffer AFE0 data6
0x40070000 - 0x400703FF Spy Buffer AFE0 data7
0x40080000 - 0x400803FF Spy Buffer AFE0 frame

0x40100000 - 0x401003FF Spy Buffer AFE1 data0
0x40110000 - 0x401103FF Spy Buffer AFE1 data1
0x40120000 - 0x401203FF Spy Buffer AFE1 data2
0x40130000 - 0x401303FF Spy Buffer AFE1 data3
0x40140000 - 0x401403FF Spy Buffer AFE1 data4
0x40150000 - 0x401503FF Spy Buffer AFE1 data5
0x40160000 - 0x401603FF Spy Buffer AFE1 data6
0x40170000 - 0x401703FF Spy Buffer AFE1 data7
0x40180000 - 0x401803FF Spy Buffer AFE1 frame

0x40200000 - 0x402003FF Spy Buffer AFE2 data0
0x40210000 - 0x402103FF Spy Buffer AFE2 data1
0x40220000 - 0x402203FF Spy Buffer AFE2 data2
0x40230000 - 0x402303FF Spy Buffer AFE2 data3
0x40240000 - 0x402403FF Spy Buffer AFE2 data4
0x40250000 - 0x402503FF Spy Buffer AFE2 data5
0x40260000 - 0x402603FF Spy Buffer AFE2 data6
0x40270000 - 0x402703FF Spy Buffer AFE2 data7
0x40280000 - 0x402803FF Spy Buffer AFE2 frame

0x40300000 - 0x403003FF Spy Buffer AFE3 data0
0x40310000 - 0x403103FF Spy Buffer AFE3 data1
0x40320000 - 0x403203FF Spy Buffer AFE3 data2
0x40330000 - 0x403303FF Spy Buffer AFE3 data3
0x40340000 - 0x403403FF Spy Buffer AFE3 data4
0x40350000 - 0x403503FF Spy Buffer AFE3 data5
0x40360000 - 0x403603FF Spy Buffer AFE3 data6
0x40370000 - 0x403703FF Spy Buffer AFE3 data7
0x40380000 - 0x403803FF Spy Buffer AFE3 frame

0x40400000 - 0x404003FF Spy Buffer AFE4 data0
0x40410000 - 0x404103FF Spy Buffer AFE4 data1
0x40420000 - 0x404203FF Spy Buffer AFE4 data2
0x40430000 - 0x404303FF Spy Buffer AFE4 data3
0x40440000 - 0x404403FF Spy Buffer AFE4 data4
0x40450000 - 0x404503FF Spy Buffer AFE4 data5
0x40460000 - 0x404603FF Spy Buffer AFE4 data6
0x40470000 - 0x404703FF Spy Buffer AFE4 data7
0x40480000 - 0x404803FF Spy Buffer AFE4 frame

0x40500000 - 0x405003FF Spy Buffer for Timestamp
```
Memory Map Notes:

* AFE Spy Buffers are 14 bits wide and are read-only:
* When properly aligned, the frame markers should always read "11111110000000"  (0x3F80)
* The Timestamp counter is also stored in a Spy buffer this is 64 bits wide and is read only.


## Overview of Hardware Subsystems

### Board Revision

This firmware is designed for the DAPHNE V2A hardware only. It cannot be used on DAPHNE V1 boards.

### Clocks

The programmable clock generator U18 should be configured to output the following clocks: 

* CLK0 = 120.327MHz connects to MGT Quad 216, REFCLK0, pins F11/E11. Used for FELIX DAQ.
* CLK1 = 100MHz connects to bank 33, pins AA4/AB4. General purpose clock.
* CLK2 = 62.5MHz connects to bank 33, pins AA3/AA2. Currently unused.
* CLK3 = 125MHz connects to MGT Quad 213, REFCLK0, pins AA13/AB13. Used for GBE.

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

### External Trigger

The external interface trigger is now optically isolated. The input is 5-12VDC on an SMB connector (center positive). Note that the optoisolator device used on DAPHNE has an inverted output, so this inversion must be addressed in firmware.


### Status LEDs

There are 5 status LEDs. All are pulse stretched in the firmware so that momenary pulses are visible. Refer to the top level VHDL file for the meaning of these LEDS.

## Simulation

Many of the firmware modules have separate testbench files, written in VHDL. The simulator I use is Aldec Active-HDL. The Vivado simulator should also work with some modifications.

## Build Instructions

This design is to be built from the command like in Vivado Non-Project mode. Go to the xilinx directory and do the following:

  vivado -mode tcl -source vivado_batch.tcl

Build it and program the FPGA on the DAPHNE board with the bit file. Then connect it to the network and try pinging the IP address. It should respond. Then you can try reading and writing using the special OEI UDP packets (see the example code in Python). There are some registers and buffer memories in this demo design to try out.




