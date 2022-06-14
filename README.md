# DAPHNE2
Firmware for the DAPHNE Front End Board

## Module Overview

### Front End Logic

New for this firmware is a fully automatic front end. DAPHNE has 5 AFE chips, each with 8 high speed serial data outputs. This front end logic adjusts the input data streams so that the sample point is in the optimal center of the eye (IDELAY), and then adjusts the serial to parallel shift register logic (ISERDES) to properly recover the 14 bit parallel data. Works for all 40 AFE channels and requires no user intervention. The output of the front end logic is 40 14-bit data buses synchronized to the master 62.5 MHz clock domain.

### Streaming Core

The streaming core design takes 4 AFE data streams and packs 64 samples from each stream them into an output frame for transmission to FELIX. The output link runs at 4.809 Gbps. This design runs continuously and there are a few idle words inserted between output frames.

### Self-Triggered Core

The self triggered core logic is built upon a modular approach. The STC module monitors a single AFE data stream. It waits until a trigger condition is satisfied, then it grabs the 1024 samples (including 64 pre-trigger samples), forms an output frame around this data, and stores this frame in a FIFO. This FIFO is deep enough to store 8 events. Then, on the backend, a state machine scans across N modules looking to see who has an output record ready to send in the FIFO. In a round robin manner these STC modules are selected to dump data to the output link to FELIX. And the process repeats. The current design has 10 input modules feeding one output, but can easily be expanded to have 20 or 40 inputs modules feeding one output.

### Timing Endpoint

This block interfaces to the DAPHNE timing input (optical link) generates the master 62.5 MHz clock and a 64 bit timestamp. Developed by Adrian. Coming soon.

## DAPHNE Hardware Configuration

### Board Revisions

This main branch is for the original V1 hardware. When V2 hardware becomes available a separate branch or new repo will be created.

DAPHNE V1 hardware cannot support both GbE and FELIX output links simultaneously, due to different MGT refclk requirements. GbE needs a refclk of 125.000 MHz and FELIX needs a refclk of 120.237 MHz.

DAPHNE V2 hardware supports up to four FELIX output links AND one Gigabit Ethernet link simultaneously.

### Clocks

This firmware requires a 100 MHz system clock and a 240.237 MHz MGT reference clock.

### Gigabit Ethernet

In this design the Gigabit Ethernet link is currently not used. 

## Simulation

Many of the firmware modules have separate testbench files, written in VHDL. The simulator I use is Aldec Active-HDL. The Vivado simulator should also work with some modifications.

## Build Instructions

Xilinx Vivado, batch mode. Instructions coming soon...




