library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;      
use ieee.numeric_std.all;

entity tempreg8 is  
  port( 
	reset, clock: in std_logic;
	din : in std_logic_vector(7 downto 0);  
        dout : out std_logic_vector(7 downto 0)
);  
end entity;
  
architecture struct of tempreg8 is  
  begin  
   temp8: process (reset, din, clock)  
      begin  
		if reset = '1' then
			dout <= "00000000" ;
      elsif (rising_edge(clock)) then  
          dout <= din;  
       end if;    
    end process temp8;  
end struct;
