library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;      
use ieee.numeric_std.all;

entity ControlStore is
	port
	(clk, reset : in std_logic;
	P1,P2,P3,P4,P1_in,P5		: in std_logic_vector(15 downto 0);
	control_store11, control_store22, count_SM : out std_logic_vector(15 downto 0);
	p3_c1_in_cs : out std_logic_vector(2 downto 0);
	p4_c1_in_cs_f: out std_logic_vector(4 downto 0);	
        stall_check, put_stall_out, p1_write, p2_write, p3_write,p4_write, Mem_d_sel,load_h_alu_a: out std_logic;
	reg_SM : out std_logic_vector(2 downto 0)
--	beq_mux		: out std_logic_vector;		--port map to P4 mei 85th bit (check acc to P4a, P4b) :p
	);
end entity;

architecture struct of ControlStore is

signal P2_f_dummy,check, reset_count, t1, t2: std_logic;
signal haz_det : std_logic_vector(1 downto 0);
signal control_store1, control_store2 : std_logic_vector(15 downto 0);
signal count_cmd, count_cmd1 :integer range 0 to 127;

--TO-DO
---forwarding, write, hazards(stall n flush)
---check/add for LM/SM


--1. add beq_mux in EX state
--2. add Z_en condition and flag value in MEM stage
-------------------------------------------------------------------
component SM is
     port(clk, reset_c : in std_logic;
         IR ,IR1	: in std_logic_vector(15 downto 0);
         reg 	: out std_logic_vector(2 downto 0);
	stall_bit : out std_logic;
	 k : out std_logic_vector(15 downto 0)
         );
end component;
------------------------------------------------------------------- 
begin

theproc : process(clk,reset)
variable cyc_done : integer;
begin

	if (reset = '1') then
		count_cmd <= 0;
		count_cmd1 <= 0;
		put_stall_out <= '0';
		p4_c1_in_cs_f <= "00000";    --enable flushes
		p1_write <= '1';
		p2_write <= '1';
		p3_write <= '1';
		p4_write <= '1';
		haz_det <= "00";
		cyc_done := 0;
		t1 <= '0';
		t2 <= '0';
		load_h_alu_a <= '0';
	end if;

-----state S2--------------------PC_mux-----------------------------
 	if( (P1( 15 downto 12) = "1000") or (P1( 15 downto 12) ="1001")) then	  --jal/jlr
		control_store1 (1 downto 0) <= "01";   --(jump_mux_out)

	elsif ( (P2(15 downto 12) = "1100") ) then	--beq 
		control_store1 (1 downto 0) <= "10";   --(beq_mux_out)

	else 
		control_store1 (1 downto 0) <= "00";	--default (pc+1)
	end if;

-----state S2------------------jump_mux------------------------------
	if (P1( 15 downto 12) = "1000") then	  --jal
		control_store1 (2) <= '0';  --(pc+imm.)

	elsif (P1( 15 downto 12) = "1001") then   --jlr
		control_store1 (2) <= '1';  --(reg-d2)

    end if;
-----state S3-----------------alu_a_mux------(forwarding included)---------------------------------------


------------------------------------------------------------------------------------------------------------------------------------------------
--    I1 IS JUMP(JL/JLR)
-----------------------------------------------------------------------------------------------------------------------------------------------
 	

	if( ((P4(15 downto 12) = "1000")	or (P4(15 downto 12) = "1001")) and t2 = '0') then    --jump in P4

		
		if( ((P1(15 downto 12) = "0000") or (P1(15 downto 12) = "0001") or 
                     (P1(15 downto 12) = "1100") OR (P1(15 downto 12) = "0101")  )                     --AL(adds and nand)/BEQ/SW
				                         and
			((P4(11 downto 9) = P1(11 downto 9)) or (P4(11 downto 9) = P1(8 downto 6 ))) ) then     --reg matched(RA/RB)
		
			put_stall_out <= '1';
			p4_c1_in_cs_f <= "10110";    --enable flushes
			p1_write <= '0';
			p4_write <= '0';
			t2 <= '1';
		
		elsif ( ((P1(15 downto 12) = "0001") or (P1(15 downto 12) = "1000") or (P1(15 downto 12) = "1001") )    --ADI/JAL/JLR
			        and
			(P4(11 downto 9) = P1(11 downto 9)) ) then     --reg matched (RA)
		
			put_stall_out <= '1';
			p4_c1_in_cs_f <= "10110";   -- enable flushes
			p1_write <= '0';
			p4_write <= '0';
			t2<= '1';

		
		elsif ( (P1(15 downto 12) = "0100")    --LW
			        and
			(P4(11 downto 9) = P1(8 downto 6)) ) then     --reg matched (RB)
		
			put_stall_out <= '1';
			p4_c1_in_cs_f <= "10110";    -- enable flushes
			p1_write <= '0';
			p4_write <= '0';
			t2 <= '1';
		
		else   p4_c1_in_cs_f <= "00110";               -- flushing out 2 immediate instrs of jump
		   put_stall_out <= '0';
			p4_c1_in_cs_f <= "00000";    -- enable flushes
			p1_write <= '1';
			p4_write <= '1';
			t2 <= '0'; 
		end if;
		
		elsif(P5(15 downto 12) = "1000" or P5(15 downto 12) = "1001") then
			put_stall_out <= '0';
			p4_c1_in_cs_f <= "00000";    -- enable flushes
			p1_write <= '1';
			p4_write <= '1';
			t2 <= '0';

	

