library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;      
use ieee.numeric_std.all;
package lab1 is
	component alu is
	port(x,y: in std_logic_vector(15 downto 0);
        z: out std_logic_vector(15 downto 0);
        aluc: out std_logic;
        aluz: out std_logic;
	aluop: in std_logic_vector(1 downto 0)
		  );
	end component;
	component add1 is
	port (x, y, i: in std_logic; z, o: out std_logic);
  	 end component;
  	 component mux1 is
	port (x, y, s: in std_logic; z : out std_logic);
	end component;	
	component adder16 is
	port(x,y : in std_logic_vector(15 downto 0);
z : out std_logic_vector(15 downto 0);
aluc, aluz: out std_logic);
	end component;
	component subtracter16 is
	port(x,y : in std_logic_vector(15 downto 0);
z : out std_logic_vector(15 downto 0);
aluc, aluz: out std_logic);
	end component;
component nand16 is
	port(x,y : in std_logic_vector(15 downto 0);
z : out std_logic_vector(15 downto 0);
aluc, aluz: out std_logic);
	end component;
end lab1;


library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;      
use ieee.numeric_std.all;
entity add1 is
	port (x, y, i: in std_logic; z, o: out std_logic);
end entity add1;
architecture Behave of add1 is
begin
  z <= ((x and (not(y)) and (not(i))) or (y and (not(x)) and (not(i)))
  or (i and (not(x)) and (not(y))) or (x and y and i));
  o <= ((x and y) or (y and i) or (x and i));
end Behave;

library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;      
use ieee.numeric_std.all;
entity mux1 is
  port (x, y, s: in std_logic;
         z: out std_logic);
end entity mux1;
architecture Behave of mux1 is
begin
  z <= ((x and s) or (y and (not(s))));
end Behave;

library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;      
use ieee.numeric_std.all;
use work.lab1.all;
entity adder16 is
port(x,y : in std_logic_vector(15 downto 0);
z : out std_logic_vector(15 downto 0);
aluc, aluz: out std_logic);
end entity;
architecture behave of adder16 is
signal c, t: std_logic_vector(15 downto 0);

component add1 is
	port (x, y, i: in std_logic; z, o: out std_logic);
end component add1;

begin
a0 : add1 port map (x => x(0), y => y(0) , i=>'0' ,z=>t(0), o=>c(0));
a1 : add1 port map (x => x(1), y => y(1) , i=>c(0) ,z=>t(1), o=>c(1));
a2 : add1 port map (x => x(2), y => y(2) , i=>c(1) ,z=>t(2), o=>c(2));
a3 : add1 port map (x => x(3), y => y(3) , i=>c(2) ,z=>t(3), o=>c(3));
a4 : add1 port map (x => x(4), y => y(4) , i=>c(3) ,z=>t(4), o=>c(4));
a5 : add1 port map (x => x(5), y => y(5) , i=>c(4) ,z=>t(5), o=>c(5));
a6 : add1 port map (x => x(6), y => y(6) , i=>c(5) ,z=>t(6), o=>c(6));
a7 : add1 port map (x => x(7), y => y(7) , i=>c(6) ,z=>t(7), o=>c(7));
a8 : add1 port map (x => x(8), y => y(8) , i=>c(7) ,z=>t(8), o=>c(8));
a9 : add1 port map (x => x(9), y => y(9) , i=>c(8) ,z=>t(9), o=>c(9));
a10 : add1 port map (x => x(10), y => y(10) , i=>c(9) ,z=>t(10), o=>c(10));
a11 : add1 port map (x => x(11), y => y(11) , i=>c(10) ,z=>t(11), o=>c(11));
a12 : add1 port map (x => x(12), y => y(12) , i=>c(11) ,z=>t(12), o=>c(12));
a13 : add1 port map (x => x(13), y => y(13) , i=>c(12) ,z=>t(13), o=>c(13));
a14 : add1 port map (x => x(14), y => y(14) , i=>c(13) ,z=>t(14), o=>c(14));
a15 : add1 port map (x => x(15), y => y(15) , i=>c(14) ,z=>t(15), o=>c(15));
aluc <= c(15);
z <= t;
 alu1: process(x,y,t)
    begin
			
			if (t = "0000000000000000") then 
				aluz <= '1';
			else
				aluz <= '0';
			end if ;

    end process;
