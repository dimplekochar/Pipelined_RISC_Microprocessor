library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;      
use ieee.numeric_std.all;
--------------------------------------------
entity datapath is
	port
	( clk, reset, clock_50 : in std_logic

	);
end entity;
---------------------------------------------
architecture struct of datapath is

signal p1_c_out, jump_add, beq_add, p2_c1_in, p2_c2_in, rf_d3_i, p3_d1_in, p3_d2_in, p3_c1_out, p4_c2_out, p3_c2_out, p5_c1_in, p5_c2_in, 		p5_c2_out,P5_memD, p4_alu_in, p2_c1_out, p2_c2_out, P2_SM_C, p2_dum, SM_D2 : std_logic_vector(15 downto 0);
signal p4_c1_in,p4_c1_out,p4_c2_in,P4_C1,P4_C2,beq_pc,  p3_c1_in, p3_c2_in, p3_c3_in, p3_c3_out, one_zero : std_logic_vector(15 downto 0);
signal p4_7s_in, P5_C1,P5_memDout_in, P5_PC, P5_IR, P5_ALU, P5_7S, P4_PC, P4_IR : std_logic_vector(15 downto 0);
signal dummy, SM_count : std_logic_vector(15 downto 0);
signal P1_IR, P1_PC, p1_p_out, p1_ir_out, P2_PC, P2_IR, P3_PC, P3_IR, P3_D1,P3_D2, P4_ALU, P4_7S, P4_D1 : std_logic_vector(15 downto 0);
signal rf_a3_i, SM_reg, LM_Reg, p3_c1_in_stall, alu_a_sel_sig : std_logic_vector(2 downto 0);
signal lm_stop, sm_stop, p1_wr, p2_wr, p3_wr,p4_wr,p1_wr_sig, p2_wr_sig, p3_wr_sig,p11_wr, p22_wr, p33_wr : std_logic; 
signal carry, zero, alu_z, beq_mux, put_stall_sig, if_stall,P1_f,P2_f,P3_f,P4_f,P5_f,change_alu_amux: std_logic;
signal P1_flush, P2_flush, P3_flush, P4_flush,P5_flush, J_flush, beq_flush ,J_f_dummy , beq_f_dummy : std_logic;
signal count_cmd, count_cmd1, count_cmd2, count_cmd3 :integer range 0 to 127;

