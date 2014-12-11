----------------------------------------------------------------------------------
-- Block takes the clock input (or any other pulsed input) and uses that and a 
-- simple counter to control the output frequency (useful for flashing LEDs)
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

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

