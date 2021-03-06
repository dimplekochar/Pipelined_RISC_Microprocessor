library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;      
use ieee.numeric_std.all;

entity add_1bit is
	port (x, y, i: in std_logic; z, o: out std_logic);
end entity add_1bit;
architecture Behave of add_1bit is
begin
  z <= ((x and (not(y)) and (not(i))) or (y and (not(x)) and (not(i)))
  or (i and (not(x)) and (not(y))) or (x and y and i));
  o <= ((x and y) or (y and i) or (x and i));
end Behave;
-------------
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;      
use ieee.numeric_std.all;

entity alu_add is
port(x,y : in std_logic_vector(15 downto 0);
z : out std_logic_vector(15 downto 0)
);
end entity;
architecture behave of alu_add is
signal c, t: std_logic_vector(15 downto 0);

component add_1bit is
	port (x, y, i: in std_logic; z, o: out std_logic);
end component add_1bit;

begin
a0 : add_1bit port map (x => x(0), y => y(0) , i=>'0' ,z=>t(0), o=>c(0));
a1 : add_1bit port map (x => x(1), y => y(1) , i=>c(0) ,z=>t(1), o=>c(1));
a2 : add_1bit port map (x => x(2), y => y(2) , i=>c(1) ,z=>t(2), o=>c(2));
a3 : add_1bit port map (x => x(3), y => y(3) , i=>c(2) ,z=>t(3), o=>c(3));
a4 : add_1bit port map (x => x(4), y => y(4) , i=>c(3) ,z=>t(4), o=>c(4));
a5 : add_1bit port map (x => x(5), y => y(5) , i=>c(4) ,z=>t(5), o=>c(5));
a6 : add_1bit port map (x => x(6), y => y(6) , i=>c(5) ,z=>t(6), o=>c(6));
a7 : add_1bit port map (x => x(7), y => y(7) , i=>c(6) ,z=>t(7), o=>c(7));
a8 : add_1bit port map (x => x(8), y => y(8) , i=>c(7) ,z=>t(8), o=>c(8));
a9 : add_1bit port map (x => x(9), y => y(9) , i=>c(8) ,z=>t(9), o=>c(9));
a10 : add_1bit port map (x => x(10), y => y(10) , i=>c(9) ,z=>t(10), o=>c(10));
a11 : add_1bit port map (x => x(11), y => y(11) , i=>c(10) ,z=>t(11), o=>c(11));
a12 : add_1bit port map (x => x(12), y => y(12) , i=>c(11) ,z=>t(12), o=>c(12));
a13 : add_1bit port map (x => x(13), y => y(13) , i=>c(12) ,z=>t(13), o=>c(13));
a14 : add_1bit port map (x => x(14), y => y(14) , i=>c(13) ,z=>t(14), o=>c(14));
a15 : add_1bit port map (x => x(15), y => y(15) , i=>c(14) ,z=>t(15), o=>c(15));

z <= t;

end behave;