----------------------------------------------
	component InstFetch is   
	  port( clk, reset : in std_logic;
		mux_sel : in std_logic_vector(1 downto 0);          -- from P3 or P4
		mux_d1, mux_d2, one_or_zero : in std_logic_vector(15 downto 0);  -- from P3, P4
		inst_mem_out, current_pc : out std_logic_vector(15 downto 0)       -- to P1
	);
	  end component;
	-----------------------------------------------------------------------------------------
	component ControlStore is
	  port(clk, reset : in std_logic;
		P1,P2,P3,P4,P1_in	,P5	: in std_logic_vector(15 downto 0);
		control_store11, control_store22, count_SM : out std_logic_vector(15 downto 0);
		p3_c1_in_cs : out std_logic_vector(2 downto 0);
		p4_c1_in_cs_f: out std_logic_vector(4 downto 0);	
       		stall_check, put_stall_out, p1_write, p2_write, p3_write, p4_write,Mem_d_sel, load_h_alu_a: out std_logic;
		reg_SM : out std_logic_vector(2 downto 0)
	--	beq_mux		: out std_logic_vector;		--port map to P4 mei 85th bit (check acc to P4a, P4b) :p
		);
	end component;
	------------------------------------------------------------------------------------------
	component RegisterRead is   
	  port( clk, reset, mux_sel, write1,c,z: in std_logic;
		rf_a1_in, rf_a2_in, rf_a3_in : in std_logic_vector(2 downto 0);
		rf_d3_in, pc_in : in std_logic_vector(15 downto 0);
		imm : in std_logic_vector(8 downto 0);
		Reg_sm : in std_logic_vector(2 downto 0);
		ir_op : in std_logic_vector(3 downto 0);
		rf_d1_out, rf_d2_out, jump : out std_logic_vector(15 downto 0)

	);
	end component;
	--------------------------------------------------------------------------------------------
	component Execution is   
	  port( reset, c_en, z_en, clk : in std_logic;
		pc_out, p3_d1, p3_d2, p4_alu, p4_7s, p5_memd_out, p3_ir_o, count_SM,P3,P3_in, p5_alu : in std_logic_vector(15 downto 0);  --value of k in final datapath
		s7_in : in std_logic_vector(8 downto 0);
		imm_beq, imm : in std_logic_vector(5 downto 0);
		alu_a_sel : in std_logic_vector(2 downto 0);
		alu_b_sel, alu_op : in std_logic_vector(1 downto 0);
		c, z , beq_sel, stall_check: out std_logic;
		reg_lm : out std_logic_vector(2 downto 0);   --reg_lm goes to P4
		beq_out, alu_out, s7_out : out std_logic_vector(15 downto 0)	
	);
	end component;
	-----------------------------------------------------------------------------------------
	component MemAccess is   
	  port( clk, reset, wr,rd, mem_sel: in std_logic;
		mem_a, mem_d_in, memd_out_p5, SM_d : in std_logic_vector(15 downto 0);
		ir_op : in std_logic_vector(3 downto 0);
		mem_d_out : out std_logic_vector(15 downto 0)   

	);
	end component;
	-----------------------------------------------------------------------------------------
	component WriteBack is   
	   port( reset, clk: in std_logic;
		a3_mux_sel, d3_mux_sel : in std_logic_vector(1 downto 0);
		IR3_5, IR6_8, IR9_11 : in std_logic_vector(2 downto 0);
		ir_opcode : in std_logic_vector(3 downto 0);
		P_alu, P_7s, P_memd, P_pc, p5_c2 : in std_logic_vector(15 downto 0);
		a3_mux_out : out std_logic_vector(2 downto 0);
		d3_mux_out : out std_logic_vector(15 downto 0)

	);
	end component;
	--------------------------------------------------------------------------------------
	component P1Reg is   
	  port( 
		reset, p_wr, p_flush, clk : in std_logic;
		p_in, ir_in,c_in: in std_logic_vector(15 downto 0);  
		p_out, ir_out,c_out : out std_logic_vector(15 downto 0)
	);
	end component;
	-------------------------------------------------------------------------
	component P2aReg is   
	  port( 
		reset, p_wr, p_flush, clk : in std_logic;
		p_in, ir_in, c1_in, c2_in: in std_logic_vector(15 downto 0);  
		p_out, ir_out, c1_out, c2_out : out std_logic_vector(15 downto 0)
	);
	end component;
	-------------------------------------------------------------------------
	component P2bReg is   
	  port( 
		reset, p_wr, p_flush, clk : in std_logic;
		c3_in: in std_logic_vector(15 downto 0);  
		c3_out: out std_logic_vector(15 downto 0)
	);
	end component;
	--------------------------------------------------------------------------
	component P3aReg is   
	  port( 
		reset, p_wr, p_flush, clk : in std_logic;
		p_in, ir_in, d1_in, d2_in: in std_logic_vector(15 downto 0);  
		p_out, ir_out, d1_out, d2_out : out std_logic_vector(15 downto 0)
	);
	end component;
	------------------------------------------------------------------------------
	component P3bReg is   
	  port( 
		reset, p_wr, p_flush, clk : in std_logic;
		c1_in, c2_in, c3_in: in std_logic_vector(15 downto 0);  
		c1_out,c2_out, c3_out: out std_logic_vector(15 downto 0)
	);
	end component;
	-----------------------------------------------------------------------------
	component P4aReg is   
	  port( 
		reset, p_wr, p_flush, clk : in std_logic;
		p_in, ir_in, alu_in, s7_in: in std_logic_vector(15 downto 0);  
		p_out, ir_out, alu_out, s7_out : out std_logic_vector(15 downto 0)
	);
	end component;
	-----------------------------------------------------------------------------
	component P4bReg is   
	  port( 
		reset, p_wr, p_flush, clk : in std_logic;
		d1_in, alu_new_in, c1_in, c2_in: in std_logic_vector(15 downto 0);  
		d1_out, alu_new_out, c1_out, c2_out : out std_logic_vector(15 downto 0)
	);
	end component;
	----------------------------------------------------------------------------------
	component P5bReg is   
	  port( 
		reset, p_wr, p_flush, clk : in std_logic;
		Memdout_in, c1_in, c2_in: in std_logic_vector(15 downto 0);  
		Memdout_out, c1_out, c2_out : out std_logic_vector(15 downto 0)
	);
	end component;
-----------------------------------------------------------------------------------
begin

--signal p1_c_out : std_logic_vector(15 downto 0)

iFetch: InstFetch
port map ( clk => clk, reset => reset, mux_sel => p2_c1_out(1 downto 0), mux_d1 => jump_add, mux_d2 => beq_add, 
	   inst_mem_out => P1_IR, current_pc => P1_PC, one_or_zero => one_zero);

