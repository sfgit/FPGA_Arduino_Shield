FPGA_Arduino_Shield
===================

**WIP** FPGA-based shield for Arduino (Standard UNO Connector pinout should support any Arduino with similar pinout)

NOTE:  It is my intent that the final design will work independently from the Arduino, so an Arduino would not be required to explore FPGA awesomeness.  That said, you may require a JTAG programmer or other device to program the SPI flash on the board.  Target pricing for this board is $30.  

Project Details:

This project is an effort to build a Xilinx Spartan 6 LX9 FPGA "shield" for the various 
Arduino development boards.  This board will also stand-alone, thus you will not require
the arduino to program and play with the FPGA.  

From the top level, the FPGA uses SPI configuration flash for it's in-system programming.
Also JTAG.  Thus if you program the flash, reboot the FPGA, it will load its config via
the flash.  This enables in-system, "asynchronous" reprogramming out-of-step with 
the overall system (arduino can keep running, as can any peripherals that are not a part
of the FPGA itself or FPGA subsystem).  This is super cool because it means that you might then 
use something like an SDCard or even TCP/IP comms to download new "hardware" configurations to
the FPGA and deploy them.  Thus, it may be possible to truly deploy new hardware remotely without
the need to crack into the case.  Awesomeness.  

In its simplest form this is the ultimate Arduino IO expander.  At it's most sophisticated, the
fpga has the capability to run it's own processor(s), it's own peripherals, and serve as its 
own system (the FPGA becoming the more prominent part of the system).  FPGAs are great for complex
parallel operations including DSP operations, audio, video, bitminer, etc. that an OTS CPU may not 
be suited for.  

Project details are available at:  hackaday.io/matt and the design files are starting
to trickle in here.  Regular revisions to the schematics are rolling in as changes are made and 
the structure of the project may change dramatically over time.  This means some design files 
may vanish.  If you need access to them, roll back.  If you have questions, please ask.  If 
you would like a board when it's built, let me know and we'll work something out.

Regarding Licensing:

These files are provided under the GNU General Public License Version 3 as found at http://opensource.org/licenses/lgpl-3.0.html. 

My personal warning (if you've gotten this far, you are better than me...read this last bit then go somewhere and do soemthing interesting):

BE CAREFUL.  Electronics and electronic design is dangerous and you can hurt yourself if you do it wrong.  I make mistakes.  We all do.  Eventually.  I have hurt myself as have my friends and we do not go around pointing fingers at people who build cool stuff, even if their ideas and projects end up hurting us.  Even when it was THEIR mistake in THEIR files.  I chose to do it, knowing the risks inherent in that.  It comes with the territory.  

Allow me to be free to be creative and build stuff and I will continue to share what I build.  Restrict that by blaming me when you set your cat's hair on fire or electrocute yourself or your wife or your kid or your iguana and you threaten the free flow of thoughts and ideas and information.  Tread carefully and only accept risks you can live with.  