----------------------------------------------------------------------------------------------------------------------------------------------
  --  I1 IS LW
----------------------------------------------------------------------------------------------------------------------------------------------

-- AL AND LW


                --- stall logic for lw----

	elsif(  (P3(15 downto 12)  = "0100") and t1 ='0' ) then

		--if (P4(15 downto 12) = "0100")then
		--	p3_c1_in_cs(2 downto 0) <= "101";           ---alu_a is P5 memd_out
			
				
		if(((P2(15 downto 12) = "0000") or (P2(15 downto 12) = "0010") or (P2(15 downto 12) = "1100") or 
		(P2(15 downto 12) = "0101") )                                                                                                             -- P2 is Add/nand/BEQ/SW
                                      and
  		      (	(P3(11 downto 9) = P2(11 downto 9)) or (P3(11 downto 9) = P2(8 downto 6 )) ) )  then   --reg matched(RA/RB)

			put_stall_out <='1';
			p4_c1_in_cs_f <= "00000";    -- enable  P3flush
			p1_write <= '0';
			p2_write <= '0';
			p3_write <= '0'; 
			t1 <= '1';
		   load_h_alu_a <= '1';

	

		elsif ( (((P2(15 downto 12) = "0001") or (P2(15 downto 12) = "1000") or (P2(15 downto 12) = "1001") )    --ADI/JAL/JLR
			        and
			(P3(11 downto 9) = P2(11 downto 9))  )) then     --reg matched (RA)
		
			
			put_stall_out <='1';
			p4_c1_in_cs_f <= "00000";        -- enable  P3flush
			p1_write <= '0';
			p2_write <= '0';
			p3_write <= '0';
			t1 <= '1';		
			load_h_alu_a <= '1';

		elsif ( ((P2(15 downto 12) = "0100")    --LW
			        and
			(P3(11 downto 9) = P2(8 downto 6)) ) ) then     --reg matched (RB)
		
			                                                      
			put_stall_out <='1';
			p4_c1_in_cs_f <= "00000";        -- enable  P3flush
			p1_write <= '0';
			p2_write <= '0';
			p3_write <= '0';
			t1 <= '1';
			load_h_alu_a <= '1';
		
		end if;
		          ----- alu_a logic forwarding logic for lw--------------
        

	elsif(  (P4(15 downto 12)  = "0100") ) then

		if(((P2(15 downto 12) = "0000") or (P2(15 downto 12) = "0010") or (P2(15 downto 12) = "1100") )                                                                                                              -- P2 is Add/nand/BEQ
                                      and
  		      (	(P4(11 downto 9) = P2(11 downto 9)) or (P4(11 downto 9) = P2(8 downto 6 )))      ) then   --reg matched(RA/RB)	

			

			p3_c1_in_cs(2 downto 0) <= "101";           ---alu_a is P5 memd_out
			load_h_alu_a <= '0';
			put_stall_out <= '0';
			p4_c1_in_cs_f <= "00000";    -- enable  P3flush
			p1_write <= '1';
			p2_write <= '1';
			p3_write <= '1'; 
			t1 <= '0';
			haz_det <= "01";
		   
		
		
		elsif ( ((P2(15 downto 12) = "0001") )    --ADI
			        and
			(P4(11 downto 9) = P2(11 downto 9)) ) then     --reg matched (RA)
		
			
			p3_c1_in_cs(2 downto 0) <= "101";          ---alu_a is P5 memd_out
			load_h_alu_a <= '0';
			put_stall_out <= '0';
			p4_c1_in_cs_f <= "00000";    -- enable  P3flush
			p1_write <= '1';
			p2_write <= '1';
			p3_write <= '1'; 
			t1 <= '0';


		elsif ( ((P2(15 downto 12) = "0100") or (P2(15 downto 12) = "0101") ) --LW/sw
			        and
			(P4(11 downto 9) = P2(8 downto 6)) ) then     --reg matched (RB)

			
			p3_c1_in_cs(2 downto 0) <= "101";          ---alu_a is P5 memd_out
			load_h_alu_a <= '0';
			put_stall_out <= '0';
			p4_c1_in_cs_f <= "00000";    -- enable  P3flush
			p1_write <= '1';
			p2_write <= '1';
			p3_write <= '1';
		   t1 <= '0';	
			
		elsif ((  (P2(15 downto 12) = "0101") ) --sw
			        and
			(P4(11 downto 9) = P2(11 downto 9)) ) then     --reg matched (RA)

			
			Mem_d_sel <= '1';          ---Mem_d_in is from P5_ Mem_d_out
			put_stall_out <= '0';
			p4_c1_in_cs_f <= "00000";    -- enable  P3flush
			p1_write <= '1';
			p2_write <= '1';
			p3_write <= '1'; 
			t1 <= '0';
		
	    
	
	


	                      --------------no forwarding alu_a logic-------------------for load and jump

	elsif( (P2(15 downto 12) = "0000") or (P2(15 downto 12) = "0010") or (P2(15 downto 12) = "1100")) then  --Add/nand/BEQ

				 control_store1(5 downto 3) <= "000";    --(P3 32-47)
					load_h_alu_a <= '0';
					put_stall_out <= '0';
					p4_c1_in_cs_f <= "00000";    -- enable  P3flush
					p1_write <= '1';
					p2_write <= '1';
					p3_write <= '1';
				
				haz_det <= "11";

	elsif (P2(15 downto 12) = "0001")  then  --Adi

			 control_store1(5 downto 3) <= "000";    --(P3 32-47)
				load_h_alu_a <= '0';
				put_stall_out <= '0';
				p4_c1_in_cs_f <= "00000";    -- enable  P3flush
				p1_write <= '1';
				p2_write <= '1';
				p3_write <= '1';
				
				
	elsif (P2(15 downto 12) = "0100") then  --lw

			 control_store1(5 downto 3) <= "001";    --(P3 48-63)
				load_h_alu_a <= '0';
				put_stall_out <= '0';
				p4_c1_in_cs_f <= "00000";    -- enable  P3flush
				p1_write <= '1';
				p2_write <= '1';
				p3_write <= '1';
					
				
	elsif (P2(15 downto 12) = "0101")  then  --sw

			 control_store1(5 downto 3) <= "001";    --(P3 48-63)
				load_h_alu_a <= '0';
				put_stall_out <= '0';
				p4_c1_in_cs_f <= "00000";    -- enable  P3flush
				p1_write <= '1';
				p2_write <= '1';
				p3_write <= '1';
				
				
				

	elsif( (P2(15 downto 12) = "1000") or (P2(15 downto 12) = "1001")) then  --jal/jlr

			 control_store1(5 downto 3) <= "000";    --(P3 32-47)
			 load_h_alu_a <= '0';
			 put_stall_out <= '0';
				p4_c1_in_cs_f <= "00000";    -- enable  P3flush
				p1_write <= '1';
				p2_write <= '1';
				p3_write <= '1';
				
			 
 	end if;
	
     end if;

