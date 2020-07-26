library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;      
use ieee.numeric_std.all;
entity memory is   
    port
    (
    rf_d1, mem_check          	: out std_logic_vector(15 downto 0);
    rf_d3          	: in  std_logic_vector(15 downto 0);
    wr   	        : in  std_logic;
    rd   	        : in  std_logic;
    rf_a1   	    : in  std_logic_vector(15 downto 0);
    rf_a3   	    : in  std_logic_vector(15 downto 0);
    clk,reset             : in  std_logic
    );
end entity;

architecture struct of memory is
type memoryloc is array(0 to 31) of std_logic_vector(15 downto 0); --65536 16-bit registers
signal mem : memoryloc := (others => "0000000000000000");
begin

    mem1: process(clk,reset)
    begin
			if (reset = '1') then
			mem <= (others => "0000000000000000");
			--mem(6) <= "1001100110011001";
			mem(6) <= "0000000000001100";
			mem(13) <= "0000111100001111";
			mem(8) <= "0000000001010001"; --adz
			mem(9) <= "0000011100101000"; --add
			mem(10) <= "0000110111001010"; --adc
			mem(11) <= "0010000001010001"; --ndz
			mem(12) <= "0010011100101000"; --ndd
			mem(20) <= "0010110111001010"; --ndc
			mem(21) <= "0001011100100110"; --adi
			mem(22) <= "0011011100100110"; --lhi
			mem(23) <= "0100000001010010"; --lw
			elsif (rd = '1') then 
			rf_d1 <= mem(to_integer(unsigned(rf_a1)));
			elsif rising_edge(clk) and (wr = '1') then 
				mem(to_integer(unsigned(rf_a3))) <= rf_d3;
			
			end if;
			


--mem(0) <= "0000000001101000";
--mem(2) <= "0000010011100010";
--mem(4) <= "0000000001110001";
--mem(8) <= "0001011111010010";


    end process;
	
	
	--mem_check<= mem(to_integer(unsigned(rf_a3)));

end struct;
