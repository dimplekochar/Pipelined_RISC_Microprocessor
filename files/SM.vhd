library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;      
use ieee.numeric_std.all;
entity SM is
     port(clk, reset_c : in std_logic;
         IR, IR1 	: in std_logic_vector(15 downto 0);
         reg 	: out std_logic_vector(2 downto 0);
	 stall_bit : out std_logic;
	k : out std_logic_vector(15 downto 0)
         );
end entity;

architecture struct of SM is

signal pe_in, mux_imm, dec_out, mux_1 : std_logic_vector(7 downto 0);
signal sub_c, sub_z, ctr_sel, imm_sel, timep, timepp, stall_bit1, tpbhai, tpbhai2, kid : std_logic;
signal pe_out, reg1 : std_logic_vector(2 downto 0);
signal ctr_mux, ctr_in, ctr_out, ans, dummy_ctr, ctr_inn : std_logic_vector(15 downto 0);
----------------------------------------------------------------------
	component priorityencoder is
	     port(
		 din 	: in std_logic_vector(7 downto 0);
		 dout 	: out std_logic_vector(2 downto 0)
		 );
	end component;
-----------------------------------------------------------------------
	component decoder is
	     port(
		 dout 	: out std_logic_vector(7 downto 0);
		 din 	: in std_logic_vector(2 downto 0)
		 );
	end component;
-----------------------------------------------------------------------
	component tempreg16 is  
	  port(clock, reset: in std_logic;
	       din : in std_logic_vector(15 downto 0);  
	       dout : out std_logic_vector(15 downto 0)
	      );  
	end component;
-----------------------------------------------------------------------
	component subtracter8 is
	port(x,y : in std_logic_vector(7 downto 0);
	z : out std_logic_vector(7 downto 0);
	aluc, aluz: out std_logic);
	end component;
----------------------------------------------------------------------
	component mux2 is
	generic(input_width : integer);
	port(
		d0 : std_logic_vector(input_width-1 downto 0);
		d1 : std_logic_vector(input_width-1  downto 0);

	  	sel: in std_logic;
		dout: out std_logic_vector(input_width-1 downto 0)
	);
	end component;
-----------------------------------------------------------------------
	component alu_add is
	port(x,y : in std_logic_vector(15 downto 0);
	z : out std_logic_vector(15 downto 0)
	);
	end component;
------------------------------------------------------------------------
	component tempreg8 is  
	  port( 
		reset, clock: in std_logic;
		din : in std_logic_vector(7 downto 0);  
		dout : out std_logic_vector(7 downto 0)
	);  
	end component;
------------------------------------------------------------------------
begin

--ImmReg: tempreg8
--port map (clock => clk, reset => reset_c, din => mux_imm, dout => pe_in);

PE: priorityencoder
port map (din => pe_in, dout => pe_out);

dec: decoder
port map (din => pe_out, dout => dec_out);

sub: subtracter8
port map (x => pe_in, y => dec_out, z => mux_1);

--imm_mux: mux2
--generic map (8)
--port map (sel => imm_sel, d0 => IR(7 downto 0), d1 => mux_1, dout => mux_imm);

counter: tempreg16
port map (clock => clk, reset => reset_c, din => ctr_in, dout => ctr_out);

ctr_add: alu_add
port map (x=> ctr_out, y => "0000000000000001", z=> ans);

k <= ctr_out;
reg1 <= pe_out;
arbit: process (clk)
begin
if (rising_edge(clk)) then
reg <= reg1;
end if;
end process;
--imm_sel , ctr_sel

p2: process (clk)
begin
if(IR1(15 downto 12) = "0111") then --timepp=1
--	ctr_mux <= ctr_out;
	ctr_inn <= ans;
--elsif(IR(15 downto 12) = "0110" and timep = '1') then
--	timepp <= '1'; 
--elsif(IR(15 downto 12) = "0110" ) then
--	timep <= '1'; 
else
--	ctr_mux <= dummy_ctr;
     	ctr_inn <= "0000000000000000";
end if;
end process p2;
ctr_in <= ctr_inn;
p1: process (clk)
begin
if(ctr_out = "0000000000000000" and rising_edge(clk) and tpbhai2 = '1') then
	pe_in <= (IR1(7 downto 0) and mux_1);
elsif(ctr_out = "0000000000000000" and rising_edge(clk) and tpbhai = '1') then
	pe_in <= IR(7 downto 0);
	tpbhai2 <= '1';
elsif(ctr_out = "0000000000000000" and rising_edge(clk)) then
	--pe_in <= IR(7 downto 0);
	tpbhai <= '1';
elsif rising_edge(clk) then 
pe_in <= mux_1;
end if;
end process p1;

stal: process (clk)
begin
if (reset_c = '1') then
kid <= '0';
stall_bit1 <= '0';
elsif (mux_1 = "00000000" and kid = '0') then
stall_bit1 <= '1';
kid <= '1';
elsif (kid = '0') then
stall_bit1 <= '0';
end if;
end process stal;
stall_bit <= stall_bit1;

end struct;