-----------------------------------------------------------------------------------------------------------------------------------------------	                                 


		
--***hazard completed***---

      -------------------------------------------------------------------------------------------------------------------------------------------
-- I1 is AL(ADD/ADC/ADZ/NDU/NDC/NDZ)
-------------------------------------------------------------------------------------------------------------------------------------------
      --        Al and AL

    if (((P2 (15 downto 12) = "0000") or (P2 (15 downto 12) = "0010") ) 
							and 
          ( (P1 (15 downto 12) = "0000") or (P1 (15 downto 12) = "0010"))) then	--add/nand
       ----------------^ [(I1 -> P2 and is AL) and (I2 ->P1 and is AL) -------------------------------------------------------
		
		if( (P2(5 downto 3) = P1(8 downto 6)) or (P2(5 downto 3) = P1(11 downto 9))) then --first immed.
			 control_store1(5 downto 3) <= "010";	--(P4_47-32 -- alu_out)
			 haz_det <= "01";
		else 
			 control_store1(5 downto 3) <= "000";   --(P3 32-47)
		end if;  

	----------------------------------------------------------------------------------------------------------------------------------------------
--             ADI and AL

    elsif ((P2 (15 downto 12) = "0000") or (P2 (15 downto 12) = "0010") ) 
							and 
           (P1 (15 downto 12) = "0001") then	                                             
       ----------------^ [(I1 -> P2 and is AL) and (I2 ->P1 and is ADI) -------------------------------------------------------

		if (P2(5 downto 3) = P1(11 downto 9)) then --(I1 ka Rc== I2 ka RA)		
			 control_store1(5 downto 3) <= "010";	--(P4_47-32 -- alu_out)
		
		else 
			 control_store1(5 downto 3) <= "000";   --(P3 32-47)
      	end if;
 
		
       -------------------^ Immediate dependancy-----------------------------------------------------------------------------
--           LW and AL
 
    elsif ((P2 (15 downto 12) = "0000") or (P2 (15 downto 12) = "0010")) 
							and 
           (P1 (15 downto 12) = "0100") then	                                             
       ----------------^ [(I1 -> P2 and is AL) and (I2 ->P1 and is ADI) -------FI------------------------------------------------

		if (P2(5 downto 3) = P1(8 downto 6)) then --(I1 ka Rc== I2 ka RB)		
			 control_store1(5 downto 3) <= "010";	--(P4_47-32 -- alu_out)
		else 
			 control_store1(5 downto 3) <= "001";   --(P3 48-63)
      	end if;
--------------------------------------------------------------------------------------------------------------------------------

--       SW(a) and AL

	 elsif ((P2 (15 downto 12) = "0000") or (P2 (15 downto 12) = "0010")) 
							and 
           (P1 (15 downto 12) = "0101") then	                                             
       ----------------^ [(I1 -> P2 and is AL) and (I2 ->P1 and is SW(a)) -------FI------------------------------------------------

		if (P2(5 downto 3) = P1(11 downto 9)) then              --reg matched (RA)

      
			Mem_d_sel <= '1';          ---Mem_d_in is from P5_ Mem_d_out
			put_stall_out <= '0';
			p4_c1_in_cs_f <= "00000";    -- enable  P3flush
			p1_write <= '1';
			p2_write <= '1';
			p3_write <= '1'; 
			t1 <= '0';
		end if;

-------------------------------------------------------------------------------------------------------------------------------
--        SW(b) and AL (RB is matched)

   	elsif ((P2 (15 downto 12) = "0000") or (P2 (15 downto 12) = "0010")) 
							and 
          	 (P1 (15 downto 12) = "0101") then	                                             
       ----------------^ [(I1 -> P2 and is AL) and (I2 ->P1 and is SW) -------------------------------------------------------

		if (P2(5 downto 3) = P1(8 downto 6)) then --(I1 ka Rc== I2 ka RB)		
			 control_store1(5 downto 3) <= "010";	--(P4_47-32 -- alu_out)
		else 
			 control_store1(5 downto 3) <= "001";   --(P3 48-63)
      	end if;

       -------------------^ Immediate dependancy-----------------------------------------------------------------------------
--        BEQ and AL	

    elsif( ((P2 (15 downto 12) = "0000") or (P2 (15 downto 12) = "0010")) 
							and 
           (P1 (15 downto 12) = "1100") ) then	
       ----------------^ [(I1 -> P2 and is AL) and (I2 ->P1 and is BEQ) -------------------------------------------------------
		
		if( (P2(5 downto 3) = P1(11 downto 9)) or (P2(5 downto 3) = P1(8 downto 6))) then --first immed.
			 control_store1(5 downto 3) <= "010";	--(P4_47-32 -- alu_out)
		else 
			 control_store1(5 downto 3) <= "000";   --(P3 32-47)
      	end if;

       -------------------^ Immediate dependancy-----------------------------------------------------------------------------
-- AL AND LHI

	elsif ((P2 (15 downto 12) = "0011") 
			and 
           ((P1 (15 downto 12) = "0000") or (P1 (15 downto 12) = "0010") )) then	--add/nand
       ----------------^ [(I1 -> P2 and is LHI) and (I2 ->P1 and is AL) -------------------------------------------------------
		
		if( (P2(11 downto 9) = P1(8 downto 6)) or (P2(11 downto 9) = P1(11 downto 9))) then --first immed.
			 control_store1(5 downto 3) <= "100";	--(P4 -- 9S_out)
		else 
			 control_store1(5 downto 3) <= "000";   --(P3 32-47)
       	end if;

-----------------------------------------------------------------------------------------------------------------------------------------------
-- ADI and LHI

	elsif (P2 (15 downto 12) = "0011")         --lhi
			and 
           (P1 (15 downto 12) = "0001") then	--adi
       ----------------^ [(I1 -> P2 and is LHI) and (I2 ->P1 and is ADI) -------------------------------------------------------
		
		if(P2(11 downto 9) = P1(11 downto 9))  then --first immed.
			 control_store1(5 downto 3) <= "100";	--(P4 -- 9S_out)           -- (RA of LHI == RA of ADI)
		else 
			 control_store1(5 downto 3) <= "000";   --(P3 32-47)

		end if;

----------------------------------------------------------------------------------------------------------------------------------------------
--LW and LHI

	elsif (P2 (15 downto 12) = "0011")         --lhi
			and 
           (P1 (15 downto 12) = "0100") then	--lw
       ----------------^ [(I1 -> P2 and is LHI) and (I2 ->P1 and is lw) -------------------------------------------------------
		
		if(P2(11 downto 9) = P1(8 downto 6))  then --first immed.
			 control_store1(5 downto 3) <= "100";	--(P4 -- 9S_out)           -- (RA of LHI == RB of LW)
		else 
			 control_store1(5 downto 3) <= "001";   --(P3 48-63)

		end if;

----------------------------------------------------------------------------------------------------------------------------------------------

--       SW(a) and LHI

	 elsif ((P2 (15 downto 12) = "0011")) 
							and 
           (P1 (15 downto 12) = "0101") then	                                             
       ----------------^ [(I1 -> P2 and is AL) and (I2 ->P1 and is SW(a)) -------FI------------------------------------------------

		if (P2(11 downto 9) = P1(8 downto 6)) then              --reg matched (RA)

      
			Mem_d_sel <= '1';          ---Mem_d_in is from P5_ Mem_d_out
			put_stall_out <= '0';
			p4_c1_in_cs_f <= "00000";    -- enable  P3flush
			p1_write <= '1';
			p2_write <= '1';
			p3_write <= '1'; 
			t1 <= '0';
		end if;

----------------------------------------------------------------------------------------------
-- SW(b) and LHI

	elsif (P2 (15 downto 12) = "0011")         --lhi
			and 
           (P1 (15 downto 12) = "0101") then	--sw
       ----------------^ [(I1 -> P2 and is LHI) and (I2 ->P1 and is sw) -------------------------------------------------------
		
		if(P2(11 downto 9) = P1(8 downto 6))  then --first immed.
			 control_store1(5 downto 3) <= "100";	--(P4 -- 9S_out)           -- (RA of LHI == RB of SW)
		else 
			 control_store1(5 downto 3) <= "001";   --(P3 48-63)

		end if;
-----------------------------------------------------------------------------------------------------------------------------------------------
--        BEQ and LHI	

    elsif ((P2 (15 downto 12) = "0011")     --LHI
		      and 
           (P1 (15 downto 12) = "1100") ) then	
       ----------------^ [(I1 -> P2 and is LHI) and (I2 ->P1 and is BEQ) -------------------------------------------------------
		
		if( (P2(11 downto 9) = P1(11 downto 9)) or (P2(11 downto 9) = P1(8 downto 6))) then --first immed.
			 control_store1(5 downto 3) <= "100";	--(P4_47-32 -- alu_out)         --(RA OF LHI==RA/RB OF BEQ)
       -------------------^ Immediate dependancy-----------------------------------------------------------------------------
		else 
			 control_store1(5 downto 3) <= "000";   --(P3 32-47)
      	end if;
------------------------------------------------------------------------------------------------------------------------------------------------
--  Al and ADI
	
	elsif ((P2 (15 downto 12) = "0001")  
			and 
           ((P1 (15 downto 12) = "0000") or (P1 (15 downto 12) = "0010"))) then	--add/nand
       ----------------^ [(I1 -> P2 and is ADI) and (I2 ->P1 and is AL) -------------------------------------------------------
		
		if( (P2(8 downto 6) = P1(8 downto 6)) or (P2(8 downto 6) = P1(11 downto 9))) then --first immed.
			 control_store1(5 downto 3) <= "010";	--(P4_47-32 -- alu_out)    --( RB OF ADI ==RA/RB OF AL)
		else 
			 control_store1(5 downto 3) <= "000";    --(P3 32-47)
      	end if;

       -------------------^ Immediate dependancy-----------------------------------------------------------------------------
-- LW AND ADI
	
	elsif (P2 (15 downto 12) = "0001")         --ADI
			and 
           (P1 (15 downto 12) = "0100") then	--lw
       ----------------^ [(I1 -> P2 and is ADI) and (I2 ->P1 and is lw) -------------------------------------------------------
		
		if(P2(8 downto 6) = P1(8 downto 6))  then --first immed.
			 control_store1(5 downto 3) <= "010";	--(P4 -- ALU_out)           -- (RB of ADI == RB of LW)
		else 
			 control_store1(5 downto 3) <= "001";   --(P3 48-63)		

		end if;

--------------------------------------------------------------------------------------------------------------------------------------

--       SW(a) and ADI

	 elsif ((P2 (15 downto 12) = "0001")) 
							and 
           (P1 (15 downto 12) = "0101") then	                                             
       ----------------^ [(I1 -> P2 and is AL) and (I2 ->P1 and is SW(a)) -------FI------------------------------------------------

		if (P2(8 downto 6) = P1(8 downto 6)) then              --reg matched (RA)

      
			Mem_d_sel <= '1';          ---Mem_d_in is from P5_ Mem_d_out
			put_stall_out <= '0';
			p4_c1_in_cs_f <= "00000";    -- enable  P3flush
			p1_write <= '1';
			p2_write <= '1';
			p3_write <= '1'; 
			t1 <= '0';
		end if;
--------------------------------------------------------------------------------------------------------------------------
--SW(B) AND ADI

	elsif (P2 (15 downto 12) = "0001")         --ADI
			and 
           (P1 (15 downto 12) = "0101") then	--SW
       ----------------^ [(I1 -> P2 and is ADI) and (I2 ->P1 and is Sw) -------------------------------------------------------
		
		if(P2(8 downto 6) = P1(8 downto 6))  then --first immed.
			 control_store1(5 downto 3) <= "010";	--(P4 -- ALU_out)           -- (RB of ADI == RB of SW)
		else 
			 control_store1(5 downto 3) <= "001";   --(P3 48-63)

		end if;
-----------------------------------------------------------------------------------------------------------------------------------------------
--        BEQ and ADI

    elsif ((P2 (15 downto 12) = "0001")     --ADI
		      and 
           (P1 (15 downto 12) = "1100") ) then	  --BEQ
       ----------------^ [(I1 -> P2 and is ADI) and (I2 ->P1 and is BEQ) -------------------------------------------------------
		
		if( (P2(8 downto 6) = P1(11 downto 9)) or (P2(8 downto 6) = P1(8 downto 6))) then --first immed.
			 control_store1(5 downto 3) <= "010";	--(P4_47-32 -- alu_out)         --(RB OF ADI==RA/RB OF BEQ)
		else 
			 control_store1(5 downto 3) <= "000";   --(P3 32-47)
      	        end if;
     end if;
       -------------------^ Immediate dependancy-----------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------


--**********************       Second Immediate  *********************************************


--         AL and AL second imm
	if (((P3 (15 downto 12) = "0000") or (P3 (15 downto 12) = "0010") ) 
							and 
           ((P1 (15 downto 12) = "0000") or (P1 (15 downto 12) = "0010"))) then	--add/nand		
		if( (P3(5 downto 3) = P1(8 downto 6)) or (P3(5 downto 3) = P1(11 downto 9))) then --second immed.
			 control_store1(5 downto 3) <= "111";	--(P5_47-32--- alu_out)
			 haz_det <= "10";
		else 
			 control_store1(5 downto 3) <= "000";   --(P3 32-47)
		end if;      
	

       -------------------^ Immediate dependancy-----------------------------------------------------------------------------
 	
--Adi and al
	elsif ((P3 (15 downto 12) = "0000") or (P3 (15 downto 12) = "0010") ) 
			and 
           (P1 (15 downto 12) = "0001") then	                                             
      
		
		if (P3(5 downto 3) = P1(11 downto 9)) then --second immed/ --(I1 ka Rc== I3 ka RA).
			 control_store1(5 downto 3) <= "111";	--(P5_47-32--- alu_out)
		else 
			 control_store1(5 downto 3) <= "000";   --(P3 32-47)
      	end if;
------------------------------------------------------------------------------------------------------------------------------------------------

       ------------------------------------------------------------------------------------------------
--           LW and AL

	elsif (((P3 (15 downto 12) = "0000") or (P3 (15 downto 12) = "0010")) 
							and 
           (P1 (15 downto 12) = "0100") )then	    

		if (P3(5 downto 3) = P1(8 downto 6)) then --second immed/ --(I1 ka Rc== I3 ka RB).
			 control_store1(5 downto 3) <= "111";	--(P5_47-32--- alu_out)
		else 
			 control_store1(5 downto 3) <= "001";   --(P3 48-63)
      	end if;

-----------------------------------------------------------------------------------------------------------------------------------------------
--         SW(a) and Al (RA is matched)

	 elsif ((P3 (15 downto 12) = "0000") or (P3 (15 downto 12) = "0010")) 
							and 
           (P1 (15 downto 12) = "0101") then	                                             
       ----------------^ [(I1 -> P2 and is AL) and (I2 ->P1 and is SW(a)) -------FI------------------------------------------------

		if (P3(5 downto 3) = P1(11 downto 9)) then              --reg matched (RA)

      
			Mem_d_sel <= '1';          ---Mem_d_in is from P5_ Mem_d_out
			put_stall_out <= '0';
			p4_c1_in_cs_f <= "00000";    -- enable  P3flush
			p1_write <= '1';
			p2_write <= '1';
			p3_write <= '1'; 
			t1 <= '0';

              end if;
---------------------------------------------------------------------------------------------------------------------------
--        SW(b) and AL (RB is matched)

	elsif (((P3 (15 downto 12) = "0000") or (P3 (15 downto 12) = "0010")) 
							and 
          	 (P1 (15 downto 12) = "0101")) then	 
		if (P3(5 downto 3) = P1(8 downto 6)) then --second immed/ --(I1 ka Rc== I3 ka RB).
			 control_store1(5 downto 3) <= "111";	--(P5_47-32--- alu_out)
		else 
			 control_store1(5 downto 3) <= "001";   --(P3 48-63)
      	end if;
------------------------------------------------------------------------------------------------------------------------------------------------
--        BEQ and AL	

    elsif (((P3 (15 downto 12) = "0000") or (P3 (15 downto 12) = "0010")) 
							and 
           (P1 (15 downto 12) = "1100") ) then	

		if( (P3(5 downto 3) = P1(11 downto 9)) or (P3(5 downto 3) = P1(8 downto 6))) then --second immed.
			 control_store1(5 downto 3) <= "111";	--(P5_47-32--- alu_out)
		else 
			 control_store1(5 downto 3) <= "000";   --(P3 32-47)
      	end if;

-----------------------------------------------------------------------------------------------------------------------------------------------
--  I1 is LHI
-----------------------------------------------------------------------------------------------------------------------------------------------
-- AL AND LHI

	elsif ((P3 (15 downto 12) = "0011") 
			and 
           ((P1 (15 downto 12) = "0000") or (P1 (15 downto 12) = "0010") )) then	--add/nand

		if( (P3(11 downto 9) = P1(8 downto 6)) or (P3(11 downto 9) = P1(11 downto 9))) then --second immed.
			 control_store1(5 downto 3) <= "110";	--(P5 -- 9S_out)

		else 
			 control_store1(5 downto 3) <= "000";   --(P3 32-47)
       	end if;
	
----------------------------------------------------------------------------------------------------------------------------------------------


-- ADI and LHI

	elsif (P3 (15 downto 12) = "0011")         --lhi
			and 
           (P1 (15 downto 12) = "0001") then	--adi

		if (P3(11 downto 9) = P1(11 downto 9))  then --second immed.
			 control_store1(5 downto 3) <= "110";	--(P5 -- 9S_out)	  -- (RA of LHI == RA of ADI)

		else 
			 control_store1(5 downto 3) <= "000";   --(P3 32-47)

		end if;


-----------------------------------------------------------------------------------------------------------------------------------------------
--LW and LHI

	elsif (P3 (15 downto 12) = "0011")         --lhi
			and 
           (P1 (15 downto 12) = "0100") then	--lw


		if (P3(11 downto 9) = P1(8 downto 6))  then --second immed.
			 control_store1(5 downto 3) <= "110";	--(P5 -- 9S_out)	  -- (RA of LHI == RB of LW)

		else 
			 control_store1(5 downto 3) <= "001";   --(P3 48-63)

		end if;
-----------------------------------------------------------------------------------------------------------------------------------------------
--         SW(a) and LHI (RA is matched)

	 elsif ((P3 (15 downto 12) = "0011")) 
							and 
           (P1 (15 downto 12) = "0101") then	                                             
       ----------------^ [(I1 -> P2 and is AL) and (I2 ->P1 and is SW(a)) -------FI------------------------------------------------

		if (P3(11 downto 9) = P1(11 downto 9)) then              --reg matched (RA)

      
			Mem_d_sel <= '1';          ---Mem_d_in is from P5_ Mem_d_out
			put_stall_out <= '0';
			p4_c1_in_cs_f <= "00000";    -- enable  P3flush
			p1_write <= '1';
			p2_write <= '1';
			p3_write <= '1'; 
			t1 <= '0';

              end if;




-----------------------------------------------------------------------------------------------------------------------------------------------
-- SW(b) and LHI

	elsif (P3 (15 downto 12) = "0011")         --lhi
			and 
           (P1 (15 downto 12) = "0101") then	--sw


		if (P3(11 downto 9) = P1(8 downto 6))  then --second immed.
			 control_store1(5 downto 3) <= "110";	--(P5 -- 9S_out)	  -- (RA of LHI == RB of SW)

		else 
			 control_store1(5 downto 3) <= "001";   --(P3 48-63)

		end if;
------------------------------------------------------------------------------------------------------------------------------------------------
--        BEQ and LHI	

    elsif ((P3 (15 downto 12) = "0011")     --LHI
		      and 
           (P1 (15 downto 12) = "1100") ) then	


		if( (P3(11 downto 9) = P1(11 downto 9)) or (P3(11 downto 9) = P1(8 downto 6))) then --second immed.
			 control_store1(5 downto 3) <= "110";	--(P5_47-32--- alu_out)         --(RA OF LHI==RA/RB OF BEQ)

		else 
			 control_store1(5 downto 3) <= "000";   --(P3 32-47)
      	end if;
-----------------------------------------------------------------------------------------------------------------------------------------------
--        JLR AND LHI

--    
------------------------------------------------------------------------------------------------------------------------------------------------
--I1 is ADI
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
--  Al and ADI
	
	elsif ((P3 (15 downto 12) = "0001")  
			and 
           ((P1 (15 downto 12) = "0000") or (P1 (15 downto 12) = "0010"))) then	--add/nand

		if( (P3(8 downto 6) = P1(8 downto 6)) or (P3(8 downto 6) = P1(11 downto 9))) then --second immed.
			 control_store1(5 downto 3) <= "111";	--(P5_47-32--- alu_out)    --( RB OF ADI ==RA/RB OF AL)
		else 
			 control_store1(5 downto 3) <= "000";    --(P3 32-47)
      	end if;
-----------------------------------------------------------------------------------------------------------------------------------------------
-- ADI AND ADI

	elsif (P3 (15 downto 12) = "0001")         --adi
			and 
           (P1 (15 downto 12) = "0001") then	--adi


		if (P3(8 downto 6) = P1(11 downto 9))  then --second immed.
			 control_store1(5 downto 3) <= "111";	--(P5 -- ALU_out)	  -- (RB of ADI == RA of ADI)
  		
		else 
			 control_store1(5 downto 3) <= "000";   --(P3 32-47)

		end if;
-----------------------------------------------------------------------------------------------------------------------------------------------
-- LW AND ADI
	
	elsif (P3 (15 downto 12) = "0001")         --ADI
			and 
           (P1 (15 downto 12) = "0100") then	--lw


		if (P3(8 downto 6) = P1(8 downto 6))  then --second immed.
			 control_store1(5 downto 3) <= "111";	--(P5 -- ALU_out)	  -- (RB of ADI == RB of LW)

		else 
			 control_store1(5 downto 3) <= "001";   --(P3 48-63)		

		end if;
------------------------------------------------------------------------------------------------------------------------------------------------


--         SW(a) and ADI (RA is matched)

	 elsif ((P3 (15 downto 12) = "0001") ) 
							and 
           (P1 (15 downto 12) = "0101") then	                                             
       ----------------^ [(I1 -> P2 and is AL) and (I2 ->P1 and is SW(a)) -------FI------------------------------------------------

		if (P3(8 downto 6) = P1(11 downto 9)) then              --reg matched (RA)

      
			Mem_d_sel <= '1';          ---Mem_d_in is from P5_ Mem_d_out
			put_stall_out <= '0';
			p4_c1_in_cs_f <= "00000";    -- enable  P3flush
			p1_write <= '1';
			p2_write <= '1';
			p3_write <= '1'; 
			t1 <= '0';

              end if;


-----------------------------------------------------------------------------------------------------------------------------------------------
--SW(B) AND ADI

	elsif (P3 (15 downto 12) = "0001")         --ADI
			and 
           (P1 (15 downto 12) = "0101") then	--SW


		if (P3(8 downto 6) = P1(8 downto 6))  then --second immed.
			 control_store1(5 downto 3) <= "111";	--(P5 -- ALU_out)	  -- (RB of ADI == RB of SW)

		else 
			 control_store1(5 downto 3) <= "001";   --(P3 48-63)

		end if;
-----------------------------------------------------------------------------------------------------------------------------------------------
--        BEQ and ADI

    	elsif ((P3 (15 downto 12) = "0001")     --ADI
		      and 
           (P1 (15 downto 12) = "1100") ) then	  --BEQ

		if( (P3(8 downto 6) = P1(11 downto 9)) or (P3(8 downto 6) = P1(8 downto 6))) then --second immed.
			 control_store1(5 downto 3) <= "111";	--(P5_47-32--- alu_out)         --(RB OF ADI==RA/RB OF BEQ)

		else 
			 control_store1(5 downto 3) <= "000";   --(P3 32-47)
      		end if;

	end if;
------------------------------------------------------------------------------------------------------------------------------------------------






------state S2------------------alu_b_mux------------------------------------------------------------------------------
	if ((P1 (15 downto 12) = "0000") or (P1 (15 downto 12) = "0010") or (P1 (15 downto 12) = "1100"))  then	--add/nand/beq
		control_store1(7 downto 6) <= "00";     --(P3_63-48)
	
	elsif ((P1 (15 downto 12) = "0001") or (P1 (15 downto 12) = "0100") or (P1 (15 downto 12) = "0101")) then 	--adi/lw/sw
		control_store1(7 downto 6) <= "01";     --(SE6_out)

	elsif ((P1 (15 downto 12) = "0110") or (P1 (15 downto 12) = "0111")) then --lm/sm 
		control_store1(7 downto 6) <= "10";     --(k)
		control_store1(5 downto 3) <= "000";
    end if;

------state S2-----------------------C_en-----------------------------------------------------------------------
	if ((P1 (15 downto 12) = "0000") or (P1 (15 downto 12) = "0001"))  then	--add/nand/adi
		control_store1(8) <= '1';             ---8?
	else
		control_store1(8) <= '0';	       ---8?
    end if;

------state S2-----------------------Z_en-----------------------------------------------------------------------
	if ((P1 (15 downto 12) = "0000") or (P1 (15 downto 12) = "0010") or (P1 (15 downto 12) = "0001"))  then	--add/nand/adi
		control_store1(9) <= '1';             --9???

--	elsif (	P4 (15 downto 12) = "0100")) then       --lw		(write in MEM stage)
--		control_store1(9) <= "1"; 
	else
		control_store1(9) <= '0';		
    end if;

------state S4-----------------------beq_mux---------------------------------------------------------------------
--	if ((P3 (15 downto 12) = "1100") and (alu_z = "1")) then      --taken branch
--		beq_mux <= "1";	--(pc+imm.)
--	else
--		beq_mux <= "0";	--not taken(k=3)				--write in EX stage
--	end if;

------state S1------------------------alu_op--------------------------------------------------------------------
	if ((P1( 15 downto 12) = "0000") or (P1( 15 downto 12) = "0001") or (P1( 15 downto 12) = "0100") or
	    (P1( 15 downto 12) = "0101")) then 			--add/adi/lw/sw 
		control_store1(11 downto 10) <= "00";	--add

	elsif ((P1( 15 downto 12) = "1100")) then			--beq
		control_store1(11 downto 10) <= "10";	--subtract
	
	elsif ((P1( 15 downto 12) = "0010")) then			--nand
		control_store1(11 downto 10) <= "01";	--nand

    end if;
------state S1------------------------a3_mux--------------------------------------------------------------------	
	if ((P1( 15 downto 12) = "0000") or (P1( 15 downto 12) = "0010") ) then   	--add/nand
		control_store1(13 downto 12) <= "00";	--(P5_5-3)
	
	elsif ((P1( 15 downto 12) = "0001")) then	--adi
		control_store1(13 downto 12) <= "01";	--(P5_8-6)

	elsif ((P1( 15 downto 12) = "0011") or (P1( 15 downto 12) = "0100") or (P1( 15 downto 12) = "1000") or 
	       (P1( 15 downto 12) = "1001")) then	   --lhi/lw/jal/jar
		control_store1(13 downto 12) <= "10";	--(P5_11-9)
	elsif ((P1( 15 downto 12) = "0110") or (P1( 15 downto 12) = "0111")) then		--lm/sm
		control_store1(13 downto 12) <= "11";

    end if;
-----state S1-------------------------d3_mux--------------------------------------------------------------------
	if ((P1( 15 downto 12) = "0000") or (P1( 15 downto 12) = "0010") or (P1( 15 downto 12) = "0001")) then   	--add/nand/adi
		control_store1(15 downto 14) <= "00";	--(P5_47-32)

	elsif ((P1( 15 downto 12) = "0011")) then	--lhi
		control_store1(15 downto 14) <= "01";	--(P5_63-48)

	elsif ((P1( 15 downto 12) = "0100") or (P1( 15 downto 12) = "0110")) then	--lw/lm
		control_store1(15 downto 14) <= "10";	--(P5_79-64) 
	
	elsif ((P1( 15 downto 12) = "1000") or (P1( 15 downto 12) = "1001"))	 then    --jal/jlr
		control_store1(15 downto 14) <= "11";	--(P5_31-16)
	end if;

------------------------------------mem_wr-----------------------------------------------------------------------

    if ((P1(15 downto 12) = "0101") or ((P1(15 downto 12) = "0111" ) and (count_cmd = 1)))then       ----add sm also
		control_store2(1) <= '1';
        elsif (reset = '0' and (P1(15 downto 12) = "0111" )) then    
		control_store2(1) <= '0';
		count_cmd <= count_cmd1 + 1;
		count_cmd1 <= count_cmd;
	else
		control_store2(1) <= '0';		
		count_cmd <= 0;
		count_cmd1 <= 0; 
	end if;

------------------------------------mem_rd-----------------------------------------------------------------------
      
	if ((P1(15 downto 12) = "0100") or (P1(15 downto 12) = "0110" ))then	----add lm also
		control_store2(2) <= '1';
    else    
		control_store2(2) <= '0';
	end if;

------------------------------------FLUSH(BEQ n JUMP)-----------------------------------------------------------
--datapath mei hai

-----------------------------------------STALL-------------------------------------------------------------------

end process;


control_store11 <= control_store1;
control_store22 <= control_store2;
stall_check <= check;

SM1: SM
port map (clk => clk, reset_c => reset, IR => P1_in(15 downto 0), reg =>reg_SM, stall_bit => check, k => count_SM, IR1 => P1(15 downto 0));

rst_c1: process(clk)
begin
	if(check = '1' or reset = '1') then
		reset_count <= '1';
	elsif(check = '0') then
		reset_count <= '0';
	end if;
end process rst_c1;


end struct;

