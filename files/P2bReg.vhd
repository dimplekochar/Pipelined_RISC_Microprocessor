library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;      
use ieee.numeric_std.all;

entity P2bReg is   
  port( 
	reset, p_wr, p_flush, clk : in std_logic;
	c3_in: in std_logic_vector(15 downto 0);  
        c3_out: out std_logic_vector(15 downto 0)
);
end entity;

architecture struct of P2bReg is

--type pipeline_reg is array(0 to 7) of std_logic_vector(15 downto 0); --8 16-bit registers
signal p_reg : std_logic_vector(15 downto 0);

begin

    pipeline_reg1: process(clk, p_wr, p_flush, reset)
    begin
			if (reset = '1') or (p_flush = '1') then
				p_reg <= "0000000000000000";
				
							
			elsif rising_edge(clk) and (p_wr = '1') and (p_flush = '0') then 
				p_reg <= c3_in;
				
				
			end if;
    end process;
	c3_out  <= p_reg;
	
	
end struct;
