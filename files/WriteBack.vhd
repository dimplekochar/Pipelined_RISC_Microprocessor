library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;      
use ieee.numeric_std.all;

--------------------------------------------------------------------------------------
entity WriteBack is   
  port( reset, clk: in std_logic;
	a3_mux_sel, d3_mux_sel : in std_logic_vector(1 downto 0);
	IR3_5, IR6_8, IR9_11 : in std_logic_vector(2 downto 0);
	ir_opcode : in std_logic_vector(3 downto 0);
	P_alu, P_7s, P_memd, P_pc, p5_c2 : in std_logic_vector(15 downto 0);
	a3_mux_out : out std_logic_vector(2 downto 0);
	d3_mux_out : out std_logic_vector(15 downto 0)

);
end entity;
--------------------------------------------------------------------------------------
architecture struct of WriteBack is

signal lm_sm : std_logic_vector(2 downto 0);

--------------------------------------------------------------------------------------------------------------
	component mux4 is
	generic(input_width : integer);
	port(
		d0 : std_logic_vector(input_width-1 downto 0);
		d1 : std_logic_vector(input_width-1 downto 0);
		d2 : std_logic_vector(input_width-1 downto 0);
		d3 : std_logic_vector(input_width-1 downto 0);

	  	sel: in std_logic_vector(1 downto 0);
		dout: out std_logic_vector(input_width-1 downto 0)
	);
	end component;
-----------------------------------------------------------------------------------------------------------------
begin

--a3_mux_sel <= P5
--d3_mux_sel <= P5
--a3_mux_out <= goes to RR
--a3_mux_out <= goes to RR
-- IR and P all from P5

--lmsm: process(clk)
--begin
--if(ir_opcode = "0110") then
--	lm_sm <= p5_c2(12 downto 10);
--elsif(ir_opcode = "0111") then
--	lm_sm <= p5_c2(15 downto 13);
--end if;
--end process lmsm;

rf_a3_mux: mux4
generic map (3)
port map (sel => a3_mux_sel, d0 => IR3_5, d1 => IR6_8, d2 => IR9_11, d3 => p5_c2(12 downto 10), dout => a3_mux_out);
-----------------------------------------------------------------------------------------------------------------
rf_d3_mux: mux4
generic map (16)
port map (sel => d3_mux_sel, d0 => P_alu, d1 => P_7s, d2 => P_memd, d3 => P_pc, dout => d3_mux_out);

end struct;