end behave;

library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;      
use ieee.numeric_std.all;
use work.lab1.all;
entity subtracter16 is
port(x,y : in std_logic_vector(15 downto 0);
z : out std_logic_vector(15 downto 0);
aluc, aluz: out std_logic);
end entity;
architecture behave of subtracter16 is
signal yc, ycc: std_logic_vector(15 downto 0);
signal c1, t1: std_logic;

component adder16 is
port(x,y : in std_logic_vector(15 downto 0);
z : out std_logic_vector(15 downto 0);
aluc, aluz: out std_logic);
end component;

begin
yc(0) <= not(y(0));
yc(1) <= not(y(1));
yc(2) <= not(y(2));
yc(3) <= not(y(3));
yc(4) <= not(y(4));
yc(5) <= not(y(5));
yc(6) <= not(y(6));
yc(7) <= not(y(7));
yc(8) <= not(y(8));
yc(9) <= not(y(9));
yc(10) <= not(y(10));
yc(11) <= not(y(11));
yc(12) <= not(y(12));
yc(13) <= not(y(13));
yc(14) <= not(y(14));
yc(15) <= not(y(15));
a1 : adder16 port map (x => yc, y => "0000000000000001", z => ycc, aluc => c1, aluz => t1);
a2 : adder16 port map (x => x, y => ycc , z => z, aluc => aluc, aluz => aluz );
end behave;

library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;      
use ieee.numeric_std.all;
use work.lab1.all;
entity nand16 is
port(x,y : in std_logic_vector(15 downto 0);
z : out std_logic_vector(15 downto 0);
aluc, aluz: out std_logic);
end entity;
architecture behave of nand16 is
signal t: std_logic_vector(15 downto 0);
begin
t(0) <= x(0) nand y(0);
t(1) <= x(1) nand y(1);
t(2) <= x(2) nand y(2);
t(3) <= x(3) nand y(3);
t(4) <= x(4) nand y(4);
t(5) <= x(5) nand y(5);
t(6) <= x(6) nand y(6);
t(7) <= x(7) nand y(7);
t(8) <= x(8) nand y(8);
t(9) <= x(9) nand y(9);
t(10) <= x(10) nand y(10);
t(11) <= x(11) nand y(11);
t(12) <= x(12) nand y(12);
t(13) <= x(13) nand y(13);
t(14) <= x(14) nand y(14);
t(15) <= x(15) nand y(15);
z <= t;
aluc <= '0';
 alu1: process(x,y,t)
    begin
			
			if (t = "0000000000000000") then 
				aluz <= '1';
			else
				aluz <= '0';
			end if ;

    end process;
end behave;


library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;      
use ieee.numeric_std.all;
use work.lab1.all;
entity alu is
   port(x,y: in std_logic_vector(15 downto 0);
        z: out std_logic_vector(15 downto 0);
        aluc: out std_logic;
        aluz: out std_logic;
	aluop: in std_logic_vector(1 downto 0)
		  );
end entity;
 
architecture struct of alu is
signal z1, z2, z3: std_logic_vector(15 downto 0);
signal c1, c2, c3, t1, t2, t3: std_logic;

component adder16 is
port(x,y : in std_logic_vector(15 downto 0);
z : out std_logic_vector(15 downto 0);
aluc, aluz: out std_logic);
end component;

begin
addersixteen : adder16 port map (x => x, y => y, z => z1, aluc => c1, aluz => t1);
nandsixteen : nand16 port map (x => x, y => y, z => z2, aluc => c2, aluz => t2);
subtractersixteen : subtracter16 port map (x => x, y => y, z => z3, aluc => c3, aluz => t3);
alu1: process(x,y,aluop,z1,z2,z3,t1,c1,t2,c2,t3,c3)
    begin		
			if (aluop = "00") then --add
				aluz <= t1;
				aluc <= c1;
				z <= z1;
			elsif (aluop = "01") then --nand
				aluz <= t2;
				aluc <= c2;
				z <= z2;
			elsif (aluop = "10") then --subtract
				aluz <= t3;
				aluc <= c3;
				z <= z3;
		
			end if ;

    end process;
   
	  
end struct;