--mux_sel <= P1
--mux_d1 <= jump output in RR stage
--mux_d2 <= beq output in EX stage
--inst_mem_out <= P1_in(15 downto 0)

------------------------------------------------------------------------------------------------------------------------
P1: P1Reg -- wr, flush
port map (reset => reset, p_wr =>p1_wr , p_flush =>P1_flush , clk => clk, p_in => P1_PC, ir_in => P1_IR, c_in => dummy,  
	  p_out => p1_p_out, ir_out => p1_ir_out, c_out => p1_c_out);

-----------------------------------------------------------------------------------------------------------------
controls: ControlStore
port map(  clk => clk, reset => reset, P1 => p1_ir_out, P2 => P2_IR, P3	=> P3_IR, P4 => P4_IR,P5 => P5_IR, P1_in => P1_IR,
	control_store11 => p2_c1_in , control_store22 => p2_dum, reg_SM => SM_reg, count_SM => SM_count,load_h_alu_a => change_alu_amux,
p3_c1_in_cs => p3_c1_in_stall, p4_c1_in_cs_f => p4_c1_in(15 downto 11), stall_check => sm_stop,put_stall_out => put_stall_sig, p1_write =>p1_wr_sig, p2_write => p2_wr_sig, p3_write => p3_wr_sig, p4_write => p4_wr);
	
------------------------------------------------------------------------------------------------------------------------
p2_c2_in(15 downto 13) <= SM_reg;
p2_c2_in(12 downto 0) <= p2_dum(12 downto 0);
------------------------------------
P2a: P2aReg --wr, flush, c1, c2
port map (reset => reset, p_wr =>p2_wr , p_flush => P2_flush, clk => clk, p_in => p1_p_out, ir_in => p1_ir_out, c1_in => p2_c1_in, 
	c2_in => p2_c2_in , p_out => P2_PC, ir_out => P2_IR, c1_out => p2_c1_out, c2_out => p2_c2_out);	
--p_flush =>(P2_f or P_f)
------------------------------------------------------------------------------------------------------------------------
P2b: P2bReg
port map(reset => reset, p_wr => p2_wr, p_flush => P2_flush, clk => clk, c3_in => SM_count, c3_out => P2_SM_C);

------------------------------------------------------------------------------------------------------------------------
RR: RegisterRead -- write1 signal for RF left
port map (clk => clk, reset => reset, mux_sel => p2_c1_out(2), write1 => P5_C1(4), rf_a1_in => P2_IR(11 downto 9),
	 rf_a2_in => P2_IR(8 downto 6),  rf_a3_in => rf_a3_i, rf_d3_in => rf_d3_i, pc_in => P2_PC, imm => P2_IR(8 downto 0), 
	 rf_d1_out => p3_d1_in, rf_d2_out => p3_d2_in, jump => jump_add,  c => carry, z => zero, Reg_sm => p2_c2_out(15 downto 13), 
		ir_op => P2_IR(15 downto 12));
--mux_sel <= P2
--rf_a1_in <= P2
--rf_a2_in <= P2
--rf_d1_out to P3
--rf_d2_out to p3
--write1 <= P5 
--rf_a3_in <= through mux from writeback 
--rf_d3_in <= through mux from writeback
--pc_in <= P2
--imm <= P2
--For JLR RegB value in rf_d2_out
--jump output goes to pc_mux in instr_fetch

-----------------------------------------------------------------------------------------------------------------------
P3a: P3aReg   -- wr, flush
port map (reset => reset, p_wr =>p3_wr , p_flush => P3_flush, clk => clk, p_in => P2_PC, ir_in => P2_IR, d1_in => p3_d1_in, 
	  d2_in => p3_d2_in, p_out => P3_PC, ir_out => P3_IR, d1_out => P3_D1, d2_out => P3_D2);
-----------------------------------------------------------------------------------------------------------------------
P3b: P3bReg   --everything
port map (reset => reset, p_wr =>p3_wr, p_flush => P3_flush , clk => clk, c1_in => p3_c1_in , c2_in => p3_c2_in,   
	  c1_out => p3_c1_out, c2_out => p3_c2_out, c3_in => p3_c3_in, c3_out => p3_c3_out);
