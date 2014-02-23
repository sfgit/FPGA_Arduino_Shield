FPGA_Arduino_Shield
===================

FPGA-based shield for Arduino

This project is an effort to build a Xilinx Spartan 6 LX9 FPGA "shield" for the various 
Arduino development boards.  This board will also stand-alone, thus you will not require
the arduino to program and play with the FPGA.  

From the top level, the FPGA uses SPI configuration flash for it's in-system programming.
Also JTAG.  Thus if you program the flash, reboot the FPGA, it will load its config via
from the flash.  This enables in-system, "asynchronous" reprogramming out-of-step with 
the overall system (arduino can keep running, as can any peripherals that are not a part
of the FPGA itself).

Project details are available at:  projects.hackaday.com and the design files are starting
to trickle in here.
