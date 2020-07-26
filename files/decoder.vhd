library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;      
use ieee.numeric_std.all;
entity decoder is
     port(
         dout 	: out std_logic_vector(7 downto 0);
         din 	: in std_logic_vector(2 downto 0)
         );
end entity;

architecture struct of decoder is
begin

    decode : process (din) is
    begin
        if (din="111") then
            dout <= "00000001";
        elsif (din="110") then
            dout <= "00000010";
         elsif (din="101") then
            dout <= "00000100";
         elsif (din="100") then
            dout <= "00001000";
        elsif (din="011") then
            dout <= "00010000";
         elsif (din="010") then
            dout <= "00100000";
         elsif (din="001") then
            dout <= "01000000";
        elsif (din="000") then
            dout <= "10000000";
	else 	--none of them is 1, default output 00000001
		dout <= "00000001";
        
	end if;
	end process decode;
end struct;
