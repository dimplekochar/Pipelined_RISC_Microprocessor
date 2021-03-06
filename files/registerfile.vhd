library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;      
use ieee.numeric_std.all;

entity registerfile is   
    port
    (
    rf_d1          	: out std_logic_vector(15 downto 0);
    rf_d2          	: out std_logic_vector(15 downto 0);
    rf_d3          	: in  std_logic_vector(15 downto 0);
    write1   	        : in  std_logic;
    rf_a1   	    : in  std_logic_vector(2 downto 0);
    rf_a2	    : in  std_logic_vector(2 downto 0);
    rf_a3   	    : in  std_logic_vector(2 downto 0);
    clk,reset             : in  std_logic
	 
    );
end entity;

architecture struct of registerfile is
type registerf is array(0 to 7) of std_logic_vector(15 downto 0); --8 16-bit registers
signal registers : registerf;
begin

	
				

    registerfile1: process(clk,reset,write1)
    begin
			
			if (reset = '1') then
		--	registers(0) <= "0000000000000100";
		--	registers(1) <= "0000000000000110";
		--  registers(2) <= "0000000000011100";
		--	registers(3) <= "0000000000000011";
		--	registers(4) <= "0000000000000111";
 		--  registers(5) <= "0000000100000000";
		--	registers(6) <= "1010011110101000";
		--	registers(7) <= "1010111111111111";
			
			registers(0) <= "0000000000001000";
			registers(1) <= "0000000000000101";
		   registers(2) <= "0000000000000100";
			registers(3) <= "0000000000001000";
			registers(4) <= "1110000010101010";
 		   registers(5) <= "0000000000000001";
			registers(6) <= "0000000000000011";
			registers(7) <= "1010111111111111";
			
			
   			--registers(5) <= "0000000000000000";
--				registers(1) <= "1100000000000001";
--				registers(2) <= "0000000000000001";
-- 			registers(3) <= "0000000000110001";
				
			
			
			elsif rising_edge(clk) and (write1 = '1') then 
				registers(to_integer(unsigned(rf_a3))) <= rf_d3;
				
			end if ;

    end process;
	rf_d1 <= registers(to_integer(unsigned(rf_a1)));
	rf_d2 <= registers(to_integer(unsigned(rf_a2))); 

end struct;
