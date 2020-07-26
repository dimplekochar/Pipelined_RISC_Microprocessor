-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"

-- DATE "11/25/2018 20:01:56"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	RegisterRead IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	mux_sel : IN std_logic;
	write1 : IN std_logic;
	rf_a1_in : IN std_logic_vector(2 DOWNTO 0);
	rf_a2_in : IN std_logic_vector(2 DOWNTO 0);
	rf_a3_in : IN std_logic_vector(2 DOWNTO 0);
	rf_d3_in : IN std_logic_vector(15 DOWNTO 0);
	pc_in : IN std_logic_vector(15 DOWNTO 0);
	imm : IN std_logic_vector(8 DOWNTO 0);
	rf_d1_out : OUT std_logic_vector(15 DOWNTO 0);
	rf_d2_out : OUT std_logic_vector(15 DOWNTO 0);
	jump : OUT std_logic_vector(15 DOWNTO 0)
	);
END RegisterRead;

-- Design Ports Information


ARCHITECTURE structure OF RegisterRead IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_mux_sel : std_logic;
SIGNAL ww_write1 : std_logic;
SIGNAL ww_rf_a1_in : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_rf_a2_in : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_rf_a3_in : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_rf_d3_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_pc_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_imm : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_rf_d1_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_rf_d2_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_jump : std_logic_vector(15 DOWNTO 0);
SIGNAL \alu_jump|a1|z~45\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \write1~combout\ : std_logic;
SIGNAL \rf|Decoder0~7_combout\ : std_logic;
SIGNAL \rf|registers[3][0]~regout\ : std_logic;
SIGNAL \rf|Decoder0~6_combout\ : std_logic;
SIGNAL \rf|registers[0][0]~regout\ : std_logic;
SIGNAL \rf|Decoder0~5_combout\ : std_logic;
SIGNAL \rf|Mux15~2\ : std_logic;
SIGNAL \rf|Decoder0~4_combout\ : std_logic;
SIGNAL \rf|Mux15~3\ : std_logic;
SIGNAL \rf|Decoder0~1_combout\ : std_logic;
SIGNAL \rf|registers[6][0]~regout\ : std_logic;
SIGNAL \rf|Decoder0~2_combout\ : std_logic;
SIGNAL \rf|registers[4][0]~regout\ : std_logic;
SIGNAL \rf|Mux15~0\ : std_logic;
SIGNAL \rf|Decoder0~3_combout\ : std_logic;
SIGNAL \rf|registers[7][0]~regout\ : std_logic;
SIGNAL \rf|Decoder0~0_combout\ : std_logic;
SIGNAL \rf|Mux15~1\ : std_logic;
SIGNAL \rf|Mux15~4_combout\ : std_logic;
SIGNAL \rf|registers[4][1]~regout\ : std_logic;
SIGNAL \rf|Mux14~0\ : std_logic;
SIGNAL \rf|registers[7][1]~regout\ : std_logic;
SIGNAL \rf|Mux14~1\ : std_logic;
SIGNAL \rf|registers[3][1]~regout\ : std_logic;
SIGNAL \rf|registers[0][1]~regout\ : std_logic;
SIGNAL \rf|Mux14~2\ : std_logic;
SIGNAL \rf|Mux14~3\ : std_logic;
SIGNAL \rf|Mux14~4_combout\ : std_logic;
SIGNAL \rf|registers[3][2]~regout\ : std_logic;
SIGNAL \rf|registers[1][2]~regout\ : std_logic;
SIGNAL \rf|registers[0][2]~regout\ : std_logic;
SIGNAL \rf|Mux13~2\ : std_logic;
SIGNAL \rf|Mux13~3\ : std_logic;
SIGNAL \rf|registers[7][2]~regout\ : std_logic;
SIGNAL \rf|registers[6][2]~regout\ : std_logic;
SIGNAL \rf|registers[4][2]~regout\ : std_logic;
SIGNAL \rf|Mux13~0\ : std_logic;
SIGNAL \rf|Mux13~1\ : std_logic;
SIGNAL \rf|Mux13~4_combout\ : std_logic;
SIGNAL \rf|registers[1][3]~regout\ : std_logic;
SIGNAL \rf|registers[0][3]~regout\ : std_logic;
SIGNAL \rf|Mux12~2\ : std_logic;
SIGNAL \rf|registers[3][3]~regout\ : std_logic;
SIGNAL \rf|Mux12~3\ : std_logic;
SIGNAL \rf|registers[7][3]~regout\ : std_logic;
SIGNAL \rf|registers[4][3]~regout\ : std_logic;
SIGNAL \rf|registers[6][3]~regout\ : std_logic;
SIGNAL \rf|Mux12~0_combout\ : std_logic;
SIGNAL \rf|Mux12~1\ : std_logic;
SIGNAL \rf|Mux12~4_combout\ : std_logic;
SIGNAL \rf|registers[3][4]~regout\ : std_logic;
SIGNAL \rf|registers[1][4]~regout\ : std_logic;
SIGNAL \rf|registers[0][4]~regout\ : std_logic;
SIGNAL \rf|Mux11~2\ : std_logic;
SIGNAL \rf|Mux11~3\ : std_logic;
SIGNAL \rf|registers[7][4]~regout\ : std_logic;
SIGNAL \rf|registers[6][4]~regout\ : std_logic;
SIGNAL \rf|registers[4][4]~regout\ : std_logic;
SIGNAL \rf|Mux11~0\ : std_logic;
SIGNAL \rf|Mux11~1\ : std_logic;
SIGNAL \rf|Mux11~4_combout\ : std_logic;
SIGNAL \rf|registers[1][5]~regout\ : std_logic;
SIGNAL \rf|registers[0][5]~regout\ : std_logic;
SIGNAL \rf|Mux10~2\ : std_logic;
SIGNAL \rf|registers[3][5]~regout\ : std_logic;
SIGNAL \rf|Mux10~3\ : std_logic;
SIGNAL \rf|registers[4][5]~regout\ : std_logic;
SIGNAL \rf|registers[6][5]~regout\ : std_logic;
SIGNAL \rf|Mux10~0_combout\ : std_logic;
SIGNAL \rf|registers[7][5]~regout\ : std_logic;
SIGNAL \rf|Mux10~1\ : std_logic;
SIGNAL \rf|Mux10~4_combout\ : std_logic;
SIGNAL \rf|registers[7][6]~regout\ : std_logic;
SIGNAL \rf|registers[6][6]~regout\ : std_logic;
SIGNAL \rf|registers[4][6]~regout\ : std_logic;
SIGNAL \rf|Mux9~0\ : std_logic;
SIGNAL \rf|Mux9~1\ : std_logic;
SIGNAL \rf|registers[3][6]~regout\ : std_logic;
SIGNAL \rf|registers[1][6]~regout\ : std_logic;
SIGNAL \rf|registers[0][6]~regout\ : std_logic;
SIGNAL \rf|Mux9~2\ : std_logic;
SIGNAL \rf|Mux9~3\ : std_logic;
SIGNAL \rf|Mux9~4_combout\ : std_logic;
SIGNAL \rf|registers[0][7]~regout\ : std_logic;
SIGNAL \rf|Mux8~2\ : std_logic;
SIGNAL \rf|registers[3][7]~regout\ : std_logic;
SIGNAL \rf|Mux8~3\ : std_logic;
SIGNAL \rf|registers[4][7]~regout\ : std_logic;
SIGNAL \rf|registers[6][7]~regout\ : std_logic;
SIGNAL \rf|Mux8~0_combout\ : std_logic;
SIGNAL \rf|registers[7][7]~regout\ : std_logic;
SIGNAL \rf|Mux8~1\ : std_logic;
SIGNAL \rf|Mux8~4_combout\ : std_logic;
SIGNAL \rf|registers[0][8]~regout\ : std_logic;
SIGNAL \rf|Mux7~2\ : std_logic;
SIGNAL \rf|registers[3][8]~regout\ : std_logic;
SIGNAL \rf|Mux7~3\ : std_logic;
SIGNAL \rf|registers[6][8]~regout\ : std_logic;
SIGNAL \rf|Mux7~0\ : std_logic;
SIGNAL \rf|registers[7][8]~regout\ : std_logic;
SIGNAL \rf|Mux7~1\ : std_logic;
SIGNAL \rf|Mux7~4_combout\ : std_logic;
SIGNAL \rf|registers[1][9]~regout\ : std_logic;
SIGNAL \rf|registers[0][9]~regout\ : std_logic;
SIGNAL \rf|Mux6~2\ : std_logic;
SIGNAL \rf|registers[3][9]~regout\ : std_logic;
SIGNAL \rf|Mux6~3\ : std_logic;
SIGNAL \rf|registers[6][9]~regout\ : std_logic;
SIGNAL \rf|Mux6~0\ : std_logic;
SIGNAL \rf|registers[7][9]~regout\ : std_logic;
SIGNAL \rf|Mux6~1\ : std_logic;
SIGNAL \rf|Mux6~4_combout\ : std_logic;
SIGNAL \rf|registers[7][10]~regout\ : std_logic;
SIGNAL \rf|registers[6][10]~regout\ : std_logic;
SIGNAL \rf|Mux5~0\ : std_logic;
SIGNAL \rf|Mux5~1\ : std_logic;
SIGNAL \rf|registers[1][10]~regout\ : std_logic;
SIGNAL \rf|registers[0][10]~regout\ : std_logic;
SIGNAL \rf|Mux5~2\ : std_logic;
SIGNAL \rf|registers[3][10]~regout\ : std_logic;
SIGNAL \rf|Mux5~3\ : std_logic;
SIGNAL \rf|Mux5~4_combout\ : std_logic;
SIGNAL \rf|registers[3][11]~regout\ : std_logic;
SIGNAL \rf|registers[1][11]~regout\ : std_logic;
SIGNAL \rf|registers[0][11]~regout\ : std_logic;
SIGNAL \rf|Mux4~2\ : std_logic;
SIGNAL \rf|Mux4~3\ : std_logic;
SIGNAL \rf|registers[6][11]~regout\ : std_logic;
SIGNAL \rf|registers[4][11]~regout\ : std_logic;
SIGNAL \rf|Mux4~0\ : std_logic;
SIGNAL \rf|registers[7][11]~regout\ : std_logic;
SIGNAL \rf|Mux4~1\ : std_logic;
SIGNAL \rf|Mux4~4_combout\ : std_logic;
SIGNAL \rf|registers[6][12]~regout\ : std_logic;
SIGNAL \rf|registers[4][12]~regout\ : std_logic;
SIGNAL \rf|Mux3~0\ : std_logic;
SIGNAL \rf|registers[5][12]~regout\ : std_logic;
SIGNAL \rf|Mux19~0\ : std_logic;
SIGNAL \rf|registers[7][12]~regout\ : std_logic;
SIGNAL \rf|Mux3~1\ : std_logic;
SIGNAL \rf|registers[3][12]~regout\ : std_logic;
SIGNAL \rf|registers[1][12]~regout\ : std_logic;
SIGNAL \rf|registers[0][12]~regout\ : std_logic;
SIGNAL \rf|Mux3~2\ : std_logic;
SIGNAL \rf|Mux3~3\ : std_logic;
SIGNAL \rf|Mux3~4_combout\ : std_logic;
SIGNAL \rf|registers[6][13]~regout\ : std_logic;
SIGNAL \rf|registers[4][13]~regout\ : std_logic;
SIGNAL \rf|Mux2~0_combout\ : std_logic;
SIGNAL \rf|registers[7][13]~regout\ : std_logic;
SIGNAL \rf|Mux2~1\ : std_logic;
SIGNAL \rf|registers[3][13]~regout\ : std_logic;
SIGNAL \rf|registers[1][13]~regout\ : std_logic;
SIGNAL \rf|registers[0][13]~regout\ : std_logic;
SIGNAL \rf|Mux2~2\ : std_logic;
SIGNAL \rf|Mux2~3\ : std_logic;
SIGNAL \rf|Mux2~4_combout\ : std_logic;
SIGNAL \rf|registers[4][14]~regout\ : std_logic;
SIGNAL \rf|Mux1~0\ : std_logic;
SIGNAL \rf|registers[5][14]~regout\ : std_logic;
SIGNAL \rf|registers[6][14]~regout\ : std_logic;
SIGNAL \rf|Mux17~0_combout\ : std_logic;
SIGNAL \rf|registers[7][14]~regout\ : std_logic;
SIGNAL \rf|Mux1~1\ : std_logic;
SIGNAL \rf|registers[0][14]~regout\ : std_logic;
SIGNAL \rf|registers[1][14]~regout\ : std_logic;
SIGNAL \rf|Mux17~2\ : std_logic;
SIGNAL \rf|Mux1~2\ : std_logic;
SIGNAL \rf|registers[2][14]~regout\ : std_logic;
SIGNAL \rf|registers[3][14]~regout\ : std_logic;
SIGNAL \rf|Mux1~3\ : std_logic;
SIGNAL \rf|Mux1~4_combout\ : std_logic;
SIGNAL \rf|registers[7][15]~regout\ : std_logic;
SIGNAL \rf|registers[4][15]~regout\ : std_logic;
SIGNAL \rf|registers[6][15]~regout\ : std_logic;
SIGNAL \rf|Mux0~0_combout\ : std_logic;
SIGNAL \rf|Mux0~1\ : std_logic;
SIGNAL \rf|registers[1][15]~regout\ : std_logic;
SIGNAL \rf|registers[0][15]~regout\ : std_logic;
SIGNAL \rf|Mux0~2\ : std_logic;
SIGNAL \rf|registers[3][15]~regout\ : std_logic;
SIGNAL \rf|Mux0~3\ : std_logic;
SIGNAL \rf|Mux0~4_combout\ : std_logic;
SIGNAL \rf|registers[2][0]~regout\ : std_logic;
SIGNAL \rf|registers[1][0]~regout\ : std_logic;
SIGNAL \rf|Mux31~2_combout\ : std_logic;
SIGNAL \rf|Mux31~3_combout\ : std_logic;
SIGNAL \rf|Mux31~0\ : std_logic;
SIGNAL \rf|registers[5][0]~regout\ : std_logic;
SIGNAL \rf|Mux31~1_combout\ : std_logic;
SIGNAL \rf|Mux31~4_combout\ : std_logic;
SIGNAL \rf|registers[2][1]~regout\ : std_logic;
SIGNAL \rf|registers[1][1]~regout\ : std_logic;
SIGNAL \rf|Mux30~2_combout\ : std_logic;
SIGNAL \rf|Mux30~3_combout\ : std_logic;
SIGNAL \rf|registers[5][1]~regout\ : std_logic;
SIGNAL \rf|registers[6][1]~regout\ : std_logic;
SIGNAL \rf|Mux30~0_combout\ : std_logic;
SIGNAL \rf|Mux30~1_combout\ : std_logic;
SIGNAL \rf|Mux30~4_combout\ : std_logic;
SIGNAL \rf|registers[2][2]~regout\ : std_logic;
SIGNAL \rf|Mux29~2\ : std_logic;
SIGNAL \rf|Mux29~3_combout\ : std_logic;
SIGNAL \rf|registers[5][2]~regout\ : std_logic;
SIGNAL \rf|Mux29~0\ : std_logic;
SIGNAL \rf|Mux29~1_combout\ : std_logic;
SIGNAL \rf|Mux29~4_combout\ : std_logic;
SIGNAL \rf|Mux28~2\ : std_logic;
SIGNAL \rf|registers[2][3]~regout\ : std_logic;
SIGNAL \rf|Mux28~3_combout\ : std_logic;
SIGNAL \rf|registers[5][3]~regout\ : std_logic;
SIGNAL \rf|Mux28~0_combout\ : std_logic;
SIGNAL \rf|Mux28~1_combout\ : std_logic;
SIGNAL \rf|Mux28~4_combout\ : std_logic;
SIGNAL \rf|registers[5][4]~regout\ : std_logic;
SIGNAL \rf|Mux27~0\ : std_logic;
SIGNAL \rf|Mux27~1_combout\ : std_logic;
SIGNAL \rf|registers[2][4]~regout\ : std_logic;
SIGNAL \rf|Mux27~2\ : std_logic;
SIGNAL \rf|Mux27~3_combout\ : std_logic;
SIGNAL \rf|Mux27~4_combout\ : std_logic;
SIGNAL \rf|Mux26~2\ : std_logic;
SIGNAL \rf|registers[2][5]~regout\ : std_logic;
SIGNAL \rf|Mux26~3_combout\ : std_logic;
SIGNAL \rf|Mux26~0_combout\ : std_logic;
SIGNAL \rf|registers[5][5]~regout\ : std_logic;
SIGNAL \rf|Mux26~1_combout\ : std_logic;
SIGNAL \rf|Mux26~4_combout\ : std_logic;
SIGNAL \rf|registers[2][6]~regout\ : std_logic;
SIGNAL \rf|Mux25~2\ : std_logic;
SIGNAL \rf|Mux25~3_combout\ : std_logic;
SIGNAL \rf|registers[5][6]~regout\ : std_logic;
SIGNAL \rf|Mux25~0\ : std_logic;
SIGNAL \rf|Mux25~1_combout\ : std_logic;
SIGNAL \rf|Mux25~4_combout\ : std_logic;
SIGNAL \rf|registers[5][7]~regout\ : std_logic;
SIGNAL \rf|Mux24~0_combout\ : std_logic;
SIGNAL \rf|Mux24~1_combout\ : std_logic;
SIGNAL \rf|registers[2][7]~regout\ : std_logic;
SIGNAL \rf|registers[1][7]~regout\ : std_logic;
SIGNAL \rf|Mux24~2_combout\ : std_logic;
SIGNAL \rf|Mux24~3_combout\ : std_logic;
SIGNAL \rf|Mux24~4_combout\ : std_logic;
SIGNAL \rf|registers[1][8]~regout\ : std_logic;
SIGNAL \rf|Mux23~2_combout\ : std_logic;
SIGNAL \rf|registers[2][8]~regout\ : std_logic;
SIGNAL \rf|Mux23~3_combout\ : std_logic;
SIGNAL \rf|registers[4][8]~regout\ : std_logic;
SIGNAL \rf|Mux23~0_combout\ : std_logic;
SIGNAL \rf|registers[5][8]~regout\ : std_logic;
SIGNAL \rf|Mux23~1_combout\ : std_logic;
SIGNAL \rf|Mux23~4_combout\ : std_logic;
SIGNAL \rf|Mux22~2\ : std_logic;
SIGNAL \rf|registers[2][9]~regout\ : std_logic;
SIGNAL \rf|Mux22~3_combout\ : std_logic;
SIGNAL \rf|registers[4][9]~regout\ : std_logic;
SIGNAL \rf|Mux22~0_combout\ : std_logic;
SIGNAL \rf|registers[5][9]~regout\ : std_logic;
SIGNAL \rf|Mux22~1_combout\ : std_logic;
SIGNAL \rf|Mux22~4_combout\ : std_logic;
SIGNAL \rf|registers[2][10]~regout\ : std_logic;
SIGNAL \rf|Mux21~2\ : std_logic;
SIGNAL \rf|Mux21~3_combout\ : std_logic;
SIGNAL \rf|registers[5][10]~regout\ : std_logic;
SIGNAL \rf|registers[4][10]~regout\ : std_logic;
SIGNAL \rf|Mux21~0_combout\ : std_logic;
SIGNAL \rf|Mux21~1_combout\ : std_logic;
SIGNAL \rf|Mux21~4_combout\ : std_logic;
SIGNAL \rf|registers[2][11]~regout\ : std_logic;
SIGNAL \rf|Mux20~2\ : std_logic;
SIGNAL \rf|Mux20~3_combout\ : std_logic;
SIGNAL \rf|registers[5][11]~regout\ : std_logic;
SIGNAL \rf|Mux20~0\ : std_logic;
SIGNAL \rf|Mux20~1_combout\ : std_logic;
SIGNAL \rf|Mux20~4_combout\ : std_logic;
SIGNAL \rf|Mux19~1\ : std_logic;
SIGNAL \rf|Mux19~2\ : std_logic;
SIGNAL \rf|registers[2][12]~regout\ : std_logic;
SIGNAL \rf|Mux19~3_combout\ : std_logic;
SIGNAL \rf|Mux19~4_combout\ : std_logic;
SIGNAL \rf|Mux18~0_combout\ : std_logic;
SIGNAL \rf|registers[5][13]~regout\ : std_logic;
SIGNAL \rf|Mux18~1_combout\ : std_logic;
SIGNAL \rf|Mux18~2\ : std_logic;
SIGNAL \rf|registers[2][13]~regout\ : std_logic;
SIGNAL \rf|Mux18~3_combout\ : std_logic;
SIGNAL \rf|Mux18~4_combout\ : std_logic;
SIGNAL \rf|Mux17~3\ : std_logic;
SIGNAL \rf|Mux17~1\ : std_logic;
SIGNAL \rf|Mux17~4_combout\ : std_logic;
SIGNAL \rf|registers[5][15]~regout\ : std_logic;
SIGNAL \rf|Mux16~0_combout\ : std_logic;
SIGNAL \rf|Mux16~1_combout\ : std_logic;
SIGNAL \rf|Mux16~2\ : std_logic;
SIGNAL \rf|registers[2][15]~regout\ : std_logic;
SIGNAL \rf|Mux16~3_combout\ : std_logic;
SIGNAL \rf|Mux16~4_combout\ : std_logic;
SIGNAL \mux_sel~combout\ : std_logic;
SIGNAL \jump_mux|dout[0]~0_combout\ : std_logic;
SIGNAL \alu_jump|a0|z~0_combout\ : std_logic;
SIGNAL \alu_jump|a1|z~47_cout0\ : std_logic;
SIGNAL \alu_jump|a1|z~47COUT1_51\ : std_logic;
SIGNAL \alu_jump|a1|z~0_combout\ : std_logic;
SIGNAL \jump_mux|dout[1]~1_combout\ : std_logic;
SIGNAL \alu_jump|a1|z~2\ : std_logic;
SIGNAL \alu_jump|a1|z~2COUT1_52\ : std_logic;
SIGNAL \alu_jump|a1|z~5_combout\ : std_logic;
SIGNAL \jump_mux|dout[2]~2_combout\ : std_logic;
SIGNAL \alu_jump|a1|z~7\ : std_logic;
SIGNAL \alu_jump|a1|z~7COUT1_53\ : std_logic;
SIGNAL \alu_jump|a1|z~10_combout\ : std_logic;
SIGNAL \jump_mux|dout[3]~3_combout\ : std_logic;
SIGNAL \alu_jump|a1|z~12\ : std_logic;
SIGNAL \alu_jump|a1|z~12COUT1_54\ : std_logic;
SIGNAL \alu_jump|a1|z~15_combout\ : std_logic;
SIGNAL \jump_mux|dout[4]~4_combout\ : std_logic;
SIGNAL \alu_jump|a1|z~17\ : std_logic;
SIGNAL \alu_jump|a1|z~20_combout\ : std_logic;
SIGNAL \jump_mux|dout[5]~5_combout\ : std_logic;
SIGNAL \alu_jump|a1|z~22\ : std_logic;
SIGNAL \alu_jump|a1|z~22COUT1_55\ : std_logic;
SIGNAL \alu_jump|a1|z~25_combout\ : std_logic;
SIGNAL \jump_mux|dout[6]~6_combout\ : std_logic;
SIGNAL \alu_jump|a1|z~27\ : std_logic;
SIGNAL \alu_jump|a1|z~27COUT1_56\ : std_logic;
SIGNAL \alu_jump|a1|z~30_combout\ : std_logic;
SIGNAL \jump_mux|dout[7]~7_combout\ : std_logic;
SIGNAL \alu_jump|a1|z~32\ : std_logic;
SIGNAL \alu_jump|a1|z~32COUT1_57\ : std_logic;
SIGNAL \alu_jump|a1|z~35_combout\ : std_logic;
SIGNAL \jump_mux|dout[8]~8_combout\ : std_logic;
SIGNAL \alu_jump|a1|z~37\ : std_logic;
SIGNAL \alu_jump|a1|z~37COUT1_58\ : std_logic;
SIGNAL \alu_jump|a1|z~40_combout\ : std_logic;
SIGNAL \jump_mux|dout[9]~9_combout\ : std_logic;
SIGNAL \alu_jump|a9|o~0_combout\ : std_logic;
SIGNAL \jump_mux|dout[10]~10_combout\ : std_logic;
SIGNAL \alu_jump|a10|o~0_combout\ : std_logic;
SIGNAL \jump_mux|dout[11]~11_combout\ : std_logic;
SIGNAL \alu_jump|a11|o~0_combout\ : std_logic;
SIGNAL \jump_mux|dout[12]~12_combout\ : std_logic;
SIGNAL \alu_jump|a12|o~0_combout\ : std_logic;
SIGNAL \jump_mux|dout[13]~13_combout\ : std_logic;
SIGNAL \alu_jump|a13|o~0_combout\ : std_logic;
SIGNAL \jump_mux|dout[14]~14_combout\ : std_logic;
SIGNAL \alu_jump|a14|o~0_combout\ : std_logic;
SIGNAL \jump_mux|dout[15]~15_combout\ : std_logic;
SIGNAL \rf_a3_in~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \rf_d3_in~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \imm~combout\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pc_in~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf_a2_in~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \rf_a1_in~combout\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_mux_sel <= mux_sel;
ww_write1 <= write1;
ww_rf_a1_in <= rf_a1_in;
ww_rf_a2_in <= rf_a2_in;
ww_rf_a3_in <= rf_a3_in;
ww_rf_d3_in <= rf_d3_in;
ww_pc_in <= pc_in;
ww_imm <= imm;
rf_d1_out <= ww_rf_d1_out;
rf_d2_out <= ww_rf_d2_out;
jump <= ww_jump;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_a1_in[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_a1_in(2),
	combout => \rf_a1_in~combout\(2));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3_in[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3_in(0),
	combout => \rf_d3_in~combout\(0));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_a3_in[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_a3_in(2),
	combout => \rf_a3_in~combout\(2));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\write1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_write1,
	combout => \write1~combout\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_a3_in[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_a3_in(1),
	combout => \rf_a3_in~combout\(1));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_a3_in[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_a3_in(0),
	combout => \rf_a3_in~combout\(0));

