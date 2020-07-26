library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;      
use ieee.numeric_std.all;

entity pc is  
  port(clock, reset, pc_en : in std_logic;
       din : in std_logic_vector(15 downto 0);  
       dout : out std_logic_vector(15 downto 0)
      );  
end entity;

architecture struct of pc is  
  begin  
	
    process (clock, reset, pc_en)  
      begin  
		if(reset = '1') then
			dout <= (others => '0');
      elsif ( rising_edge(clock) and (pc_en = '1') )then  
          dout <= din;  
      end if;  
    end process;  
end struct;