-------------------------------------------------------
p3_c3_in(15 downto 13) <= p2_c2_out(15 downto 13); 
p3_c2_in <= P2_SM_C;
p3_c1_in(12 downto 3) <= p2_c1_out(15 downto 6);
p3_c1_in(15 downto 14) <= p2_c2_out(2 downto 1); 
p3_c1_in(2 downto 0) <= p2_c1_out(5 downto 3);  --  mem_wr, mem_rd

ppp : process(clk)
begin
if change_alu_amux = '0' then
--p3_c1_out(2 downto 0) <= p3_c1_in_stall; 
alu_a_sel_sig <= p3_c1_out(2 downto 0);
else 
--p3_c1_out(2 downto 0) <= p2_c1_out(5 downto 3);	--generated in control store stage
alu_a_sel_sig <= p3_c1_in_stall;
end if;
end process ppp;
-----------------------------------------------------------------------------------------------------------------
exec: Execution  -- k for LM SM left
port map (reset => reset, clk => clk, c_en => p3_c1_out(5), z_en => p3_c1_out(6), pc_out => P3_PC, p3_d1 => P3_D1, p3_d2 => P3_D2, 
	  p4_alu => P4_ALU, p4_7s => P4_7S, p5_memd_out => P5_memD, s7_in => P3_IR(8 downto 0),beq_sel => alu_z, imm_beq => P3_IR(5 downto 0), 
	  imm => P3_IR(5 downto 0), alu_a_sel => alu_a_sel_sig, alu_b_sel => p3_c1_out(4 downto 3), alu_op => p3_c1_out(8 downto 7),
	  c => carry, z => zero, beq_out => beq_add, alu_out => p4_alu_in, s7_out => p4_7s_in, p3_ir_o => P3_IR, reg_lm => LM_Reg, 
	   stall_check => lm_stop, count_SM => p3_c2_out, P3_in => P2_IR, P3 => P3_IR, p5_alu => P5_ALU);

--beq_out goes to P4
--imm from p3
--s7_in from p3
--s7_out to p4
--pc_out from p3
--imm_beq from p3
-----------------------------------------------------------------------------------------------------------------------
P4a: P4aReg   --wr, flush
port map (reset => reset, p_wr => p4_wr , p_flush =>P4_flush , clk => clk, p_in => P3_PC, ir_in => P3_IR, alu_in => p4_alu_in, 
	  s7_in => p4_7s_in, p_out => P4_PC, ir_out => P4_IR, alu_out => P4_ALU, s7_out => P4_7S);
-----------------------------------------------------------------------------------------------------------------------
P4b: P4bReg   --everything
port map (reset => reset, p_wr =>p4_wr , p_flush =>P4_flush , clk => clk, d1_in => P3_D1, alu_new_in =>beq_add , c1_in => p4_c1_in, 
	  c2_in => p4_c2_in , d1_out => P4_D1, alu_new_out => beq_pc, c1_out =>p4_c1_out , c2_out =>P4_C2);

p4_c2_in(15 downto 13) <= p3_c3_out(15 downto 13);
p4_c2_in(12 downto 10) <= LM_Reg;
p4_c1_in(3 downto 0) <= p3_c1_out(12 downto 9);   -- a3, d3 mux
p4_c1_in(4) <= beq_mux ;		--beq_sel
p4_c1_in(5) <= p4_c1_in(4)  ;     -- P2 flush
p4_c1_in(6) <= p4_c1_in(4)  ;     -- P3 flush
p4_c1_in(9 downto 7) <= p3_c1_out(15 downto 13);   -- rf_wr, mem_wr, mem_rd

--- FINAL flush ( hazard bit OR jump/beq flush bit)
P1_flush <= p4_c1_out(11) or P1_f;
P2_flush <= p4_c1_out(12) or P2_f;
P3_flush <= p4_c1_out(13) or P3_f;
P4_flush <= p4_c1_out(14) or P4_f;
P5_flush <= p4_c1_out(15) or P5_f;
-------------------------------------------------------------------------------------------------------------------
P4c : P2bReg
port map (reset => reset, p_wr => '1', p_flush => P4_flush, clk => clk, c3_in => P3_D2, c3_out => SM_D2);
--------------------------------------------------------------------------------------------------------------------
mAcc: MemAccess --wr signal left
port map (clk => clk, reset => reset, wr => p4_c1_out(8), rd =>p4_c1_out(9) ,mem_sel => p4_c1_in(10), mem_a => P4_ALU, mem_d_in => P4_D1, 		  memd_out_p5 => P5_memD  ,mem_d_out => P5_memDout_in, SM_d => SM_D2, ir_op => P4_IR(15 downto 12));
--mem_a <= P4yy
--mem_d_in <= P4
--mem_d_out => goes to P5
--wr <= P4

