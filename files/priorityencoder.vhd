library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;      
use ieee.numeric_std.all;
entity priorityencoder is
     port(
         din 	: in std_logic_vector(7 downto 0);
         dout 	: out std_logic_vector(2 downto 0)
         );
end entity;

architecture struct of priorityencoder is
begin

    priorityencode : process (din) is
    begin
        if (din(7)='1') then
            dout <= "000";
        elsif (din(6)='1') then
            dout <= "001";
        elsif (din(5)='1') then
            dout <= "010";
        elsif (din(4)='1') then
            dout <= "011";
        elsif (din(3)='1') then
            dout <= "100";
        elsif (din(2)='1') then
            dout <= "101";
        elsif (din(1)='1') then
            dout <= "110";
        elsif (din(0)='1') then
            dout <= "111";
	else 	--none of them is 1, default output 000
		dout <= "000";
        
	end if;
	end process priorityencode;
end struct;
