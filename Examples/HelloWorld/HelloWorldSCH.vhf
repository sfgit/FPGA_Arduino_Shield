--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : HelloWorldSCH.vhf
-- /___/   /\     Timestamp : 12/09/2014 11:20:23
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/mattb_000/VHDL_Training/Cases/HelloWorld/HelloWorldSCH.vhf -w C:/Users/mattb_000/VHDL_Training/Cases/HelloWorld/HelloWorldSCH.sch
--Design Name: HelloWorldSCH
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity HelloWorldSCH is
   port ( CLK_BRD : in    std_logic; 
          UIO     : out   std_logic_vector (3 downto 0));
end HelloWorldSCH;

architecture BEHAVIORAL of HelloWorldSCH is
   signal XLXN_4  : std_logic;
   component HelloWorldVHD
      port ( clk_in  : in    std_logic; 
             led_out : out   std_logic);
   end component;
   
   component Bus_Breakout_4S4B
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   XLXI_1 : HelloWorldVHD
      port map (clk_in=>CLK_BRD,
                led_out=>XLXN_4);
   
   XLXI_2 : Bus_Breakout_4S4B
      port map (I0=>XLXN_4,
                I1=>XLXN_4,
                I2=>XLXN_4,
                I3=>XLXN_4,
                O(3 downto 0)=>UIO(3 downto 0));
   
end BEHAVIORAL;


