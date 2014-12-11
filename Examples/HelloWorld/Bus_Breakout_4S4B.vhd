----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:15:05 12/09/2014 
-- Design Name: 
-- Module Name:    Bus_Breakout_4S4B - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Bus_Breakout_4S4B is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (3 downto 0));
end Bus_Breakout_4S4B;

architecture STRUCTURE of Bus_Breakout_4S4B is
begin

  O(0) <= I0;
  O(1) <= I1;
  O(2) <= I2;
  O(3) <= I3;

end architecture;