-- Location: LC_X6_Y5_N4
\rf|Decoder0~7\ : maxv_lcell
-- Equation(s):
-- \rf|Decoder0~7_combout\ = (!\rf_a3_in~combout\(2) & (\write1~combout\ & (\rf_a3_in~combout\(1) & \rf_a3_in~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a3_in~combout\(2),
	datab => \write1~combout\,
	datac => \rf_a3_in~combout\(1),
	datad => \rf_a3_in~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Decoder0~7_combout\);

-- Location: LC_X5_Y7_N5
\rf|registers[3][0]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[3][0]~regout\ = DFFEAS((((!\rf_d3_in~combout\(0)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \rf_d3_in~combout\(0),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[3][0]~regout\);

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_a1_in[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_a1_in(1),
	combout => \rf_a1_in~combout\(1));

-- Location: LC_X6_Y5_N0
\rf|Decoder0~6\ : maxv_lcell
-- Equation(s):
-- \rf|Decoder0~6_combout\ = (!\rf_a3_in~combout\(2) & (\write1~combout\ & (!\rf_a3_in~combout\(1) & !\rf_a3_in~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a3_in~combout\(2),
	datab => \write1~combout\,
	datac => \rf_a3_in~combout\(1),
	datad => \rf_a3_in~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Decoder0~6_combout\);

-- Location: LC_X6_Y8_N4
\rf|registers[0][0]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[0][0]~regout\ = DFFEAS((((!\rf_d3_in~combout\(0)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \rf_d3_in~combout\(0),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[0][0]~regout\);

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_a1_in[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_a1_in(0),
	combout => \rf_a1_in~combout\(0));

-- Location: LC_X6_Y5_N2
\rf|Decoder0~5\ : maxv_lcell
-- Equation(s):
-- \rf|Decoder0~5_combout\ = (!\rf_a3_in~combout\(2) & (\write1~combout\ & (!\rf_a3_in~combout\(1) & \rf_a3_in~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a3_in~combout\(2),
	datab => \write1~combout\,
	datac => \rf_a3_in~combout\(1),
	datad => \rf_a3_in~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Decoder0~5_combout\);

-- Location: LC_X6_Y8_N8
\rf|registers[1][0]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux15~2\ = (\rf_a1_in~combout\(1) & (((\rf_a1_in~combout\(0))))) # (!\rf_a1_in~combout\(1) & ((\rf_a1_in~combout\(0) & ((D1_registers[1][0]))) # (!\rf_a1_in~combout\(0) & (!\rf|registers[0][0]~regout\))))
-- \rf|registers[1][0]~regout\ = DFFEAS(\rf|Mux15~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~5_combout\, \rf_d3_in~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc11",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|registers[0][0]~regout\,
	datab => \rf_a1_in~combout\(1),
	datac => \rf_d3_in~combout\(0),
	datad => \rf_a1_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux15~2\,
	regout => \rf|registers[1][0]~regout\);

-- Location: LC_X6_Y5_N5
\rf|Decoder0~4\ : maxv_lcell
-- Equation(s):
-- \rf|Decoder0~4_combout\ = (!\rf_a3_in~combout\(2) & (\write1~combout\ & (\rf_a3_in~combout\(1) & !\rf_a3_in~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a3_in~combout\(2),
	datab => \write1~combout\,
	datac => \rf_a3_in~combout\(1),
	datad => \rf_a3_in~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Decoder0~4_combout\);

-- Location: LC_X5_Y7_N7
\rf|registers[2][0]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux15~3\ = (\rf_a1_in~combout\(1) & ((\rf|Mux15~2\ & (!\rf|registers[3][0]~regout\)) # (!\rf|Mux15~2\ & ((D1_registers[2][0]))))) # (!\rf_a1_in~combout\(1) & (((\rf|Mux15~2\))))
-- \rf|registers[2][0]~regout\ = DFFEAS(\rf|Mux15~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~4_combout\, \rf_d3_in~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|registers[3][0]~regout\,
	datab => \rf_a1_in~combout\(1),
	datac => \rf_d3_in~combout\(0),
	datad => \rf|Mux15~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux15~3\,
	regout => \rf|registers[2][0]~regout\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_a2_in[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_a2_in(0),
	combout => \rf_a2_in~combout\(0));

-- Location: LC_X6_Y5_N3
\rf|Decoder0~1\ : maxv_lcell
-- Equation(s):
-- \rf|Decoder0~1_combout\ = (\rf_a3_in~combout\(2) & (\write1~combout\ & (\rf_a3_in~combout\(1) & !\rf_a3_in~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a3_in~combout\(2),
	datab => \write1~combout\,
	datac => \rf_a3_in~combout\(1),
	datad => \rf_a3_in~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Decoder0~1_combout\);

-- Location: LC_X11_Y8_N8
\rf|registers[6][0]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux15~0\ = (\rf_a1_in~combout\(0) & (\rf_a1_in~combout\(1))) # (!\rf_a1_in~combout\(0) & ((\rf_a1_in~combout\(1) & (D1_registers[6][0])) # (!\rf_a1_in~combout\(1) & ((\rf|registers[4][0]~regout\)))))
-- \rf|registers[6][0]~regout\ = DFFEAS(\rf|Mux15~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~1_combout\, \rf_d3_in~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1_in~combout\(0),
	datab => \rf_a1_in~combout\(1),
	datac => \rf_d3_in~combout\(0),
	datad => \rf|registers[4][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux15~0\,
	regout => \rf|registers[6][0]~regout\);

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_a2_in[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_a2_in(1),
	combout => \rf_a2_in~combout\(1));

-- Location: LC_X6_Y5_N8
\rf|Decoder0~2\ : maxv_lcell
-- Equation(s):
-- \rf|Decoder0~2_combout\ = (\rf_a3_in~combout\(2) & (\write1~combout\ & (!\rf_a3_in~combout\(1) & !\rf_a3_in~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a3_in~combout\(2),
	datab => \write1~combout\,
	datac => \rf_a3_in~combout\(1),
	datad => \rf_a3_in~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Decoder0~2_combout\);

-- Location: LC_X11_Y9_N5
\rf|registers[4][0]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux31~0\ = (\rf_a2_in~combout\(0) & (((\rf_a2_in~combout\(1))))) # (!\rf_a2_in~combout\(0) & ((\rf_a2_in~combout\(1) & (\rf|registers[6][0]~regout\)) # (!\rf_a2_in~combout\(1) & ((D1_registers[4][0])))))
-- \rf|registers[4][0]~regout\ = DFFEAS(\rf|Mux31~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~2_combout\, \rf_d3_in~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2_in~combout\(0),
	datab => \rf|registers[6][0]~regout\,
	datac => \rf_d3_in~combout\(0),
	datad => \rf_a2_in~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux31~0\,
	regout => \rf|registers[4][0]~regout\);

-- Location: LC_X6_Y5_N9
\rf|Decoder0~3\ : maxv_lcell
-- Equation(s):
-- \rf|Decoder0~3_combout\ = (\rf_a3_in~combout\(2) & (\write1~combout\ & (\rf_a3_in~combout\(1) & \rf_a3_in~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a3_in~combout\(2),
	datab => \write1~combout\,
	datac => \rf_a3_in~combout\(1),
	datad => \rf_a3_in~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Decoder0~3_combout\);

-- Location: LC_X10_Y7_N6
\rf|registers[7][0]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[7][0]~regout\ = DFFEAS((((!\rf_d3_in~combout\(0)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \rf_d3_in~combout\(0),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[7][0]~regout\);

-- Location: LC_X6_Y5_N6
\rf|Decoder0~0\ : maxv_lcell
-- Equation(s):
-- \rf|Decoder0~0_combout\ = (\rf_a3_in~combout\(2) & (\write1~combout\ & (!\rf_a3_in~combout\(1) & \rf_a3_in~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a3_in~combout\(2),
	datab => \write1~combout\,
	datac => \rf_a3_in~combout\(1),
	datad => \rf_a3_in~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Decoder0~0_combout\);

-- Location: LC_X11_Y9_N4
\rf|registers[5][0]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux15~1\ = (\rf_a1_in~combout\(0) & ((\rf|Mux15~0\ & ((!\rf|registers[7][0]~regout\))) # (!\rf|Mux15~0\ & (D1_registers[5][0])))) # (!\rf_a1_in~combout\(0) & (\rf|Mux15~0\))
-- \rf|registers[5][0]~regout\ = DFFEAS(\rf|Mux15~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~0_combout\, \rf_d3_in~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "64ec",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1_in~combout\(0),
	datab => \rf|Mux15~0\,
	datac => \rf_d3_in~combout\(0),
	datad => \rf|registers[7][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux15~1\,
	regout => \rf|registers[5][0]~regout\);

-- Location: LC_X5_Y7_N2
\rf|Mux15~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux15~4_combout\ = ((\rf_a1_in~combout\(2) & ((\rf|Mux15~1\))) # (!\rf_a1_in~combout\(2) & (\rf|Mux15~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rf_a1_in~combout\(2),
	datac => \rf|Mux15~3\,
	datad => \rf|Mux15~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux15~4_combout\);

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3_in[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3_in(1),
	combout => \rf_d3_in~combout\(1));

-- Location: LC_X12_Y6_N2
\rf|registers[4][1]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[4][1]~regout\ = DFFEAS((((!\rf_d3_in~combout\(1)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \rf_d3_in~combout\(1),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[4][1]~regout\);

-- Location: LC_X12_Y6_N4
\rf|registers[6][1]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux14~0\ = (\rf_a1_in~combout\(0) & (\rf_a1_in~combout\(1))) # (!\rf_a1_in~combout\(0) & ((\rf_a1_in~combout\(1) & (D1_registers[6][1])) # (!\rf_a1_in~combout\(1) & ((!\rf|registers[4][1]~regout\)))))
-- \rf|registers[6][1]~regout\ = DFFEAS(\rf|Mux14~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~1_combout\, \rf_d3_in~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8d9",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1_in~combout\(0),
	datab => \rf_a1_in~combout\(1),
	datac => \rf_d3_in~combout\(1),
	datad => \rf|registers[4][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux14~0\,
	regout => \rf|registers[6][1]~regout\);

-- Location: LC_X10_Y7_N9
\rf|registers[7][1]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[7][1]~regout\ = DFFEAS((((!\rf_d3_in~combout\(1)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \rf_d3_in~combout\(1),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[7][1]~regout\);

-- Location: LC_X10_Y7_N4
\rf|registers[5][1]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux14~1\ = (\rf|Mux14~0\ & (((!\rf_a1_in~combout\(0))) # (!\rf|registers[7][1]~regout\))) # (!\rf|Mux14~0\ & (((D1_registers[5][1] & \rf_a1_in~combout\(0)))))
-- \rf|registers[5][1]~regout\ = DFFEAS(\rf|Mux14~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~0_combout\, \rf_d3_in~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "72aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|Mux14~0\,
	datab => \rf|registers[7][1]~regout\,
	datac => \rf_d3_in~combout\(1),
	datad => \rf_a1_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux14~1\,
	regout => \rf|registers[5][1]~regout\);

-- Location: LC_X5_Y7_N6
\rf|registers[3][1]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[3][1]~regout\ = DFFEAS((((!\rf_d3_in~combout\(1)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \rf_d3_in~combout\(1),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[3][1]~regout\);

-- Location: LC_X11_Y7_N4
\rf|registers[0][1]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[0][1]~regout\ = DFFEAS((((!\rf_d3_in~combout\(1)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \rf_d3_in~combout\(1),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[0][1]~regout\);

-- Location: LC_X11_Y7_N5
\rf|registers[1][1]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux14~2\ = (\rf_a1_in~combout\(1) & (((\rf_a1_in~combout\(0))))) # (!\rf_a1_in~combout\(1) & ((\rf_a1_in~combout\(0) & ((D1_registers[1][1]))) # (!\rf_a1_in~combout\(0) & (!\rf|registers[0][1]~regout\))))
-- \rf|registers[1][1]~regout\ = DFFEAS(\rf|Mux14~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~5_combout\, \rf_d3_in~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc11",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|registers[0][1]~regout\,
	datab => \rf_a1_in~combout\(1),
	datac => \rf_d3_in~combout\(1),
	datad => \rf_a1_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux14~2\,
	regout => \rf|registers[1][1]~regout\);

-- Location: LC_X5_Y7_N1
\rf|registers[2][1]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux14~3\ = (\rf_a1_in~combout\(1) & ((\rf|Mux14~2\ & (!\rf|registers[3][1]~regout\)) # (!\rf|Mux14~2\ & ((D1_registers[2][1]))))) # (!\rf_a1_in~combout\(1) & (((\rf|Mux14~2\))))
-- \rf|registers[2][1]~regout\ = DFFEAS(\rf|Mux14~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~4_combout\, \rf_d3_in~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|registers[3][1]~regout\,
	datab => \rf_a1_in~combout\(1),
	datac => \rf_d3_in~combout\(1),
	datad => \rf|Mux14~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux14~3\,
	regout => \rf|registers[2][1]~regout\);

-- Location: LC_X5_Y7_N9
\rf|Mux14~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux14~4_combout\ = ((\rf_a1_in~combout\(2) & (\rf|Mux14~1\)) # (!\rf_a1_in~combout\(2) & ((\rf|Mux14~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rf_a1_in~combout\(2),
	datac => \rf|Mux14~1\,
	datad => \rf|Mux14~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux14~4_combout\);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3_in[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3_in(2),
	combout => \rf_d3_in~combout\(2));

-- Location: LC_X9_Y7_N5
\rf|registers[3][2]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[3][2]~regout\ = DFFEAS((((!\rf_d3_in~combout\(2)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \rf_d3_in~combout\(2),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[3][2]~regout\);

-- Location: LC_X11_Y7_N6
\rf|registers[1][2]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux13~2\ = (\rf_a1_in~combout\(1) & (((\rf_a1_in~combout\(0))))) # (!\rf_a1_in~combout\(1) & ((\rf_a1_in~combout\(0) & ((D1_registers[1][2]))) # (!\rf_a1_in~combout\(0) & (\rf|registers[0][2]~regout\))))
-- \rf|registers[1][2]~regout\ = DFFEAS(\rf|Mux13~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~5_combout\, \rf_d3_in~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1_in~combout\(1),
	datab => \rf|registers[0][2]~regout\,
	datac => \rf_d3_in~combout\(2),
	datad => \rf_a1_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux13~2\,
	regout => \rf|registers[1][2]~regout\);

-- Location: LC_X11_Y7_N9
\rf|registers[0][2]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux29~2\ = (\rf_a2_in~combout\(0) & ((\rf|registers[1][2]~regout\) # ((\rf_a2_in~combout\(1))))) # (!\rf_a2_in~combout\(0) & (((D1_registers[0][2] & !\rf_a2_in~combout\(1)))))
-- \rf|registers[0][2]~regout\ = DFFEAS(\rf|Mux29~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~6_combout\, \rf_d3_in~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|registers[1][2]~regout\,
	datab => \rf_a2_in~combout\(0),
	datac => \rf_d3_in~combout\(2),
	datad => \rf_a2_in~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux29~2\,
	regout => \rf|registers[0][2]~regout\);

-- Location: LC_X9_Y7_N2
\rf|registers[2][2]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux13~3\ = (\rf_a1_in~combout\(1) & ((\rf|Mux13~2\ & (!\rf|registers[3][2]~regout\)) # (!\rf|Mux13~2\ & ((D1_registers[2][2]))))) # (!\rf_a1_in~combout\(1) & (((\rf|Mux13~2\))))
-- \rf|registers[2][2]~regout\ = DFFEAS(\rf|Mux13~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~4_combout\, \rf_d3_in~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|registers[3][2]~regout\,
	datab => \rf_a1_in~combout\(1),
	datac => \rf_d3_in~combout\(2),
	datad => \rf|Mux13~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux13~3\,
	regout => \rf|registers[2][2]~regout\);

-- Location: LC_X10_Y7_N2
\rf|registers[7][2]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[7][2]~regout\ = DFFEAS((((!\rf_d3_in~combout\(2)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \rf_d3_in~combout\(2),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[7][2]~regout\);

-- Location: LC_X10_Y9_N0
\rf|registers[6][2]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux13~0\ = (\rf_a1_in~combout\(1) & (((D1_registers[6][2]) # (\rf_a1_in~combout\(0))))) # (!\rf_a1_in~combout\(1) & (\rf|registers[4][2]~regout\ & ((!\rf_a1_in~combout\(0)))))
-- \rf|registers[6][2]~regout\ = DFFEAS(\rf|Mux13~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~1_combout\, \rf_d3_in~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|registers[4][2]~regout\,
	datab => \rf_a1_in~combout\(1),
	datac => \rf_d3_in~combout\(2),
	datad => \rf_a1_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux13~0\,
	regout => \rf|registers[6][2]~regout\);

-- Location: LC_X10_Y9_N5
\rf|registers[4][2]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux29~0\ = (\rf_a2_in~combout\(0) & (\rf_a2_in~combout\(1))) # (!\rf_a2_in~combout\(0) & ((\rf_a2_in~combout\(1) & ((\rf|registers[6][2]~regout\))) # (!\rf_a2_in~combout\(1) & (D1_registers[4][2]))))
-- \rf|registers[4][2]~regout\ = DFFEAS(\rf|Mux29~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~2_combout\, \rf_d3_in~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2_in~combout\(0),
	datab => \rf_a2_in~combout\(1),
	datac => \rf_d3_in~combout\(2),
	datad => \rf|registers[6][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux29~0\,
	regout => \rf|registers[4][2]~regout\);

-- Location: LC_X11_Y9_N6
\rf|registers[5][2]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux13~1\ = (\rf_a1_in~combout\(0) & ((\rf|Mux13~0\ & (!\rf|registers[7][2]~regout\)) # (!\rf|Mux13~0\ & ((D1_registers[5][2]))))) # (!\rf_a1_in~combout\(0) & (((\rf|Mux13~0\))))
-- \rf|registers[5][2]~regout\ = DFFEAS(\rf|Mux13~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~0_combout\, \rf_d3_in~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1_in~combout\(0),
	datab => \rf|registers[7][2]~regout\,
	datac => \rf_d3_in~combout\(2),
	datad => \rf|Mux13~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux13~1\,
	regout => \rf|registers[5][2]~regout\);

-- Location: LC_X9_Y9_N8
\rf|Mux13~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux13~4_combout\ = ((\rf_a1_in~combout\(2) & ((\rf|Mux13~1\))) # (!\rf_a1_in~combout\(2) & (\rf|Mux13~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rf|Mux13~3\,
	datac => \rf_a1_in~combout\(2),
	datad => \rf|Mux13~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux13~4_combout\);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3_in[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3_in(3),
	combout => \rf_d3_in~combout\(3));

-- Location: LC_X10_Y6_N5
\rf|registers[1][3]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux12~2\ = (\rf_a1_in~combout\(0) & (((D1_registers[1][3]) # (\rf_a1_in~combout\(1))))) # (!\rf_a1_in~combout\(0) & (\rf|registers[0][3]~regout\ & ((!\rf_a1_in~combout\(1)))))
-- \rf|registers[1][3]~regout\ = DFFEAS(\rf|Mux12~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~5_combout\, \rf_d3_in~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1_in~combout\(0),
	datab => \rf|registers[0][3]~regout\,
	datac => \rf_d3_in~combout\(3),
	datad => \rf_a1_in~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux12~2\,
	regout => \rf|registers[1][3]~regout\);

-- Location: LC_X10_Y6_N6
\rf|registers[0][3]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux28~2\ = (\rf_a2_in~combout\(1) & (((\rf_a2_in~combout\(0))))) # (!\rf_a2_in~combout\(1) & ((\rf_a2_in~combout\(0) & (\rf|registers[1][3]~regout\)) # (!\rf_a2_in~combout\(0) & ((D1_registers[0][3])))))
-- \rf|registers[0][3]~regout\ = DFFEAS(\rf|Mux28~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~6_combout\, \rf_d3_in~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|registers[1][3]~regout\,
	datab => \rf_a2_in~combout\(1),
	datac => \rf_d3_in~combout\(3),
	datad => \rf_a2_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux28~2\,
	regout => \rf|registers[0][3]~regout\);

-- Location: LC_X9_Y7_N1
\rf|registers[3][3]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[3][3]~regout\ = DFFEAS((((!\rf_d3_in~combout\(3)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \rf_d3_in~combout\(3),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[3][3]~regout\);

-- Location: LC_X9_Y7_N7
\rf|registers[2][3]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux12~3\ = (\rf_a1_in~combout\(1) & ((\rf|Mux12~2\ & ((!\rf|registers[3][3]~regout\))) # (!\rf|Mux12~2\ & (D1_registers[2][3])))) # (!\rf_a1_in~combout\(1) & (\rf|Mux12~2\))
-- \rf|registers[2][3]~regout\ = DFFEAS(\rf|Mux12~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~4_combout\, \rf_d3_in~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "64ec",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1_in~combout\(1),
	datab => \rf|Mux12~2\,
	datac => \rf_d3_in~combout\(3),
	datad => \rf|registers[3][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux12~3\,
	regout => \rf|registers[2][3]~regout\);

-- Location: LC_X10_Y7_N3
\rf|registers[7][3]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[7][3]~regout\ = DFFEAS((((!\rf_d3_in~combout\(3)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \rf_d3_in~combout\(3),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[7][3]~regout\);

-- Location: LC_X9_Y6_N5
\rf|registers[4][3]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[4][3]~regout\ = DFFEAS(((!\rf_d3_in~combout\(3))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3333",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \rf_d3_in~combout\(3),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[4][3]~regout\);

-- Location: LC_X7_Y6_N6
\rf|registers[6][3]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[6][3]~regout\ = DFFEAS(((!\rf_d3_in~combout\(3))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3333",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \rf_d3_in~combout\(3),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[6][3]~regout\);

-- Location: LC_X10_Y6_N1
\rf|Mux12~0\ : maxv_lcell
-- Equation(s):
-- \rf|Mux12~0_combout\ = (\rf_a1_in~combout\(0) & (((\rf_a1_in~combout\(1))))) # (!\rf_a1_in~combout\(0) & ((\rf_a1_in~combout\(1) & ((!\rf|registers[6][3]~regout\))) # (!\rf_a1_in~combout\(1) & (!\rf|registers[4][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f305",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[4][3]~regout\,
	datab => \rf|registers[6][3]~regout\,
	datac => \rf_a1_in~combout\(0),
	datad => \rf_a1_in~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux12~0_combout\);

-- Location: LC_X10_Y7_N1
\rf|registers[5][3]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux12~1\ = (\rf|Mux12~0_combout\ & (((!\rf_a1_in~combout\(0))) # (!\rf|registers[7][3]~regout\))) # (!\rf|Mux12~0_combout\ & (((D1_registers[5][3] & \rf_a1_in~combout\(0)))))
-- \rf|registers[5][3]~regout\ = DFFEAS(\rf|Mux12~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~0_combout\, \rf_d3_in~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "74cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|registers[7][3]~regout\,
	datab => \rf|Mux12~0_combout\,
	datac => \rf_d3_in~combout\(3),
	datad => \rf_a1_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux12~1\,
	regout => \rf|registers[5][3]~regout\);

-- Location: LC_X9_Y7_N8
\rf|Mux12~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux12~4_combout\ = ((\rf_a1_in~combout\(2) & ((\rf|Mux12~1\))) # (!\rf_a1_in~combout\(2) & (\rf|Mux12~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rf|Mux12~3\,
	datac => \rf_a1_in~combout\(2),
	datad => \rf|Mux12~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux12~4_combout\);

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3_in[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3_in(4),
	combout => \rf_d3_in~combout\(4));

-- Location: LC_X7_Y9_N6
\rf|registers[3][4]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[3][4]~regout\ = DFFEAS((((!\rf_d3_in~combout\(4)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \rf_d3_in~combout\(4),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[3][4]~regout\);

-- Location: LC_X6_Y8_N2
\rf|registers[1][4]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux11~2\ = (\rf_a1_in~combout\(1) & (((\rf_a1_in~combout\(0))))) # (!\rf_a1_in~combout\(1) & ((\rf_a1_in~combout\(0) & ((D1_registers[1][4]))) # (!\rf_a1_in~combout\(0) & (\rf|registers[0][4]~regout\))))
-- \rf|registers[1][4]~regout\ = DFFEAS(\rf|Mux11~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~5_combout\, \rf_d3_in~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|registers[0][4]~regout\,
	datab => \rf_a1_in~combout\(1),
	datac => \rf_d3_in~combout\(4),
	datad => \rf_a1_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux11~2\,
	regout => \rf|registers[1][4]~regout\);

-- Location: LC_X6_Y8_N7
\rf|registers[0][4]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux27~2\ = (\rf_a2_in~combout\(1) & (\rf_a2_in~combout\(0))) # (!\rf_a2_in~combout\(1) & ((\rf_a2_in~combout\(0) & ((\rf|registers[1][4]~regout\))) # (!\rf_a2_in~combout\(0) & (D1_registers[0][4]))))
-- \rf|registers[0][4]~regout\ = DFFEAS(\rf|Mux27~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~6_combout\, \rf_d3_in~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2_in~combout\(1),
	datab => \rf_a2_in~combout\(0),
	datac => \rf_d3_in~combout\(4),
	datad => \rf|registers[1][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux27~2\,
	regout => \rf|registers[0][4]~regout\);

-- Location: LC_X7_Y9_N3
\rf|registers[2][4]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux11~3\ = (\rf_a1_in~combout\(1) & ((\rf|Mux11~2\ & (!\rf|registers[3][4]~regout\)) # (!\rf|Mux11~2\ & ((D1_registers[2][4]))))) # (!\rf_a1_in~combout\(1) & (((\rf|Mux11~2\))))
-- \rf|registers[2][4]~regout\ = DFFEAS(\rf|Mux11~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~4_combout\, \rf_d3_in~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|registers[3][4]~regout\,
	datab => \rf_a1_in~combout\(1),
	datac => \rf_d3_in~combout\(4),
	datad => \rf|Mux11~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux11~3\,
	regout => \rf|registers[2][4]~regout\);

-- Location: LC_X11_Y8_N3
\rf|registers[7][4]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[7][4]~regout\ = DFFEAS((((!\rf_d3_in~combout\(4)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \rf_d3_in~combout\(4),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[7][4]~regout\);

-- Location: LC_X11_Y8_N5
\rf|registers[6][4]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux11~0\ = (\rf_a1_in~combout\(0) & (((\rf_a1_in~combout\(1))))) # (!\rf_a1_in~combout\(0) & ((\rf_a1_in~combout\(1) & ((D1_registers[6][4]))) # (!\rf_a1_in~combout\(1) & (\rf|registers[4][4]~regout\))))
-- \rf|registers[6][4]~regout\ = DFFEAS(\rf|Mux11~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~1_combout\, \rf_d3_in~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1_in~combout\(0),
	datab => \rf|registers[4][4]~regout\,
	datac => \rf_d3_in~combout\(4),
	datad => \rf_a1_in~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux11~0\,
	regout => \rf|registers[6][4]~regout\);

-- Location: LC_X11_Y9_N2
\rf|registers[4][4]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux27~0\ = (\rf_a2_in~combout\(0) & (((\rf_a2_in~combout\(1))))) # (!\rf_a2_in~combout\(0) & ((\rf_a2_in~combout\(1) & (\rf|registers[6][4]~regout\)) # (!\rf_a2_in~combout\(1) & ((D1_registers[4][4])))))
-- \rf|registers[4][4]~regout\ = DFFEAS(\rf|Mux27~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~2_combout\, \rf_d3_in~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2_in~combout\(0),
	datab => \rf|registers[6][4]~regout\,
	datac => \rf_d3_in~combout\(4),
	datad => \rf_a2_in~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux27~0\,
	regout => \rf|registers[4][4]~regout\);

-- Location: LC_X11_Y9_N9
\rf|registers[5][4]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux11~1\ = (\rf_a1_in~combout\(0) & ((\rf|Mux11~0\ & (!\rf|registers[7][4]~regout\)) # (!\rf|Mux11~0\ & ((D1_registers[5][4]))))) # (!\rf_a1_in~combout\(0) & (((\rf|Mux11~0\))))
-- \rf|registers[5][4]~regout\ = DFFEAS(\rf|Mux11~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~0_combout\, \rf_d3_in~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1_in~combout\(0),
	datab => \rf|registers[7][4]~regout\,
	datac => \rf_d3_in~combout\(4),
	datad => \rf|Mux11~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux11~1\,
	regout => \rf|registers[5][4]~regout\);

-- Location: LC_X9_Y9_N7
\rf|Mux11~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux11~4_combout\ = ((\rf_a1_in~combout\(2) & ((\rf|Mux11~1\))) # (!\rf_a1_in~combout\(2) & (\rf|Mux11~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rf|Mux11~3\,
	datac => \rf_a1_in~combout\(2),
	datad => \rf|Mux11~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux11~4_combout\);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3_in[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3_in(5),
	combout => \rf_d3_in~combout\(5));

-- Location: LC_X6_Y7_N9
\rf|registers[1][5]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux10~2\ = (\rf_a1_in~combout\(0) & ((\rf_a1_in~combout\(1)) # ((D1_registers[1][5])))) # (!\rf_a1_in~combout\(0) & (!\rf_a1_in~combout\(1) & ((\rf|registers[0][5]~regout\))))
-- \rf|registers[1][5]~regout\ = DFFEAS(\rf|Mux10~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~5_combout\, \rf_d3_in~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1_in~combout\(0),
	datab => \rf_a1_in~combout\(1),
	datac => \rf_d3_in~combout\(5),
	datad => \rf|registers[0][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux10~2\,
	regout => \rf|registers[1][5]~regout\);

-- Location: LC_X6_Y7_N6
\rf|registers[0][5]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux26~2\ = (\rf_a2_in~combout\(1) & (((\rf_a2_in~combout\(0))))) # (!\rf_a2_in~combout\(1) & ((\rf_a2_in~combout\(0) & (\rf|registers[1][5]~regout\)) # (!\rf_a2_in~combout\(0) & ((D1_registers[0][5])))))
-- \rf|registers[0][5]~regout\ = DFFEAS(\rf|Mux26~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~6_combout\, \rf_d3_in~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2_in~combout\(1),
	datab => \rf|registers[1][5]~regout\,
	datac => \rf_d3_in~combout\(5),
	datad => \rf_a2_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux26~2\,
	regout => \rf|registers[0][5]~regout\);

-- Location: LC_X8_Y7_N6
\rf|registers[3][5]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[3][5]~regout\ = DFFEAS((((!\rf_d3_in~combout\(5)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \rf_d3_in~combout\(5),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[3][5]~regout\);

-- Location: LC_X8_Y7_N5
\rf|registers[2][5]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux10~3\ = (\rf|Mux10~2\ & (((!\rf|registers[3][5]~regout\)) # (!\rf_a1_in~combout\(1)))) # (!\rf|Mux10~2\ & (\rf_a1_in~combout\(1) & (D1_registers[2][5])))
-- \rf|registers[2][5]~regout\ = DFFEAS(\rf|Mux10~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~4_combout\, \rf_d3_in~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "62ea",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|Mux10~2\,
	datab => \rf_a1_in~combout\(1),
	datac => \rf_d3_in~combout\(5),
	datad => \rf|registers[3][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux10~3\,
	regout => \rf|registers[2][5]~regout\);

-- Location: LC_X10_Y9_N9
\rf|registers[4][5]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[4][5]~regout\ = DFFEAS((((!\rf_d3_in~combout\(5)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \rf_d3_in~combout\(5),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[4][5]~regout\);

-- Location: LC_X10_Y9_N7
\rf|registers[6][5]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[6][5]~regout\ = DFFEAS((((!\rf_d3_in~combout\(5)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \rf_d3_in~combout\(5),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[6][5]~regout\);

-- Location: LC_X10_Y9_N1
\rf|Mux10~0\ : maxv_lcell
-- Equation(s):
-- \rf|Mux10~0_combout\ = (\rf_a1_in~combout\(1) & (((\rf_a1_in~combout\(0)) # (!\rf|registers[6][5]~regout\)))) # (!\rf_a1_in~combout\(1) & (!\rf|registers[4][5]~regout\ & ((!\rf_a1_in~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa1b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a1_in~combout\(1),
	datab => \rf|registers[4][5]~regout\,
	datac => \rf|registers[6][5]~regout\,
	datad => \rf_a1_in~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux10~0_combout\);

-- Location: LC_X10_Y7_N8
\rf|registers[7][5]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[7][5]~regout\ = DFFEAS((!\rf_d3_in~combout\(5)), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5555",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_d3_in~combout\(5),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[7][5]~regout\);

-- Location: LC_X9_Y9_N4
\rf|registers[5][5]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux10~1\ = (\rf|Mux10~0_combout\ & (((!\rf_a1_in~combout\(0))) # (!\rf|registers[7][5]~regout\))) # (!\rf|Mux10~0_combout\ & (((D1_registers[5][5] & \rf_a1_in~combout\(0)))))
-- \rf|registers[5][5]~regout\ = DFFEAS(\rf|Mux10~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~0_combout\, \rf_d3_in~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "72aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|Mux10~0_combout\,
	datab => \rf|registers[7][5]~regout\,
	datac => \rf_d3_in~combout\(5),
	datad => \rf_a1_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux10~1\,
	regout => \rf|registers[5][5]~regout\);

-- Location: LC_X9_Y9_N5
\rf|Mux10~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux10~4_combout\ = ((\rf_a1_in~combout\(2) & ((\rf|Mux10~1\))) # (!\rf_a1_in~combout\(2) & (\rf|Mux10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux10~3\,
	datac => \rf_a1_in~combout\(2),
	datad => \rf|Mux10~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux10~4_combout\);

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3_in[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3_in(6),
	combout => \rf_d3_in~combout\(6));

-- Location: LC_X10_Y7_N7
\rf|registers[7][6]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[7][6]~regout\ = DFFEAS((((!\rf_d3_in~combout\(6)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \rf_d3_in~combout\(6),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[7][6]~regout\);

-- Location: LC_X9_Y9_N9
\rf|registers[6][6]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux9~0\ = (\rf_a1_in~combout\(1) & (((D1_registers[6][6]) # (\rf_a1_in~combout\(0))))) # (!\rf_a1_in~combout\(1) & (\rf|registers[4][6]~regout\ & ((!\rf_a1_in~combout\(0)))))
-- \rf|registers[6][6]~regout\ = DFFEAS(\rf|Mux9~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~1_combout\, \rf_d3_in~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1_in~combout\(1),
	datab => \rf|registers[4][6]~regout\,
	datac => \rf_d3_in~combout\(6),
	datad => \rf_a1_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux9~0\,
	regout => \rf|registers[6][6]~regout\);

-- Location: LC_X11_Y9_N8
\rf|registers[4][6]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux25~0\ = (\rf_a2_in~combout\(0) & (((\rf_a2_in~combout\(1))))) # (!\rf_a2_in~combout\(0) & ((\rf_a2_in~combout\(1) & (\rf|registers[6][6]~regout\)) # (!\rf_a2_in~combout\(1) & ((D1_registers[4][6])))))
-- \rf|registers[4][6]~regout\ = DFFEAS(\rf|Mux25~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~2_combout\, \rf_d3_in~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2_in~combout\(0),
	datab => \rf|registers[6][6]~regout\,
	datac => \rf_d3_in~combout\(6),
	datad => \rf_a2_in~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux25~0\,
	regout => \rf|registers[4][6]~regout\);

-- Location: LC_X9_Y9_N6
\rf|registers[5][6]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux9~1\ = (\rf|Mux9~0\ & (((!\rf_a1_in~combout\(0))) # (!\rf|registers[7][6]~regout\))) # (!\rf|Mux9~0\ & (((D1_registers[5][6] & \rf_a1_in~combout\(0)))))
-- \rf|registers[5][6]~regout\ = DFFEAS(\rf|Mux9~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~0_combout\, \rf_d3_in~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "74cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|registers[7][6]~regout\,
	datab => \rf|Mux9~0\,
	datac => \rf_d3_in~combout\(6),
	datad => \rf_a1_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux9~1\,
	regout => \rf|registers[5][6]~regout\);

-- Location: LC_X7_Y8_N0
\rf|registers[3][6]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[3][6]~regout\ = DFFEAS((((!\rf_d3_in~combout\(6)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \rf_d3_in~combout\(6),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[3][6]~regout\);

-- Location: LC_X6_Y7_N0
\rf|registers[1][6]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux9~2\ = (\rf_a1_in~combout\(0) & ((\rf_a1_in~combout\(1)) # ((D1_registers[1][6])))) # (!\rf_a1_in~combout\(0) & (!\rf_a1_in~combout\(1) & ((\rf|registers[0][6]~regout\))))
-- \rf|registers[1][6]~regout\ = DFFEAS(\rf|Mux9~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~5_combout\, \rf_d3_in~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1_in~combout\(0),
	datab => \rf_a1_in~combout\(1),
	datac => \rf_d3_in~combout\(6),
	datad => \rf|registers[0][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux9~2\,
	regout => \rf|registers[1][6]~regout\);

-- Location: LC_X6_Y7_N2
\rf|registers[0][6]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux25~2\ = (\rf_a2_in~combout\(1) & (((\rf_a2_in~combout\(0))))) # (!\rf_a2_in~combout\(1) & ((\rf_a2_in~combout\(0) & (\rf|registers[1][6]~regout\)) # (!\rf_a2_in~combout\(0) & ((D1_registers[0][6])))))
-- \rf|registers[0][6]~regout\ = DFFEAS(\rf|Mux25~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~6_combout\, \rf_d3_in~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2_in~combout\(1),
	datab => \rf|registers[1][6]~regout\,
	datac => \rf_d3_in~combout\(6),
	datad => \rf_a2_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux25~2\,
	regout => \rf|registers[0][6]~regout\);

-- Location: LC_X7_Y8_N3
\rf|registers[2][6]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux9~3\ = (\rf_a1_in~combout\(1) & ((\rf|Mux9~2\ & (!\rf|registers[3][6]~regout\)) # (!\rf|Mux9~2\ & ((D1_registers[2][6]))))) # (!\rf_a1_in~combout\(1) & (((\rf|Mux9~2\))))
-- \rf|registers[2][6]~regout\ = DFFEAS(\rf|Mux9~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~4_combout\, \rf_d3_in~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1_in~combout\(1),
	datab => \rf|registers[3][6]~regout\,
	datac => \rf_d3_in~combout\(6),
	datad => \rf|Mux9~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux9~3\,
	regout => \rf|registers[2][6]~regout\);

-- Location: LC_X9_Y9_N3
\rf|Mux9~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux9~4_combout\ = (\rf_a1_in~combout\(2) & (\rf|Mux9~1\)) # (!\rf_a1_in~combout\(2) & (((\rf|Mux9~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux9~1\,
	datab => \rf|Mux9~3\,
	datac => \rf_a1_in~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux9~4_combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3_in[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3_in(7),
	combout => \rf_d3_in~combout\(7));

-- Location: LC_X6_Y7_N3
\rf|registers[0][7]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[0][7]~regout\ = DFFEAS((((!\rf_d3_in~combout\(7)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \rf_d3_in~combout\(7),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[0][7]~regout\);

-- Location: LC_X6_Y7_N7
\rf|registers[1][7]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux8~2\ = (\rf_a1_in~combout\(0) & ((\rf_a1_in~combout\(1)) # ((D1_registers[1][7])))) # (!\rf_a1_in~combout\(0) & (!\rf_a1_in~combout\(1) & ((!\rf|registers[0][7]~regout\))))
-- \rf|registers[1][7]~regout\ = DFFEAS(\rf|Mux8~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~5_combout\, \rf_d3_in~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8b9",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1_in~combout\(0),
	datab => \rf_a1_in~combout\(1),
	datac => \rf_d3_in~combout\(7),
	datad => \rf|registers[0][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux8~2\,
	regout => \rf|registers[1][7]~regout\);

-- Location: LC_X5_Y7_N0
\rf|registers[3][7]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[3][7]~regout\ = DFFEAS((((!\rf_d3_in~combout\(7)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \rf_d3_in~combout\(7),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[3][7]~regout\);

-- Location: LC_X5_Y7_N4
\rf|registers[2][7]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux8~3\ = (\rf|Mux8~2\ & (((!\rf_a1_in~combout\(1))) # (!\rf|registers[3][7]~regout\))) # (!\rf|Mux8~2\ & (((D1_registers[2][7] & \rf_a1_in~combout\(1)))))
-- \rf|registers[2][7]~regout\ = DFFEAS(\rf|Mux8~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~4_combout\, \rf_d3_in~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "72aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|Mux8~2\,
	datab => \rf|registers[3][7]~regout\,
	datac => \rf_d3_in~combout\(7),
	datad => \rf_a1_in~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux8~3\,
	regout => \rf|registers[2][7]~regout\);

-- Location: LC_X7_Y6_N7
\rf|registers[4][7]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[4][7]~regout\ = DFFEAS((((!\rf_d3_in~combout\(7)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \rf_d3_in~combout\(7),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[4][7]~regout\);

-- Location: LC_X7_Y6_N5
\rf|registers[6][7]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[6][7]~regout\ = DFFEAS((((!\rf_d3_in~combout\(7)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \rf_d3_in~combout\(7),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[6][7]~regout\);

-- Location: LC_X7_Y7_N4
\rf|Mux8~0\ : maxv_lcell
-- Equation(s):
-- \rf|Mux8~0_combout\ = (\rf_a1_in~combout\(1) & (((\rf_a1_in~combout\(0)) # (!\rf|registers[6][7]~regout\)))) # (!\rf_a1_in~combout\(1) & (!\rf|registers[4][7]~regout\ & ((!\rf_a1_in~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f035",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[4][7]~regout\,
	datab => \rf|registers[6][7]~regout\,
	datac => \rf_a1_in~combout\(1),
	datad => \rf_a1_in~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux8~0_combout\);

-- Location: LC_X7_Y7_N0
\rf|registers[7][7]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[7][7]~regout\ = DFFEAS((((!\rf_d3_in~combout\(7)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \rf_d3_in~combout\(7),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[7][7]~regout\);

-- Location: LC_X7_Y7_N9
\rf|registers[5][7]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux8~1\ = (\rf|Mux8~0_combout\ & (((!\rf_a1_in~combout\(0))) # (!\rf|registers[7][7]~regout\))) # (!\rf|Mux8~0_combout\ & (((D1_registers[5][7] & \rf_a1_in~combout\(0)))))
-- \rf|registers[5][7]~regout\ = DFFEAS(\rf|Mux8~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~0_combout\, \rf_d3_in~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "72aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|Mux8~0_combout\,
	datab => \rf|registers[7][7]~regout\,
	datac => \rf_d3_in~combout\(7),
	datad => \rf_a1_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux8~1\,
	regout => \rf|registers[5][7]~regout\);

-- Location: LC_X5_Y7_N8
\rf|Mux8~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux8~4_combout\ = ((\rf_a1_in~combout\(2) & ((\rf|Mux8~1\))) # (!\rf_a1_in~combout\(2) & (\rf|Mux8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rf_a1_in~combout\(2),
	datac => \rf|Mux8~3\,
	datad => \rf|Mux8~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux8~4_combout\);

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3_in[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3_in(8),
	combout => \rf_d3_in~combout\(8));

-- Location: LC_X8_Y8_N7
\rf|registers[0][8]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[0][8]~regout\ = DFFEAS((((!\rf_d3_in~combout\(8)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \rf_d3_in~combout\(8),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[0][8]~regout\);

-- Location: LC_X8_Y8_N3
\rf|registers[1][8]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux7~2\ = (\rf_a1_in~combout\(1) & (((\rf_a1_in~combout\(0))))) # (!\rf_a1_in~combout\(1) & ((\rf_a1_in~combout\(0) & ((D1_registers[1][8]))) # (!\rf_a1_in~combout\(0) & (!\rf|registers[0][8]~regout\))))
-- \rf|registers[1][8]~regout\ = DFFEAS(\rf|Mux7~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~5_combout\, \rf_d3_in~combout\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa11",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1_in~combout\(1),
	datab => \rf|registers[0][8]~regout\,
	datac => \rf_d3_in~combout\(8),
	datad => \rf_a1_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux7~2\,
	regout => \rf|registers[1][8]~regout\);

-- Location: LC_X8_Y7_N7
\rf|registers[3][8]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[3][8]~regout\ = DFFEAS((!\rf_d3_in~combout\(8)), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5555",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_d3_in~combout\(8),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[3][8]~regout\);

-- Location: LC_X8_Y7_N0
\rf|registers[2][8]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux7~3\ = (\rf|Mux7~2\ & (((!\rf_a1_in~combout\(1))) # (!\rf|registers[3][8]~regout\))) # (!\rf|Mux7~2\ & (((D1_registers[2][8] & \rf_a1_in~combout\(1)))))
-- \rf|registers[2][8]~regout\ = DFFEAS(\rf|Mux7~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~4_combout\, \rf_d3_in~combout\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "72aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|Mux7~2\,
	datab => \rf|registers[3][8]~regout\,
	datac => \rf_d3_in~combout\(8),
	datad => \rf_a1_in~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux7~3\,
	regout => \rf|registers[2][8]~regout\);

-- Location: LC_X11_Y8_N7
\rf|registers[6][8]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[6][8]~regout\ = DFFEAS((((!\rf_d3_in~combout\(8)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \rf_d3_in~combout\(8),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[6][8]~regout\);

-- Location: LC_X9_Y8_N9
\rf|registers[4][8]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux7~0\ = (\rf_a1_in~combout\(1) & (((\rf_a1_in~combout\(0))) # (!\rf|registers[6][8]~regout\))) # (!\rf_a1_in~combout\(1) & (((D1_registers[4][8] & !\rf_a1_in~combout\(0)))))
-- \rf|registers[4][8]~regout\ = DFFEAS(\rf|Mux7~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~2_combout\, \rf_d3_in~combout\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc74",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|registers[6][8]~regout\,
	datab => \rf_a1_in~combout\(1),
	datac => \rf_d3_in~combout\(8),
	datad => \rf_a1_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux7~0\,
	regout => \rf|registers[4][8]~regout\);

-- Location: LC_X10_Y7_N5
\rf|registers[7][8]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[7][8]~regout\ = DFFEAS(((!\rf_d3_in~combout\(8))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3333",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \rf_d3_in~combout\(8),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[7][8]~regout\);

-- Location: LC_X9_Y8_N3
\rf|registers[5][8]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux7~1\ = (\rf_a1_in~combout\(0) & ((\rf|Mux7~0\ & ((!\rf|registers[7][8]~regout\))) # (!\rf|Mux7~0\ & (D1_registers[5][8])))) # (!\rf_a1_in~combout\(0) & (\rf|Mux7~0\))
-- \rf|registers[5][8]~regout\ = DFFEAS(\rf|Mux7~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~0_combout\, \rf_d3_in~combout\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "64ec",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1_in~combout\(0),
	datab => \rf|Mux7~0\,
	datac => \rf_d3_in~combout\(8),
	datad => \rf|registers[7][8]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux7~1\,
	regout => \rf|registers[5][8]~regout\);

-- Location: LC_X9_Y8_N2
\rf|Mux7~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux7~4_combout\ = (\rf_a1_in~combout\(2) & (((\rf|Mux7~1\)))) # (!\rf_a1_in~combout\(2) & (\rf|Mux7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux7~3\,
	datab => \rf_a1_in~combout\(2),
	datad => \rf|Mux7~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux7~4_combout\);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3_in[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3_in(9),
	combout => \rf_d3_in~combout\(9));

-- Location: LC_X6_Y8_N6
\rf|registers[1][9]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux6~2\ = (\rf_a1_in~combout\(1) & (((\rf_a1_in~combout\(0))))) # (!\rf_a1_in~combout\(1) & ((\rf_a1_in~combout\(0) & ((D1_registers[1][9]))) # (!\rf_a1_in~combout\(0) & (\rf|registers[0][9]~regout\))))
-- \rf|registers[1][9]~regout\ = DFFEAS(\rf|Mux6~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~5_combout\, \rf_d3_in~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|registers[0][9]~regout\,
	datab => \rf_a1_in~combout\(1),
	datac => \rf_d3_in~combout\(9),
	datad => \rf_a1_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux6~2\,
	regout => \rf|registers[1][9]~regout\);

-- Location: LC_X6_Y8_N3
\rf|registers[0][9]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux22~2\ = (\rf_a2_in~combout\(1) & (((\rf_a2_in~combout\(0))))) # (!\rf_a2_in~combout\(1) & ((\rf_a2_in~combout\(0) & (\rf|registers[1][9]~regout\)) # (!\rf_a2_in~combout\(0) & ((D1_registers[0][9])))))
-- \rf|registers[0][9]~regout\ = DFFEAS(\rf|Mux22~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~6_combout\, \rf_d3_in~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2_in~combout\(1),
	datab => \rf|registers[1][9]~regout\,
	datac => \rf_d3_in~combout\(9),
	datad => \rf_a2_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux22~2\,
	regout => \rf|registers[0][9]~regout\);

-- Location: LC_X8_Y9_N2
\rf|registers[3][9]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[3][9]~regout\ = DFFEAS((((!\rf_d3_in~combout\(9)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \rf_d3_in~combout\(9),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[3][9]~regout\);

-- Location: LC_X7_Y8_N4
\rf|registers[2][9]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux6~3\ = (\rf_a1_in~combout\(1) & ((\rf|Mux6~2\ & ((!\rf|registers[3][9]~regout\))) # (!\rf|Mux6~2\ & (D1_registers[2][9])))) # (!\rf_a1_in~combout\(1) & (\rf|Mux6~2\))
-- \rf|registers[2][9]~regout\ = DFFEAS(\rf|Mux6~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~4_combout\, \rf_d3_in~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "64ec",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1_in~combout\(1),
	datab => \rf|Mux6~2\,
	datac => \rf_d3_in~combout\(9),
	datad => \rf|registers[3][9]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux6~3\,
	regout => \rf|registers[2][9]~regout\);

-- Location: LC_X11_Y8_N6
\rf|registers[6][9]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[6][9]~regout\ = DFFEAS((((!\rf_d3_in~combout\(9)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \rf_d3_in~combout\(9),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[6][9]~regout\);

-- Location: LC_X10_Y8_N6
\rf|registers[4][9]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux6~0\ = (\rf_a1_in~combout\(1) & (((\rf_a1_in~combout\(0))) # (!\rf|registers[6][9]~regout\))) # (!\rf_a1_in~combout\(1) & (((D1_registers[4][9] & !\rf_a1_in~combout\(0)))))
-- \rf|registers[4][9]~regout\ = DFFEAS(\rf|Mux6~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~2_combout\, \rf_d3_in~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc74",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|registers[6][9]~regout\,
	datab => \rf_a1_in~combout\(1),
	datac => \rf_d3_in~combout\(9),
	datad => \rf_a1_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux6~0\,
	regout => \rf|registers[4][9]~regout\);

-- Location: LC_X11_Y8_N2
\rf|registers[7][9]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[7][9]~regout\ = DFFEAS(((!\rf_d3_in~combout\(9))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3333",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \rf_d3_in~combout\(9),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[7][9]~regout\);

-- Location: LC_X10_Y8_N7
\rf|registers[5][9]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux6~1\ = (\rf|Mux6~0\ & (((!\rf|registers[7][9]~regout\)) # (!\rf_a1_in~combout\(0)))) # (!\rf|Mux6~0\ & (\rf_a1_in~combout\(0) & (D1_registers[5][9])))
-- \rf|registers[5][9]~regout\ = DFFEAS(\rf|Mux6~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~0_combout\, \rf_d3_in~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "62ea",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|Mux6~0\,
	datab => \rf_a1_in~combout\(0),
	datac => \rf_d3_in~combout\(9),
	datad => \rf|registers[7][9]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux6~1\,
	regout => \rf|registers[5][9]~regout\);

-- Location: LC_X10_Y8_N8
\rf|Mux6~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux6~4_combout\ = (\rf_a1_in~combout\(2) & (((\rf|Mux6~1\)))) # (!\rf_a1_in~combout\(2) & (\rf|Mux6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a1_in~combout\(2),
	datab => \rf|Mux6~3\,
	datad => \rf|Mux6~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux6~4_combout\);

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3_in[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3_in(10),
	combout => \rf_d3_in~combout\(10));

-- Location: LC_X6_Y6_N6
\rf|registers[7][10]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[7][10]~regout\ = DFFEAS((((!\rf_d3_in~combout\(10)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \rf_d3_in~combout\(10),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[7][10]~regout\);

-- Location: LC_X9_Y6_N3
\rf|registers[6][10]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[6][10]~regout\ = DFFEAS(((!\rf_d3_in~combout\(10))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3333",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \rf_d3_in~combout\(10),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[6][10]~regout\);

-- Location: LC_X9_Y6_N0
\rf|registers[4][10]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux5~0\ = (\rf_a1_in~combout\(1) & ((\rf_a1_in~combout\(0)) # ((!\rf|registers[6][10]~regout\)))) # (!\rf_a1_in~combout\(1) & (!\rf_a1_in~combout\(0) & (D1_registers[4][10])))
-- \rf|registers[4][10]~regout\ = DFFEAS(\rf|Mux5~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~2_combout\, \rf_d3_in~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "98ba",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1_in~combout\(1),
	datab => \rf_a1_in~combout\(0),
	datac => \rf_d3_in~combout\(10),
	datad => \rf|registers[6][10]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux5~0\,
	regout => \rf|registers[4][10]~regout\);

-- Location: LC_X6_Y6_N5
\rf|registers[5][10]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux5~1\ = (\rf|Mux5~0\ & (((!\rf_a1_in~combout\(0))) # (!\rf|registers[7][10]~regout\))) # (!\rf|Mux5~0\ & (((D1_registers[5][10] & \rf_a1_in~combout\(0)))))
-- \rf|registers[5][10]~regout\ = DFFEAS(\rf|Mux5~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~0_combout\, \rf_d3_in~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "74cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|registers[7][10]~regout\,
	datab => \rf|Mux5~0\,
	datac => \rf_d3_in~combout\(10),
	datad => \rf_a1_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux5~1\,
	regout => \rf|registers[5][10]~regout\);

-- Location: LC_X6_Y7_N1
\rf|registers[1][10]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux5~2\ = (\rf_a1_in~combout\(0) & ((\rf_a1_in~combout\(1)) # ((D1_registers[1][10])))) # (!\rf_a1_in~combout\(0) & (!\rf_a1_in~combout\(1) & ((\rf|registers[0][10]~regout\))))
-- \rf|registers[1][10]~regout\ = DFFEAS(\rf|Mux5~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~5_combout\, \rf_d3_in~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1_in~combout\(0),
	datab => \rf_a1_in~combout\(1),
	datac => \rf_d3_in~combout\(10),
	datad => \rf|registers[0][10]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux5~2\,
	regout => \rf|registers[1][10]~regout\);

-- Location: LC_X6_Y7_N8
\rf|registers[0][10]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux21~2\ = (\rf_a2_in~combout\(1) & (((\rf_a2_in~combout\(0))))) # (!\rf_a2_in~combout\(1) & ((\rf_a2_in~combout\(0) & (\rf|registers[1][10]~regout\)) # (!\rf_a2_in~combout\(0) & ((D1_registers[0][10])))))
-- \rf|registers[0][10]~regout\ = DFFEAS(\rf|Mux21~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~6_combout\, \rf_d3_in~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2_in~combout\(1),
	datab => \rf|registers[1][10]~regout\,
	datac => \rf_d3_in~combout\(10),
	datad => \rf_a2_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux21~2\,
	regout => \rf|registers[0][10]~regout\);

-- Location: LC_X8_Y7_N9
\rf|registers[3][10]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[3][10]~regout\ = DFFEAS((((!\rf_d3_in~combout\(10)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \rf_d3_in~combout\(10),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[3][10]~regout\);

-- Location: LC_X8_Y7_N3
\rf|registers[2][10]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux5~3\ = (\rf|Mux5~2\ & (((!\rf|registers[3][10]~regout\)) # (!\rf_a1_in~combout\(1)))) # (!\rf|Mux5~2\ & (\rf_a1_in~combout\(1) & (D1_registers[2][10])))
-- \rf|registers[2][10]~regout\ = DFFEAS(\rf|Mux5~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~4_combout\, \rf_d3_in~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "62ea",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|Mux5~2\,
	datab => \rf_a1_in~combout\(1),
	datac => \rf_d3_in~combout\(10),
	datad => \rf|registers[3][10]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux5~3\,
	regout => \rf|registers[2][10]~regout\);

-- Location: LC_X6_Y6_N9
\rf|Mux5~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux5~4_combout\ = ((\rf_a1_in~combout\(2) & (\rf|Mux5~1\)) # (!\rf_a1_in~combout\(2) & ((\rf|Mux5~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux5~1\,
	datac => \rf_a1_in~combout\(2),
	datad => \rf|Mux5~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux5~4_combout\);

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3_in[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3_in(11),
	combout => \rf_d3_in~combout\(11));

-- Location: LC_X7_Y8_N1
\rf|registers[3][11]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[3][11]~regout\ = DFFEAS(((!\rf_d3_in~combout\(11))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3333",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \rf_d3_in~combout\(11),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[3][11]~regout\);

-- Location: LC_X8_Y8_N8
\rf|registers[1][11]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux4~2\ = (\rf_a1_in~combout\(1) & (((\rf_a1_in~combout\(0))))) # (!\rf_a1_in~combout\(1) & ((\rf_a1_in~combout\(0) & ((D1_registers[1][11]))) # (!\rf_a1_in~combout\(0) & (\rf|registers[0][11]~regout\))))
-- \rf|registers[1][11]~regout\ = DFFEAS(\rf|Mux4~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~5_combout\, \rf_d3_in~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|registers[0][11]~regout\,
	datab => \rf_a1_in~combout\(1),
	datac => \rf_d3_in~combout\(11),
	datad => \rf_a1_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux4~2\,
	regout => \rf|registers[1][11]~regout\);

-- Location: LC_X8_Y8_N6
\rf|registers[0][11]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux20~2\ = (\rf_a2_in~combout\(1) & (\rf_a2_in~combout\(0))) # (!\rf_a2_in~combout\(1) & ((\rf_a2_in~combout\(0) & ((\rf|registers[1][11]~regout\))) # (!\rf_a2_in~combout\(0) & (D1_registers[0][11]))))
-- \rf|registers[0][11]~regout\ = DFFEAS(\rf|Mux20~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~6_combout\, \rf_d3_in~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2_in~combout\(1),
	datab => \rf_a2_in~combout\(0),
	datac => \rf_d3_in~combout\(11),
	datad => \rf|registers[1][11]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux20~2\,
	regout => \rf|registers[0][11]~regout\);

-- Location: LC_X7_Y8_N8
\rf|registers[2][11]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux4~3\ = (\rf_a1_in~combout\(1) & ((\rf|Mux4~2\ & (!\rf|registers[3][11]~regout\)) # (!\rf|Mux4~2\ & ((D1_registers[2][11]))))) # (!\rf_a1_in~combout\(1) & (((\rf|Mux4~2\))))
-- \rf|registers[2][11]~regout\ = DFFEAS(\rf|Mux4~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~4_combout\, \rf_d3_in~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1_in~combout\(1),
	datab => \rf|registers[3][11]~regout\,
	datac => \rf_d3_in~combout\(11),
	datad => \rf|Mux4~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux4~3\,
	regout => \rf|registers[2][11]~regout\);

-- Location: LC_X11_Y8_N4
\rf|registers[6][11]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux4~0\ = (\rf_a1_in~combout\(0) & (((\rf_a1_in~combout\(1))))) # (!\rf_a1_in~combout\(0) & ((\rf_a1_in~combout\(1) & ((D1_registers[6][11]))) # (!\rf_a1_in~combout\(1) & (\rf|registers[4][11]~regout\))))
-- \rf|registers[6][11]~regout\ = DFFEAS(\rf|Mux4~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~1_combout\, \rf_d3_in~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1_in~combout\(0),
	datab => \rf|registers[4][11]~regout\,
	datac => \rf_d3_in~combout\(11),
	datad => \rf_a1_in~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux4~0\,
	regout => \rf|registers[6][11]~regout\);

-- Location: LC_X9_Y8_N7
\rf|registers[4][11]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux20~0\ = (\rf_a2_in~combout\(0) & (((\rf_a2_in~combout\(1))))) # (!\rf_a2_in~combout\(0) & ((\rf_a2_in~combout\(1) & (\rf|registers[6][11]~regout\)) # (!\rf_a2_in~combout\(1) & ((D1_registers[4][11])))))
-- \rf|registers[4][11]~regout\ = DFFEAS(\rf|Mux20~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~2_combout\, \rf_d3_in~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|registers[6][11]~regout\,
	datab => \rf_a2_in~combout\(0),
	datac => \rf_d3_in~combout\(11),
	datad => \rf_a2_in~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux20~0\,
	regout => \rf|registers[4][11]~regout\);

-- Location: LC_X11_Y8_N9
\rf|registers[7][11]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[7][11]~regout\ = DFFEAS((((!\rf_d3_in~combout\(11)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \rf_d3_in~combout\(11),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[7][11]~regout\);

-- Location: LC_X9_Y8_N4
\rf|registers[5][11]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux4~1\ = (\rf|Mux4~0\ & (((!\rf_a1_in~combout\(0))) # (!\rf|registers[7][11]~regout\))) # (!\rf|Mux4~0\ & (((D1_registers[5][11] & \rf_a1_in~combout\(0)))))
-- \rf|registers[5][11]~regout\ = DFFEAS(\rf|Mux4~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~0_combout\, \rf_d3_in~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "72aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|Mux4~0\,
	datab => \rf|registers[7][11]~regout\,
	datac => \rf_d3_in~combout\(11),
	datad => \rf_a1_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux4~1\,
	regout => \rf|registers[5][11]~regout\);

-- Location: LC_X9_Y8_N5
\rf|Mux4~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux4~4_combout\ = ((\rf_a1_in~combout\(2) & ((\rf|Mux4~1\))) # (!\rf_a1_in~combout\(2) & (\rf|Mux4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rf_a1_in~combout\(2),
	datac => \rf|Mux4~3\,
	datad => \rf|Mux4~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux4~4_combout\);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3_in[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3_in(12),
	combout => \rf_d3_in~combout\(12));

-- Location: LC_X9_Y6_N4
\rf|registers[6][12]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux3~0\ = (\rf_a1_in~combout\(1) & (((D1_registers[6][12]) # (\rf_a1_in~combout\(0))))) # (!\rf_a1_in~combout\(1) & (\rf|registers[4][12]~regout\ & ((!\rf_a1_in~combout\(0)))))
-- \rf|registers[6][12]~regout\ = DFFEAS(\rf|Mux3~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~1_combout\, \rf_d3_in~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1_in~combout\(1),
	datab => \rf|registers[4][12]~regout\,
	datac => \rf_d3_in~combout\(12),
	datad => \rf_a1_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux3~0\,
	regout => \rf|registers[6][12]~regout\);

-- Location: LC_X9_Y6_N9
\rf|registers[4][12]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux19~0\ = (\rf_a2_in~combout\(1) & ((\rf|registers[6][12]~regout\) # ((\rf_a2_in~combout\(0))))) # (!\rf_a2_in~combout\(1) & (((D1_registers[4][12] & !\rf_a2_in~combout\(0)))))
-- \rf|registers[4][12]~regout\ = DFFEAS(\rf|Mux19~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~2_combout\, \rf_d3_in~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|registers[6][12]~regout\,
	datab => \rf_a2_in~combout\(1),
	datac => \rf_d3_in~combout\(12),
	datad => \rf_a2_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux19~0\,
	regout => \rf|registers[4][12]~regout\);

-- Location: LC_X7_Y7_N8
\rf|registers[5][12]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux3~1\ = (\rf|Mux3~0\ & ((\rf|registers[7][12]~regout\) # ((!\rf_a1_in~combout\(0))))) # (!\rf|Mux3~0\ & (((D1_registers[5][12] & \rf_a1_in~combout\(0)))))
-- \rf|registers[5][12]~regout\ = DFFEAS(\rf|Mux3~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~0_combout\, \rf_d3_in~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|registers[7][12]~regout\,
	datab => \rf|Mux3~0\,
	datac => \rf_d3_in~combout\(12),
	datad => \rf_a1_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux3~1\,
	regout => \rf|registers[5][12]~regout\);

-- Location: LC_X7_Y7_N5
\rf|registers[7][12]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux19~1\ = (\rf_a2_in~combout\(0) & ((\rf|Mux19~0\ & ((D1_registers[7][12]))) # (!\rf|Mux19~0\ & (\rf|registers[5][12]~regout\)))) # (!\rf_a2_in~combout\(0) & (((\rf|Mux19~0\))))
-- \rf|registers[7][12]~regout\ = DFFEAS(\rf|Mux19~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~3_combout\, \rf_d3_in~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2_in~combout\(0),
	datab => \rf|registers[5][12]~regout\,
	datac => \rf_d3_in~combout\(12),
	datad => \rf|Mux19~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux19~1\,
	regout => \rf|registers[7][12]~regout\);

-- Location: LC_X9_Y7_N6
\rf|registers[3][12]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[3][12]~regout\ = DFFEAS(((!\rf_d3_in~combout\(12))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3333",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \rf_d3_in~combout\(12),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[3][12]~regout\);

-- Location: LC_X8_Y8_N5
\rf|registers[1][12]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux3~2\ = (\rf_a1_in~combout\(1) & (((\rf_a1_in~combout\(0))))) # (!\rf_a1_in~combout\(1) & ((\rf_a1_in~combout\(0) & ((D1_registers[1][12]))) # (!\rf_a1_in~combout\(0) & (\rf|registers[0][12]~regout\))))
-- \rf|registers[1][12]~regout\ = DFFEAS(\rf|Mux3~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~5_combout\, \rf_d3_in~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1_in~combout\(1),
	datab => \rf|registers[0][12]~regout\,
	datac => \rf_d3_in~combout\(12),
	datad => \rf_a1_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux3~2\,
	regout => \rf|registers[1][12]~regout\);

-- Location: LC_X8_Y8_N0
\rf|registers[0][12]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux19~2\ = (\rf_a2_in~combout\(1) & (\rf_a2_in~combout\(0))) # (!\rf_a2_in~combout\(1) & ((\rf_a2_in~combout\(0) & ((\rf|registers[1][12]~regout\))) # (!\rf_a2_in~combout\(0) & (D1_registers[0][12]))))
-- \rf|registers[0][12]~regout\ = DFFEAS(\rf|Mux19~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~6_combout\, \rf_d3_in~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2_in~combout\(1),
	datab => \rf_a2_in~combout\(0),
	datac => \rf_d3_in~combout\(12),
	datad => \rf|registers[1][12]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux19~2\,
	regout => \rf|registers[0][12]~regout\);

-- Location: LC_X9_Y7_N9
\rf|registers[2][12]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux3~3\ = (\rf_a1_in~combout\(1) & ((\rf|Mux3~2\ & (!\rf|registers[3][12]~regout\)) # (!\rf|Mux3~2\ & ((D1_registers[2][12]))))) # (!\rf_a1_in~combout\(1) & (((\rf|Mux3~2\))))
-- \rf|registers[2][12]~regout\ = DFFEAS(\rf|Mux3~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~4_combout\, \rf_d3_in~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|registers[3][12]~regout\,
	datab => \rf_a1_in~combout\(1),
	datac => \rf_d3_in~combout\(12),
	datad => \rf|Mux3~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux3~3\,
	regout => \rf|registers[2][12]~regout\);

-- Location: LC_X9_Y7_N4
\rf|Mux3~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux3~4_combout\ = ((\rf_a1_in~combout\(2) & (\rf|Mux3~1\)) # (!\rf_a1_in~combout\(2) & ((\rf|Mux3~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rf|Mux3~1\,
	datac => \rf_a1_in~combout\(2),
	datad => \rf|Mux3~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux3~4_combout\);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3_in[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3_in(13),
	combout => \rf_d3_in~combout\(13));

-- Location: LC_X7_Y6_N8
\rf|registers[6][13]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[6][13]~regout\ = DFFEAS(((!\rf_d3_in~combout\(13))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3333",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \rf_d3_in~combout\(13),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[6][13]~regout\);

-- Location: LC_X10_Y9_N6
\rf|registers[4][13]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[4][13]~regout\ = DFFEAS(((!\rf_d3_in~combout\(13))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3333",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \rf_d3_in~combout\(13),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[4][13]~regout\);

-- Location: LC_X10_Y9_N4
\rf|Mux2~0\ : maxv_lcell
-- Equation(s):
-- \rf|Mux2~0_combout\ = (\rf_a1_in~combout\(1) & (((\rf_a1_in~combout\(0))) # (!\rf|registers[6][13]~regout\))) # (!\rf_a1_in~combout\(1) & (((!\rf|registers[4][13]~regout\ & !\rf_a1_in~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa27",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a1_in~combout\(1),
	datab => \rf|registers[6][13]~regout\,
	datac => \rf|registers[4][13]~regout\,
	datad => \rf_a1_in~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux2~0_combout\);

-- Location: LC_X7_Y7_N3
\rf|registers[7][13]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[7][13]~regout\ = DFFEAS((((!\rf_d3_in~combout\(13)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \rf_d3_in~combout\(13),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[7][13]~regout\);

-- Location: LC_X7_Y7_N1
\rf|registers[5][13]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux2~1\ = (\rf|Mux2~0_combout\ & (((!\rf|registers[7][13]~regout\)) # (!\rf_a1_in~combout\(0)))) # (!\rf|Mux2~0_combout\ & (\rf_a1_in~combout\(0) & (D1_registers[5][13])))
-- \rf|registers[5][13]~regout\ = DFFEAS(\rf|Mux2~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~0_combout\, \rf_d3_in~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "62ea",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|Mux2~0_combout\,
	datab => \rf_a1_in~combout\(0),
	datac => \rf_d3_in~combout\(13),
	datad => \rf|registers[7][13]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux2~1\,
	regout => \rf|registers[5][13]~regout\);

-- Location: LC_X7_Y9_N1
\rf|registers[3][13]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[3][13]~regout\ = DFFEAS((((!\rf_d3_in~combout\(13)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \rf_d3_in~combout\(13),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[3][13]~regout\);

-- Location: LC_X8_Y8_N4
\rf|registers[1][13]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux2~2\ = (\rf_a1_in~combout\(1) & (((\rf_a1_in~combout\(0))))) # (!\rf_a1_in~combout\(1) & ((\rf_a1_in~combout\(0) & ((D1_registers[1][13]))) # (!\rf_a1_in~combout\(0) & (\rf|registers[0][13]~regout\))))
-- \rf|registers[1][13]~regout\ = DFFEAS(\rf|Mux2~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~5_combout\, \rf_d3_in~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1_in~combout\(1),
	datab => \rf|registers[0][13]~regout\,
	datac => \rf_d3_in~combout\(13),
	datad => \rf_a1_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux2~2\,
	regout => \rf|registers[1][13]~regout\);

-- Location: LC_X8_Y8_N9
\rf|registers[0][13]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux18~2\ = (\rf_a2_in~combout\(1) & (((\rf_a2_in~combout\(0))))) # (!\rf_a2_in~combout\(1) & ((\rf_a2_in~combout\(0) & (\rf|registers[1][13]~regout\)) # (!\rf_a2_in~combout\(0) & ((D1_registers[0][13])))))
-- \rf|registers[0][13]~regout\ = DFFEAS(\rf|Mux18~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~6_combout\, \rf_d3_in~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2_in~combout\(1),
	datab => \rf|registers[1][13]~regout\,
	datac => \rf_d3_in~combout\(13),
	datad => \rf_a2_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux18~2\,
	regout => \rf|registers[0][13]~regout\);

-- Location: LC_X7_Y9_N7
\rf|registers[2][13]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux2~3\ = (\rf_a1_in~combout\(1) & ((\rf|Mux2~2\ & (!\rf|registers[3][13]~regout\)) # (!\rf|Mux2~2\ & ((D1_registers[2][13]))))) # (!\rf_a1_in~combout\(1) & (((\rf|Mux2~2\))))
-- \rf|registers[2][13]~regout\ = DFFEAS(\rf|Mux2~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~4_combout\, \rf_d3_in~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1_in~combout\(1),
	datab => \rf|registers[3][13]~regout\,
	datac => \rf_d3_in~combout\(13),
	datad => \rf|Mux2~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux2~3\,
	regout => \rf|registers[2][13]~regout\);

-- Location: LC_X7_Y9_N4
\rf|Mux2~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux2~4_combout\ = (\rf_a1_in~combout\(2) & (\rf|Mux2~1\)) # (!\rf_a1_in~combout\(2) & (((\rf|Mux2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux2~1\,
	datab => \rf_a1_in~combout\(2),
	datac => \rf|Mux2~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux2~4_combout\);

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3_in[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3_in(14),
	combout => \rf_d3_in~combout\(14));

-- Location: LC_X9_Y6_N6
\rf|registers[4][14]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[4][14]~regout\ = DFFEAS((!\rf_d3_in~combout\(14)), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5555",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_d3_in~combout\(14),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[4][14]~regout\);

-- Location: LC_X9_Y6_N1
\rf|registers[6][14]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux1~0\ = (\rf_a1_in~combout\(1) & (((D1_registers[6][14]) # (\rf_a1_in~combout\(0))))) # (!\rf_a1_in~combout\(1) & (!\rf|registers[4][14]~regout\ & ((!\rf_a1_in~combout\(0)))))
-- \rf|registers[6][14]~regout\ = DFFEAS(\rf|Mux1~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~1_combout\, \rf_d3_in~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccd1",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|registers[4][14]~regout\,
	datab => \rf_a1_in~combout\(1),
	datac => \rf_d3_in~combout\(14),
	datad => \rf_a1_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux1~0\,
	regout => \rf|registers[6][14]~regout\);

-- Location: LC_X8_Y6_N4
\rf|registers[5][14]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux1~1\ = (\rf|Mux1~0\ & ((\rf|registers[7][14]~regout\) # ((!\rf_a1_in~combout\(0))))) # (!\rf|Mux1~0\ & (((D1_registers[5][14] & \rf_a1_in~combout\(0)))))
-- \rf|registers[5][14]~regout\ = DFFEAS(\rf|Mux1~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~0_combout\, \rf_d3_in~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|Mux1~0\,
	datab => \rf|registers[7][14]~regout\,
	datac => \rf_d3_in~combout\(14),
	datad => \rf_a1_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux1~1\,
	regout => \rf|registers[5][14]~regout\);

-- Location: LC_X9_Y6_N8
\rf|Mux17~0\ : maxv_lcell
-- Equation(s):
-- \rf|Mux17~0_combout\ = (\rf_a2_in~combout\(1) & (((\rf|registers[6][14]~regout\) # (\rf_a2_in~combout\(0))))) # (!\rf_a2_in~combout\(1) & (!\rf|registers[4][14]~regout\ & ((!\rf_a2_in~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[4][14]~regout\,
	datab => \rf|registers[6][14]~regout\,
	datac => \rf_a2_in~combout\(1),
	datad => \rf_a2_in~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux17~0_combout\);

-- Location: LC_X8_Y6_N2
\rf|registers[7][14]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux17~1\ = (\rf_a2_in~combout\(0) & ((\rf|Mux17~0_combout\ & ((D1_registers[7][14]))) # (!\rf|Mux17~0_combout\ & (\rf|registers[5][14]~regout\)))) # (!\rf_a2_in~combout\(0) & (((\rf|Mux17~0_combout\))))
-- \rf|registers[7][14]~regout\ = DFFEAS(\rf|Mux17~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~3_combout\, \rf_d3_in~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|registers[5][14]~regout\,
	datab => \rf_a2_in~combout\(0),
	datac => \rf_d3_in~combout\(14),
	datad => \rf|Mux17~0_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux17~1\,
	regout => \rf|registers[7][14]~regout\);

-- Location: LC_X8_Y8_N1
\rf|registers[0][14]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux17~2\ = (\rf_a2_in~combout\(1) & (\rf_a2_in~combout\(0))) # (!\rf_a2_in~combout\(1) & ((\rf_a2_in~combout\(0) & ((\rf|registers[1][14]~regout\))) # (!\rf_a2_in~combout\(0) & (D1_registers[0][14]))))
-- \rf|registers[0][14]~regout\ = DFFEAS(\rf|Mux17~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~6_combout\, \rf_d3_in~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2_in~combout\(1),
	datab => \rf_a2_in~combout\(0),
	datac => \rf_d3_in~combout\(14),
	datad => \rf|registers[1][14]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux17~2\,
	regout => \rf|registers[0][14]~regout\);

-- Location: LC_X8_Y8_N2
\rf|registers[1][14]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux1~2\ = (\rf_a1_in~combout\(1) & (((\rf_a1_in~combout\(0))))) # (!\rf_a1_in~combout\(1) & ((\rf_a1_in~combout\(0) & ((D1_registers[1][14]))) # (!\rf_a1_in~combout\(0) & (\rf|registers[0][14]~regout\))))
-- \rf|registers[1][14]~regout\ = DFFEAS(\rf|Mux1~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~5_combout\, \rf_d3_in~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1_in~combout\(1),
	datab => \rf|registers[0][14]~regout\,
	datac => \rf_d3_in~combout\(14),
	datad => \rf_a1_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux1~2\,
	regout => \rf|registers[1][14]~regout\);

-- Location: LC_X7_Y9_N2
\rf|registers[2][14]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux1~3\ = (\rf_a1_in~combout\(1) & ((\rf|Mux1~2\ & (\rf|registers[3][14]~regout\)) # (!\rf|Mux1~2\ & ((D1_registers[2][14]))))) # (!\rf_a1_in~combout\(1) & (((\rf|Mux1~2\))))
-- \rf|registers[2][14]~regout\ = DFFEAS(\rf|Mux1~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~4_combout\, \rf_d3_in~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1_in~combout\(1),
	datab => \rf|registers[3][14]~regout\,
	datac => \rf_d3_in~combout\(14),
	datad => \rf|Mux1~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux1~3\,
	regout => \rf|registers[2][14]~regout\);

-- Location: LC_X7_Y9_N9
\rf|registers[3][14]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux17~3\ = (\rf|Mux17~2\ & (((D1_registers[3][14]) # (!\rf_a2_in~combout\(1))))) # (!\rf|Mux17~2\ & (\rf|registers[2][14]~regout\ & ((\rf_a2_in~combout\(1)))))
-- \rf|registers[3][14]~regout\ = DFFEAS(\rf|Mux17~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~7_combout\, \rf_d3_in~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|Mux17~2\,
	datab => \rf|registers[2][14]~regout\,
	datac => \rf_d3_in~combout\(14),
	datad => \rf_a2_in~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux17~3\,
	regout => \rf|registers[3][14]~regout\);

-- Location: LC_X7_Y9_N8
\rf|Mux1~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux1~4_combout\ = (\rf_a1_in~combout\(2) & (\rf|Mux1~1\)) # (!\rf_a1_in~combout\(2) & (((\rf|Mux1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux1~1\,
	datab => \rf_a1_in~combout\(2),
	datac => \rf|Mux1~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux1~4_combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3_in[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3_in(15),
	combout => \rf_d3_in~combout\(15));

-- Location: LC_X6_Y6_N7
\rf|registers[7][15]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[7][15]~regout\ = DFFEAS((((!\rf_d3_in~combout\(15)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \rf_d3_in~combout\(15),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[7][15]~regout\);

-- Location: LC_X7_Y6_N1
\rf|registers[4][15]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[4][15]~regout\ = DFFEAS(((!\rf_d3_in~combout\(15))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3333",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \rf_d3_in~combout\(15),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[4][15]~regout\);

-- Location: LC_X7_Y6_N2
\rf|registers[6][15]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[6][15]~regout\ = DFFEAS(((!\rf_d3_in~combout\(15))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3333",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \rf_d3_in~combout\(15),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[6][15]~regout\);

-- Location: LC_X6_Y6_N0
\rf|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \rf|Mux0~0_combout\ = (\rf_a1_in~combout\(1) & (((\rf_a1_in~combout\(0)) # (!\rf|registers[6][15]~regout\)))) # (!\rf_a1_in~combout\(1) & (!\rf|registers[4][15]~regout\ & ((!\rf_a1_in~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc1d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[4][15]~regout\,
	datab => \rf_a1_in~combout\(1),
	datac => \rf|registers[6][15]~regout\,
	datad => \rf_a1_in~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux0~0_combout\);

-- Location: LC_X6_Y6_N2
\rf|registers[5][15]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux0~1\ = (\rf|Mux0~0_combout\ & (((!\rf_a1_in~combout\(0))) # (!\rf|registers[7][15]~regout\))) # (!\rf|Mux0~0_combout\ & (((D1_registers[5][15] & \rf_a1_in~combout\(0)))))
-- \rf|registers[5][15]~regout\ = DFFEAS(\rf|Mux0~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~0_combout\, \rf_d3_in~combout\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "74cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|registers[7][15]~regout\,
	datab => \rf|Mux0~0_combout\,
	datac => \rf_d3_in~combout\(15),
	datad => \rf_a1_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux0~1\,
	regout => \rf|registers[5][15]~regout\);

-- Location: LC_X10_Y6_N8
\rf|registers[1][15]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux0~2\ = (\rf_a1_in~combout\(0) & (((D1_registers[1][15]) # (\rf_a1_in~combout\(1))))) # (!\rf_a1_in~combout\(0) & (\rf|registers[0][15]~regout\ & ((!\rf_a1_in~combout\(1)))))
-- \rf|registers[1][15]~regout\ = DFFEAS(\rf|Mux0~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~5_combout\, \rf_d3_in~combout\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1_in~combout\(0),
	datab => \rf|registers[0][15]~regout\,
	datac => \rf_d3_in~combout\(15),
	datad => \rf_a1_in~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux0~2\,
	regout => \rf|registers[1][15]~regout\);

-- Location: LC_X10_Y6_N4
\rf|registers[0][15]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux16~2\ = (\rf_a2_in~combout\(1) & (((\rf_a2_in~combout\(0))))) # (!\rf_a2_in~combout\(1) & ((\rf_a2_in~combout\(0) & (\rf|registers[1][15]~regout\)) # (!\rf_a2_in~combout\(0) & ((D1_registers[0][15])))))
-- \rf|registers[0][15]~regout\ = DFFEAS(\rf|Mux16~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~6_combout\, \rf_d3_in~combout\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|registers[1][15]~regout\,
	datab => \rf_a2_in~combout\(1),
	datac => \rf_d3_in~combout\(15),
	datad => \rf_a2_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux16~2\,
	regout => \rf|registers[0][15]~regout\);

-- Location: LC_X7_Y8_N2
\rf|registers[3][15]\ : maxv_lcell
-- Equation(s):
-- \rf|registers[3][15]~regout\ = DFFEAS((((!\rf_d3_in~combout\(15)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \rf_d3_in~combout\(15),
	aclr => \reset~combout\,
	ena => \rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|registers[3][15]~regout\);

-- Location: LC_X7_Y8_N6
\rf|registers[2][15]\ : maxv_lcell
-- Equation(s):
-- \rf|Mux0~3\ = (\rf|Mux0~2\ & (((!\rf_a1_in~combout\(1))) # (!\rf|registers[3][15]~regout\))) # (!\rf|Mux0~2\ & (((D1_registers[2][15] & \rf_a1_in~combout\(1)))))
-- \rf|registers[2][15]~regout\ = DFFEAS(\rf|Mux0~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \rf|Decoder0~4_combout\, \rf_d3_in~combout\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "72aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf|Mux0~2\,
	datab => \rf|registers[3][15]~regout\,
	datac => \rf_d3_in~combout\(15),
	datad => \rf_a1_in~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux0~3\,
	regout => \rf|registers[2][15]~regout\);

-- Location: LC_X6_Y6_N8
\rf|Mux0~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux0~4_combout\ = ((\rf_a1_in~combout\(2) & (\rf|Mux0~1\)) # (!\rf_a1_in~combout\(2) & ((\rf|Mux0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux0~1\,
	datac => \rf_a1_in~combout\(2),
	datad => \rf|Mux0~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux0~4_combout\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_a2_in[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_a2_in(2),
	combout => \rf_a2_in~combout\(2));

-- Location: LC_X6_Y8_N9
\rf|Mux31~2\ : maxv_lcell
-- Equation(s):
-- \rf|Mux31~2_combout\ = (\rf_a2_in~combout\(0) & (((\rf_a2_in~combout\(1)) # (\rf|registers[1][0]~regout\)))) # (!\rf_a2_in~combout\(0) & (!\rf|registers[0][0]~regout\ & (!\rf_a2_in~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cdc1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[0][0]~regout\,
	datab => \rf_a2_in~combout\(0),
	datac => \rf_a2_in~combout\(1),
	datad => \rf|registers[1][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux31~2_combout\);

-- Location: LC_X6_Y8_N0
\rf|Mux31~3\ : maxv_lcell
-- Equation(s):
-- \rf|Mux31~3_combout\ = (\rf_a2_in~combout\(1) & ((\rf|Mux31~2_combout\ & (!\rf|registers[3][0]~regout\)) # (!\rf|Mux31~2_combout\ & ((\rf|registers[2][0]~regout\))))) # (!\rf_a2_in~combout\(1) & (((\rf|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5fc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[3][0]~regout\,
	datab => \rf|registers[2][0]~regout\,
	datac => \rf_a2_in~combout\(1),
	datad => \rf|Mux31~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux31~3_combout\);

-- Location: LC_X11_Y9_N3
\rf|Mux31~1\ : maxv_lcell
-- Equation(s):
-- \rf|Mux31~1_combout\ = (\rf|Mux31~0\ & (((!\rf|registers[7][0]~regout\)) # (!\rf_a2_in~combout\(0)))) # (!\rf|Mux31~0\ & (\rf_a2_in~combout\(0) & (\rf|registers[5][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "62ea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux31~0\,
	datab => \rf_a2_in~combout\(0),
	datac => \rf|registers[5][0]~regout\,
	datad => \rf|registers[7][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux31~1_combout\);

-- Location: LC_X6_Y8_N5
\rf|Mux31~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux31~4_combout\ = ((\rf_a2_in~combout\(2) & ((\rf|Mux31~1_combout\))) # (!\rf_a2_in~combout\(2) & (\rf|Mux31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rf_a2_in~combout\(2),
	datac => \rf|Mux31~3_combout\,
	datad => \rf|Mux31~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux31~4_combout\);

-- Location: LC_X11_Y7_N1
\rf|Mux30~2\ : maxv_lcell
-- Equation(s):
-- \rf|Mux30~2_combout\ = (\rf_a2_in~combout\(0) & (((\rf|registers[1][1]~regout\) # (\rf_a2_in~combout\(1))))) # (!\rf_a2_in~combout\(0) & (!\rf|registers[0][1]~regout\ & ((!\rf_a2_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccd1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[0][1]~regout\,
	datab => \rf_a2_in~combout\(0),
	datac => \rf|registers[1][1]~regout\,
	datad => \rf_a2_in~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux30~2_combout\);

-- Location: LC_X11_Y7_N8
\rf|Mux30~3\ : maxv_lcell
-- Equation(s):
-- \rf|Mux30~3_combout\ = (\rf|Mux30~2_combout\ & (((!\rf_a2_in~combout\(1)) # (!\rf|registers[3][1]~regout\)))) # (!\rf|Mux30~2_combout\ & (\rf|registers[2][1]~regout\ & ((\rf_a2_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2ecc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[2][1]~regout\,
	datab => \rf|Mux30~2_combout\,
	datac => \rf|registers[3][1]~regout\,
	datad => \rf_a2_in~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux30~3_combout\);

-- Location: LC_X11_Y7_N3
\rf|Mux30~0\ : maxv_lcell
-- Equation(s):
-- \rf|Mux30~0_combout\ = (\rf_a2_in~combout\(0) & (((\rf_a2_in~combout\(1))))) # (!\rf_a2_in~combout\(0) & ((\rf_a2_in~combout\(1) & (\rf|registers[6][1]~regout\)) # (!\rf_a2_in~combout\(1) & ((!\rf|registers[4][1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[6][1]~regout\,
	datab => \rf_a2_in~combout\(0),
	datac => \rf|registers[4][1]~regout\,
	datad => \rf_a2_in~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux30~0_combout\);

-- Location: LC_X11_Y7_N2
\rf|Mux30~1\ : maxv_lcell
-- Equation(s):
-- \rf|Mux30~1_combout\ = (\rf_a2_in~combout\(0) & ((\rf|Mux30~0_combout\ & ((!\rf|registers[7][1]~regout\))) # (!\rf|Mux30~0_combout\ & (\rf|registers[5][1]~regout\)))) # (!\rf_a2_in~combout\(0) & (((\rf|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[5][1]~regout\,
	datab => \rf_a2_in~combout\(0),
	datac => \rf|registers[7][1]~regout\,
	datad => \rf|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux30~1_combout\);

-- Location: LC_X11_Y7_N7
\rf|Mux30~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux30~4_combout\ = (\rf_a2_in~combout\(2) & (((\rf|Mux30~1_combout\)))) # (!\rf_a2_in~combout\(2) & (\rf|Mux30~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux30~3_combout\,
	datab => \rf_a2_in~combout\(2),
	datad => \rf|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux30~4_combout\);

-- Location: LC_X9_Y7_N3
\rf|Mux29~3\ : maxv_lcell
-- Equation(s):
-- \rf|Mux29~3_combout\ = (\rf|Mux29~2\ & (((!\rf_a2_in~combout\(1))) # (!\rf|registers[3][2]~regout\))) # (!\rf|Mux29~2\ & (((\rf|registers[2][2]~regout\ & \rf_a2_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5cf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[3][2]~regout\,
	datab => \rf|registers[2][2]~regout\,
	datac => \rf|Mux29~2\,
	datad => \rf_a2_in~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux29~3_combout\);

-- Location: LC_X11_Y9_N0
\rf|Mux29~1\ : maxv_lcell
-- Equation(s):
-- \rf|Mux29~1_combout\ = (\rf_a2_in~combout\(0) & ((\rf|Mux29~0\ & (!\rf|registers[7][2]~regout\)) # (!\rf|Mux29~0\ & ((\rf|registers[5][2]~regout\))))) # (!\rf_a2_in~combout\(0) & (((\rf|Mux29~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a2_in~combout\(0),
	datab => \rf|registers[7][2]~regout\,
	datac => \rf|registers[5][2]~regout\,
	datad => \rf|Mux29~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux29~1_combout\);

-- Location: LC_X12_Y7_N9
\rf|Mux29~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux29~4_combout\ = ((\rf_a2_in~combout\(2) & ((\rf|Mux29~1_combout\))) # (!\rf_a2_in~combout\(2) & (\rf|Mux29~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rf|Mux29~3_combout\,
	datac => \rf_a2_in~combout\(2),
	datad => \rf|Mux29~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux29~4_combout\);

-- Location: LC_X10_Y6_N9
\rf|Mux28~3\ : maxv_lcell
-- Equation(s):
-- \rf|Mux28~3_combout\ = (\rf|Mux28~2\ & (((!\rf|registers[3][3]~regout\) # (!\rf_a2_in~combout\(1))))) # (!\rf|Mux28~2\ & (\rf|registers[2][3]~regout\ & (\rf_a2_in~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4aea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux28~2\,
	datab => \rf|registers[2][3]~regout\,
	datac => \rf_a2_in~combout\(1),
	datad => \rf|registers[3][3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux28~3_combout\);

-- Location: LC_X10_Y6_N7
\rf|Mux28~0\ : maxv_lcell
-- Equation(s):
-- \rf|Mux28~0_combout\ = (\rf_a2_in~combout\(1) & (((\rf_a2_in~combout\(0)) # (!\rf|registers[6][3]~regout\)))) # (!\rf_a2_in~combout\(1) & (!\rf|registers[4][3]~regout\ & ((!\rf_a2_in~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f035",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[4][3]~regout\,
	datab => \rf|registers[6][3]~regout\,
	datac => \rf_a2_in~combout\(1),
	datad => \rf_a2_in~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux28~0_combout\);

-- Location: LC_X10_Y6_N2
\rf|Mux28~1\ : maxv_lcell
-- Equation(s):
-- \rf|Mux28~1_combout\ = (\rf|Mux28~0_combout\ & (((!\rf|registers[7][3]~regout\) # (!\rf_a2_in~combout\(0))))) # (!\rf|Mux28~0_combout\ & (\rf|registers[5][3]~regout\ & (\rf_a2_in~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2cec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[5][3]~regout\,
	datab => \rf|Mux28~0_combout\,
	datac => \rf_a2_in~combout\(0),
	datad => \rf|registers[7][3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux28~1_combout\);

-- Location: LC_X10_Y6_N3
\rf|Mux28~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux28~4_combout\ = ((\rf_a2_in~combout\(2) & ((\rf|Mux28~1_combout\))) # (!\rf_a2_in~combout\(2) & (\rf|Mux28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rf|Mux28~3_combout\,
	datac => \rf_a2_in~combout\(2),
	datad => \rf|Mux28~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux28~4_combout\);

-- Location: LC_X11_Y9_N1
\rf|Mux27~1\ : maxv_lcell
-- Equation(s):
-- \rf|Mux27~1_combout\ = (\rf_a2_in~combout\(0) & ((\rf|Mux27~0\ & ((!\rf|registers[7][4]~regout\))) # (!\rf|Mux27~0\ & (\rf|registers[5][4]~regout\)))) # (!\rf_a2_in~combout\(0) & (((\rf|Mux27~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a2_in~combout\(0),
	datab => \rf|registers[5][4]~regout\,
	datac => \rf|registers[7][4]~regout\,
	datad => \rf|Mux27~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux27~1_combout\);

-- Location: LC_X7_Y9_N5
\rf|Mux27~3\ : maxv_lcell
-- Equation(s):
-- \rf|Mux27~3_combout\ = (\rf|Mux27~2\ & (((!\rf_a2_in~combout\(1)) # (!\rf|registers[3][4]~regout\)))) # (!\rf|Mux27~2\ & (\rf|registers[2][4]~regout\ & ((\rf_a2_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2ecc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[2][4]~regout\,
	datab => \rf|Mux27~2\,
	datac => \rf|registers[3][4]~regout\,
	datad => \rf_a2_in~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux27~3_combout\);

-- Location: LC_X12_Y7_N5
\rf|Mux27~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux27~4_combout\ = (\rf_a2_in~combout\(2) & (\rf|Mux27~1_combout\)) # (!\rf_a2_in~combout\(2) & (((\rf|Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux27~1_combout\,
	datab => \rf|Mux27~3_combout\,
	datac => \rf_a2_in~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux27~4_combout\);

-- Location: LC_X8_Y7_N8
\rf|Mux26~3\ : maxv_lcell
-- Equation(s):
-- \rf|Mux26~3_combout\ = (\rf|Mux26~2\ & (((!\rf_a2_in~combout\(1))) # (!\rf|registers[3][5]~regout\))) # (!\rf|Mux26~2\ & (((\rf|registers[2][5]~regout\ & \rf_a2_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "74cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[3][5]~regout\,
	datab => \rf|Mux26~2\,
	datac => \rf|registers[2][5]~regout\,
	datad => \rf_a2_in~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux26~3_combout\);

-- Location: LC_X10_Y9_N3
\rf|Mux26~0\ : maxv_lcell
-- Equation(s):
-- \rf|Mux26~0_combout\ = (\rf_a2_in~combout\(0) & (\rf_a2_in~combout\(1))) # (!\rf_a2_in~combout\(0) & ((\rf_a2_in~combout\(1) & (!\rf|registers[6][5]~regout\)) # (!\rf_a2_in~combout\(1) & ((!\rf|registers[4][5]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c9d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a2_in~combout\(0),
	datab => \rf_a2_in~combout\(1),
	datac => \rf|registers[6][5]~regout\,
	datad => \rf|registers[4][5]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux26~0_combout\);

-- Location: LC_X10_Y9_N8
\rf|Mux26~1\ : maxv_lcell
-- Equation(s):
-- \rf|Mux26~1_combout\ = (\rf|Mux26~0_combout\ & (((!\rf_a2_in~combout\(0))) # (!\rf|registers[7][5]~regout\))) # (!\rf|Mux26~0_combout\ & (((\rf_a2_in~combout\(0) & \rf|registers[5][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7a2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux26~0_combout\,
	datab => \rf|registers[7][5]~regout\,
	datac => \rf_a2_in~combout\(0),
	datad => \rf|registers[5][5]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux26~1_combout\);

-- Location: LC_X12_Y7_N4
\rf|Mux26~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux26~4_combout\ = ((\rf_a2_in~combout\(2) & ((\rf|Mux26~1_combout\))) # (!\rf_a2_in~combout\(2) & (\rf|Mux26~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux26~3_combout\,
	datac => \rf_a2_in~combout\(2),
	datad => \rf|Mux26~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux26~4_combout\);

-- Location: LC_X7_Y8_N5
\rf|Mux25~3\ : maxv_lcell
-- Equation(s):
-- \rf|Mux25~3_combout\ = (\rf|Mux25~2\ & (((!\rf_a2_in~combout\(1)) # (!\rf|registers[3][6]~regout\)))) # (!\rf|Mux25~2\ & (\rf|registers[2][6]~regout\ & ((\rf_a2_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3af0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[2][6]~regout\,
	datab => \rf|registers[3][6]~regout\,
	datac => \rf|Mux25~2\,
	datad => \rf_a2_in~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux25~3_combout\);

-- Location: LC_X11_Y9_N7
\rf|Mux25~1\ : maxv_lcell
-- Equation(s):
-- \rf|Mux25~1_combout\ = (\rf_a2_in~combout\(0) & ((\rf|Mux25~0\ & (!\rf|registers[7][6]~regout\)) # (!\rf|Mux25~0\ & ((\rf|registers[5][6]~regout\))))) # (!\rf_a2_in~combout\(0) & (((\rf|Mux25~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a2_in~combout\(0),
	datab => \rf|registers[7][6]~regout\,
	datac => \rf|registers[5][6]~regout\,
	datad => \rf|Mux25~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux25~1_combout\);

-- Location: LC_X12_Y7_N1
\rf|Mux25~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux25~4_combout\ = ((\rf_a2_in~combout\(2) & ((\rf|Mux25~1_combout\))) # (!\rf_a2_in~combout\(2) & (\rf|Mux25~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux25~3_combout\,
	datac => \rf_a2_in~combout\(2),
	datad => \rf|Mux25~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux25~4_combout\);

-- Location: LC_X7_Y7_N2
\rf|Mux24~0\ : maxv_lcell
-- Equation(s):
-- \rf|Mux24~0_combout\ = (\rf_a2_in~combout\(0) & (((\rf_a2_in~combout\(1))))) # (!\rf_a2_in~combout\(0) & ((\rf_a2_in~combout\(1) & (!\rf|registers[6][7]~regout\)) # (!\rf_a2_in~combout\(1) & ((!\rf|registers[4][7]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb05",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a2_in~combout\(0),
	datab => \rf|registers[6][7]~regout\,
	datac => \rf|registers[4][7]~regout\,
	datad => \rf_a2_in~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux24~0_combout\);

-- Location: LC_X7_Y7_N6
\rf|Mux24~1\ : maxv_lcell
-- Equation(s):
-- \rf|Mux24~1_combout\ = (\rf_a2_in~combout\(0) & ((\rf|Mux24~0_combout\ & ((!\rf|registers[7][7]~regout\))) # (!\rf|Mux24~0_combout\ & (\rf|registers[5][7]~regout\)))) # (!\rf_a2_in~combout\(0) & (((\rf|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a2_in~combout\(0),
	datab => \rf|registers[5][7]~regout\,
	datac => \rf|registers[7][7]~regout\,
	datad => \rf|Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux24~1_combout\);

-- Location: LC_X6_Y7_N5
\rf|Mux24~2\ : maxv_lcell
-- Equation(s):
-- \rf|Mux24~2_combout\ = (\rf_a2_in~combout\(1) & (\rf_a2_in~combout\(0))) # (!\rf_a2_in~combout\(1) & ((\rf_a2_in~combout\(0) & (\rf|registers[1][7]~regout\)) # (!\rf_a2_in~combout\(0) & ((!\rf|registers[0][7]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8d9",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a2_in~combout\(1),
	datab => \rf_a2_in~combout\(0),
	datac => \rf|registers[1][7]~regout\,
	datad => \rf|registers[0][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux24~2_combout\);

-- Location: LC_X6_Y7_N4
\rf|Mux24~3\ : maxv_lcell
-- Equation(s):
-- \rf|Mux24~3_combout\ = (\rf|Mux24~2_combout\ & (((!\rf_a2_in~combout\(1))) # (!\rf|registers[3][7]~regout\))) # (!\rf|Mux24~2_combout\ & (((\rf|registers[2][7]~regout\ & \rf_a2_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5cf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[3][7]~regout\,
	datab => \rf|registers[2][7]~regout\,
	datac => \rf|Mux24~2_combout\,
	datad => \rf_a2_in~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux24~3_combout\);

-- Location: LC_X12_Y7_N6
\rf|Mux24~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux24~4_combout\ = (\rf_a2_in~combout\(2) & (\rf|Mux24~1_combout\)) # (!\rf_a2_in~combout\(2) & (((\rf|Mux24~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a2_in~combout\(2),
	datab => \rf|Mux24~1_combout\,
	datac => \rf|Mux24~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux24~4_combout\);

-- Location: LC_X8_Y7_N4
\rf|Mux23~2\ : maxv_lcell
-- Equation(s):
-- \rf|Mux23~2_combout\ = (\rf_a2_in~combout\(0) & (((\rf|registers[1][8]~regout\) # (\rf_a2_in~combout\(1))))) # (!\rf_a2_in~combout\(0) & (!\rf|registers[0][8]~regout\ & ((!\rf_a2_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccd1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[0][8]~regout\,
	datab => \rf_a2_in~combout\(0),
	datac => \rf|registers[1][8]~regout\,
	datad => \rf_a2_in~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux23~2_combout\);

-- Location: LC_X8_Y7_N1
\rf|Mux23~3\ : maxv_lcell
-- Equation(s):
-- \rf|Mux23~3_combout\ = (\rf|Mux23~2_combout\ & (((!\rf_a2_in~combout\(1))) # (!\rf|registers[3][8]~regout\))) # (!\rf|Mux23~2_combout\ & (((\rf|registers[2][8]~regout\ & \rf_a2_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "72aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux23~2_combout\,
	datab => \rf|registers[3][8]~regout\,
	datac => \rf|registers[2][8]~regout\,
	datad => \rf_a2_in~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux23~3_combout\);

-- Location: LC_X9_Y8_N8
\rf|Mux23~0\ : maxv_lcell
-- Equation(s):
-- \rf|Mux23~0_combout\ = (\rf_a2_in~combout\(0) & (((\rf_a2_in~combout\(1))))) # (!\rf_a2_in~combout\(0) & ((\rf_a2_in~combout\(1) & (!\rf|registers[6][8]~regout\)) # (!\rf_a2_in~combout\(1) & ((\rf|registers[4][8]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f50c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[6][8]~regout\,
	datab => \rf|registers[4][8]~regout\,
	datac => \rf_a2_in~combout\(0),
	datad => \rf_a2_in~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux23~0_combout\);

-- Location: LC_X9_Y8_N0
\rf|Mux23~1\ : maxv_lcell
-- Equation(s):
-- \rf|Mux23~1_combout\ = (\rf|Mux23~0_combout\ & (((!\rf_a2_in~combout\(0))) # (!\rf|registers[7][8]~regout\))) # (!\rf|Mux23~0_combout\ & (((\rf_a2_in~combout\(0) & \rf|registers[5][8]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7a2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux23~0_combout\,
	datab => \rf|registers[7][8]~regout\,
	datac => \rf_a2_in~combout\(0),
	datad => \rf|registers[5][8]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux23~1_combout\);

-- Location: LC_X9_Y8_N1
\rf|Mux23~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux23~4_combout\ = ((\rf_a2_in~combout\(2) & ((\rf|Mux23~1_combout\))) # (!\rf_a2_in~combout\(2) & (\rf|Mux23~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rf_a2_in~combout\(2),
	datac => \rf|Mux23~3_combout\,
	datad => \rf|Mux23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux23~4_combout\);

-- Location: LC_X6_Y8_N1
\rf|Mux22~3\ : maxv_lcell
-- Equation(s):
-- \rf|Mux22~3_combout\ = (\rf|Mux22~2\ & (((!\rf_a2_in~combout\(1))) # (!\rf|registers[3][9]~regout\))) # (!\rf|Mux22~2\ & (((\rf_a2_in~combout\(1) & \rf|registers[2][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7a2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux22~2\,
	datab => \rf|registers[3][9]~regout\,
	datac => \rf_a2_in~combout\(1),
	datad => \rf|registers[2][9]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux22~3_combout\);

-- Location: LC_X10_Y8_N5
\rf|Mux22~0\ : maxv_lcell
-- Equation(s):
-- \rf|Mux22~0_combout\ = (\rf_a2_in~combout\(1) & (((\rf_a2_in~combout\(0))) # (!\rf|registers[6][9]~regout\))) # (!\rf_a2_in~combout\(1) & (((\rf|registers[4][9]~regout\ & !\rf_a2_in~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f05c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[6][9]~regout\,
	datab => \rf|registers[4][9]~regout\,
	datac => \rf_a2_in~combout\(1),
	datad => \rf_a2_in~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux22~0_combout\);

-- Location: LC_X10_Y8_N9
\rf|Mux22~1\ : maxv_lcell
-- Equation(s):
-- \rf|Mux22~1_combout\ = (\rf|Mux22~0_combout\ & (((!\rf|registers[7][9]~regout\) # (!\rf_a2_in~combout\(0))))) # (!\rf|Mux22~0_combout\ & (\rf|registers[5][9]~regout\ & (\rf_a2_in~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4aea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux22~0_combout\,
	datab => \rf|registers[5][9]~regout\,
	datac => \rf_a2_in~combout\(0),
	datad => \rf|registers[7][9]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux22~1_combout\);

-- Location: LC_X10_Y8_N4
\rf|Mux22~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux22~4_combout\ = ((\rf_a2_in~combout\(2) & ((\rf|Mux22~1_combout\))) # (!\rf_a2_in~combout\(2) & (\rf|Mux22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rf|Mux22~3_combout\,
	datac => \rf_a2_in~combout\(2),
	datad => \rf|Mux22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux22~4_combout\);

-- Location: LC_X8_Y7_N2
\rf|Mux21~3\ : maxv_lcell
-- Equation(s):
-- \rf|Mux21~3_combout\ = (\rf|Mux21~2\ & (((!\rf_a2_in~combout\(1)) # (!\rf|registers[3][10]~regout\)))) # (!\rf|Mux21~2\ & (\rf|registers[2][10]~regout\ & ((\rf_a2_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3af0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[2][10]~regout\,
	datab => \rf|registers[3][10]~regout\,
	datac => \rf|Mux21~2\,
	datad => \rf_a2_in~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux21~3_combout\);

-- Location: LC_X9_Y6_N2
\rf|Mux21~0\ : maxv_lcell
-- Equation(s):
-- \rf|Mux21~0_combout\ = (\rf_a2_in~combout\(1) & (((\rf_a2_in~combout\(0))) # (!\rf|registers[6][10]~regout\))) # (!\rf_a2_in~combout\(1) & (((\rf|registers[4][10]~regout\ & !\rf_a2_in~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f05c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[6][10]~regout\,
	datab => \rf|registers[4][10]~regout\,
	datac => \rf_a2_in~combout\(1),
	datad => \rf_a2_in~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux21~0_combout\);

-- Location: LC_X9_Y6_N7
\rf|Mux21~1\ : maxv_lcell
-- Equation(s):
-- \rf|Mux21~1_combout\ = (\rf|Mux21~0_combout\ & (((!\rf_a2_in~combout\(0)) # (!\rf|registers[7][10]~regout\)))) # (!\rf|Mux21~0_combout\ & (\rf|registers[5][10]~regout\ & ((\rf_a2_in~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2ecc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[5][10]~regout\,
	datab => \rf|Mux21~0_combout\,
	datac => \rf|registers[7][10]~regout\,
	datad => \rf_a2_in~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux21~1_combout\);

-- Location: LC_X9_Y5_N2
\rf|Mux21~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux21~4_combout\ = (\rf_a2_in~combout\(2) & (((\rf|Mux21~1_combout\)))) # (!\rf_a2_in~combout\(2) & (\rf|Mux21~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a2_in~combout\(2),
	datab => \rf|Mux21~3_combout\,
	datad => \rf|Mux21~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux21~4_combout\);

-- Location: LC_X7_Y8_N7
\rf|Mux20~3\ : maxv_lcell
-- Equation(s):
-- \rf|Mux20~3_combout\ = (\rf|Mux20~2\ & (((!\rf_a2_in~combout\(1)) # (!\rf|registers[3][11]~regout\)))) # (!\rf|Mux20~2\ & (\rf|registers[2][11]~regout\ & ((\rf_a2_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3af0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[2][11]~regout\,
	datab => \rf|registers[3][11]~regout\,
	datac => \rf|Mux20~2\,
	datad => \rf_a2_in~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux20~3_combout\);

-- Location: LC_X9_Y8_N6
\rf|Mux20~1\ : maxv_lcell
-- Equation(s):
-- \rf|Mux20~1_combout\ = (\rf|Mux20~0\ & (((!\rf|registers[7][11]~regout\) # (!\rf_a2_in~combout\(0))))) # (!\rf|Mux20~0\ & (\rf|registers[5][11]~regout\ & (\rf_a2_in~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2cec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[5][11]~regout\,
	datab => \rf|Mux20~0\,
	datac => \rf_a2_in~combout\(0),
	datad => \rf|registers[7][11]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux20~1_combout\);

-- Location: LC_X9_Y5_N9
\rf|Mux20~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux20~4_combout\ = (\rf_a2_in~combout\(2) & (((\rf|Mux20~1_combout\)))) # (!\rf_a2_in~combout\(2) & (((\rf|Mux20~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a2_in~combout\(2),
	datac => \rf|Mux20~3_combout\,
	datad => \rf|Mux20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux20~4_combout\);

-- Location: LC_X9_Y7_N0
\rf|Mux19~3\ : maxv_lcell
-- Equation(s):
-- \rf|Mux19~3_combout\ = (\rf|Mux19~2\ & (((!\rf_a2_in~combout\(1))) # (!\rf|registers[3][12]~regout\))) # (!\rf|Mux19~2\ & (((\rf|registers[2][12]~regout\ & \rf_a2_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "74cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[3][12]~regout\,
	datab => \rf|Mux19~2\,
	datac => \rf|registers[2][12]~regout\,
	datad => \rf_a2_in~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux19~3_combout\);

-- Location: LC_X7_Y6_N4
\rf|Mux19~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux19~4_combout\ = (\rf_a2_in~combout\(2) & (\rf|Mux19~1\)) # (!\rf_a2_in~combout\(2) & (((\rf|Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux19~1\,
	datab => \rf_a2_in~combout\(2),
	datad => \rf|Mux19~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux19~4_combout\);

-- Location: LC_X10_Y9_N2
\rf|Mux18~0\ : maxv_lcell
-- Equation(s):
-- \rf|Mux18~0_combout\ = (\rf_a2_in~combout\(1) & (((\rf_a2_in~combout\(0)) # (!\rf|registers[6][13]~regout\)))) # (!\rf_a2_in~combout\(1) & (!\rf|registers[4][13]~regout\ & ((!\rf_a2_in~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f035",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[4][13]~regout\,
	datab => \rf|registers[6][13]~regout\,
	datac => \rf_a2_in~combout\(1),
	datad => \rf_a2_in~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux18~0_combout\);

-- Location: LC_X7_Y7_N7
\rf|Mux18~1\ : maxv_lcell
-- Equation(s):
-- \rf|Mux18~1_combout\ = (\rf|Mux18~0_combout\ & (((!\rf_a2_in~combout\(0))) # (!\rf|registers[7][13]~regout\))) # (!\rf|Mux18~0_combout\ & (((\rf_a2_in~combout\(0) & \rf|registers[5][13]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7c4c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[7][13]~regout\,
	datab => \rf|Mux18~0_combout\,
	datac => \rf_a2_in~combout\(0),
	datad => \rf|registers[5][13]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux18~1_combout\);

-- Location: LC_X7_Y9_N0
\rf|Mux18~3\ : maxv_lcell
-- Equation(s):
-- \rf|Mux18~3_combout\ = (\rf|Mux18~2\ & (((!\rf_a2_in~combout\(1))) # (!\rf|registers[3][13]~regout\))) # (!\rf|Mux18~2\ & (((\rf|registers[2][13]~regout\ & \rf_a2_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "72aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux18~2\,
	datab => \rf|registers[3][13]~regout\,
	datac => \rf|registers[2][13]~regout\,
	datad => \rf_a2_in~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux18~3_combout\);

-- Location: LC_X7_Y4_N4
\rf|Mux18~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux18~4_combout\ = ((\rf_a2_in~combout\(2) & (\rf|Mux18~1_combout\)) # (!\rf_a2_in~combout\(2) & ((\rf|Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux18~1_combout\,
	datac => \rf|Mux18~3_combout\,
	datad => \rf_a2_in~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux18~4_combout\);

-- Location: LC_X7_Y4_N0
\rf|Mux17~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux17~4_combout\ = ((\rf_a2_in~combout\(2) & ((\rf|Mux17~1\))) # (!\rf_a2_in~combout\(2) & (\rf|Mux17~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rf_a2_in~combout\(2),
	datac => \rf|Mux17~3\,
	datad => \rf|Mux17~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux17~4_combout\);

-- Location: LC_X6_Y6_N4
\rf|Mux16~0\ : maxv_lcell
-- Equation(s):
-- \rf|Mux16~0_combout\ = (\rf_a2_in~combout\(1) & (((\rf_a2_in~combout\(0)) # (!\rf|registers[6][15]~regout\)))) # (!\rf_a2_in~combout\(1) & (!\rf|registers[4][15]~regout\ & ((!\rf_a2_in~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f035",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[4][15]~regout\,
	datab => \rf|registers[6][15]~regout\,
	datac => \rf_a2_in~combout\(1),
	datad => \rf_a2_in~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux16~0_combout\);

-- Location: LC_X6_Y6_N3
\rf|Mux16~1\ : maxv_lcell
-- Equation(s):
-- \rf|Mux16~1_combout\ = (\rf|Mux16~0_combout\ & (((!\rf_a2_in~combout\(0))) # (!\rf|registers[7][15]~regout\))) # (!\rf|Mux16~0_combout\ & (((\rf|registers[5][15]~regout\ & \rf_a2_in~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5cf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|registers[7][15]~regout\,
	datab => \rf|registers[5][15]~regout\,
	datac => \rf|Mux16~0_combout\,
	datad => \rf_a2_in~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux16~1_combout\);

-- Location: LC_X7_Y8_N9
\rf|Mux16~3\ : maxv_lcell
-- Equation(s):
-- \rf|Mux16~3_combout\ = (\rf|Mux16~2\ & (((!\rf_a2_in~combout\(1))) # (!\rf|registers[3][15]~regout\))) # (!\rf|Mux16~2\ & (((\rf|registers[2][15]~regout\ & \rf_a2_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "72aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux16~2\,
	datab => \rf|registers[3][15]~regout\,
	datac => \rf|registers[2][15]~regout\,
	datad => \rf_a2_in~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux16~3_combout\);

-- Location: LC_X6_Y6_N1
\rf|Mux16~4\ : maxv_lcell
-- Equation(s):
-- \rf|Mux16~4_combout\ = ((\rf_a2_in~combout\(2) & (\rf|Mux16~1_combout\)) # (!\rf_a2_in~combout\(2) & ((\rf|Mux16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux16~1_combout\,
	datab => \rf|Mux16~3_combout\,
	datad => \rf_a2_in~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf|Mux16~4_combout\);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\imm[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_imm(0),
	combout => \imm~combout\(0));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc_in[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pc_in(0),
	combout => \pc_in~combout\(0));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mux_sel~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mux_sel,
	combout => \mux_sel~combout\);

-- Location: LC_X1_Y6_N2
\jump_mux|dout[0]~0\ : maxv_lcell
-- Equation(s):
-- \jump_mux|dout[0]~0_combout\ = (\mux_sel~combout\ & (((\rf|Mux31~4_combout\)))) # (!\mux_sel~combout\ & (\imm~combout\(0) $ ((\pc_in~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f606",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \imm~combout\(0),
	datab => \pc_in~combout\(0),
	datac => \mux_sel~combout\,
	datad => \rf|Mux31~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \jump_mux|dout[0]~0_combout\);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc_in[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pc_in(1),
	combout => \pc_in~combout\(1));

-- Location: LC_X1_Y6_N5
\alu_jump|a0|z~0\ : maxv_lcell
-- Equation(s):
-- \alu_jump|a0|z~0_combout\ = ((\pc_in~combout\(0) & ((\imm~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pc_in~combout\(0),
	datad => \imm~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_jump|a0|z~0_combout\);

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\imm[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_imm(1),
	combout => \imm~combout\(1));

-- Location: LC_X16_Y5_N0
\alu_jump|a1|z~47\ : maxv_lcell
-- Equation(s):
-- \alu_jump|a1|z~47_cout0\ = CARRY(((\imm~combout\(1))))
-- \alu_jump|a1|z~47COUT1_51\ = CARRY(((\imm~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \imm~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_jump|a1|z~45\,
	cout0 => \alu_jump|a1|z~47_cout0\,
	cout1 => \alu_jump|a1|z~47COUT1_51\);

-- Location: LC_X16_Y5_N1
\alu_jump|a1|z~0\ : maxv_lcell
-- Equation(s):
-- \alu_jump|a1|z~0_combout\ = \pc_in~combout\(1) $ (\alu_jump|a0|z~0_combout\ $ ((\alu_jump|a1|z~47_cout0\)))
-- \alu_jump|a1|z~2\ = CARRY((\pc_in~combout\(1) & (!\alu_jump|a0|z~0_combout\ & !\alu_jump|a1|z~47_cout0\)) # (!\pc_in~combout\(1) & ((!\alu_jump|a1|z~47_cout0\) # (!\alu_jump|a0|z~0_combout\))))
-- \alu_jump|a1|z~2COUT1_52\ = CARRY((\pc_in~combout\(1) & (!\alu_jump|a0|z~0_combout\ & !\alu_jump|a1|z~47COUT1_51\)) # (!\pc_in~combout\(1) & ((!\alu_jump|a1|z~47COUT1_51\) # (!\alu_jump|a0|z~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_in~combout\(1),
	datab => \alu_jump|a0|z~0_combout\,
	cin0 => \alu_jump|a1|z~47_cout0\,
	cin1 => \alu_jump|a1|z~47COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_jump|a1|z~0_combout\,
	cout0 => \alu_jump|a1|z~2\,
	cout1 => \alu_jump|a1|z~2COUT1_52\);

-- Location: LC_X11_Y4_N2
\jump_mux|dout[1]~1\ : maxv_lcell
-- Equation(s):
-- \jump_mux|dout[1]~1_combout\ = (\mux_sel~combout\ & (((\rf|Mux30~4_combout\)))) # (!\mux_sel~combout\ & (((\alu_jump|a1|z~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux_sel~combout\,
	datac => \alu_jump|a1|z~0_combout\,
	datad => \rf|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \jump_mux|dout[1]~1_combout\);

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc_in[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pc_in(2),
	combout => \pc_in~combout\(2));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\imm[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_imm(2),
	combout => \imm~combout\(2));

-- Location: LC_X16_Y5_N2
\alu_jump|a1|z~5\ : maxv_lcell
-- Equation(s):
-- \alu_jump|a1|z~5_combout\ = \pc_in~combout\(2) $ (\imm~combout\(2) $ ((!\alu_jump|a1|z~2\)))
-- \alu_jump|a1|z~7\ = CARRY((\pc_in~combout\(2) & ((\imm~combout\(2)) # (!\alu_jump|a1|z~2\))) # (!\pc_in~combout\(2) & (\imm~combout\(2) & !\alu_jump|a1|z~2\)))
-- \alu_jump|a1|z~7COUT1_53\ = CARRY((\pc_in~combout\(2) & ((\imm~combout\(2)) # (!\alu_jump|a1|z~2COUT1_52\))) # (!\pc_in~combout\(2) & (\imm~combout\(2) & !\alu_jump|a1|z~2COUT1_52\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_in~combout\(2),
	datab => \imm~combout\(2),
	cin0 => \alu_jump|a1|z~2\,
	cin1 => \alu_jump|a1|z~2COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_jump|a1|z~5_combout\,
	cout0 => \alu_jump|a1|z~7\,
	cout1 => \alu_jump|a1|z~7COUT1_53\);

-- Location: LC_X12_Y7_N3
\jump_mux|dout[2]~2\ : maxv_lcell
-- Equation(s):
-- \jump_mux|dout[2]~2_combout\ = ((\mux_sel~combout\ & (\rf|Mux29~4_combout\)) # (!\mux_sel~combout\ & ((\alu_jump|a1|z~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rf|Mux29~4_combout\,
	datac => \mux_sel~combout\,
	datad => \alu_jump|a1|z~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \jump_mux|dout[2]~2_combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\imm[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_imm(3),
	combout => \imm~combout\(3));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc_in[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pc_in(3),
	combout => \pc_in~combout\(3));

-- Location: LC_X16_Y5_N3
\alu_jump|a1|z~10\ : maxv_lcell
-- Equation(s):
-- \alu_jump|a1|z~10_combout\ = \imm~combout\(3) $ (\pc_in~combout\(3) $ ((\alu_jump|a1|z~7\)))
-- \alu_jump|a1|z~12\ = CARRY((\imm~combout\(3) & (!\pc_in~combout\(3) & !\alu_jump|a1|z~7\)) # (!\imm~combout\(3) & ((!\alu_jump|a1|z~7\) # (!\pc_in~combout\(3)))))
-- \alu_jump|a1|z~12COUT1_54\ = CARRY((\imm~combout\(3) & (!\pc_in~combout\(3) & !\alu_jump|a1|z~7COUT1_53\)) # (!\imm~combout\(3) & ((!\alu_jump|a1|z~7COUT1_53\) # (!\pc_in~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \imm~combout\(3),
	datab => \pc_in~combout\(3),
	cin0 => \alu_jump|a1|z~7\,
	cin1 => \alu_jump|a1|z~7COUT1_53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_jump|a1|z~10_combout\,
	cout0 => \alu_jump|a1|z~12\,
	cout1 => \alu_jump|a1|z~12COUT1_54\);

-- Location: LC_X13_Y6_N4
\jump_mux|dout[3]~3\ : maxv_lcell
-- Equation(s):
-- \jump_mux|dout[3]~3_combout\ = (\mux_sel~combout\ & (\rf|Mux28~4_combout\)) # (!\mux_sel~combout\ & (((\alu_jump|a1|z~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux_sel~combout\,
	datab => \rf|Mux28~4_combout\,
	datac => \alu_jump|a1|z~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \jump_mux|dout[3]~3_combout\);

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc_in[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pc_in(4),
	combout => \pc_in~combout\(4));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\imm[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_imm(4),
	combout => \imm~combout\(4));

-- Location: LC_X16_Y5_N4
\alu_jump|a1|z~15\ : maxv_lcell
-- Equation(s):
-- \alu_jump|a1|z~15_combout\ = \pc_in~combout\(4) $ (\imm~combout\(4) $ ((!\alu_jump|a1|z~12\)))
-- \alu_jump|a1|z~17\ = CARRY((\pc_in~combout\(4) & ((\imm~combout\(4)) # (!\alu_jump|a1|z~12COUT1_54\))) # (!\pc_in~combout\(4) & (\imm~combout\(4) & !\alu_jump|a1|z~12COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_in~combout\(4),
	datab => \imm~combout\(4),
	cin0 => \alu_jump|a1|z~12\,
	cin1 => \alu_jump|a1|z~12COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_jump|a1|z~15_combout\,
	cout => \alu_jump|a1|z~17\);

-- Location: LC_X12_Y7_N7
\jump_mux|dout[4]~4\ : maxv_lcell
-- Equation(s):
-- \jump_mux|dout[4]~4_combout\ = ((\mux_sel~combout\ & (\rf|Mux27~4_combout\)) # (!\mux_sel~combout\ & ((\alu_jump|a1|z~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux27~4_combout\,
	datac => \mux_sel~combout\,
	datad => \alu_jump|a1|z~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \jump_mux|dout[4]~4_combout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc_in[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pc_in(5),
	combout => \pc_in~combout\(5));

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\imm[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_imm(5),
	combout => \imm~combout\(5));

-- Location: LC_X16_Y5_N5
\alu_jump|a1|z~20\ : maxv_lcell
-- Equation(s):
-- \alu_jump|a1|z~20_combout\ = \pc_in~combout\(5) $ (\imm~combout\(5) $ ((\alu_jump|a1|z~17\)))
-- \alu_jump|a1|z~22\ = CARRY((\pc_in~combout\(5) & (!\imm~combout\(5) & !\alu_jump|a1|z~17\)) # (!\pc_in~combout\(5) & ((!\alu_jump|a1|z~17\) # (!\imm~combout\(5)))))
-- \alu_jump|a1|z~22COUT1_55\ = CARRY((\pc_in~combout\(5) & (!\imm~combout\(5) & !\alu_jump|a1|z~17\)) # (!\pc_in~combout\(5) & ((!\alu_jump|a1|z~17\) # (!\imm~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_in~combout\(5),
	datab => \imm~combout\(5),
	cin => \alu_jump|a1|z~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_jump|a1|z~20_combout\,
	cout0 => \alu_jump|a1|z~22\,
	cout1 => \alu_jump|a1|z~22COUT1_55\);

-- Location: LC_X12_Y7_N8
\jump_mux|dout[5]~5\ : maxv_lcell
-- Equation(s):
-- \jump_mux|dout[5]~5_combout\ = ((\mux_sel~combout\ & (\rf|Mux26~4_combout\)) # (!\mux_sel~combout\ & ((\alu_jump|a1|z~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux26~4_combout\,
	datac => \mux_sel~combout\,
	datad => \alu_jump|a1|z~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \jump_mux|dout[5]~5_combout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\imm[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_imm(6),
	combout => \imm~combout\(6));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc_in[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pc_in(6),
	combout => \pc_in~combout\(6));

-- Location: LC_X16_Y5_N6
\alu_jump|a1|z~25\ : maxv_lcell
-- Equation(s):
-- \alu_jump|a1|z~25_combout\ = \imm~combout\(6) $ (\pc_in~combout\(6) $ ((!(!\alu_jump|a1|z~17\ & \alu_jump|a1|z~22\) # (\alu_jump|a1|z~17\ & \alu_jump|a1|z~22COUT1_55\))))
-- \alu_jump|a1|z~27\ = CARRY((\imm~combout\(6) & ((\pc_in~combout\(6)) # (!\alu_jump|a1|z~22\))) # (!\imm~combout\(6) & (\pc_in~combout\(6) & !\alu_jump|a1|z~22\)))
-- \alu_jump|a1|z~27COUT1_56\ = CARRY((\imm~combout\(6) & ((\pc_in~combout\(6)) # (!\alu_jump|a1|z~22COUT1_55\))) # (!\imm~combout\(6) & (\pc_in~combout\(6) & !\alu_jump|a1|z~22COUT1_55\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \imm~combout\(6),
	datab => \pc_in~combout\(6),
	cin => \alu_jump|a1|z~17\,
	cin0 => \alu_jump|a1|z~22\,
	cin1 => \alu_jump|a1|z~22COUT1_55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_jump|a1|z~25_combout\,
	cout0 => \alu_jump|a1|z~27\,
	cout1 => \alu_jump|a1|z~27COUT1_56\);

-- Location: LC_X12_Y7_N2
\jump_mux|dout[6]~6\ : maxv_lcell
-- Equation(s):
-- \jump_mux|dout[6]~6_combout\ = ((\mux_sel~combout\ & (\rf|Mux25~4_combout\)) # (!\mux_sel~combout\ & ((\alu_jump|a1|z~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rf|Mux25~4_combout\,
	datac => \mux_sel~combout\,
	datad => \alu_jump|a1|z~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \jump_mux|dout[6]~6_combout\);

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc_in[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pc_in(7),
	combout => \pc_in~combout\(7));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\imm[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_imm(7),
	combout => \imm~combout\(7));

-- Location: LC_X16_Y5_N7
\alu_jump|a1|z~30\ : maxv_lcell
-- Equation(s):
-- \alu_jump|a1|z~30_combout\ = \pc_in~combout\(7) $ (\imm~combout\(7) $ (((!\alu_jump|a1|z~17\ & \alu_jump|a1|z~27\) # (\alu_jump|a1|z~17\ & \alu_jump|a1|z~27COUT1_56\))))
-- \alu_jump|a1|z~32\ = CARRY((\pc_in~combout\(7) & (!\imm~combout\(7) & !\alu_jump|a1|z~27\)) # (!\pc_in~combout\(7) & ((!\alu_jump|a1|z~27\) # (!\imm~combout\(7)))))
-- \alu_jump|a1|z~32COUT1_57\ = CARRY((\pc_in~combout\(7) & (!\imm~combout\(7) & !\alu_jump|a1|z~27COUT1_56\)) # (!\pc_in~combout\(7) & ((!\alu_jump|a1|z~27COUT1_56\) # (!\imm~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_in~combout\(7),
	datab => \imm~combout\(7),
	cin => \alu_jump|a1|z~17\,
	cin0 => \alu_jump|a1|z~27\,
	cin1 => \alu_jump|a1|z~27COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_jump|a1|z~30_combout\,
	cout0 => \alu_jump|a1|z~32\,
	cout1 => \alu_jump|a1|z~32COUT1_57\);

-- Location: LC_X12_Y7_N0
\jump_mux|dout[7]~7\ : maxv_lcell
-- Equation(s):
-- \jump_mux|dout[7]~7_combout\ = ((\mux_sel~combout\ & (\rf|Mux24~4_combout\)) # (!\mux_sel~combout\ & ((\alu_jump|a1|z~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux24~4_combout\,
	datac => \mux_sel~combout\,
	datad => \alu_jump|a1|z~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \jump_mux|dout[7]~7_combout\);

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\imm[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_imm(8),
	combout => \imm~combout\(8));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc_in[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pc_in(8),
	combout => \pc_in~combout\(8));

-- Location: LC_X16_Y5_N8
\alu_jump|a1|z~35\ : maxv_lcell
-- Equation(s):
-- \alu_jump|a1|z~35_combout\ = \imm~combout\(8) $ (\pc_in~combout\(8) $ ((!(!\alu_jump|a1|z~17\ & \alu_jump|a1|z~32\) # (\alu_jump|a1|z~17\ & \alu_jump|a1|z~32COUT1_57\))))
-- \alu_jump|a1|z~37\ = CARRY((\imm~combout\(8) & ((\pc_in~combout\(8)) # (!\alu_jump|a1|z~32\))) # (!\imm~combout\(8) & (\pc_in~combout\(8) & !\alu_jump|a1|z~32\)))
-- \alu_jump|a1|z~37COUT1_58\ = CARRY((\imm~combout\(8) & ((\pc_in~combout\(8)) # (!\alu_jump|a1|z~32COUT1_57\))) # (!\imm~combout\(8) & (\pc_in~combout\(8) & !\alu_jump|a1|z~32COUT1_57\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \imm~combout\(8),
	datab => \pc_in~combout\(8),
	cin => \alu_jump|a1|z~17\,
	cin0 => \alu_jump|a1|z~32\,
	cin1 => \alu_jump|a1|z~32COUT1_57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_jump|a1|z~35_combout\,
	cout0 => \alu_jump|a1|z~37\,
	cout1 => \alu_jump|a1|z~37COUT1_58\);

-- Location: LC_X13_Y6_N0
\jump_mux|dout[8]~8\ : maxv_lcell
-- Equation(s):
-- \jump_mux|dout[8]~8_combout\ = (\mux_sel~combout\ & (((\rf|Mux23~4_combout\)))) # (!\mux_sel~combout\ & (((\alu_jump|a1|z~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux_sel~combout\,
	datac => \rf|Mux23~4_combout\,
	datad => \alu_jump|a1|z~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \jump_mux|dout[8]~8_combout\);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc_in[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pc_in(9),
	combout => \pc_in~combout\(9));

-- Location: LC_X16_Y5_N9
\alu_jump|a1|z~40\ : maxv_lcell
-- Equation(s):
-- \alu_jump|a1|z~40_combout\ = ((((!\alu_jump|a1|z~17\ & \alu_jump|a1|z~37\) # (\alu_jump|a1|z~17\ & \alu_jump|a1|z~37COUT1_58\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \alu_jump|a1|z~17\,
	cin0 => \alu_jump|a1|z~37\,
	cin1 => \alu_jump|a1|z~37COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_jump|a1|z~40_combout\);

-- Location: LC_X9_Y5_N6
\jump_mux|dout[9]~9\ : maxv_lcell
-- Equation(s):
-- \jump_mux|dout[9]~9_combout\ = (\mux_sel~combout\ & (\rf|Mux22~4_combout\)) # (!\mux_sel~combout\ & ((\pc_in~combout\(9) $ (\alu_jump|a1|z~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8bb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux22~4_combout\,
	datab => \mux_sel~combout\,
	datac => \pc_in~combout\(9),
	datad => \alu_jump|a1|z~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \jump_mux|dout[9]~9_combout\);

-- Location: LC_X9_Y5_N7
\alu_jump|a9|o~0\ : maxv_lcell
-- Equation(s):
-- \alu_jump|a9|o~0_combout\ = (((\pc_in~combout\(9) & \alu_jump|a1|z~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pc_in~combout\(9),
	datad => \alu_jump|a1|z~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_jump|a9|o~0_combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc_in[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pc_in(10),
	combout => \pc_in~combout\(10));

-- Location: LC_X9_Y5_N0
\jump_mux|dout[10]~10\ : maxv_lcell
-- Equation(s):
-- \jump_mux|dout[10]~10_combout\ = (\mux_sel~combout\ & (\rf|Mux21~4_combout\)) # (!\mux_sel~combout\ & ((\alu_jump|a9|o~0_combout\ $ (\pc_in~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8bb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux21~4_combout\,
	datab => \mux_sel~combout\,
	datac => \alu_jump|a9|o~0_combout\,
	datad => \pc_in~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \jump_mux|dout[10]~10_combout\);

-- Location: LC_X9_Y5_N8
\alu_jump|a10|o~0\ : maxv_lcell
-- Equation(s):
-- \alu_jump|a10|o~0_combout\ = ((\pc_in~combout\(10) & (\pc_in~combout\(9) & \alu_jump|a1|z~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pc_in~combout\(10),
	datac => \pc_in~combout\(9),
	datad => \alu_jump|a1|z~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_jump|a10|o~0_combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc_in[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pc_in(11),
	combout => \pc_in~combout\(11));

-- Location: LC_X9_Y5_N5
\jump_mux|dout[11]~11\ : maxv_lcell
-- Equation(s):
-- \jump_mux|dout[11]~11_combout\ = (\mux_sel~combout\ & (((\rf|Mux20~4_combout\)))) # (!\mux_sel~combout\ & (\alu_jump|a10|o~0_combout\ $ ((\pc_in~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de12",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_jump|a10|o~0_combout\,
	datab => \mux_sel~combout\,
	datac => \pc_in~combout\(11),
	datad => \rf|Mux20~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \jump_mux|dout[11]~11_combout\);

-- Location: LC_X9_Y5_N4
\alu_jump|a11|o~0\ : maxv_lcell
-- Equation(s):
-- \alu_jump|a11|o~0_combout\ = (\pc_in~combout\(11) & (\pc_in~combout\(10) & (\pc_in~combout\(9) & \alu_jump|a1|z~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_in~combout\(11),
	datab => \pc_in~combout\(10),
	datac => \pc_in~combout\(9),
	datad => \alu_jump|a1|z~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_jump|a11|o~0_combout\);

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc_in[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pc_in(12),
	combout => \pc_in~combout\(12));

-- Location: LC_X7_Y4_N7
\jump_mux|dout[12]~12\ : maxv_lcell
-- Equation(s):
-- \jump_mux|dout[12]~12_combout\ = (\mux_sel~combout\ & (\rf|Mux19~4_combout\)) # (!\mux_sel~combout\ & ((\alu_jump|a11|o~0_combout\ $ (\pc_in~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8dd8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux_sel~combout\,
	datab => \rf|Mux19~4_combout\,
	datac => \alu_jump|a11|o~0_combout\,
	datad => \pc_in~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \jump_mux|dout[12]~12_combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc_in[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pc_in(13),
	combout => \pc_in~combout\(13));

-- Location: LC_X7_Y4_N2
\alu_jump|a12|o~0\ : maxv_lcell
-- Equation(s):
-- \alu_jump|a12|o~0_combout\ = (\alu_jump|a11|o~0_combout\ & (((\pc_in~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_jump|a11|o~0_combout\,
	datac => \pc_in~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_jump|a12|o~0_combout\);

-- Location: LC_X7_Y4_N3
\jump_mux|dout[13]~13\ : maxv_lcell
-- Equation(s):
-- \jump_mux|dout[13]~13_combout\ = (\mux_sel~combout\ & (((\rf|Mux18~4_combout\)))) # (!\mux_sel~combout\ & (\pc_in~combout\(13) $ ((\alu_jump|a12|o~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f066",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_in~combout\(13),
	datab => \alu_jump|a12|o~0_combout\,
	datac => \rf|Mux18~4_combout\,
	datad => \mux_sel~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \jump_mux|dout[13]~13_combout\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc_in[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pc_in(14),
	combout => \pc_in~combout\(14));

-- Location: LC_X7_Y4_N9
\alu_jump|a13|o~0\ : maxv_lcell
-- Equation(s):
-- \alu_jump|a13|o~0_combout\ = (\pc_in~combout\(13) & (((\alu_jump|a11|o~0_combout\ & \pc_in~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_in~combout\(13),
	datac => \alu_jump|a11|o~0_combout\,
	datad => \pc_in~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_jump|a13|o~0_combout\);

-- Location: LC_X7_Y4_N5
\jump_mux|dout[14]~14\ : maxv_lcell
-- Equation(s):
-- \jump_mux|dout[14]~14_combout\ = (\mux_sel~combout\ & (((\rf|Mux17~4_combout\)))) # (!\mux_sel~combout\ & (\pc_in~combout\(14) $ (((\alu_jump|a13|o~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b1e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux_sel~combout\,
	datab => \pc_in~combout\(14),
	datac => \rf|Mux17~4_combout\,
	datad => \alu_jump|a13|o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \jump_mux|dout[14]~14_combout\);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc_in[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pc_in(15),
	combout => \pc_in~combout\(15));

-- Location: LC_X7_Y4_N1
\alu_jump|a14|o~0\ : maxv_lcell
-- Equation(s):
-- \alu_jump|a14|o~0_combout\ = (\pc_in~combout\(13) & (\pc_in~combout\(14) & (\alu_jump|a11|o~0_combout\ & \pc_in~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_in~combout\(13),
	datab => \pc_in~combout\(14),
	datac => \alu_jump|a11|o~0_combout\,
	datad => \pc_in~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_jump|a14|o~0_combout\);

-- Location: LC_X7_Y4_N8
\jump_mux|dout[15]~15\ : maxv_lcell
-- Equation(s):
-- \jump_mux|dout[15]~15_combout\ = (\mux_sel~combout\ & (((\rf|Mux16~4_combout\)))) # (!\mux_sel~combout\ & (\pc_in~combout\(15) $ (((\alu_jump|a14|o~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b1e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux_sel~combout\,
	datab => \pc_in~combout\(15),
	datac => \rf|Mux16~4_combout\,
	datad => \alu_jump|a14|o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \jump_mux|dout[15]~15_combout\);

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1_out[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux15~4_combout\,
	oe => VCC,
	padio => ww_rf_d1_out(0));

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1_out[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux14~4_combout\,
	oe => VCC,
	padio => ww_rf_d1_out(1));

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1_out[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux13~4_combout\,
	oe => VCC,
	padio => ww_rf_d1_out(2));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1_out[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux12~4_combout\,
	oe => VCC,
	padio => ww_rf_d1_out(3));

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1_out[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux11~4_combout\,
	oe => VCC,
	padio => ww_rf_d1_out(4));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1_out[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux10~4_combout\,
	oe => VCC,
	padio => ww_rf_d1_out(5));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1_out[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux9~4_combout\,
	oe => VCC,
	padio => ww_rf_d1_out(6));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1_out[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux8~4_combout\,
	oe => VCC,
	padio => ww_rf_d1_out(7));

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1_out[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux7~4_combout\,
	oe => VCC,
	padio => ww_rf_d1_out(8));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1_out[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux6~4_combout\,
	oe => VCC,
	padio => ww_rf_d1_out(9));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1_out[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux5~4_combout\,
	oe => VCC,
	padio => ww_rf_d1_out(10));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1_out[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux4~4_combout\,
	oe => VCC,
	padio => ww_rf_d1_out(11));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1_out[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux3~4_combout\,
	oe => VCC,
	padio => ww_rf_d1_out(12));

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1_out[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux2~4_combout\,
	oe => VCC,
	padio => ww_rf_d1_out(13));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1_out[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux1~4_combout\,
	oe => VCC,
	padio => ww_rf_d1_out(14));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1_out[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux0~4_combout\,
	oe => VCC,
	padio => ww_rf_d1_out(15));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2_out[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux31~4_combout\,
	oe => VCC,
	padio => ww_rf_d2_out(0));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2_out[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux30~4_combout\,
	oe => VCC,
	padio => ww_rf_d2_out(1));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2_out[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux29~4_combout\,
	oe => VCC,
	padio => ww_rf_d2_out(2));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2_out[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux28~4_combout\,
	oe => VCC,
	padio => ww_rf_d2_out(3));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2_out[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux27~4_combout\,
	oe => VCC,
	padio => ww_rf_d2_out(4));

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2_out[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux26~4_combout\,
	oe => VCC,
	padio => ww_rf_d2_out(5));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2_out[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux25~4_combout\,
	oe => VCC,
	padio => ww_rf_d2_out(6));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2_out[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux24~4_combout\,
	oe => VCC,
	padio => ww_rf_d2_out(7));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2_out[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux23~4_combout\,
	oe => VCC,
	padio => ww_rf_d2_out(8));

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2_out[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux22~4_combout\,
	oe => VCC,
	padio => ww_rf_d2_out(9));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2_out[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux21~4_combout\,
	oe => VCC,
	padio => ww_rf_d2_out(10));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2_out[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux20~4_combout\,
	oe => VCC,
	padio => ww_rf_d2_out(11));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2_out[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux19~4_combout\,
	oe => VCC,
	padio => ww_rf_d2_out(12));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2_out[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux18~4_combout\,
	oe => VCC,
	padio => ww_rf_d2_out(13));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2_out[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux17~4_combout\,
	oe => VCC,
	padio => ww_rf_d2_out(14));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2_out[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf|Mux16~4_combout\,
	oe => VCC,
	padio => ww_rf_d2_out(15));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\jump[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \jump_mux|dout[0]~0_combout\,
	oe => VCC,
	padio => ww_jump(0));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\jump[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \jump_mux|dout[1]~1_combout\,
	oe => VCC,
	padio => ww_jump(1));

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\jump[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \jump_mux|dout[2]~2_combout\,
	oe => VCC,
	padio => ww_jump(2));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\jump[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \jump_mux|dout[3]~3_combout\,
	oe => VCC,
	padio => ww_jump(3));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\jump[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \jump_mux|dout[4]~4_combout\,
	oe => VCC,
	padio => ww_jump(4));

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\jump[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \jump_mux|dout[5]~5_combout\,
	oe => VCC,
	padio => ww_jump(5));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\jump[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \jump_mux|dout[6]~6_combout\,
	oe => VCC,
	padio => ww_jump(6));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\jump[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \jump_mux|dout[7]~7_combout\,
	oe => VCC,
	padio => ww_jump(7));

-- Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\jump[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \jump_mux|dout[8]~8_combout\,
	oe => VCC,
	padio => ww_jump(8));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\jump[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \jump_mux|dout[9]~9_combout\,
	oe => VCC,
	padio => ww_jump(9));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\jump[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \jump_mux|dout[10]~10_combout\,
	oe => VCC,
	padio => ww_jump(10));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\jump[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \jump_mux|dout[11]~11_combout\,
	oe => VCC,
	padio => ww_jump(11));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\jump[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \jump_mux|dout[12]~12_combout\,
	oe => VCC,
	padio => ww_jump(12));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\jump[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \jump_mux|dout[13]~13_combout\,
	oe => VCC,
	padio => ww_jump(13));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\jump[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \jump_mux|dout[14]~14_combout\,
	oe => VCC,
	padio => ww_jump(14));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\jump[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \jump_mux|dout[15]~15_combout\,
	oe => VCC,
	padio => ww_jump(15));
END structure;


