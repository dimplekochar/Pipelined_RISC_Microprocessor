library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;      
use ieee.numeric_std.all;
---------------------------------------------------------------------------------------
entity MemAccess is   
  port( clk, reset, wr,rd, mem_sel: in std_logic;
	mem_a, mem_d_in, memd_out_p5, SM_d : in std_logic_vector(15 downto 0);
	ir_op : in std_logic_vector(3 downto 0);
	mem_d_out : out std_logic_vector(15 downto 0)   
);
end entity;
-----------------------------------------------------------------------------------------
architecture struct of MemAccess is
--signal => mem_d_input : std_logic_vector(15 downto 0);
signal mem_final_in :std_logic_vector(15 downto 0);
---------------------------------------------------------------------------------------
--memory always has its rd = 1 
      component memory is   
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
	end component;
----------------------------------------------------------------------------------------
	component mux2 is
	generic(input_width : integer);
	port(
	d0 : std_logic_vector(input_width-1 downto 0);
	d1 : std_logic_vector(input_width-1 downto 0);
	
  	sel: in std_logic;
	dout: out std_logic_vector(input_width-1 downto 0)
	);
	end component;
-----------------------------------------------------------------------------------------
begin

--mem_a <= P4
--mem_d_in <= P4
--mem_d_out => goes to P5
--wr <= P4

data_mem: memory
port map (rf_a1 => mem_a, rf_d1 => mem_d_out, wr => wr, rd => rd, rf_a3 => mem_a, rf_d3 => mem_final_in, clk => clk, reset => reset);

--Mem_mux : mux2
--generic map(16)
--port map (sel => mem_sel, dout => mem_final_in, d0 => mem_d_input, d1 => memd_out_p5);

d: process(clk)
begin 
if(mem_sel = '1') then
	mem_final_in <= memd_out_p5;
elsif( ir_op = "0111") then
	mem_final_in <=  SM_d;
else mem_final_in <= mem_d_in;
end if;
end process d;




end struct;
