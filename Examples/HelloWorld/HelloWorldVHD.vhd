----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:59:08 12/09/2014 
-- Design Name: 
-- Module Name:    HelloWorldVHD - RTL
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

entity HelloWorldVHD is
    Port ( clk_in : in  STD_LOGIC;
           led_out : out  STD_LOGIC);
end HelloWorldVHD;

architecture RTL of HelloWorldVHD is
   constant max_count : natural := 48000000;
   signal Rst_n : std_logic;
begin
    Rst_n <= '1';

    -- 0 to max_count counter
    flash : process(clk_in, Rst_n)
    variable count : natural range 0 to max_count;
    begin
        if Rst_n = '0' then
            count := 0;
            led_out <= '1';
        elsif rising_edge(clk_in) then
            if count < max_count/2 then
                led_out    <='1';
                count := count + 1;
            elsif count < max_count then
                led_out    <='0';
                count := count + 1;
            else
                count := 0;
                led_out    <='1';
            end if;
        end if;
		end process flash;
end RTL;

