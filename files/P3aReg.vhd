library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;      
use ieee.numeric_std.all;

entity P3aReg is   
  port( 
	reset, p_wr, p_flush, clk : in std_logic;
	p_in, ir_in, d1_in, d2_in: in std_logic_vector(15 downto 0);  
        p_out, ir_out, d1_out, d2_out : out std_logic_vector(15 downto 0)
);
end entity;

architecture struct of P3aReg is

type pipeline_reg is array(0 to 7) of std_logic_vector(15 downto 0); --4 16-bit registers
signal p_reg : pipeline_reg;

begin

    pipeline_reg1: process(clk, p_wr, p_flush, reset)
    begin
			if (reset = '1') or (p_flush = '1') then
				p_reg(0) <= "0000000000000000";
				p_reg(1) <= "0000000000000000";
				p_reg(2) <= "0000000000000000";
				p_reg(3) <= "0000000000000000";
							
			elsif rising_edge(clk) and (p_wr = '1') and (p_flush = '0') then 
				p_reg(0) <= p_in;
				p_reg(1) <= ir_in;
				p_reg(2) <= d1_in;
				p_reg(3) <= d2_in;
				
			end if;
    end process;
	p_out  <= p_reg(0);
	ir_out <= p_reg(1);
	d1_out <= p_reg(2);
	d2_out <= p_reg(3);
	
end struct;
