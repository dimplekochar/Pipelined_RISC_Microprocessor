library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;      
use ieee.numeric_std.all;

-- mux2, alu_add, se61, 7s, se6, mux8, mux4, alu, 

entity Execution is   
  port( reset, c_en, z_en, clk : in std_logic;
	pc_out, p3_d1, p3_d2, p4_alu, p4_7s, p5_memd_out, p3_ir_o, count_SM,P3_in , P3, p5_alu: in std_logic_vector(15 downto 0);  --value of k in final datapath
	s7_in : in std_logic_vector(8 downto 0);
	imm_beq, imm : in std_logic_vector(5 downto 0);
	alu_a_sel : in std_logic_vector(2 downto 0);
	alu_b_sel, alu_op : in std_logic_vector(1 downto 0);
	c, z , beq_sel, stall_check: out std_logic;
	reg_lm : out std_logic_vector(2 downto 0);   --reg_lm goes to P4
	beq_out, alu_out, s7_out : out std_logic_vector(15 downto 0)	
);
end entity;
-----------------------------------------------------------------------------------------
architecture struct of Execution is

signal  add_in, se6_1_out, se6_out, dummy3, alu_a, alu_b, k_sig, k_in, p1_ir: std_logic_vector(15 downto 0);
signal c_temp, z_temp, check, reset_count, k_sel, timep, timepp : std_logic;
-----------------------------------------------------------------------------------------
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
----------------------------------------------------------------------------------------
      component alu_add is
	port(x,y : in std_logic_vector(15 downto 0);
	z : out std_logic_vector(15 downto 0)
	);
	end component;
---------------------------------------------------------------------------------------
	component alu is
	   port(x,y: in std_logic_vector(15 downto 0);
		z: out std_logic_vector(15 downto 0);
		aluc: out std_logic;
		aluz: out std_logic;
		aluop: in std_logic_vector(1 downto 0)
			  );
	end component;
-----------------------------------------------------------------------------------------
	component mux2 is
	generic(input_width : integer);
	port(
		d0 : std_logic_vector(input_width-1 downto 0);
		d1 : std_logic_vector(input_width-1  downto 0);

	  	sel: in std_logic;
		dout: out std_logic_vector(input_width-1 downto 0)
	);
	end component;
---------------------------------------------------------------------------------------
	component mux8 is
	generic(input_width : integer);
	port(
		d0 : std_logic_vector(input_width-1 downto 0);
		d1 : std_logic_vector(input_width-1 downto 0);
		d2 : std_logic_vector(input_width-1 downto 0);
		d3 : std_logic_vector(input_width-1 downto 0);
		d4 : std_logic_vector(input_width-1 downto 0);
		d5 : std_logic_vector(input_width-1 downto 0);
		d6 : std_logic_vector(input_width-1 downto 0);
		d7 : std_logic_vector(input_width-1 downto 0);


	  	sel: in std_logic_vector(2 downto 0);
		dout: out std_logic_vector(input_width-1 downto 0)
	);
	end component;
-----------------------------------------------------------------------------------------
	component shifter7 is
	 port(	din 	: in std_logic_vector(8 downto 0);
	 	dout	: out std_logic_vector(15 downto 0)
	 	);
	end component;
----------------------------------------------------------------------------------------
	component signextender6 is
	port(
	 	din 	: in std_logic_vector(5 downto 0);
	 	dout	: out std_logic_vector(15 downto 0)
	 	);
	end component;
-----------------------------------------------------------------------------------------
	component tempreg1 is  
	  port( 
		reset : in std_logic;
		din, flag_en : in std_logic;  
		dout : out std_logic
	);  
	end component;
-----------------------------------------------------------------------------------------
	component LM is
	     port(clk, reset_c : in std_logic;
		 IR ,IR1	: in std_logic_vector(15 downto 0);
		 reg 	: out std_logic_vector(2 downto 0);
		stall_bit : out std_logic;
		k : out std_logic_vector(15 downto 0)
		 );
	end component;
-----------------------------------------------------------------------------------------
-- mux2 2, 16 bit clocked register, 1
begin

--beq_sel <= from P3
--beq_out goes to P4
--imm from p3
--s7_in from p3
--s7_out to p4
--pc_out from p3
--imm_beq from p3

beq_mux: mux2
generic map (16)
port map (sel => z_temp, d0 => "0000000000000011", d1 => se6_1_out, dout => add_in);
-------------------------------------------------------------------------------------------
alu_pc: alu_add
port map (x=> pc_out, y=> add_in, z=> beq_out);
-------------------------------------------------------------------------------------------
se6_1: signextender6
port map (din => imm_beq, dout => se6_1_out);
--------------------------------------------------------------------------------------------
s7: shifter7
port map (din => s7_in, dout => s7_out);
-----------------------------------------------------------------------------------------------
alu_a_mux: mux8
generic map (16)
port map (sel => alu_a_sel, d0 => p3_d1, d1 => p3_d2 , d2 => p4_alu, d3 => dummy3, d4 => p4_7s, d5 => p5_memd_out, d6 => dummy3, d7 => dummy3, dout => alu_a);
----------------------------------------------------------------------------------------------
se6: signextender6
port map (din => imm, dout => se6_out);
--------------------------------------------------------------------------------------------
alu_b_mux: mux4
generic map (16)
port map (sel => alu_b_sel, dout => alu_b, d0 => p3_d2 , d1 => se6_out, d2 => k_in, d3 => p5_alu);
------------------------------------------------------------------------------------------------
alu_main: alu
port map (x => alu_a, y => alu_b, z => alu_out, aluc => c_temp, aluz => z_temp, aluop => alu_op);
--------------------------------------------------------------------------------------------------
c_reg: tempreg1
port map (reset => reset, flag_en => c_en, din => c_temp, dout => c); 
--------------------------------------------------------------------------------------------------
z_reg: tempreg1
port map (reset => reset, flag_en => z_en, din => z_temp, dout => z);

--------------------------------------------------------------------------------------------------
LM1: LM
port map (clk => clk, reset_c => reset, IR => P3_in(15 downto 0), reg => reg_lm, stall_bit => check, k => k_sig, IR1 => P3(15 downto 0) );
--------------------------------------------------------------------------------------------------
--k_mux: mux2
--generic map (16)
--port map (sel => k_sel, d0 => k_sig, d1 => count_SM, dout => k_in);    -- count_SM is P1_cx(xx downto xx)
-------------------------------------------------------------------------------------------------
k: process(clk)
begin
if(rising_edge(clk) and p3_ir_o(15 downto 12) = "0110") then
		k_in <= k_sig;
--elsif(p3_ir_o(15 downto 12) = "0110" and timep ='1') then
--		timepp <= '1';
--elsif(p3_ir_o(15 downto 12) = "0110") then
--		timep <= '1';
elsif(rising_edge(clk) and p3_ir_o(15 downto 12) = "0111") then
		k_in <= count_SM;
	end if;
end process k;
----------------------------------------------------
rst_c: process(clk)
begin
	if(check = '1' or reset = '1') then
		reset_count <= '1';
	elsif(check = '0') then
		reset_count <= '0';
	end if;
end process rst_c;
---------------------------------------------------
beq_sel <= z_temp;
stall_check <= check;
--------------------------------------------------
end struct;