----------------------------------------------------------------------------------------------------------------------
P5a: P4aReg   
port map (reset => reset, p_wr =>'1' , p_flush =>P5_flush , clk => clk, p_in => P4_PC, ir_in => P4_IR, alu_in =>P4_ALU , s7_in =>P4_7S ,  
	  p_out => P5_PC, ir_out => P5_IR, alu_out => P5_ALU, s7_out => P5_7S);
------------------------------------------------------------------------------------------------------------------------
P5b: P5bReg  
port map (reset => reset , p_wr =>'1' , p_flush =>P5_flush , clk => clk, Memdout_in => P5_memDout_in, c1_in => p5_c1_in,  
	  Memdout_out => P5_memD, c1_out => P5_C1, c2_in => p5_c2_in, c2_out => p5_c2_out);

p5_c2_in(15 downto 13) <= P4_C2(15 downto 13);
p5_c2_in(12 downto 10) <= P4_C2(12 downto 10);

p5_c1_in(3 downto 0) <= p4_c1_out(3 downto 0);
--p5_c1_in(4) <= p4_c1_out(7);
--------------------------------------------------------------------------------------------------------------------

WB: WriteBack
port map (clk => clk, reset => reset, a3_mux_sel => P5_C1(1 downto 0), d3_mux_sel => P5_C1(3 downto 2), IR3_5 => P5_IR(5 downto 3), 
	  IR6_8 => P5_IR(8 downto 6), IR9_11 => P5_IR(11 downto 9), P_alu => P5_ALU, P_7s => P5_7S, P_memd => P5_memD, P_pc => P5_PC, 		  a3_mux_out => rf_a3_i, d3_mux_out => rf_d3_i, p5_c2 => p5_c2_out, ir_opcode => P5_IR(15 downto 12));
--a3_mux_sel <= P5
--d3_mux_sel <= P5
--a3_mux_out <= goes to RR
--a3_mux_out <= goes to RR
-- IR and P all from P5


--************
------------------------------------------------BEQ_FLUSH CONDITION-------------------------------------------------------------
beqproc: process(clk, reset)
begin
if ( rising_edge(clk) and (P3_IR(15 downto 12) = "1100") and (p4_c1_in(4)  = '1') ) then
		beq_f_dummy <= '1';
elsif  rising_edge(clk) then
	   	beq_f_dummy <= '0';
		end if;

--flush P3, P2, P1 in next cycle 
------------------------------------------------JUMP_FLUSH CONDITION----------------------
	if ( rising_edge(clk) and ((P4_IR( 15 downto 12) = "1000") or (P4_IR( 15 downto 12) = "1001"))) then	--jump
		J_f_dummy <= '1';
		
	elsif rising_edge(clk) then 
		J_f_dummy <= '0';
		end if;
--flush P4 and P3 in next cycle
end process;
---------------------------------------------------------------------------
beq_flush <= beq_f_dummy;
J_flush <= J_f_dummy;

P1_f <= beq_flush ;
P2_f <= beq_flush ;
P3_f <= beq_flush or J_flush;
P4_f <=  J_flush;
P5_f <= '0';
--************
---------------------------rf_wr---------------------------------------------

pproc5: process(p4_c1_out(7), count_cmd3)
begin
if (count_cmd = 4) then
	p5_c1_in(4) <= '1';

elsif (count_cmd = 3) then
	p5_c1_in(4) <= '0';

elsif (count_cmd = 2) then
	p5_c1_in(4) <= '0';

elsif (count_cmd = 1) then
	p5_c1_in(4) <= '0';

else
	p5_c1_in(4) <=  p4_c1_out(7);
end if;
end process;
	 

rfproc : process(clk, reset)
begin
  -- if P2_IR = "0000000000000000" then
