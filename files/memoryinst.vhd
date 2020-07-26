library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;      
use ieee.numeric_std.all;
entity memoryinst is   
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

architecture struct of memoryinst is
type memoryloc is array(0 to 31) of std_logic_vector(15 downto 0); --65536 16-bit registers
signal mem : memoryloc := (others => "0000000000000000");
begin

    mem1: process(clk,wr,rd,reset)
    begin
			if (reset = '1') then
			mem <= (others => "0000000000000000");
			--mem(0) <= "0110011010011011"; --lm
	--mem(0) <= "0111010010101001"; --sm
	--mem(2) <= "0000000000000001"; --sm
	--		mem(4) <= "1000000000000111"; --jal
		  -- mem(0) <= "0000010011111000"; --jlr
		--	mem(2) <="1100000000000001"; --beq
		
		--	mem(7) <= "0111101000101010"; --sm
			--mem(2) <= "0110100000001010"; --lm
			--mem(9) <= "0000000000000000"; --nop
			--mem(0) <= "1001001010000000";
		--	mem(11) <= "1100011100000101";
		--	mem(16) <= "1100101110000100";
		--	mem(17) <= "0000011100101000";
		    ---dependencies---
	--	mem(0) <= "0000001010011000";  --add r3 <- r1+r2
	--	mem(1) <= "0000010101100000";  -- add r4 <- r2+r5
	--	mem(2) <= "0000011001110000";  -- add r6 <= r3 + r1
	
--	mem(0) <= "1000001000000011";  --jal
	--mem(0) <= "0100001010000010";   -- lw
	--mem(1) <= "0100011001000001";  -- lw 
--	mem(1) <= "0000001010100000";  -- add r4 <- r1+r2
--	mem(2) <= "0000101010111000";  -- add r7 <- r5+r2
--	mem(3) <= "0000001010110000";  -- add r6 <- r1+r2
mem(0) <= "0000101001010000";
mem(1) <= "0101010110000001";

		
		                        
			elsif rising_edge(clk) and (wr = '1') then 
				mem(to_integer(unsigned(rf_a3))) <= rf_d3;
			end if;
			


--mem(0) <= "0000000001101000";
--mem(2) <= "0000010011100010";
--mem(4) <= "0000000001110001";
--mem(8) <= "0001011111010010";


    end process;
	
	rf_d1 <= mem(to_integer(unsigned(rf_a1)));
	mem_check<= mem(to_integer(unsigned(rf_a3)));

end struct;
