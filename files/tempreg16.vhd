library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;      
use ieee.numeric_std.all;

entity tempreg16 is  
  port(clock, reset: in std_logic;
       din : in std_logic_vector(15 downto 0);  
       dout : out std_logic_vector(15 downto 0)
      );  
end entity;

architecture struct of tempreg16 is  
  begin  
	
    process (clock, reset)  
      begin  
		if(reset = '1') then
			dout <= (others => '0');
      elsif ( rising_edge(clock))then  
          dout <= din;  
      end if;  
    end process;  
end struct;