--	p3_c1_in(13) <= '0';									-----map control_store1 to c1_out of P3
 --  elsif
	
	if (reset = '1' or (count_cmd2 = 4 and P4_IR /= "0110")) then
		count_cmd1 <= 0;
		count_cmd <= 0;
		count_cmd2 <=0;
	elsif ((P2_IR(15 downto 12) = "0110")) then
			count_cmd <= count_cmd1 + 1;
			count_cmd2 <= count_cmd1 + 1;
			count_cmd3 <= count_cmd1 + 1;
			count_cmd1 <= count_cmd;
			p3_c1_in(13) <= '0';
	elsif (count_cmd = 1) then
		count_cmd <= count_cmd1 + 1;
		count_cmd2 <= count_cmd1 + 1;
		count_cmd3 <= count_cmd1 + 1;
		count_cmd1 <= count_cmd;
	elsif (count_cmd = 2) then
		count_cmd <= count_cmd1 + 1;
		count_cmd2 <= count_cmd1 + 1;
		count_cmd3 <= count_cmd1 + 1;
		count_cmd1 <= count_cmd;
	elsif (count_cmd = 3) then
		count_cmd <= count_cmd1 + 1;
		count_cmd2 <= count_cmd1 + 1;
		count_cmd3 <= count_cmd1 + 1;
		count_cmd1 <= count_cmd;

	 elsif P2_IR = "0000000000000000" then
		p3_c1_in(13) <= '0';									

	elsif (( (P2_IR(15 downto 12) = "0000") or (P2_IR(15 downto 12) = "0010")) and (carry ='1') and (P2_IR(2 downto 0) = "010")) then       	     	             p3_c1_in(13) <= '1';          ---- rf_wr
      
	elsif (( (P2_IR(15 downto 12) = "0000") or (P2_IR(15 downto 12) = "0010")) and (zero ='1') and (P2_IR(2 downto 0) = "001")) then 
		p3_c1_in(13) <= '1';

	elsif (( (P2_IR(15 downto 12) = "0000") or (P2_IR(15 downto 12) = "0010")) and (carry ='0') and (P2_IR(2 downto 0) = "010")) then   
		p3_c1_in(13) <= '0';		---disabled rf_wr

	elsif (( (P2_IR(15 downto 12) = "0000") or (P2_IR(15 downto 12) = "0010")) and (zero ='0') and (P2_IR(2 downto 0) = "001")) then   
		p3_c1_in(13) <= '0'; 		---disabled rf_wr
	elsif ( ((P2_IR(15 downto 12) = "0000") or (P2_IR(15 downto 12) = "0010"))  and  (P2_IR(2 downto 0) = "000")) then
		p3_c1_in(13) <= '1';

	elsif( (P2_IR(15 downto 12) = "0001") or (P2_IR(15 downto 12) = "0011") or (P2_IR(15 downto 12) = "0100")
	   or (P2_IR(15 downto 12) = "1000") or (P2_IR(15 downto 12) = "1001")  or (P2_IR(15 downto 12) = "0010") )then
	   	p3_c1_in(13)  <= '1';
	else 
		p3_c1_in(13) <= '0';
     end if;
--end if;	
	

--------------state S4-----------------------beq_mux---------------------------------------------------------------------
	if ((P3_IR (15 downto 12) = "1100") and (alu_z = '1')) then      --taken branch
		beq_mux <= '1';	--(pc+imm.)
	else
		beq_mux <= '0';	--not taken(k=3)				--write in EX stage
	end if;

------------------------------------------------------------------
--                STALLS FOR LM AND SM
------------------------------------------------------------------
  	
	if	(( (((P1_IR(15 downto 12) = "0111")  or   ((p1_ir_out(15 downto 12) = "0111")   and ((sm_stop='0')))) or put_stall_sig = '1') and reset = '0') and rising_edge(clk))then --sm                         -- put_stall_sig is output out stall of control_store
		if_stall <= '1';  -- to check if stalling or not
		one_zero <= "0000000000000000";

	elsif   ((( ((P2_IR(15 downto 12) = "0110")  or   ((P3_IR(15 downto 12) = "0110")   and ((lm_stop='0')))) or put_stall_sig = '1') and reset = '0') and rising_edge(clk))then    --lm
		if_stall <= '1'; 		 -- pc'= pc+0
		one_zero <= "0000000000000000";
	elsif (rising_edge(clk)) then
		if_stall <= '0';
		one_zero <= "0000000000000001";
	end if;


	if ((P3_IR(15 downto 12) = "0110")   and ((lm_stop='0'))) then
		p11_wr <= '0';                              
	 	p22_wr <= '0';
		p33_wr <= '0';

	elsif ((p1_ir_out(15 downto 12) = "0111")   and ((sm_stop='0'))) then
		p11_wr <= '0';	
	else
		p11_wr <= '1';                              
	 	p22_wr <= '1';
		p33_wr <= '1';
	end if;
	end process;


p1_wr <= (p11_wr and p1_wr_sig);
p2_wr <= (p22_wr and p2_wr_sig);
p3_wr <= (p33_wr and p3_wr_sig);
----------------disable when zero utput from lm wala mux   

	


end struct;




















