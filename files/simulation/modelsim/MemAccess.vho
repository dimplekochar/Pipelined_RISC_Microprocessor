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

-- DATE "11/25/2018 20:24:03"

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

ENTITY 	MemAccess IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	write : IN std_logic;
	mem_a : IN std_logic_vector(15 DOWNTO 0);
	mem_d_in : IN std_logic_vector(15 DOWNTO 0);
	mem_d_out : OUT std_logic_vector(15 DOWNTO 0)
	);
END MemAccess;

-- Design Ports Information


ARCHITECTURE structure OF MemAccess IS
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
SIGNAL ww_write : std_logic;
SIGNAL ww_mem_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_mem_d_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_mem_d_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \data_mem|mem[26][0]~regout\ : std_logic;
SIGNAL \data_mem|mem[28][0]~regout\ : std_logic;
SIGNAL \data_mem|mem[19][0]~regout\ : std_logic;
SIGNAL \data_mem|mem[21][0]~regout\ : std_logic;
SIGNAL \data_mem|mem[18][0]~regout\ : std_logic;
SIGNAL \data_mem|mem[20][0]~regout\ : std_logic;
SIGNAL \data_mem|mem[27][0]~regout\ : std_logic;
SIGNAL \data_mem|mem[29][0]~regout\ : std_logic;
SIGNAL \data_mem|mem[9][0]~regout\ : std_logic;
SIGNAL \data_mem|mem[10][0]~regout\ : std_logic;
SIGNAL \data_mem|mem[6][0]~regout\ : std_logic;
SIGNAL \data_mem|mem[5][0]~regout\ : std_logic;
SIGNAL \data_mem|mem[1][0]~regout\ : std_logic;
SIGNAL \data_mem|mem[2][0]~regout\ : std_logic;
SIGNAL \data_mem|mem[14][0]~regout\ : std_logic;
SIGNAL \data_mem|mem[13][0]~regout\ : std_logic;
SIGNAL \data_mem|mem[25][1]~regout\ : std_logic;
SIGNAL \data_mem|mem[26][1]~regout\ : std_logic;
SIGNAL \data_mem|mem[21][1]~regout\ : std_logic;
SIGNAL \data_mem|mem[22][1]~regout\ : std_logic;
SIGNAL \data_mem|mem[17][1]~regout\ : std_logic;
SIGNAL \data_mem|mem[18][1]~regout\ : std_logic;
SIGNAL \data_mem|mem[29][1]~regout\ : std_logic;
SIGNAL \data_mem|mem[30][1]~regout\ : std_logic;
SIGNAL \data_mem|mem[9][1]~regout\ : std_logic;
SIGNAL \data_mem|mem[12][1]~regout\ : std_logic;
SIGNAL \data_mem|mem[6][1]~regout\ : std_logic;
SIGNAL \data_mem|mem[3][1]~regout\ : std_logic;
SIGNAL \data_mem|mem[4][1]~regout\ : std_logic;
SIGNAL \data_mem|mem[1][1]~regout\ : std_logic;
SIGNAL \data_mem|mem[14][1]~regout\ : std_logic;
SIGNAL \data_mem|mem[11][1]~regout\ : std_logic;
SIGNAL \data_mem|mem[28][2]~regout\ : std_logic;
SIGNAL \data_mem|mem[25][2]~regout\ : std_logic;
SIGNAL \data_mem|mem[22][2]~regout\ : std_logic;
SIGNAL \data_mem|mem[19][2]~regout\ : std_logic;
SIGNAL \data_mem|mem[20][2]~regout\ : std_logic;
SIGNAL \data_mem|mem[17][2]~regout\ : std_logic;
SIGNAL \data_mem|mem[30][2]~regout\ : std_logic;
SIGNAL \data_mem|mem[27][2]~regout\ : std_logic;
SIGNAL \data_mem|mem[10][2]~regout\ : std_logic;
SIGNAL \data_mem|mem[12][2]~regout\ : std_logic;
SIGNAL \data_mem|mem[3][2]~regout\ : std_logic;
SIGNAL \data_mem|mem[5][2]~regout\ : std_logic;
SIGNAL \data_mem|mem[2][2]~regout\ : std_logic;
SIGNAL \data_mem|mem[4][2]~regout\ : std_logic;
SIGNAL \data_mem|mem[11][2]~regout\ : std_logic;
SIGNAL \data_mem|mem[13][2]~regout\ : std_logic;
SIGNAL \data_mem|mem[26][3]~regout\ : std_logic;
SIGNAL \data_mem|mem[28][3]~regout\ : std_logic;
SIGNAL \data_mem|mem[19][3]~regout\ : std_logic;
SIGNAL \data_mem|mem[21][3]~regout\ : std_logic;
SIGNAL \data_mem|mem[18][3]~regout\ : std_logic;
SIGNAL \data_mem|mem[20][3]~regout\ : std_logic;
SIGNAL \data_mem|mem[27][3]~regout\ : std_logic;
SIGNAL \data_mem|mem[29][3]~regout\ : std_logic;
SIGNAL \data_mem|mem[9][3]~regout\ : std_logic;
SIGNAL \data_mem|mem[10][3]~regout\ : std_logic;
SIGNAL \data_mem|mem[5][3]~regout\ : std_logic;
SIGNAL \data_mem|mem[6][3]~regout\ : std_logic;
SIGNAL \data_mem|mem[1][3]~regout\ : std_logic;
SIGNAL \data_mem|mem[2][3]~regout\ : std_logic;
SIGNAL \data_mem|mem[13][3]~regout\ : std_logic;
SIGNAL \data_mem|mem[14][3]~regout\ : std_logic;
SIGNAL \data_mem|mem[25][4]~regout\ : std_logic;
SIGNAL \data_mem|mem[26][4]~regout\ : std_logic;
SIGNAL \data_mem|mem[21][4]~regout\ : std_logic;
SIGNAL \data_mem|mem[22][4]~regout\ : std_logic;
SIGNAL \data_mem|mem[17][4]~regout\ : std_logic;
SIGNAL \data_mem|mem[18][4]~regout\ : std_logic;
SIGNAL \data_mem|mem[29][4]~regout\ : std_logic;
SIGNAL \data_mem|mem[30][4]~regout\ : std_logic;
SIGNAL \data_mem|mem[12][4]~regout\ : std_logic;
SIGNAL \data_mem|mem[9][4]~regout\ : std_logic;
SIGNAL \data_mem|mem[6][4]~regout\ : std_logic;
SIGNAL \data_mem|mem[3][4]~regout\ : std_logic;
SIGNAL \data_mem|mem[4][4]~regout\ : std_logic;
SIGNAL \data_mem|mem[1][4]~regout\ : std_logic;
SIGNAL \data_mem|mem[14][4]~regout\ : std_logic;
SIGNAL \data_mem|mem[11][4]~regout\ : std_logic;
SIGNAL \data_mem|mem[28][5]~regout\ : std_logic;
SIGNAL \data_mem|mem[25][5]~regout\ : std_logic;
SIGNAL \data_mem|mem[22][5]~regout\ : std_logic;
SIGNAL \data_mem|mem[19][5]~regout\ : std_logic;
SIGNAL \data_mem|mem[20][5]~regout\ : std_logic;
SIGNAL \data_mem|mem[17][5]~regout\ : std_logic;
SIGNAL \data_mem|mem[30][5]~regout\ : std_logic;
SIGNAL \data_mem|mem[27][5]~regout\ : std_logic;
SIGNAL \data_mem|mem[10][5]~regout\ : std_logic;
SIGNAL \data_mem|mem[12][5]~regout\ : std_logic;
SIGNAL \data_mem|mem[3][5]~regout\ : std_logic;
SIGNAL \data_mem|mem[5][5]~regout\ : std_logic;
SIGNAL \data_mem|mem[2][5]~regout\ : std_logic;
SIGNAL \data_mem|mem[4][5]~regout\ : std_logic;
SIGNAL \data_mem|mem[11][5]~regout\ : std_logic;
SIGNAL \data_mem|mem[13][5]~regout\ : std_logic;
SIGNAL \data_mem|mem[21][6]~regout\ : std_logic;
SIGNAL \data_mem|mem[25][6]~regout\ : std_logic;
SIGNAL \data_mem|mem[22][6]~regout\ : std_logic;
SIGNAL \data_mem|mem[26][6]~regout\ : std_logic;
SIGNAL \data_mem|mem[20][6]~regout\ : std_logic;
SIGNAL \data_mem|mem[24][6]~regout\ : std_logic;
SIGNAL \data_mem|mem[23][6]~regout\ : std_logic;
SIGNAL \data_mem|mem[27][6]~regout\ : std_logic;
SIGNAL \data_mem|mem[9][6]~regout\ : std_logic;
SIGNAL \data_mem|mem[10][6]~regout\ : std_logic;
SIGNAL \data_mem|mem[5][6]~regout\ : std_logic;
SIGNAL \data_mem|mem[6][6]~regout\ : std_logic;
SIGNAL \data_mem|mem[1][6]~regout\ : std_logic;
SIGNAL \data_mem|mem[2][6]~regout\ : std_logic;
SIGNAL \data_mem|mem[13][6]~regout\ : std_logic;
SIGNAL \data_mem|mem[14][6]~regout\ : std_logic;
SIGNAL \data_mem|mem[22][7]~regout\ : std_logic;
SIGNAL \data_mem|mem[26][7]~regout\ : std_logic;
SIGNAL \data_mem|mem[21][7]~regout\ : std_logic;
SIGNAL \data_mem|mem[25][7]~regout\ : std_logic;
SIGNAL \data_mem|mem[20][7]~regout\ : std_logic;
SIGNAL \data_mem|mem[24][7]~regout\ : std_logic;
SIGNAL \data_mem|mem[23][7]~regout\ : std_logic;
SIGNAL \data_mem|mem[27][7]~regout\ : std_logic;
SIGNAL \data_mem|mem[9][7]~regout\ : std_logic;
SIGNAL \data_mem|mem[10][7]~regout\ : std_logic;
SIGNAL \data_mem|mem[6][7]~regout\ : std_logic;
SIGNAL \data_mem|mem[5][7]~regout\ : std_logic;
SIGNAL \data_mem|mem[1][7]~regout\ : std_logic;
SIGNAL \data_mem|mem[2][7]~regout\ : std_logic;
SIGNAL \data_mem|mem[14][7]~regout\ : std_logic;
SIGNAL \data_mem|mem[13][7]~regout\ : std_logic;
SIGNAL \data_mem|mem[21][8]~regout\ : std_logic;
SIGNAL \data_mem|mem[25][8]~regout\ : std_logic;
SIGNAL \data_mem|mem[22][8]~regout\ : std_logic;
SIGNAL \data_mem|mem[26][8]~regout\ : std_logic;
SIGNAL \data_mem|mem[20][8]~regout\ : std_logic;
SIGNAL \data_mem|mem[24][8]~regout\ : std_logic;
SIGNAL \data_mem|mem[23][8]~regout\ : std_logic;
SIGNAL \data_mem|mem[27][8]~regout\ : std_logic;
SIGNAL \data_mem|mem[10][8]~regout\ : std_logic;
SIGNAL \data_mem|mem[9][8]~regout\ : std_logic;
SIGNAL \data_mem|mem[5][8]~regout\ : std_logic;
SIGNAL \data_mem|mem[6][8]~regout\ : std_logic;
SIGNAL \data_mem|mem[2][8]~regout\ : std_logic;
SIGNAL \data_mem|mem[1][8]~regout\ : std_logic;
SIGNAL \data_mem|mem[13][8]~regout\ : std_logic;
SIGNAL \data_mem|mem[14][8]~regout\ : std_logic;
SIGNAL \data_mem|mem[22][9]~regout\ : std_logic;
SIGNAL \data_mem|mem[26][9]~regout\ : std_logic;
SIGNAL \data_mem|mem[21][9]~regout\ : std_logic;
SIGNAL \data_mem|mem[25][9]~regout\ : std_logic;
SIGNAL \data_mem|mem[20][9]~regout\ : std_logic;
SIGNAL \data_mem|mem[24][9]~regout\ : std_logic;
SIGNAL \data_mem|mem[23][9]~regout\ : std_logic;
SIGNAL \data_mem|mem[27][9]~regout\ : std_logic;
SIGNAL \data_mem|mem[9][9]~regout\ : std_logic;
SIGNAL \data_mem|mem[10][9]~regout\ : std_logic;
SIGNAL \data_mem|mem[6][9]~regout\ : std_logic;
SIGNAL \data_mem|mem[5][9]~regout\ : std_logic;
SIGNAL \data_mem|mem[1][9]~regout\ : std_logic;
SIGNAL \data_mem|mem[2][9]~regout\ : std_logic;
SIGNAL \data_mem|mem[14][9]~regout\ : std_logic;
SIGNAL \data_mem|mem[13][9]~regout\ : std_logic;
SIGNAL \data_mem|mem[21][10]~regout\ : std_logic;
SIGNAL \data_mem|mem[25][10]~regout\ : std_logic;
SIGNAL \data_mem|mem[22][10]~regout\ : std_logic;
SIGNAL \data_mem|mem[26][10]~regout\ : std_logic;
SIGNAL \data_mem|mem[20][10]~regout\ : std_logic;
SIGNAL \data_mem|mem[24][10]~regout\ : std_logic;
SIGNAL \data_mem|mem[23][10]~regout\ : std_logic;
SIGNAL \data_mem|mem[27][10]~regout\ : std_logic;
SIGNAL \data_mem|mem[10][10]~regout\ : std_logic;
SIGNAL \data_mem|mem[9][10]~regout\ : std_logic;
SIGNAL \data_mem|mem[5][10]~regout\ : std_logic;
SIGNAL \data_mem|mem[6][10]~regout\ : std_logic;
SIGNAL \data_mem|mem[2][10]~regout\ : std_logic;
SIGNAL \data_mem|mem[1][10]~regout\ : std_logic;
SIGNAL \data_mem|mem[13][10]~regout\ : std_logic;
SIGNAL \data_mem|mem[14][10]~regout\ : std_logic;
SIGNAL \data_mem|mem[22][11]~regout\ : std_logic;
SIGNAL \data_mem|mem[26][11]~regout\ : std_logic;
SIGNAL \data_mem|mem[21][11]~regout\ : std_logic;
SIGNAL \data_mem|mem[25][11]~regout\ : std_logic;
SIGNAL \data_mem|mem[20][11]~regout\ : std_logic;
SIGNAL \data_mem|mem[24][11]~regout\ : std_logic;
SIGNAL \data_mem|mem[23][11]~regout\ : std_logic;
SIGNAL \data_mem|mem[27][11]~regout\ : std_logic;
SIGNAL \data_mem|mem[9][11]~regout\ : std_logic;
SIGNAL \data_mem|mem[10][11]~regout\ : std_logic;
SIGNAL \data_mem|mem[6][11]~regout\ : std_logic;
SIGNAL \data_mem|mem[5][11]~regout\ : std_logic;
SIGNAL \data_mem|mem[1][11]~regout\ : std_logic;
SIGNAL \data_mem|mem[2][11]~regout\ : std_logic;
SIGNAL \data_mem|mem[14][11]~regout\ : std_logic;
SIGNAL \data_mem|mem[13][11]~regout\ : std_logic;
SIGNAL \data_mem|mem[25][12]~regout\ : std_logic;
SIGNAL \data_mem|mem[21][12]~regout\ : std_logic;
SIGNAL \data_mem|mem[22][12]~regout\ : std_logic;
SIGNAL \data_mem|mem[26][12]~regout\ : std_logic;
SIGNAL \data_mem|mem[20][12]~regout\ : std_logic;
SIGNAL \data_mem|mem[24][12]~regout\ : std_logic;
SIGNAL \data_mem|mem[27][12]~regout\ : std_logic;
SIGNAL \data_mem|mem[23][12]~regout\ : std_logic;
SIGNAL \data_mem|mem[5][12]~regout\ : std_logic;
SIGNAL \data_mem|mem[6][12]~regout\ : std_logic;
SIGNAL \data_mem|mem[10][12]~regout\ : std_logic;
SIGNAL \data_mem|mem[9][12]~regout\ : std_logic;
SIGNAL \data_mem|mem[2][12]~regout\ : std_logic;
SIGNAL \data_mem|mem[1][12]~regout\ : std_logic;
SIGNAL \data_mem|mem[13][12]~regout\ : std_logic;
SIGNAL \data_mem|mem[14][12]~regout\ : std_logic;
SIGNAL \data_mem|mem[26][13]~regout\ : std_logic;
SIGNAL \data_mem|mem[22][13]~regout\ : std_logic;
SIGNAL \data_mem|mem[21][13]~regout\ : std_logic;
SIGNAL \data_mem|mem[25][13]~regout\ : std_logic;
SIGNAL \data_mem|mem[24][13]~regout\ : std_logic;
SIGNAL \data_mem|mem[20][13]~regout\ : std_logic;
SIGNAL \data_mem|mem[23][13]~regout\ : std_logic;
SIGNAL \data_mem|mem[27][13]~regout\ : std_logic;
SIGNAL \data_mem|mem[9][13]~regout\ : std_logic;
SIGNAL \data_mem|mem[10][13]~regout\ : std_logic;
SIGNAL \data_mem|mem[6][13]~regout\ : std_logic;
SIGNAL \data_mem|mem[5][13]~regout\ : std_logic;
SIGNAL \data_mem|mem[1][13]~regout\ : std_logic;
SIGNAL \data_mem|mem[2][13]~regout\ : std_logic;
SIGNAL \data_mem|mem[14][13]~regout\ : std_logic;
SIGNAL \data_mem|mem[13][13]~regout\ : std_logic;
SIGNAL \data_mem|mem[25][14]~regout\ : std_logic;
SIGNAL \data_mem|mem[21][14]~regout\ : std_logic;
SIGNAL \data_mem|mem[22][14]~regout\ : std_logic;
SIGNAL \data_mem|mem[26][14]~regout\ : std_logic;
SIGNAL \data_mem|mem[20][14]~regout\ : std_logic;
SIGNAL \data_mem|mem[24][14]~regout\ : std_logic;
SIGNAL \data_mem|mem[27][14]~regout\ : std_logic;
SIGNAL \data_mem|mem[23][14]~regout\ : std_logic;
SIGNAL \data_mem|mem[5][14]~regout\ : std_logic;
SIGNAL \data_mem|mem[6][14]~regout\ : std_logic;
SIGNAL \data_mem|mem[10][14]~regout\ : std_logic;
SIGNAL \data_mem|mem[9][14]~regout\ : std_logic;
SIGNAL \data_mem|mem[2][14]~regout\ : std_logic;
SIGNAL \data_mem|mem[1][14]~regout\ : std_logic;
SIGNAL \data_mem|mem[13][14]~regout\ : std_logic;
SIGNAL \data_mem|mem[14][14]~regout\ : std_logic;
SIGNAL \data_mem|mem[26][15]~regout\ : std_logic;
SIGNAL \data_mem|mem[22][15]~regout\ : std_logic;
SIGNAL \data_mem|mem[21][15]~regout\ : std_logic;
SIGNAL \data_mem|mem[25][15]~regout\ : std_logic;
SIGNAL \data_mem|mem[24][15]~regout\ : std_logic;
SIGNAL \data_mem|mem[20][15]~regout\ : std_logic;
SIGNAL \data_mem|mem[23][15]~regout\ : std_logic;
SIGNAL \data_mem|mem[27][15]~regout\ : std_logic;
SIGNAL \data_mem|mem[9][15]~regout\ : std_logic;
SIGNAL \data_mem|mem[10][15]~regout\ : std_logic;
SIGNAL \data_mem|mem[6][15]~regout\ : std_logic;
SIGNAL \data_mem|mem[5][15]~regout\ : std_logic;
SIGNAL \data_mem|mem[1][15]~regout\ : std_logic;
SIGNAL \data_mem|mem[2][15]~regout\ : std_logic;
SIGNAL \data_mem|mem[14][15]~regout\ : std_logic;
SIGNAL \data_mem|mem[13][15]~regout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \write~combout\ : std_logic;
SIGNAL \data_mem|Decoder0~4_combout\ : std_logic;
SIGNAL \data_mem|Decoder0~26_combout\ : std_logic;
SIGNAL \data_mem|mem[8][0]~regout\ : std_logic;
SIGNAL \data_mem|Decoder0~12_combout\ : std_logic;
SIGNAL \data_mem|Decoder0~25_combout\ : std_logic;
SIGNAL \data_mem|Mux15~10\ : std_logic;
SIGNAL \data_mem|Decoder0~10_combout\ : std_logic;
SIGNAL \data_mem|Decoder0~27_combout\ : std_logic;
SIGNAL \data_mem|mem[11][0]~regout\ : std_logic;
SIGNAL \data_mem|Decoder0~2_combout\ : std_logic;
SIGNAL \data_mem|Decoder0~24_combout\ : std_logic;
SIGNAL \data_mem|Mux15~11\ : std_logic;
SIGNAL \data_mem|Decoder0~0_combout\ : std_logic;
SIGNAL \data_mem|Decoder0~30_combout\ : std_logic;
SIGNAL \data_mem|mem[4][0]~regout\ : std_logic;
SIGNAL \data_mem|Decoder0~6_combout\ : std_logic;
SIGNAL \data_mem|Decoder0~29_combout\ : std_logic;
SIGNAL \data_mem|Mux15~12\ : std_logic;
SIGNAL \data_mem|Decoder0~14_combout\ : std_logic;
SIGNAL \data_mem|Decoder0~31_combout\ : std_logic;
SIGNAL \data_mem|mem[7][0]~regout\ : std_logic;
SIGNAL \data_mem|Decoder0~8_combout\ : std_logic;
SIGNAL \data_mem|Decoder0~28_combout\ : std_logic;
SIGNAL \data_mem|Mux15~13\ : std_logic;
SIGNAL \data_mem|Decoder0~34_combout\ : std_logic;
SIGNAL \data_mem|mem[0][0]~regout\ : std_logic;
SIGNAL \data_mem|Decoder0~33_combout\ : std_logic;
SIGNAL \data_mem|Mux15~14\ : std_logic;
SIGNAL \data_mem|Decoder0~35_combout\ : std_logic;
SIGNAL \data_mem|mem[3][0]~regout\ : std_logic;
SIGNAL \data_mem|Decoder0~32_combout\ : std_logic;
SIGNAL \data_mem|Mux15~15\ : std_logic;
SIGNAL \data_mem|Mux15~16_combout\ : std_logic;
SIGNAL \data_mem|Decoder0~38_combout\ : std_logic;
SIGNAL \data_mem|mem[12][0]~regout\ : std_logic;
SIGNAL \data_mem|Decoder0~37_combout\ : std_logic;
SIGNAL \data_mem|Mux15~17\ : std_logic;
SIGNAL \data_mem|Decoder0~39_combout\ : std_logic;
SIGNAL \data_mem|mem[15][0]~regout\ : std_logic;
SIGNAL \data_mem|Decoder0~36_combout\ : std_logic;
SIGNAL \data_mem|Mux15~18\ : std_logic;
SIGNAL \data_mem|Mux15~19_combout\ : std_logic;
SIGNAL \data_mem|Decoder0~15_combout\ : std_logic;
SIGNAL \data_mem|mem[23][0]~regout\ : std_logic;
SIGNAL \data_mem|Decoder0~13_combout\ : std_logic;
SIGNAL \data_mem|mem[17][0]~regout\ : std_logic;
SIGNAL \data_mem|Decoder0~11_combout\ : std_logic;
SIGNAL \data_mem|Mux15~2\ : std_logic;
SIGNAL \data_mem|Decoder0~9_combout\ : std_logic;
SIGNAL \data_mem|Mux15~3\ : std_logic;
SIGNAL \data_mem|Decoder0~18_combout\ : std_logic;
SIGNAL \data_mem|mem[16][0]~regout\ : std_logic;
SIGNAL \data_mem|Decoder0~17_combout\ : std_logic;
SIGNAL \data_mem|Mux15~4\ : std_logic;
SIGNAL \data_mem|Decoder0~19_combout\ : std_logic;
SIGNAL \data_mem|mem[22][0]~regout\ : std_logic;
SIGNAL \data_mem|Decoder0~16_combout\ : std_logic;
SIGNAL \data_mem|Mux15~5\ : std_logic;
SIGNAL \data_mem|Mux15~6_combout\ : std_logic;
SIGNAL \data_mem|Decoder0~5_combout\ : std_logic;
SIGNAL \data_mem|mem[24][0]~regout\ : std_logic;
SIGNAL \data_mem|Decoder0~3_combout\ : std_logic;
SIGNAL \data_mem|Mux15~0\ : std_logic;
SIGNAL \data_mem|Decoder0~7_combout\ : std_logic;
SIGNAL \data_mem|mem[30][0]~regout\ : std_logic;
SIGNAL \data_mem|Decoder0~1_combout\ : std_logic;
SIGNAL \data_mem|Mux15~1\ : std_logic;
SIGNAL \data_mem|Decoder0~23_combout\ : std_logic;
SIGNAL \data_mem|mem[31][0]~regout\ : std_logic;
SIGNAL \data_mem|Decoder0~22_combout\ : std_logic;
SIGNAL \data_mem|mem[25][0]~regout\ : std_logic;
SIGNAL \data_mem|Decoder0~21_combout\ : std_logic;
SIGNAL \data_mem|Mux15~7\ : std_logic;
SIGNAL \data_mem|Decoder0~20_combout\ : std_logic;
SIGNAL \data_mem|Mux15~8\ : std_logic;
SIGNAL \data_mem|Mux15~9_combout\ : std_logic;
SIGNAL \data_mem|Mux15~20_combout\ : std_logic;
SIGNAL \data_mem|mem[8][1]~regout\ : std_logic;
SIGNAL \data_mem|Mux14~10\ : std_logic;
SIGNAL \data_mem|mem[13][1]~regout\ : std_logic;
SIGNAL \data_mem|Mux14~11\ : std_logic;
SIGNAL \data_mem|mem[10][1]~regout\ : std_logic;
SIGNAL \data_mem|Mux14~17\ : std_logic;
SIGNAL \data_mem|mem[15][1]~regout\ : std_logic;
SIGNAL \data_mem|Mux14~18\ : std_logic;
SIGNAL \data_mem|mem[0][1]~regout\ : std_logic;
SIGNAL \data_mem|Mux14~14\ : std_logic;
SIGNAL \data_mem|mem[5][1]~regout\ : std_logic;
SIGNAL \data_mem|Mux14~15\ : std_logic;
SIGNAL \data_mem|mem[2][1]~regout\ : std_logic;
SIGNAL \data_mem|Mux14~12\ : std_logic;
SIGNAL \data_mem|mem[7][1]~regout\ : std_logic;
SIGNAL \data_mem|Mux14~13\ : std_logic;
SIGNAL \data_mem|Mux14~16_combout\ : std_logic;
SIGNAL \data_mem|Mux14~19_combout\ : std_logic;
SIGNAL \data_mem|mem[16][1]~regout\ : std_logic;
SIGNAL \data_mem|Mux14~4\ : std_logic;
SIGNAL \data_mem|mem[19][1]~regout\ : std_logic;
SIGNAL \data_mem|Mux14~5\ : std_logic;
SIGNAL \data_mem|mem[20][1]~regout\ : std_logic;
SIGNAL \data_mem|Mux14~2\ : std_logic;
SIGNAL \data_mem|mem[23][1]~regout\ : std_logic;
SIGNAL \data_mem|Mux14~3\ : std_logic;
SIGNAL \data_mem|Mux14~6_combout\ : std_logic;
SIGNAL \data_mem|mem[31][1]~regout\ : std_logic;
SIGNAL \data_mem|mem[28][1]~regout\ : std_logic;
SIGNAL \data_mem|Mux14~7\ : std_logic;
SIGNAL \data_mem|Mux14~8\ : std_logic;
SIGNAL \data_mem|mem[27][1]~regout\ : std_logic;
SIGNAL \data_mem|mem[24][1]~regout\ : std_logic;
SIGNAL \data_mem|Mux14~0\ : std_logic;
SIGNAL \data_mem|Mux14~1\ : std_logic;
SIGNAL \data_mem|Mux14~9_combout\ : std_logic;
SIGNAL \data_mem|Mux14~20_combout\ : std_logic;
SIGNAL \data_mem|mem[24][2]~regout\ : std_logic;
SIGNAL \data_mem|Mux13~0\ : std_logic;
SIGNAL \data_mem|mem[29][2]~regout\ : std_logic;
SIGNAL \data_mem|Mux13~1\ : std_logic;
SIGNAL \data_mem|mem[21][2]~regout\ : std_logic;
SIGNAL \data_mem|mem[16][2]~regout\ : std_logic;
SIGNAL \data_mem|Mux13~4\ : std_logic;
SIGNAL \data_mem|Mux13~5\ : std_logic;
SIGNAL \data_mem|mem[18][2]~regout\ : std_logic;
SIGNAL \data_mem|Mux13~2\ : std_logic;
SIGNAL \data_mem|mem[23][2]~regout\ : std_logic;
SIGNAL \data_mem|Mux13~3\ : std_logic;
SIGNAL \data_mem|Mux13~6_combout\ : std_logic;
SIGNAL \data_mem|mem[31][2]~regout\ : std_logic;
SIGNAL \data_mem|mem[26][2]~regout\ : std_logic;
SIGNAL \data_mem|Mux13~7\ : std_logic;
SIGNAL \data_mem|Mux13~8\ : std_logic;
SIGNAL \data_mem|Mux13~9_combout\ : std_logic;
SIGNAL \data_mem|mem[14][2]~regout\ : std_logic;
SIGNAL \data_mem|mem[8][2]~regout\ : std_logic;
SIGNAL \data_mem|Mux13~10\ : std_logic;
SIGNAL \data_mem|Mux13~11\ : std_logic;
SIGNAL \data_mem|mem[9][2]~regout\ : std_logic;
SIGNAL \data_mem|Mux13~17\ : std_logic;
SIGNAL \data_mem|mem[15][2]~regout\ : std_logic;
SIGNAL \data_mem|Mux13~18\ : std_logic;
SIGNAL \data_mem|mem[7][2]~regout\ : std_logic;
SIGNAL \data_mem|mem[1][2]~regout\ : std_logic;
SIGNAL \data_mem|Mux13~12\ : std_logic;
SIGNAL \data_mem|Mux13~13\ : std_logic;
SIGNAL \data_mem|mem[0][2]~regout\ : std_logic;
SIGNAL \data_mem|Mux13~14\ : std_logic;
SIGNAL \data_mem|mem[6][2]~regout\ : std_logic;
SIGNAL \data_mem|Mux13~15\ : std_logic;
SIGNAL \data_mem|Mux13~16_combout\ : std_logic;
SIGNAL \data_mem|Mux13~19_combout\ : std_logic;
SIGNAL \data_mem|Mux13~20_combout\ : std_logic;
SIGNAL \data_mem|mem[4][3]~regout\ : std_logic;
SIGNAL \data_mem|Mux12~12\ : std_logic;
SIGNAL \data_mem|mem[7][3]~regout\ : std_logic;
SIGNAL \data_mem|Mux12~13\ : std_logic;
SIGNAL \data_mem|mem[3][3]~regout\ : std_logic;
SIGNAL \data_mem|mem[0][3]~regout\ : std_logic;
SIGNAL \data_mem|Mux12~14\ : std_logic;
SIGNAL \data_mem|Mux12~15\ : std_logic;
SIGNAL \data_mem|Mux12~16_combout\ : std_logic;
SIGNAL \data_mem|mem[8][3]~regout\ : std_logic;
SIGNAL \data_mem|Mux12~10\ : std_logic;
SIGNAL \data_mem|mem[11][3]~regout\ : std_logic;
SIGNAL \data_mem|Mux12~11\ : std_logic;
SIGNAL \data_mem|mem[15][3]~regout\ : std_logic;
SIGNAL \data_mem|mem[12][3]~regout\ : std_logic;
SIGNAL \data_mem|Mux12~17\ : std_logic;
SIGNAL \data_mem|Mux12~18\ : std_logic;
SIGNAL \data_mem|Mux12~19_combout\ : std_logic;
SIGNAL \data_mem|mem[24][3]~regout\ : std_logic;
SIGNAL \data_mem|Mux12~0\ : std_logic;
SIGNAL \data_mem|mem[30][3]~regout\ : std_logic;
SIGNAL \data_mem|Mux12~1\ : std_logic;
SIGNAL \data_mem|mem[22][3]~regout\ : std_logic;
SIGNAL \data_mem|mem[16][3]~regout\ : std_logic;
SIGNAL \data_mem|Mux12~4\ : std_logic;
SIGNAL \data_mem|Mux12~5\ : std_logic;
SIGNAL \data_mem|mem[23][3]~regout\ : std_logic;
SIGNAL \data_mem|mem[17][3]~regout\ : std_logic;
SIGNAL \data_mem|Mux12~2\ : std_logic;
SIGNAL \data_mem|Mux12~3\ : std_logic;
SIGNAL \data_mem|Mux12~6_combout\ : std_logic;
SIGNAL \data_mem|mem[25][3]~regout\ : std_logic;
SIGNAL \data_mem|Mux12~7\ : std_logic;
SIGNAL \data_mem|mem[31][3]~regout\ : std_logic;
SIGNAL \data_mem|Mux12~8\ : std_logic;
SIGNAL \data_mem|Mux12~9_combout\ : std_logic;
SIGNAL \data_mem|Mux12~20_combout\ : std_logic;
SIGNAL \data_mem|mem[27][4]~regout\ : std_logic;
SIGNAL \data_mem|mem[24][4]~regout\ : std_logic;
SIGNAL \data_mem|Mux11~0\ : std_logic;
SIGNAL \data_mem|Mux11~1\ : std_logic;
SIGNAL \data_mem|mem[20][4]~regout\ : std_logic;
SIGNAL \data_mem|Mux11~2\ : std_logic;
SIGNAL \data_mem|mem[23][4]~regout\ : std_logic;
SIGNAL \data_mem|Mux11~3\ : std_logic;
SIGNAL \data_mem|mem[16][4]~regout\ : std_logic;
SIGNAL \data_mem|Mux11~4\ : std_logic;
SIGNAL \data_mem|mem[19][4]~regout\ : std_logic;
SIGNAL \data_mem|Mux11~5\ : std_logic;
SIGNAL \data_mem|Mux11~6_combout\ : std_logic;
SIGNAL \data_mem|mem[31][4]~regout\ : std_logic;
SIGNAL \data_mem|mem[28][4]~regout\ : std_logic;
SIGNAL \data_mem|Mux11~7\ : std_logic;
SIGNAL \data_mem|Mux11~8\ : std_logic;
SIGNAL \data_mem|Mux11~9_combout\ : std_logic;
SIGNAL \data_mem|mem[2][4]~regout\ : std_logic;
SIGNAL \data_mem|Mux11~12\ : std_logic;
SIGNAL \data_mem|mem[7][4]~regout\ : std_logic;
SIGNAL \data_mem|Mux11~13\ : std_logic;
SIGNAL \data_mem|mem[5][4]~regout\ : std_logic;
SIGNAL \data_mem|mem[0][4]~regout\ : std_logic;
SIGNAL \data_mem|Mux11~14\ : std_logic;
SIGNAL \data_mem|Mux11~15\ : std_logic;
SIGNAL \data_mem|Mux11~16_combout\ : std_logic;
SIGNAL \data_mem|mem[13][4]~regout\ : std_logic;
SIGNAL \data_mem|mem[8][4]~regout\ : std_logic;
SIGNAL \data_mem|Mux11~10\ : std_logic;
SIGNAL \data_mem|Mux11~11\ : std_logic;
SIGNAL \data_mem|mem[10][4]~regout\ : std_logic;
SIGNAL \data_mem|Mux11~17\ : std_logic;
SIGNAL \data_mem|mem[15][4]~regout\ : std_logic;
SIGNAL \data_mem|Mux11~18\ : std_logic;
SIGNAL \data_mem|Mux11~19_combout\ : std_logic;
SIGNAL \data_mem|Mux11~20_combout\ : std_logic;
SIGNAL \data_mem|mem[8][5]~regout\ : std_logic;
SIGNAL \data_mem|Mux10~10\ : std_logic;
SIGNAL \data_mem|mem[14][5]~regout\ : std_logic;
SIGNAL \data_mem|Mux10~11\ : std_logic;
SIGNAL \data_mem|mem[15][5]~regout\ : std_logic;
SIGNAL \data_mem|mem[9][5]~regout\ : std_logic;
SIGNAL \data_mem|Mux10~17\ : std_logic;
SIGNAL \data_mem|Mux10~18\ : std_logic;
SIGNAL \data_mem|mem[6][5]~regout\ : std_logic;
SIGNAL \data_mem|mem[0][5]~regout\ : std_logic;
SIGNAL \data_mem|Mux10~14\ : std_logic;
SIGNAL \data_mem|Mux10~15\ : std_logic;
SIGNAL \data_mem|mem[7][5]~regout\ : std_logic;
SIGNAL \data_mem|mem[1][5]~regout\ : std_logic;
SIGNAL \data_mem|Mux10~12\ : std_logic;
SIGNAL \data_mem|Mux10~13\ : std_logic;
SIGNAL \data_mem|Mux10~16_combout\ : std_logic;
SIGNAL \data_mem|Mux10~19_combout\ : std_logic;
SIGNAL \data_mem|mem[21][5]~regout\ : std_logic;
SIGNAL \data_mem|mem[16][5]~regout\ : std_logic;
SIGNAL \data_mem|Mux10~4\ : std_logic;
SIGNAL \data_mem|Mux10~5\ : std_logic;
SIGNAL \data_mem|mem[23][5]~regout\ : std_logic;
SIGNAL \data_mem|mem[18][5]~regout\ : std_logic;
SIGNAL \data_mem|Mux10~2\ : std_logic;
SIGNAL \data_mem|Mux10~3\ : std_logic;
SIGNAL \data_mem|Mux10~6_combout\ : std_logic;
SIGNAL \data_mem|mem[24][5]~regout\ : std_logic;
SIGNAL \data_mem|Mux10~0\ : std_logic;
SIGNAL \data_mem|mem[29][5]~regout\ : std_logic;
SIGNAL \data_mem|Mux10~1\ : std_logic;
SIGNAL \data_mem|mem[31][5]~regout\ : std_logic;
SIGNAL \data_mem|mem[26][5]~regout\ : std_logic;
SIGNAL \data_mem|Mux10~7\ : std_logic;
SIGNAL \data_mem|Mux10~8\ : std_logic;
SIGNAL \data_mem|Mux10~9_combout\ : std_logic;
SIGNAL \data_mem|Mux10~20_combout\ : std_logic;
SIGNAL \data_mem|mem[17][6]~regout\ : std_logic;
SIGNAL \data_mem|Mux9~0\ : std_logic;
SIGNAL \data_mem|mem[29][6]~regout\ : std_logic;
SIGNAL \data_mem|Mux9~1\ : std_logic;
SIGNAL \data_mem|mem[16][6]~regout\ : std_logic;
SIGNAL \data_mem|Mux9~4\ : std_logic;
SIGNAL \data_mem|mem[28][6]~regout\ : std_logic;
SIGNAL \data_mem|Mux9~5\ : std_logic;
SIGNAL \data_mem|mem[18][6]~regout\ : std_logic;
SIGNAL \data_mem|Mux9~2\ : std_logic;
SIGNAL \data_mem|mem[30][6]~regout\ : std_logic;
SIGNAL \data_mem|Mux9~3\ : std_logic;
SIGNAL \data_mem|Mux9~6_combout\ : std_logic;
SIGNAL \data_mem|mem[19][6]~regout\ : std_logic;
SIGNAL \data_mem|Mux9~7\ : std_logic;
SIGNAL \data_mem|mem[31][6]~regout\ : std_logic;
SIGNAL \data_mem|Mux9~8\ : std_logic;
SIGNAL \data_mem|Mux9~9_combout\ : std_logic;
SIGNAL \data_mem|mem[8][6]~regout\ : std_logic;
SIGNAL \data_mem|Mux9~10\ : std_logic;
SIGNAL \data_mem|mem[11][6]~regout\ : std_logic;
SIGNAL \data_mem|Mux9~11\ : std_logic;
SIGNAL \data_mem|mem[7][6]~regout\ : std_logic;
SIGNAL \data_mem|mem[4][6]~regout\ : std_logic;
SIGNAL \data_mem|Mux9~12\ : std_logic;
SIGNAL \data_mem|Mux9~13\ : std_logic;
SIGNAL \data_mem|mem[3][6]~regout\ : std_logic;
SIGNAL \data_mem|mem[0][6]~regout\ : std_logic;
SIGNAL \data_mem|Mux9~14\ : std_logic;
SIGNAL \data_mem|Mux9~15\ : std_logic;
SIGNAL \data_mem|Mux9~16_combout\ : std_logic;
SIGNAL \data_mem|mem[15][6]~regout\ : std_logic;
SIGNAL \data_mem|mem[12][6]~regout\ : std_logic;
SIGNAL \data_mem|Mux9~17\ : std_logic;
SIGNAL \data_mem|Mux9~18\ : std_logic;
SIGNAL \data_mem|Mux9~19_combout\ : std_logic;
SIGNAL \data_mem|Mux9~20_combout\ : std_logic;
SIGNAL \data_mem|mem[18][7]~regout\ : std_logic;
SIGNAL \data_mem|Mux8~0\ : std_logic;
SIGNAL \data_mem|mem[30][7]~regout\ : std_logic;
SIGNAL \data_mem|Mux8~1\ : std_logic;
SIGNAL \data_mem|mem[16][7]~regout\ : std_logic;
SIGNAL \data_mem|Mux8~4\ : std_logic;
SIGNAL \data_mem|mem[28][7]~regout\ : std_logic;
SIGNAL \data_mem|Mux8~5\ : std_logic;
SIGNAL \data_mem|mem[29][7]~regout\ : std_logic;
SIGNAL \data_mem|mem[17][7]~regout\ : std_logic;
SIGNAL \data_mem|Mux8~2\ : std_logic;
SIGNAL \data_mem|Mux8~3\ : std_logic;
SIGNAL \data_mem|Mux8~6_combout\ : std_logic;
SIGNAL \data_mem|mem[19][7]~regout\ : std_logic;
SIGNAL \data_mem|Mux8~7\ : std_logic;
SIGNAL \data_mem|mem[31][7]~regout\ : std_logic;
SIGNAL \data_mem|Mux8~8\ : std_logic;
SIGNAL \data_mem|Mux8~9_combout\ : std_logic;
SIGNAL \data_mem|mem[7][7]~regout\ : std_logic;
SIGNAL \data_mem|mem[4][7]~regout\ : std_logic;
SIGNAL \data_mem|Mux8~12\ : std_logic;
SIGNAL \data_mem|Mux8~13\ : std_logic;
SIGNAL \data_mem|mem[3][7]~regout\ : std_logic;
SIGNAL \data_mem|mem[0][7]~regout\ : std_logic;
SIGNAL \data_mem|Mux8~14\ : std_logic;
SIGNAL \data_mem|Mux8~15\ : std_logic;
SIGNAL \data_mem|Mux8~16_combout\ : std_logic;
SIGNAL \data_mem|mem[11][7]~regout\ : std_logic;
SIGNAL \data_mem|mem[8][7]~regout\ : std_logic;
SIGNAL \data_mem|Mux8~10\ : std_logic;
SIGNAL \data_mem|Mux8~11\ : std_logic;
SIGNAL \data_mem|mem[12][7]~regout\ : std_logic;
SIGNAL \data_mem|Mux8~17\ : std_logic;
SIGNAL \data_mem|mem[15][7]~regout\ : std_logic;
SIGNAL \data_mem|Mux8~18\ : std_logic;
SIGNAL \data_mem|Mux8~19_combout\ : std_logic;
SIGNAL \data_mem|Mux8~20_combout\ : std_logic;
SIGNAL \data_mem|mem[12][8]~regout\ : std_logic;
SIGNAL \data_mem|Mux7~17\ : std_logic;
SIGNAL \data_mem|mem[15][8]~regout\ : std_logic;
SIGNAL \data_mem|Mux7~18\ : std_logic;
SIGNAL \data_mem|mem[8][8]~regout\ : std_logic;
SIGNAL \data_mem|Mux7~10\ : std_logic;
SIGNAL \data_mem|mem[11][8]~regout\ : std_logic;
SIGNAL \data_mem|Mux7~11\ : std_logic;
SIGNAL \data_mem|mem[3][8]~regout\ : std_logic;
SIGNAL \data_mem|mem[0][8]~regout\ : std_logic;
SIGNAL \data_mem|Mux7~14\ : std_logic;
SIGNAL \data_mem|Mux7~15\ : std_logic;
SIGNAL \data_mem|mem[7][8]~regout\ : std_logic;
SIGNAL \data_mem|mem[4][8]~regout\ : std_logic;
SIGNAL \data_mem|Mux7~12\ : std_logic;
SIGNAL \data_mem|Mux7~13\ : std_logic;
SIGNAL \data_mem|Mux7~16_combout\ : std_logic;
SIGNAL \data_mem|Mux7~19_combout\ : std_logic;
SIGNAL \data_mem|mem[29][8]~regout\ : std_logic;
SIGNAL \data_mem|mem[17][8]~regout\ : std_logic;
SIGNAL \data_mem|Mux7~0\ : std_logic;
SIGNAL \data_mem|Mux7~1\ : std_logic;
SIGNAL \data_mem|mem[30][8]~regout\ : std_logic;
SIGNAL \data_mem|mem[18][8]~regout\ : std_logic;
SIGNAL \data_mem|Mux7~2\ : std_logic;
SIGNAL \data_mem|Mux7~3\ : std_logic;
SIGNAL \data_mem|mem[28][8]~regout\ : std_logic;
SIGNAL \data_mem|mem[16][8]~regout\ : std_logic;
SIGNAL \data_mem|Mux7~4\ : std_logic;
SIGNAL \data_mem|Mux7~5\ : std_logic;
SIGNAL \data_mem|Mux7~6_combout\ : std_logic;
SIGNAL \data_mem|mem[19][8]~regout\ : std_logic;
SIGNAL \data_mem|Mux7~7\ : std_logic;
SIGNAL \data_mem|mem[31][8]~regout\ : std_logic;
SIGNAL \data_mem|Mux7~8\ : std_logic;
SIGNAL \data_mem|Mux7~9_combout\ : std_logic;
SIGNAL \data_mem|Mux7~20_combout\ : std_logic;
SIGNAL \data_mem|mem[4][9]~regout\ : std_logic;
SIGNAL \data_mem|Mux6~12\ : std_logic;
SIGNAL \data_mem|mem[7][9]~regout\ : std_logic;
SIGNAL \data_mem|Mux6~13\ : std_logic;
SIGNAL \data_mem|mem[3][9]~regout\ : std_logic;
SIGNAL \data_mem|mem[0][9]~regout\ : std_logic;
SIGNAL \data_mem|Mux6~14\ : std_logic;
SIGNAL \data_mem|Mux6~15\ : std_logic;
SIGNAL \data_mem|Mux6~16_combout\ : std_logic;
SIGNAL \data_mem|mem[8][9]~regout\ : std_logic;
SIGNAL \data_mem|Mux6~10\ : std_logic;
SIGNAL \data_mem|mem[11][9]~regout\ : std_logic;
SIGNAL \data_mem|Mux6~11\ : std_logic;
SIGNAL \data_mem|mem[12][9]~regout\ : std_logic;
SIGNAL \data_mem|Mux6~17\ : std_logic;
SIGNAL \data_mem|mem[15][9]~regout\ : std_logic;
SIGNAL \data_mem|Mux6~18\ : std_logic;
SIGNAL \data_mem|Mux6~19_combout\ : std_logic;
SIGNAL \data_mem|mem[30][9]~regout\ : std_logic;
SIGNAL \data_mem|mem[18][9]~regout\ : std_logic;
SIGNAL \data_mem|Mux6~0\ : std_logic;
SIGNAL \data_mem|Mux6~1\ : std_logic;
SIGNAL \data_mem|mem[29][9]~regout\ : std_logic;
SIGNAL \data_mem|mem[17][9]~regout\ : std_logic;
SIGNAL \data_mem|Mux6~2\ : std_logic;
SIGNAL \data_mem|Mux6~3\ : std_logic;
SIGNAL \data_mem|mem[16][9]~regout\ : std_logic;
SIGNAL \data_mem|Mux6~4\ : std_logic;
SIGNAL \data_mem|mem[28][9]~regout\ : std_logic;
SIGNAL \data_mem|Mux6~5\ : std_logic;
SIGNAL \data_mem|Mux6~6_combout\ : std_logic;
SIGNAL \data_mem|mem[31][9]~regout\ : std_logic;
SIGNAL \data_mem|mem[19][9]~regout\ : std_logic;
SIGNAL \data_mem|Mux6~7\ : std_logic;
SIGNAL \data_mem|Mux6~8\ : std_logic;
SIGNAL \data_mem|Mux6~9_combout\ : std_logic;
SIGNAL \data_mem|Mux6~20_combout\ : std_logic;
SIGNAL \data_mem|mem[15][10]~regout\ : std_logic;
SIGNAL \data_mem|mem[12][10]~regout\ : std_logic;
SIGNAL \data_mem|Mux5~17\ : std_logic;
SIGNAL \data_mem|Mux5~18\ : std_logic;
SIGNAL \data_mem|mem[8][10]~regout\ : std_logic;
SIGNAL \data_mem|Mux5~10\ : std_logic;
SIGNAL \data_mem|mem[11][10]~regout\ : std_logic;
SIGNAL \data_mem|Mux5~11\ : std_logic;
SIGNAL \data_mem|mem[4][10]~regout\ : std_logic;
SIGNAL \data_mem|Mux5~12\ : std_logic;
SIGNAL \data_mem|mem[7][10]~regout\ : std_logic;
SIGNAL \data_mem|Mux5~13\ : std_logic;
SIGNAL \data_mem|mem[3][10]~regout\ : std_logic;
SIGNAL \data_mem|mem[0][10]~regout\ : std_logic;
SIGNAL \data_mem|Mux5~14\ : std_logic;
SIGNAL \data_mem|Mux5~15\ : std_logic;
SIGNAL \data_mem|Mux5~16_combout\ : std_logic;
SIGNAL \data_mem|Mux5~19_combout\ : std_logic;
SIGNAL \data_mem|mem[17][10]~regout\ : std_logic;
SIGNAL \data_mem|Mux5~0\ : std_logic;
SIGNAL \data_mem|mem[29][10]~regout\ : std_logic;
SIGNAL \data_mem|Mux5~1\ : std_logic;
SIGNAL \data_mem|mem[18][10]~regout\ : std_logic;
SIGNAL \data_mem|Mux5~2\ : std_logic;
SIGNAL \data_mem|mem[30][10]~regout\ : std_logic;
SIGNAL \data_mem|Mux5~3\ : std_logic;
SIGNAL \data_mem|mem[28][10]~regout\ : std_logic;
SIGNAL \data_mem|mem[16][10]~regout\ : std_logic;
SIGNAL \data_mem|Mux5~4\ : std_logic;
SIGNAL \data_mem|Mux5~5\ : std_logic;
SIGNAL \data_mem|Mux5~6_combout\ : std_logic;
SIGNAL \data_mem|mem[31][10]~regout\ : std_logic;
SIGNAL \data_mem|mem[19][10]~regout\ : std_logic;
SIGNAL \data_mem|Mux5~7\ : std_logic;
SIGNAL \data_mem|Mux5~8\ : std_logic;
SIGNAL \data_mem|Mux5~9_combout\ : std_logic;
SIGNAL \data_mem|Mux5~20_combout\ : std_logic;
SIGNAL \data_mem|mem[18][11]~regout\ : std_logic;
SIGNAL \data_mem|Mux4~0\ : std_logic;
SIGNAL \data_mem|mem[30][11]~regout\ : std_logic;
SIGNAL \data_mem|Mux4~1\ : std_logic;
SIGNAL \data_mem|mem[31][11]~regout\ : std_logic;
SIGNAL \data_mem|mem[19][11]~regout\ : std_logic;
SIGNAL \data_mem|Mux4~7\ : std_logic;
SIGNAL \data_mem|Mux4~8\ : std_logic;
SIGNAL \data_mem|mem[17][11]~regout\ : std_logic;
SIGNAL \data_mem|Mux4~2\ : std_logic;
SIGNAL \data_mem|mem[29][11]~regout\ : std_logic;
SIGNAL \data_mem|Mux4~3\ : std_logic;
SIGNAL \data_mem|mem[28][11]~regout\ : std_logic;
SIGNAL \data_mem|mem[16][11]~regout\ : std_logic;
SIGNAL \data_mem|Mux4~4\ : std_logic;
SIGNAL \data_mem|Mux4~5\ : std_logic;
SIGNAL \data_mem|Mux4~6_combout\ : std_logic;
SIGNAL \data_mem|Mux4~9_combout\ : std_logic;
SIGNAL \data_mem|mem[15][11]~regout\ : std_logic;
SIGNAL \data_mem|mem[12][11]~regout\ : std_logic;
SIGNAL \data_mem|Mux4~17\ : std_logic;
SIGNAL \data_mem|Mux4~18\ : std_logic;
SIGNAL \data_mem|mem[11][11]~regout\ : std_logic;
SIGNAL \data_mem|mem[8][11]~regout\ : std_logic;
SIGNAL \data_mem|Mux4~10\ : std_logic;
SIGNAL \data_mem|Mux4~11\ : std_logic;
SIGNAL \data_mem|mem[3][11]~regout\ : std_logic;
SIGNAL \data_mem|mem[0][11]~regout\ : std_logic;
SIGNAL \data_mem|Mux4~14\ : std_logic;
SIGNAL \data_mem|Mux4~15\ : std_logic;
SIGNAL \data_mem|mem[4][11]~regout\ : std_logic;
SIGNAL \data_mem|Mux4~12\ : std_logic;
SIGNAL \data_mem|mem[7][11]~regout\ : std_logic;
SIGNAL \data_mem|Mux4~13\ : std_logic;
SIGNAL \data_mem|Mux4~16_combout\ : std_logic;
SIGNAL \data_mem|Mux4~19_combout\ : std_logic;
SIGNAL \data_mem|Mux4~20_combout\ : std_logic;
SIGNAL \data_mem|mem[4][12]~regout\ : std_logic;
SIGNAL \data_mem|Mux3~10\ : std_logic;
SIGNAL \data_mem|mem[7][12]~regout\ : std_logic;
SIGNAL \data_mem|Mux3~11\ : std_logic;
SIGNAL \data_mem|mem[11][12]~regout\ : std_logic;
SIGNAL \data_mem|mem[8][12]~regout\ : std_logic;
SIGNAL \data_mem|Mux3~12\ : std_logic;
SIGNAL \data_mem|Mux3~13\ : std_logic;
SIGNAL \data_mem|mem[3][12]~regout\ : std_logic;
SIGNAL \data_mem|mem[0][12]~regout\ : std_logic;
SIGNAL \data_mem|Mux3~14\ : std_logic;
SIGNAL \data_mem|Mux3~15\ : std_logic;
SIGNAL \data_mem|Mux3~16_combout\ : std_logic;
SIGNAL \data_mem|mem[12][12]~regout\ : std_logic;
SIGNAL \data_mem|Mux3~17\ : std_logic;
SIGNAL \data_mem|mem[15][12]~regout\ : std_logic;
SIGNAL \data_mem|Mux3~18\ : std_logic;
SIGNAL \data_mem|Mux3~19_combout\ : std_logic;
SIGNAL \data_mem|mem[29][12]~regout\ : std_logic;
SIGNAL \data_mem|mem[17][12]~regout\ : std_logic;
SIGNAL \data_mem|Mux3~0\ : std_logic;
SIGNAL \data_mem|Mux3~1\ : std_logic;
SIGNAL \data_mem|mem[28][12]~regout\ : std_logic;
SIGNAL \data_mem|mem[16][12]~regout\ : std_logic;
SIGNAL \data_mem|Mux3~4\ : std_logic;
SIGNAL \data_mem|Mux3~5\ : std_logic;
SIGNAL \data_mem|mem[30][12]~regout\ : std_logic;
SIGNAL \data_mem|mem[18][12]~regout\ : std_logic;
SIGNAL \data_mem|Mux3~2\ : std_logic;
SIGNAL \data_mem|Mux3~3\ : std_logic;
SIGNAL \data_mem|Mux3~6_combout\ : std_logic;
SIGNAL \data_mem|mem[19][12]~regout\ : std_logic;
SIGNAL \data_mem|Mux3~7\ : std_logic;
SIGNAL \data_mem|mem[31][12]~regout\ : std_logic;
SIGNAL \data_mem|Mux3~8\ : std_logic;
SIGNAL \data_mem|Mux3~9_combout\ : std_logic;
SIGNAL \data_mem|Mux3~20_combout\ : std_logic;
SIGNAL \data_mem|mem[3][13]~regout\ : std_logic;
SIGNAL \data_mem|mem[0][13]~regout\ : std_logic;
SIGNAL \data_mem|Mux2~14\ : std_logic;
SIGNAL \data_mem|Mux2~15\ : std_logic;
SIGNAL \data_mem|mem[4][13]~regout\ : std_logic;
SIGNAL \data_mem|Mux2~12\ : std_logic;
SIGNAL \data_mem|mem[7][13]~regout\ : std_logic;
SIGNAL \data_mem|Mux2~13\ : std_logic;
SIGNAL \data_mem|Mux2~16_combout\ : std_logic;
SIGNAL \data_mem|mem[11][13]~regout\ : std_logic;
SIGNAL \data_mem|mem[8][13]~regout\ : std_logic;
SIGNAL \data_mem|Mux2~10\ : std_logic;
SIGNAL \data_mem|Mux2~11\ : std_logic;
SIGNAL \data_mem|mem[15][13]~regout\ : std_logic;
SIGNAL \data_mem|mem[12][13]~regout\ : std_logic;
SIGNAL \data_mem|Mux2~17\ : std_logic;
SIGNAL \data_mem|Mux2~18\ : std_logic;
SIGNAL \data_mem|Mux2~19_combout\ : std_logic;
SIGNAL \data_mem|mem[29][13]~regout\ : std_logic;
SIGNAL \data_mem|mem[17][13]~regout\ : std_logic;
SIGNAL \data_mem|Mux2~2\ : std_logic;
SIGNAL \data_mem|Mux2~3\ : std_logic;
SIGNAL \data_mem|mem[16][13]~regout\ : std_logic;
SIGNAL \data_mem|Mux2~4\ : std_logic;
SIGNAL \data_mem|mem[28][13]~regout\ : std_logic;
SIGNAL \data_mem|Mux2~5\ : std_logic;
SIGNAL \data_mem|Mux2~6_combout\ : std_logic;
SIGNAL \data_mem|mem[19][13]~regout\ : std_logic;
SIGNAL \data_mem|Mux2~7\ : std_logic;
SIGNAL \data_mem|mem[31][13]~regout\ : std_logic;
SIGNAL \data_mem|Mux2~8\ : std_logic;
SIGNAL \data_mem|mem[18][13]~regout\ : std_logic;
SIGNAL \data_mem|Mux2~0\ : std_logic;
SIGNAL \data_mem|mem[30][13]~regout\ : std_logic;
SIGNAL \data_mem|Mux2~1\ : std_logic;
SIGNAL \data_mem|Mux2~9_combout\ : std_logic;
SIGNAL \data_mem|Mux2~20_combout\ : std_logic;
SIGNAL \data_mem|mem[29][14]~regout\ : std_logic;
SIGNAL \data_mem|mem[17][14]~regout\ : std_logic;
SIGNAL \data_mem|Mux1~0\ : std_logic;
SIGNAL \data_mem|Mux1~1\ : std_logic;
SIGNAL \data_mem|mem[18][14]~regout\ : std_logic;
SIGNAL \data_mem|Mux1~2\ : std_logic;
SIGNAL \data_mem|mem[30][14]~regout\ : std_logic;
SIGNAL \data_mem|Mux1~3\ : std_logic;
SIGNAL \data_mem|mem[28][14]~regout\ : std_logic;
SIGNAL \data_mem|mem[16][14]~regout\ : std_logic;
SIGNAL \data_mem|Mux1~4\ : std_logic;
SIGNAL \data_mem|Mux1~5\ : std_logic;
SIGNAL \data_mem|Mux1~6_combout\ : std_logic;
SIGNAL \data_mem|mem[19][14]~regout\ : std_logic;
SIGNAL \data_mem|Mux1~7\ : std_logic;
SIGNAL \data_mem|mem[31][14]~regout\ : std_logic;
SIGNAL \data_mem|Mux1~8\ : std_logic;
SIGNAL \data_mem|Mux1~9_combout\ : std_logic;
SIGNAL \data_mem|mem[7][14]~regout\ : std_logic;
SIGNAL \data_mem|mem[4][14]~regout\ : std_logic;
SIGNAL \data_mem|Mux1~10\ : std_logic;
SIGNAL \data_mem|Mux1~11\ : std_logic;
SIGNAL \data_mem|mem[0][14]~regout\ : std_logic;
SIGNAL \data_mem|Mux1~14\ : std_logic;
SIGNAL \data_mem|mem[3][14]~regout\ : std_logic;
SIGNAL \data_mem|Mux1~15\ : std_logic;
SIGNAL \data_mem|mem[8][14]~regout\ : std_logic;
SIGNAL \data_mem|Mux1~12\ : std_logic;
SIGNAL \data_mem|mem[11][14]~regout\ : std_logic;
SIGNAL \data_mem|Mux1~13\ : std_logic;
SIGNAL \data_mem|Mux1~16_combout\ : std_logic;
SIGNAL \data_mem|mem[12][14]~regout\ : std_logic;
SIGNAL \data_mem|Mux1~17\ : std_logic;
SIGNAL \data_mem|mem[15][14]~regout\ : std_logic;
SIGNAL \data_mem|Mux1~18\ : std_logic;
SIGNAL \data_mem|Mux1~19_combout\ : std_logic;
SIGNAL \data_mem|Mux1~20_combout\ : std_logic;
SIGNAL \data_mem|mem[0][15]~regout\ : std_logic;
SIGNAL \data_mem|Mux0~14\ : std_logic;
SIGNAL \data_mem|mem[3][15]~regout\ : std_logic;
SIGNAL \data_mem|Mux0~15\ : std_logic;
SIGNAL \data_mem|mem[7][15]~regout\ : std_logic;
SIGNAL \data_mem|mem[4][15]~regout\ : std_logic;
SIGNAL \data_mem|Mux0~12\ : std_logic;
SIGNAL \data_mem|Mux0~13\ : std_logic;
SIGNAL \data_mem|Mux0~16_combout\ : std_logic;
SIGNAL \data_mem|mem[11][15]~regout\ : std_logic;
SIGNAL \data_mem|mem[8][15]~regout\ : std_logic;
SIGNAL \data_mem|Mux0~10\ : std_logic;
SIGNAL \data_mem|Mux0~11\ : std_logic;
SIGNAL \data_mem|mem[12][15]~regout\ : std_logic;
SIGNAL \data_mem|Mux0~17\ : std_logic;
SIGNAL \data_mem|mem[15][15]~regout\ : std_logic;
SIGNAL \data_mem|Mux0~18\ : std_logic;
SIGNAL \data_mem|Mux0~19_combout\ : std_logic;
SIGNAL \data_mem|mem[19][15]~regout\ : std_logic;
SIGNAL \data_mem|Mux0~7\ : std_logic;
SIGNAL \data_mem|mem[31][15]~regout\ : std_logic;
SIGNAL \data_mem|Mux0~8\ : std_logic;
SIGNAL \data_mem|mem[30][15]~regout\ : std_logic;
SIGNAL \data_mem|mem[18][15]~regout\ : std_logic;
SIGNAL \data_mem|Mux0~0\ : std_logic;
SIGNAL \data_mem|Mux0~1\ : std_logic;
SIGNAL \data_mem|mem[16][15]~regout\ : std_logic;
SIGNAL \data_mem|Mux0~4\ : std_logic;
SIGNAL \data_mem|mem[28][15]~regout\ : std_logic;
SIGNAL \data_mem|Mux0~5\ : std_logic;
SIGNAL \data_mem|mem[29][15]~regout\ : std_logic;
SIGNAL \data_mem|mem[17][15]~regout\ : std_logic;
SIGNAL \data_mem|Mux0~2\ : std_logic;
SIGNAL \data_mem|Mux0~3\ : std_logic;
SIGNAL \data_mem|Mux0~6_combout\ : std_logic;
SIGNAL \data_mem|Mux0~9_combout\ : std_logic;
SIGNAL \data_mem|Mux0~20_combout\ : std_logic;
SIGNAL \mem_d_in~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mem_a~combout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_write <= write;
ww_mem_a <= mem_a;
ww_mem_d_in <= mem_d_in;
mem_d_out <= ww_mem_d_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(4),
	combout => \mem_a~combout\(4));

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

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(1),
	combout => \mem_a~combout\(1));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(0),
	combout => \mem_a~combout\(0));

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d_in[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d_in(0),
	combout => \mem_d_in~combout\(0));

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

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(3),
	combout => \mem_a~combout\(3));

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(2),
	combout => \mem_a~combout\(2));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\write~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_write,
	combout => \write~combout\);

-- Location: LC_X7_Y4_N3
\data_mem|Decoder0~4\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~4_combout\ = (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & (!\mem_a~combout\(2) & \write~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_a~combout\(2),
	datad => \write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~4_combout\);

-- Location: LC_X7_Y4_N4
\data_mem|Decoder0~26\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~26_combout\ = ((\mem_a~combout\(3) & (!\mem_a~combout\(4) & \data_mem|Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mem_a~combout\(3),
	datac => \mem_a~combout\(4),
	datad => \data_mem|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~26_combout\);

-- Location: LC_X5_Y7_N8
\data_mem|mem[8][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[8][0]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~26_combout\, \mem_d_in~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[8][0]~regout\);

-- Location: LC_X8_Y7_N2
\data_mem|Decoder0~12\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~12_combout\ = (!\mem_a~combout\(1) & (!\mem_a~combout\(2) & (\mem_a~combout\(0) & \write~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(2),
	datac => \mem_a~combout\(0),
	datad => \write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~12_combout\);

-- Location: LC_X5_Y8_N9
\data_mem|Decoder0~25\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~25_combout\ = (\mem_a~combout\(3) & (((\data_mem|Decoder0~12_combout\ & !\mem_a~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datac => \data_mem|Decoder0~12_combout\,
	datad => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~25_combout\);

-- Location: LC_X5_Y7_N5
\data_mem|mem[9][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux15~10\ = (\mem_a~combout\(1) & (\mem_a~combout\(0))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & (B1_mem[9][0])) # (!\mem_a~combout\(0) & ((\data_mem|mem[8][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(0),
	datad => \data_mem|mem[8][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux15~10\,
	regout => \data_mem|mem[9][0]~regout\);

-- Location: LC_X10_Y10_N3
\data_mem|Decoder0~10\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~10_combout\ = (\mem_a~combout\(1) & (\write~combout\ & (!\mem_a~combout\(2) & \mem_a~combout\(0))))

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
	dataa => \mem_a~combout\(1),
	datab => \write~combout\,
	datac => \mem_a~combout\(2),
	datad => \mem_a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~10_combout\);

-- Location: LC_X10_Y10_N9
\data_mem|Decoder0~27\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~27_combout\ = (!\mem_a~combout\(4) & (\mem_a~combout\(3) & ((\data_mem|Decoder0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(4),
	datab => \mem_a~combout\(3),
	datad => \data_mem|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~27_combout\);

-- Location: LC_X8_Y10_N2
\data_mem|mem[11][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[11][0]~regout\ = DFFEAS((((\mem_d_in~combout\(0)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~27_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(0),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[11][0]~regout\);

-- Location: LC_X10_Y6_N9
\data_mem|Decoder0~2\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~2_combout\ = (\mem_a~combout\(1) & (!\mem_a~combout\(0) & (!\mem_a~combout\(2) & \write~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_a~combout\(2),
	datad => \write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~2_combout\);

-- Location: LC_X4_Y7_N5
\data_mem|Decoder0~24\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~24_combout\ = ((\mem_a~combout\(3) & (!\mem_a~combout\(4) & \data_mem|Decoder0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mem_a~combout\(3),
	datac => \mem_a~combout\(4),
	datad => \data_mem|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~24_combout\);

-- Location: LC_X3_Y4_N9
\data_mem|mem[10][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux15~11\ = (\data_mem|Mux15~10\ & ((\data_mem|mem[11][0]~regout\) # ((!\mem_a~combout\(1))))) # (!\data_mem|Mux15~10\ & (((B1_mem[10][0] & \mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux15~10\,
	datab => \data_mem|mem[11][0]~regout\,
	datac => \mem_d_in~combout\(0),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux15~11\,
	regout => \data_mem|mem[10][0]~regout\);

-- Location: LC_X7_Y5_N5
\data_mem|Decoder0~0\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~0_combout\ = (\write~combout\ & (!\mem_a~combout\(0) & (\mem_a~combout\(2) & !\mem_a~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \write~combout\,
	datab => \mem_a~combout\(0),
	datac => \mem_a~combout\(2),
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~0_combout\);

-- Location: LC_X7_Y5_N8
\data_mem|Decoder0~30\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~30_combout\ = (!\mem_a~combout\(4) & (((\data_mem|Decoder0~0_combout\ & !\mem_a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(4),
	datac => \data_mem|Decoder0~0_combout\,
	datad => \mem_a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~30_combout\);

-- Location: LC_X5_Y6_N1
\data_mem|mem[4][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[4][0]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~30_combout\, \mem_d_in~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[4][0]~regout\);

-- Location: LC_X9_Y6_N2
\data_mem|Decoder0~6\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~6_combout\ = (\mem_a~combout\(1) & (\mem_a~combout\(2) & (\write~combout\ & !\mem_a~combout\(0))))

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
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(2),
	datac => \write~combout\,
	datad => \mem_a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~6_combout\);

-- Location: LC_X9_Y6_N1
\data_mem|Decoder0~29\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~29_combout\ = (!\mem_a~combout\(3) & (((!\mem_a~combout\(4) & \data_mem|Decoder0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datac => \mem_a~combout\(4),
	datad => \data_mem|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~29_combout\);

-- Location: LC_X5_Y6_N4
\data_mem|mem[6][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux15~12\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((B1_mem[6][0]))) # (!\mem_a~combout\(1) & (\data_mem|mem[4][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \data_mem|mem[4][0]~regout\,
	datac => \mem_d_in~combout\(0),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux15~12\,
	regout => \data_mem|mem[6][0]~regout\);

-- Location: LC_X11_Y10_N1
\data_mem|Decoder0~14\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~14_combout\ = (\write~combout\ & (\mem_a~combout\(2) & (\mem_a~combout\(0) & \mem_a~combout\(1))))

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
	dataa => \write~combout\,
	datab => \mem_a~combout\(2),
	datac => \mem_a~combout\(0),
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~14_combout\);

-- Location: LC_X11_Y10_N2
\data_mem|Decoder0~31\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~31_combout\ = ((!\mem_a~combout\(4) & (!\mem_a~combout\(3) & \data_mem|Decoder0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mem_a~combout\(4),
	datac => \mem_a~combout\(3),
	datad => \data_mem|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~31_combout\);

-- Location: LC_X4_Y8_N2
\data_mem|mem[7][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[7][0]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~31_combout\, \mem_d_in~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[7][0]~regout\);

-- Location: LC_X12_Y9_N7
\data_mem|Decoder0~8\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~8_combout\ = (\write~combout\ & (\mem_a~combout\(0) & (\mem_a~combout\(2) & !\mem_a~combout\(1))))

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
	dataa => \write~combout\,
	datab => \mem_a~combout\(0),
	datac => \mem_a~combout\(2),
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~8_combout\);

-- Location: LC_X12_Y9_N3
\data_mem|Decoder0~28\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~28_combout\ = (!\mem_a~combout\(3) & (\data_mem|Decoder0~8_combout\ & (!\mem_a~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \data_mem|Decoder0~8_combout\,
	datac => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~28_combout\);

-- Location: LC_X4_Y8_N8
\data_mem|mem[5][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux15~13\ = (\data_mem|Mux15~12\ & ((\data_mem|mem[7][0]~regout\) # ((!\mem_a~combout\(0))))) # (!\data_mem|Mux15~12\ & (((B1_mem[5][0] & \mem_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux15~12\,
	datab => \data_mem|mem[7][0]~regout\,
	datac => \mem_d_in~combout\(0),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux15~13\,
	regout => \data_mem|mem[5][0]~regout\);

-- Location: LC_X7_Y4_N1
\data_mem|Decoder0~34\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~34_combout\ = ((!\mem_a~combout\(3) & (!\mem_a~combout\(4) & \data_mem|Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mem_a~combout\(3),
	datac => \mem_a~combout\(4),
	datad => \data_mem|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~34_combout\);

-- Location: LC_X12_Y4_N5
\data_mem|mem[0][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[0][0]~regout\ = DFFEAS((((\mem_d_in~combout\(0)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~34_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(0),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[0][0]~regout\);

-- Location: LC_X5_Y8_N5
\data_mem|Decoder0~33\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~33_combout\ = (!\mem_a~combout\(3) & (((\data_mem|Decoder0~12_combout\ & !\mem_a~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datac => \data_mem|Decoder0~12_combout\,
	datad => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~33_combout\);

-- Location: LC_X10_Y6_N2
\data_mem|mem[1][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux15~14\ = (\mem_a~combout\(0) & (((B1_mem[1][0]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\data_mem|mem[0][0]~regout\ & ((!\mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[0][0]~regout\,
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(0),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux15~14\,
	regout => \data_mem|mem[1][0]~regout\);

-- Location: LC_X10_Y10_N6
\data_mem|Decoder0~35\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~35_combout\ = (!\mem_a~combout\(4) & (!\mem_a~combout\(3) & ((\data_mem|Decoder0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(4),
	datab => \mem_a~combout\(3),
	datad => \data_mem|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~35_combout\);

-- Location: LC_X10_Y7_N2
\data_mem|mem[3][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[3][0]~regout\ = DFFEAS((((\mem_d_in~combout\(0)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~35_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(0),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[3][0]~regout\);

-- Location: LC_X10_Y6_N3
\data_mem|Decoder0~32\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~32_combout\ = ((!\mem_a~combout\(4) & (!\mem_a~combout\(3) & \data_mem|Decoder0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mem_a~combout\(4),
	datac => \mem_a~combout\(3),
	datad => \data_mem|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~32_combout\);

-- Location: LC_X10_Y7_N4
\data_mem|mem[2][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux15~15\ = (\data_mem|Mux15~14\ & (((\data_mem|mem[3][0]~regout\)) # (!\mem_a~combout\(1)))) # (!\data_mem|Mux15~14\ & (\mem_a~combout\(1) & (B1_mem[2][0])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux15~14\,
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(0),
	datad => \data_mem|mem[3][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux15~15\,
	regout => \data_mem|mem[2][0]~regout\);

-- Location: LC_X12_Y7_N4
\data_mem|Mux15~16\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux15~16_combout\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & (\data_mem|Mux15~13\)) # (!\mem_a~combout\(2) & ((\data_mem|Mux15~15\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \data_mem|Mux15~13\,
	datac => \mem_a~combout\(2),
	datad => \data_mem|Mux15~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux15~16_combout\);

-- Location: LC_X8_Y9_N6
\data_mem|Decoder0~38\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~38_combout\ = (\mem_a~combout\(3) & (!\mem_a~combout\(4) & (\data_mem|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(4),
	datac => \data_mem|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~38_combout\);

-- Location: LC_X14_Y9_N2
\data_mem|mem[12][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[12][0]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~38_combout\, \mem_d_in~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[12][0]~regout\);

-- Location: LC_X9_Y6_N6
\data_mem|Decoder0~37\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~37_combout\ = (\mem_a~combout\(3) & (((!\mem_a~combout\(4) & \data_mem|Decoder0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datac => \mem_a~combout\(4),
	datad => \data_mem|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~37_combout\);

-- Location: LC_X12_Y10_N5
\data_mem|mem[14][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux15~17\ = (\mem_a~combout\(1) & ((\mem_a~combout\(0)) # ((B1_mem[14][0])))) # (!\mem_a~combout\(1) & (!\mem_a~combout\(0) & ((\data_mem|mem[12][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(0),
	datad => \data_mem|mem[12][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux15~17\,
	regout => \data_mem|mem[14][0]~regout\);

-- Location: LC_X11_Y10_N7
\data_mem|Decoder0~39\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~39_combout\ = ((!\mem_a~combout\(4) & (\mem_a~combout\(3) & \data_mem|Decoder0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mem_a~combout\(4),
	datac => \mem_a~combout\(3),
	datad => \data_mem|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~39_combout\);

-- Location: LC_X14_Y10_N7
\data_mem|mem[15][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[15][0]~regout\ = DFFEAS((((\mem_d_in~combout\(0)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~39_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(0),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[15][0]~regout\);

-- Location: LC_X12_Y9_N1
\data_mem|Decoder0~36\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~36_combout\ = (\mem_a~combout\(3) & (\data_mem|Decoder0~8_combout\ & (!\mem_a~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \data_mem|Decoder0~8_combout\,
	datac => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~36_combout\);

-- Location: LC_X12_Y10_N7
\data_mem|mem[13][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux15~18\ = (\data_mem|Mux15~17\ & (((\data_mem|mem[15][0]~regout\)) # (!\mem_a~combout\(0)))) # (!\data_mem|Mux15~17\ & (\mem_a~combout\(0) & (B1_mem[13][0])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux15~17\,
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(0),
	datad => \data_mem|mem[15][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux15~18\,
	regout => \data_mem|mem[13][0]~regout\);

-- Location: LC_X12_Y7_N6
\data_mem|Mux15~19\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux15~19_combout\ = (\data_mem|Mux15~16_combout\ & (((\data_mem|Mux15~18\) # (!\mem_a~combout\(3))))) # (!\data_mem|Mux15~16_combout\ & (\data_mem|Mux15~11\ & (\mem_a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux15~11\,
	datab => \data_mem|Mux15~16_combout\,
	datac => \mem_a~combout\(3),
	datad => \data_mem|Mux15~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux15~19_combout\);

-- Location: LC_X11_Y10_N6
\data_mem|Decoder0~15\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~15_combout\ = ((\mem_a~combout\(4) & (!\mem_a~combout\(3) & \data_mem|Decoder0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mem_a~combout\(4),
	datac => \mem_a~combout\(3),
	datad => \data_mem|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~15_combout\);

-- Location: LC_X13_Y7_N4
\data_mem|mem[23][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[23][0]~regout\ = DFFEAS(((\mem_d_in~combout\(0))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~15_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_d_in~combout\(0),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[23][0]~regout\);

-- Location: LC_X5_Y8_N6
\data_mem|Decoder0~13\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~13_combout\ = (!\mem_a~combout\(3) & (((\data_mem|Decoder0~12_combout\ & \mem_a~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datac => \data_mem|Decoder0~12_combout\,
	datad => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~13_combout\);

-- Location: LC_X9_Y10_N4
\data_mem|mem[17][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[17][0]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~13_combout\, \mem_d_in~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[17][0]~regout\);

-- Location: LC_X10_Y10_N8
\data_mem|Decoder0~11\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~11_combout\ = (\mem_a~combout\(4) & (!\mem_a~combout\(3) & ((\data_mem|Decoder0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(4),
	datab => \mem_a~combout\(3),
	datad => \data_mem|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~11_combout\);

-- Location: LC_X14_Y7_N3
\data_mem|mem[19][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux15~2\ = (\mem_a~combout\(2) & (\mem_a~combout\(1))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(1) & (B1_mem[19][0])) # (!\mem_a~combout\(1) & ((\data_mem|mem[17][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(0),
	datad => \data_mem|mem[17][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux15~2\,
	regout => \data_mem|mem[19][0]~regout\);

-- Location: LC_X12_Y9_N6
\data_mem|Decoder0~9\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~9_combout\ = (!\mem_a~combout\(3) & (\data_mem|Decoder0~8_combout\ & (\mem_a~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \data_mem|Decoder0~8_combout\,
	datac => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~9_combout\);

-- Location: LC_X14_Y7_N4
\data_mem|mem[21][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux15~3\ = (\mem_a~combout\(2) & ((\data_mem|Mux15~2\ & (\data_mem|mem[23][0]~regout\)) # (!\data_mem|Mux15~2\ & ((B1_mem[21][0]))))) # (!\mem_a~combout\(2) & (((\data_mem|Mux15~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \data_mem|mem[23][0]~regout\,
	datac => \mem_d_in~combout\(0),
	datad => \data_mem|Mux15~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux15~3\,
	regout => \data_mem|mem[21][0]~regout\);

-- Location: LC_X7_Y4_N7
\data_mem|Decoder0~18\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~18_combout\ = ((!\mem_a~combout\(3) & (\mem_a~combout\(4) & \data_mem|Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mem_a~combout\(3),
	datac => \mem_a~combout\(4),
	datad => \data_mem|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~18_combout\);

-- Location: LC_X11_Y4_N5
\data_mem|mem[16][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[16][0]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~18_combout\, \mem_d_in~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[16][0]~regout\);

-- Location: LC_X4_Y7_N4
\data_mem|Decoder0~17\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~17_combout\ = ((!\mem_a~combout\(3) & (\mem_a~combout\(4) & \data_mem|Decoder0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mem_a~combout\(3),
	datac => \mem_a~combout\(4),
	datad => \data_mem|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~17_combout\);

-- Location: LC_X12_Y5_N6
\data_mem|mem[18][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux15~4\ = (\mem_a~combout\(2) & (\mem_a~combout\(1))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(1) & (B1_mem[18][0])) # (!\mem_a~combout\(1) & ((\data_mem|mem[16][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(0),
	datad => \data_mem|mem[16][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux15~4\,
	regout => \data_mem|mem[18][0]~regout\);

-- Location: LC_X9_Y6_N7
\data_mem|Decoder0~19\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~19_combout\ = (!\mem_a~combout\(3) & (((\mem_a~combout\(4) & \data_mem|Decoder0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datac => \mem_a~combout\(4),
	datad => \data_mem|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~19_combout\);

-- Location: LC_X13_Y7_N2
\data_mem|mem[22][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[22][0]~regout\ = DFFEAS(((\mem_d_in~combout\(0))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~19_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_d_in~combout\(0),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[22][0]~regout\);

-- Location: LC_X7_Y5_N0
\data_mem|Decoder0~16\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~16_combout\ = (\mem_a~combout\(4) & (((\data_mem|Decoder0~0_combout\ & !\mem_a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(4),
	datac => \data_mem|Decoder0~0_combout\,
	datad => \mem_a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~16_combout\);

-- Location: LC_X12_Y6_N5
\data_mem|mem[20][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux15~5\ = (\data_mem|Mux15~4\ & (((\data_mem|mem[22][0]~regout\)) # (!\mem_a~combout\(2)))) # (!\data_mem|Mux15~4\ & (\mem_a~combout\(2) & (B1_mem[20][0])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux15~4\,
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(0),
	datad => \data_mem|mem[22][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux15~5\,
	regout => \data_mem|mem[20][0]~regout\);

-- Location: LC_X12_Y7_N8
\data_mem|Mux15~6\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux15~6_combout\ = (\mem_a~combout\(0) & ((\data_mem|Mux15~3\) # ((\mem_a~combout\(3))))) # (!\mem_a~combout\(0) & (((!\mem_a~combout\(3) & \data_mem|Mux15~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cbc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux15~3\,
	datab => \mem_a~combout\(0),
	datac => \mem_a~combout\(3),
	datad => \data_mem|Mux15~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux15~6_combout\);

-- Location: LC_X7_Y4_N2
\data_mem|Decoder0~5\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~5_combout\ = ((\mem_a~combout\(3) & (\mem_a~combout\(4) & \data_mem|Decoder0~4_combout\)))

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
	datab => \mem_a~combout\(3),
	datac => \mem_a~combout\(4),
	datad => \data_mem|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~5_combout\);

-- Location: LC_X14_Y5_N7
\data_mem|mem[24][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[24][0]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~5_combout\, \mem_d_in~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[24][0]~regout\);

-- Location: LC_X4_Y7_N6
\data_mem|Decoder0~3\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~3_combout\ = ((\mem_a~combout\(3) & (\mem_a~combout\(4) & \data_mem|Decoder0~2_combout\)))

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
	datab => \mem_a~combout\(3),
	datac => \mem_a~combout\(4),
	datad => \data_mem|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~3_combout\);

-- Location: LC_X12_Y5_N7
\data_mem|mem[26][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux15~0\ = (\mem_a~combout\(1) & (((B1_mem[26][0]) # (\mem_a~combout\(2))))) # (!\mem_a~combout\(1) & (\data_mem|mem[24][0]~regout\ & ((!\mem_a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[24][0]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(0),
	datad => \mem_a~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux15~0\,
	regout => \data_mem|mem[26][0]~regout\);

-- Location: LC_X9_Y6_N8
\data_mem|Decoder0~7\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~7_combout\ = (\mem_a~combout\(3) & (((\mem_a~combout\(4) & \data_mem|Decoder0~6_combout\))))

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
	dataa => \mem_a~combout\(3),
	datac => \mem_a~combout\(4),
	datad => \data_mem|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~7_combout\);

-- Location: LC_X12_Y7_N3
\data_mem|mem[30][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[30][0]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~7_combout\, \mem_d_in~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[30][0]~regout\);

-- Location: LC_X7_Y5_N3
\data_mem|Decoder0~1\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~1_combout\ = (\mem_a~combout\(4) & (((\data_mem|Decoder0~0_combout\ & \mem_a~combout\(3)))))

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
	dataa => \mem_a~combout\(4),
	datac => \data_mem|Decoder0~0_combout\,
	datad => \mem_a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~1_combout\);

-- Location: LC_X12_Y7_N7
\data_mem|mem[28][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux15~1\ = (\mem_a~combout\(2) & ((\data_mem|Mux15~0\ & ((\data_mem|mem[30][0]~regout\))) # (!\data_mem|Mux15~0\ & (B1_mem[28][0])))) # (!\mem_a~combout\(2) & (\data_mem|Mux15~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \data_mem|Mux15~0\,
	datac => \mem_d_in~combout\(0),
	datad => \data_mem|mem[30][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux15~1\,
	regout => \data_mem|mem[28][0]~regout\);

-- Location: LC_X11_Y10_N8
\data_mem|Decoder0~23\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~23_combout\ = ((\mem_a~combout\(4) & (\mem_a~combout\(3) & \data_mem|Decoder0~14_combout\)))

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
	datab => \mem_a~combout\(4),
	datac => \mem_a~combout\(3),
	datad => \data_mem|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~23_combout\);

-- Location: LC_X16_Y7_N2
\data_mem|mem[31][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[31][0]~regout\ = DFFEAS(((\mem_d_in~combout\(0))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~23_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_d_in~combout\(0),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[31][0]~regout\);

-- Location: LC_X10_Y8_N1
\data_mem|Decoder0~22\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~22_combout\ = (\mem_a~combout\(4) & (\mem_a~combout\(3) & ((\data_mem|Decoder0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(4),
	datab => \mem_a~combout\(3),
	datad => \data_mem|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~22_combout\);

-- Location: LC_X13_Y8_N6
\data_mem|mem[25][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[25][0]~regout\ = DFFEAS(((\mem_d_in~combout\(0))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~22_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_d_in~combout\(0),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[25][0]~regout\);

-- Location: LC_X10_Y10_N2
\data_mem|Decoder0~21\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~21_combout\ = (\mem_a~combout\(4) & (\mem_a~combout\(3) & ((\data_mem|Decoder0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(4),
	datab => \mem_a~combout\(3),
	datad => \data_mem|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~21_combout\);

-- Location: LC_X15_Y8_N7
\data_mem|mem[27][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux15~7\ = (\mem_a~combout\(1) & (((B1_mem[27][0]) # (\mem_a~combout\(2))))) # (!\mem_a~combout\(1) & (\data_mem|mem[25][0]~regout\ & ((!\mem_a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \data_mem|mem[25][0]~regout\,
	datac => \mem_d_in~combout\(0),
	datad => \mem_a~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux15~7\,
	regout => \data_mem|mem[27][0]~regout\);

-- Location: LC_X12_Y9_N9
\data_mem|Decoder0~20\ : maxv_lcell
-- Equation(s):
-- \data_mem|Decoder0~20_combout\ = (\mem_a~combout\(3) & (\data_mem|Decoder0~8_combout\ & (\mem_a~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \data_mem|Decoder0~8_combout\,
	datac => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Decoder0~20_combout\);

-- Location: LC_X15_Y8_N5
\data_mem|mem[29][0]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux15~8\ = (\data_mem|Mux15~7\ & ((\data_mem|mem[31][0]~regout\) # ((!\mem_a~combout\(2))))) # (!\data_mem|Mux15~7\ & (((B1_mem[29][0] & \mem_a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[31][0]~regout\,
	datab => \data_mem|Mux15~7\,
	datac => \mem_d_in~combout\(0),
	datad => \mem_a~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux15~8\,
	regout => \data_mem|mem[29][0]~regout\);

-- Location: LC_X12_Y7_N2
\data_mem|Mux15~9\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux15~9_combout\ = (\data_mem|Mux15~6_combout\ & (((\data_mem|Mux15~8\) # (!\mem_a~combout\(3))))) # (!\data_mem|Mux15~6_combout\ & (\data_mem|Mux15~1\ & (\mem_a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux15~6_combout\,
	datab => \data_mem|Mux15~1\,
	datac => \mem_a~combout\(3),
	datad => \data_mem|Mux15~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux15~9_combout\);

-- Location: LC_X12_Y7_N5
\data_mem|Mux15~20\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux15~20_combout\ = ((\mem_a~combout\(4) & ((\data_mem|Mux15~9_combout\))) # (!\mem_a~combout\(4) & (\data_mem|Mux15~19_combout\)))

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
	datab => \mem_a~combout\(4),
	datac => \data_mem|Mux15~19_combout\,
	datad => \data_mem|Mux15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux15~20_combout\);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d_in[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d_in(1),
	combout => \mem_d_in~combout\(1));

-- Location: LC_X4_Y5_N8
\data_mem|mem[8][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[8][1]~regout\ = DFFEAS((((\mem_d_in~combout\(1)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~26_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(1),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[8][1]~regout\);

-- Location: LC_X4_Y5_N3
\data_mem|mem[9][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux14~10\ = (\mem_a~combout\(0) & ((\mem_a~combout\(2)) # ((B1_mem[9][1])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(2) & ((\data_mem|mem[8][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(1),
	datad => \data_mem|mem[8][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux14~10\,
	regout => \data_mem|mem[9][1]~regout\);

-- Location: LC_X3_Y8_N2
\data_mem|mem[13][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[13][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~36_combout\, \mem_d_in~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[13][1]~regout\);

-- Location: LC_X4_Y9_N5
\data_mem|mem[12][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux14~11\ = (\data_mem|Mux14~10\ & ((\data_mem|mem[13][1]~regout\) # ((!\mem_a~combout\(2))))) # (!\data_mem|Mux14~10\ & (((B1_mem[12][1] & \mem_a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux14~10\,
	datab => \data_mem|mem[13][1]~regout\,
	datac => \mem_d_in~combout\(1),
	datad => \mem_a~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux14~11\,
	regout => \data_mem|mem[12][1]~regout\);

-- Location: LC_X8_Y8_N3
\data_mem|mem[10][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[10][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~24_combout\, \mem_d_in~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[10][1]~regout\);

-- Location: LC_X8_Y8_N6
\data_mem|mem[14][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux14~17\ = (\mem_a~combout\(0) & (\mem_a~combout\(2))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(2) & (B1_mem[14][1])) # (!\mem_a~combout\(2) & ((\data_mem|mem[10][1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(1),
	datad => \data_mem|mem[10][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux14~17\,
	regout => \data_mem|mem[14][1]~regout\);

-- Location: LC_X6_Y8_N2
\data_mem|mem[15][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[15][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~39_combout\, \mem_d_in~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[15][1]~regout\);

-- Location: LC_X6_Y8_N7
\data_mem|mem[11][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux14~18\ = (\mem_a~combout\(0) & ((\data_mem|Mux14~17\ & ((\data_mem|mem[15][1]~regout\))) # (!\data_mem|Mux14~17\ & (B1_mem[11][1])))) # (!\mem_a~combout\(0) & (\data_mem|Mux14~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \data_mem|Mux14~17\,
	datac => \mem_d_in~combout\(1),
	datad => \data_mem|mem[15][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux14~18\,
	regout => \data_mem|mem[11][1]~regout\);

-- Location: LC_X7_Y7_N9
\data_mem|mem[0][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[0][1]~regout\ = DFFEAS((((\mem_d_in~combout\(1)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~34_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(1),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[0][1]~regout\);

-- Location: LC_X5_Y8_N8
\data_mem|mem[4][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux14~14\ = (\mem_a~combout\(2) & (((B1_mem[4][1]) # (\mem_a~combout\(0))))) # (!\mem_a~combout\(2) & (\data_mem|mem[0][1]~regout\ & ((!\mem_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \data_mem|mem[0][1]~regout\,
	datac => \mem_d_in~combout\(1),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux14~14\,
	regout => \data_mem|mem[4][1]~regout\);

-- Location: LC_X4_Y8_N4
\data_mem|mem[5][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[5][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~28_combout\, \mem_d_in~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[5][1]~regout\);

-- Location: LC_X5_Y8_N2
\data_mem|mem[1][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux14~15\ = (\data_mem|Mux14~14\ & ((\data_mem|mem[5][1]~regout\) # ((!\mem_a~combout\(0))))) # (!\data_mem|Mux14~14\ & (((B1_mem[1][1] & \mem_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux14~14\,
	datab => \data_mem|mem[5][1]~regout\,
	datac => \mem_d_in~combout\(1),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux14~15\,
	regout => \data_mem|mem[1][1]~regout\);

-- Location: LC_X9_Y4_N1
\data_mem|mem[2][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[2][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~32_combout\, \mem_d_in~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[2][1]~regout\);

-- Location: LC_X9_Y4_N4
\data_mem|mem[6][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux14~12\ = (\mem_a~combout\(2) & ((\mem_a~combout\(0)) # ((B1_mem[6][1])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(0) & ((\data_mem|mem[2][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(1),
	datad => \data_mem|mem[2][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux14~12\,
	regout => \data_mem|mem[6][1]~regout\);

-- Location: LC_X6_Y6_N7
\data_mem|mem[7][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[7][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~31_combout\, \mem_d_in~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[7][1]~regout\);

-- Location: LC_X6_Y6_N0
\data_mem|mem[3][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux14~13\ = (\data_mem|Mux14~12\ & ((\data_mem|mem[7][1]~regout\) # ((!\mem_a~combout\(0))))) # (!\data_mem|Mux14~12\ & (((B1_mem[3][1] & \mem_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux14~12\,
	datab => \data_mem|mem[7][1]~regout\,
	datac => \mem_d_in~combout\(1),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux14~13\,
	regout => \data_mem|mem[3][1]~regout\);

-- Location: LC_X6_Y8_N9
\data_mem|Mux14~16\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux14~16_combout\ = (\mem_a~combout\(3) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(1) & ((\data_mem|Mux14~13\))) # (!\mem_a~combout\(1) & (\data_mem|Mux14~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \data_mem|Mux14~15\,
	datac => \data_mem|Mux14~13\,
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux14~16_combout\);

-- Location: LC_X6_Y8_N6
\data_mem|Mux14~19\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux14~19_combout\ = (\mem_a~combout\(3) & ((\data_mem|Mux14~16_combout\ & ((\data_mem|Mux14~18\))) # (!\data_mem|Mux14~16_combout\ & (\data_mem|Mux14~11\)))) # (!\mem_a~combout\(3) & (((\data_mem|Mux14~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \data_mem|Mux14~11\,
	datac => \data_mem|Mux14~18\,
	datad => \data_mem|Mux14~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux14~19_combout\);

-- Location: LC_X7_Y8_N2
\data_mem|mem[16][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[16][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~18_combout\, \mem_d_in~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[16][1]~regout\);

-- Location: LC_X7_Y8_N6
\data_mem|mem[17][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux14~4\ = (\mem_a~combout\(0) & (((B1_mem[17][1]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\data_mem|mem[16][1]~regout\ & ((!\mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \data_mem|mem[16][1]~regout\,
	datac => \mem_d_in~combout\(1),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux14~4\,
	regout => \data_mem|mem[17][1]~regout\);

-- Location: LC_X11_Y9_N3
\data_mem|mem[19][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[19][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~11_combout\, \mem_d_in~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[19][1]~regout\);

-- Location: LC_X11_Y8_N0
\data_mem|mem[18][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux14~5\ = (\mem_a~combout\(1) & ((\data_mem|Mux14~4\ & ((\data_mem|mem[19][1]~regout\))) # (!\data_mem|Mux14~4\ & (B1_mem[18][1])))) # (!\mem_a~combout\(1) & (\data_mem|Mux14~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \data_mem|Mux14~4\,
	datac => \mem_d_in~combout\(1),
	datad => \data_mem|mem[19][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux14~5\,
	regout => \data_mem|mem[18][1]~regout\);

-- Location: LC_X5_Y9_N9
\data_mem|mem[20][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[20][1]~regout\ = DFFEAS((((\mem_d_in~combout\(1)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~16_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(1),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[20][1]~regout\);

-- Location: LC_X5_Y9_N6
\data_mem|mem[21][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux14~2\ = (\mem_a~combout\(1) & (((\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & ((B1_mem[21][1]))) # (!\mem_a~combout\(0) & (\data_mem|mem[20][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \data_mem|mem[20][1]~regout\,
	datac => \mem_d_in~combout\(1),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux14~2\,
	regout => \data_mem|mem[21][1]~regout\);

-- Location: LC_X13_Y7_N8
\data_mem|mem[23][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[23][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~15_combout\, \mem_d_in~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[23][1]~regout\);

-- Location: LC_X13_Y7_N3
\data_mem|mem[22][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux14~3\ = (\mem_a~combout\(1) & ((\data_mem|Mux14~2\ & ((\data_mem|mem[23][1]~regout\))) # (!\data_mem|Mux14~2\ & (B1_mem[22][1])))) # (!\mem_a~combout\(1) & (\data_mem|Mux14~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \data_mem|Mux14~2\,
	datac => \mem_d_in~combout\(1),
	datad => \data_mem|mem[23][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux14~3\,
	regout => \data_mem|mem[22][1]~regout\);

-- Location: LC_X11_Y8_N6
\data_mem|Mux14~6\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux14~6_combout\ = (\mem_a~combout\(2) & (((\mem_a~combout\(3)) # (\data_mem|Mux14~3\)))) # (!\mem_a~combout\(2) & (\data_mem|Mux14~5\ & (!\mem_a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(2),
	datab => \data_mem|Mux14~5\,
	datac => \mem_a~combout\(3),
	datad => \data_mem|Mux14~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux14~6_combout\);

-- Location: LC_X11_Y7_N2
\data_mem|mem[31][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[31][1]~regout\ = DFFEAS((((\mem_d_in~combout\(1)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~23_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(1),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[31][1]~regout\);

-- Location: LC_X12_Y6_N6
\data_mem|mem[28][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[28][1]~regout\ = DFFEAS((((\mem_d_in~combout\(1)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(1),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[28][1]~regout\);

-- Location: LC_X11_Y6_N5
\data_mem|mem[29][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux14~7\ = (\mem_a~combout\(1) & (((\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & ((B1_mem[29][1]))) # (!\mem_a~combout\(0) & (\data_mem|mem[28][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[28][1]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(1),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux14~7\,
	regout => \data_mem|mem[29][1]~regout\);

-- Location: LC_X11_Y7_N0
\data_mem|mem[30][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux14~8\ = (\mem_a~combout\(1) & ((\data_mem|Mux14~7\ & (\data_mem|mem[31][1]~regout\)) # (!\data_mem|Mux14~7\ & ((B1_mem[30][1]))))) # (!\mem_a~combout\(1) & (((\data_mem|Mux14~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \data_mem|mem[31][1]~regout\,
	datac => \mem_d_in~combout\(1),
	datad => \data_mem|Mux14~7\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux14~8\,
	regout => \data_mem|mem[30][1]~regout\);

-- Location: LC_X11_Y9_N5
\data_mem|mem[27][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[27][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~21_combout\, \mem_d_in~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[27][1]~regout\);

-- Location: LC_X13_Y8_N9
\data_mem|mem[24][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[24][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~5_combout\, \mem_d_in~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[24][1]~regout\);

-- Location: LC_X13_Y8_N7
\data_mem|mem[25][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux14~0\ = (\mem_a~combout\(1) & (\mem_a~combout\(0))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & (B1_mem[25][1])) # (!\mem_a~combout\(0) & ((\data_mem|mem[24][1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(1),
	datad => \data_mem|mem[24][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux14~0\,
	regout => \data_mem|mem[25][1]~regout\);

-- Location: LC_X11_Y8_N1
\data_mem|mem[26][1]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux14~1\ = (\mem_a~combout\(1) & ((\data_mem|Mux14~0\ & (\data_mem|mem[27][1]~regout\)) # (!\data_mem|Mux14~0\ & ((B1_mem[26][1]))))) # (!\mem_a~combout\(1) & (((\data_mem|Mux14~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \data_mem|mem[27][1]~regout\,
	datac => \mem_d_in~combout\(1),
	datad => \data_mem|Mux14~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux14~1\,
	regout => \data_mem|mem[26][1]~regout\);

-- Location: LC_X11_Y8_N3
\data_mem|Mux14~9\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux14~9_combout\ = (\data_mem|Mux14~6_combout\ & ((\data_mem|Mux14~8\) # ((!\mem_a~combout\(3))))) # (!\data_mem|Mux14~6_combout\ & (((\mem_a~combout\(3) & \data_mem|Mux14~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux14~6_combout\,
	datab => \data_mem|Mux14~8\,
	datac => \mem_a~combout\(3),
	datad => \data_mem|Mux14~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux14~9_combout\);

-- Location: LC_X11_Y8_N4
\data_mem|Mux14~20\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux14~20_combout\ = ((\mem_a~combout\(4) & ((\data_mem|Mux14~9_combout\))) # (!\mem_a~combout\(4) & (\data_mem|Mux14~19_combout\)))

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
	datab => \mem_a~combout\(4),
	datac => \data_mem|Mux14~19_combout\,
	datad => \data_mem|Mux14~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux14~20_combout\);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d_in[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d_in(2),
	combout => \mem_d_in~combout\(2));

-- Location: LC_X7_Y9_N2
\data_mem|mem[24][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[24][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~5_combout\, \mem_d_in~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[24][2]~regout\);

-- Location: LC_X7_Y9_N5
\data_mem|mem[28][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux13~0\ = (\mem_a~combout\(2) & (((B1_mem[28][2]) # (\mem_a~combout\(0))))) # (!\mem_a~combout\(2) & (\data_mem|mem[24][2]~regout\ & ((!\mem_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \data_mem|mem[24][2]~regout\,
	datac => \mem_d_in~combout\(2),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux13~0\,
	regout => \data_mem|mem[28][2]~regout\);

-- Location: LC_X9_Y8_N8
\data_mem|mem[29][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[29][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~20_combout\, \mem_d_in~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[29][2]~regout\);

-- Location: LC_X9_Y8_N4
\data_mem|mem[25][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux13~1\ = (\mem_a~combout\(0) & ((\data_mem|Mux13~0\ & ((\data_mem|mem[29][2]~regout\))) # (!\data_mem|Mux13~0\ & (B1_mem[25][2])))) # (!\mem_a~combout\(0) & (\data_mem|Mux13~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \data_mem|Mux13~0\,
	datac => \mem_d_in~combout\(2),
	datad => \data_mem|mem[29][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux13~1\,
	regout => \data_mem|mem[25][2]~regout\);

-- Location: LC_X5_Y9_N5
\data_mem|mem[21][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[21][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~9_combout\, \mem_d_in~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[21][2]~regout\);

-- Location: LC_X6_Y9_N0
\data_mem|mem[16][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[16][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~18_combout\, \mem_d_in~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[16][2]~regout\);

-- Location: LC_X6_Y9_N2
\data_mem|mem[20][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux13~4\ = (\mem_a~combout\(0) & (\mem_a~combout\(2))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(2) & (B1_mem[20][2])) # (!\mem_a~combout\(2) & ((\data_mem|mem[16][2]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(2),
	datad => \data_mem|mem[16][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux13~4\,
	regout => \data_mem|mem[20][2]~regout\);

-- Location: LC_X7_Y8_N5
\data_mem|mem[17][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux13~5\ = (\data_mem|Mux13~4\ & ((\data_mem|mem[21][2]~regout\) # ((!\mem_a~combout\(0))))) # (!\data_mem|Mux13~4\ & (((B1_mem[17][2] & \mem_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[21][2]~regout\,
	datab => \data_mem|Mux13~4\,
	datac => \mem_d_in~combout\(2),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux13~5\,
	regout => \data_mem|mem[17][2]~regout\);

-- Location: LC_X12_Y5_N1
\data_mem|mem[18][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[18][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~17_combout\, \mem_d_in~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[18][2]~regout\);

-- Location: LC_X14_Y6_N8
\data_mem|mem[22][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux13~2\ = (\mem_a~combout\(2) & ((\mem_a~combout\(0)) # ((B1_mem[22][2])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(0) & ((\data_mem|mem[18][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(2),
	datad => \data_mem|mem[18][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux13~2\,
	regout => \data_mem|mem[22][2]~regout\);

-- Location: LC_X13_Y7_N6
\data_mem|mem[23][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[23][2]~regout\ = DFFEAS((((\mem_d_in~combout\(2)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~15_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(2),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[23][2]~regout\);

-- Location: LC_X14_Y6_N4
\data_mem|mem[19][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux13~3\ = (\data_mem|Mux13~2\ & ((\data_mem|mem[23][2]~regout\) # ((!\mem_a~combout\(0))))) # (!\data_mem|Mux13~2\ & (((B1_mem[19][2] & \mem_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux13~2\,
	datab => \data_mem|mem[23][2]~regout\,
	datac => \mem_d_in~combout\(2),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux13~3\,
	regout => \data_mem|mem[19][2]~regout\);

-- Location: LC_X8_Y9_N4
\data_mem|Mux13~6\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux13~6_combout\ = (\mem_a~combout\(3) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(1) & ((\data_mem|Mux13~3\))) # (!\mem_a~combout\(1) & (\data_mem|Mux13~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \data_mem|Mux13~5\,
	datac => \data_mem|Mux13~3\,
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux13~6_combout\);

-- Location: LC_X11_Y5_N3
\data_mem|mem[31][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[31][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~23_combout\, \mem_d_in~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[31][2]~regout\);

-- Location: LC_X12_Y5_N8
\data_mem|mem[26][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[26][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~3_combout\, \mem_d_in~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[26][2]~regout\);

-- Location: LC_X14_Y4_N6
\data_mem|mem[30][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux13~7\ = (\mem_a~combout\(2) & ((\mem_a~combout\(0)) # ((B1_mem[30][2])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(0) & ((\data_mem|mem[26][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(2),
	datad => \data_mem|mem[26][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux13~7\,
	regout => \data_mem|mem[30][2]~regout\);

-- Location: LC_X11_Y5_N1
\data_mem|mem[27][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux13~8\ = (\mem_a~combout\(0) & ((\data_mem|Mux13~7\ & (\data_mem|mem[31][2]~regout\)) # (!\data_mem|Mux13~7\ & ((B1_mem[27][2]))))) # (!\mem_a~combout\(0) & (((\data_mem|Mux13~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[31][2]~regout\,
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(2),
	datad => \data_mem|Mux13~7\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux13~8\,
	regout => \data_mem|mem[27][2]~regout\);

-- Location: LC_X8_Y9_N7
\data_mem|Mux13~9\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux13~9_combout\ = (\mem_a~combout\(3) & ((\data_mem|Mux13~6_combout\ & ((\data_mem|Mux13~8\))) # (!\data_mem|Mux13~6_combout\ & (\data_mem|Mux13~1\)))) # (!\mem_a~combout\(3) & (((\data_mem|Mux13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \data_mem|Mux13~1\,
	datac => \data_mem|Mux13~6_combout\,
	datad => \data_mem|Mux13~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux13~9_combout\);

-- Location: LC_X8_Y8_N5
\data_mem|mem[14][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[14][2]~regout\ = DFFEAS((((\mem_d_in~combout\(2)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~37_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(2),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[14][2]~regout\);

-- Location: LC_X4_Y9_N4
\data_mem|mem[8][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[8][2]~regout\ = DFFEAS(((\mem_d_in~combout\(2))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~26_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_d_in~combout\(2),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[8][2]~regout\);

-- Location: LC_X8_Y9_N1
\data_mem|mem[10][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux13~10\ = (\mem_a~combout\(2) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(1) & ((B1_mem[10][2]))) # (!\mem_a~combout\(1) & (\data_mem|mem[8][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \data_mem|mem[8][2]~regout\,
	datac => \mem_d_in~combout\(2),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux13~10\,
	regout => \data_mem|mem[10][2]~regout\);

-- Location: LC_X8_Y9_N0
\data_mem|mem[12][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux13~11\ = (\mem_a~combout\(2) & ((\data_mem|Mux13~10\ & (\data_mem|mem[14][2]~regout\)) # (!\data_mem|Mux13~10\ & ((B1_mem[12][2]))))) # (!\mem_a~combout\(2) & (((\data_mem|Mux13~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \data_mem|mem[14][2]~regout\,
	datac => \mem_d_in~combout\(2),
	datad => \data_mem|Mux13~10\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux13~11\,
	regout => \data_mem|mem[12][2]~regout\);

-- Location: LC_X2_Y6_N0
\data_mem|mem[9][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[9][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~25_combout\, \mem_d_in~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[9][2]~regout\);

-- Location: LC_X2_Y6_N5
\data_mem|mem[11][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux13~17\ = (\mem_a~combout\(2) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(1) & ((B1_mem[11][2]))) # (!\mem_a~combout\(1) & (\data_mem|mem[9][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \data_mem|mem[9][2]~regout\,
	datac => \mem_d_in~combout\(2),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux13~17\,
	regout => \data_mem|mem[11][2]~regout\);

-- Location: LC_X3_Y8_N9
\data_mem|mem[15][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[15][2]~regout\ = DFFEAS((\mem_d_in~combout\(2)), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~39_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_d_in~combout\(2),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[15][2]~regout\);

-- Location: LC_X3_Y8_N0
\data_mem|mem[13][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux13~18\ = (\data_mem|Mux13~17\ & ((\data_mem|mem[15][2]~regout\) # ((!\mem_a~combout\(2))))) # (!\data_mem|Mux13~17\ & (((B1_mem[13][2] & \mem_a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux13~17\,
	datab => \data_mem|mem[15][2]~regout\,
	datac => \mem_d_in~combout\(2),
	datad => \mem_a~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux13~18\,
	regout => \data_mem|mem[13][2]~regout\);

-- Location: LC_X10_Y4_N3
\data_mem|mem[7][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[7][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~31_combout\, \mem_d_in~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[7][2]~regout\);

-- Location: LC_X10_Y6_N8
\data_mem|mem[1][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[1][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~33_combout\, \mem_d_in~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[1][2]~regout\);

-- Location: LC_X10_Y6_N5
\data_mem|mem[3][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux13~12\ = (\mem_a~combout\(2) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(1) & ((B1_mem[3][2]))) # (!\mem_a~combout\(1) & (\data_mem|mem[1][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[1][2]~regout\,
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(2),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux13~12\,
	regout => \data_mem|mem[3][2]~regout\);

-- Location: LC_X10_Y4_N0
\data_mem|mem[5][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux13~13\ = (\mem_a~combout\(2) & ((\data_mem|Mux13~12\ & (\data_mem|mem[7][2]~regout\)) # (!\data_mem|Mux13~12\ & ((B1_mem[5][2]))))) # (!\mem_a~combout\(2) & (((\data_mem|Mux13~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[7][2]~regout\,
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(2),
	datad => \data_mem|Mux13~12\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux13~13\,
	regout => \data_mem|mem[5][2]~regout\);

-- Location: LC_X12_Y4_N2
\data_mem|mem[0][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[0][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~34_combout\, \mem_d_in~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[0][2]~regout\);

-- Location: LC_X12_Y4_N7
\data_mem|mem[2][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux13~14\ = (\mem_a~combout\(1) & ((\mem_a~combout\(2)) # ((B1_mem[2][2])))) # (!\mem_a~combout\(1) & (!\mem_a~combout\(2) & ((\data_mem|mem[0][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(2),
	datad => \data_mem|mem[0][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux13~14\,
	regout => \data_mem|mem[2][2]~regout\);

-- Location: LC_X12_Y3_N2
\data_mem|mem[6][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[6][2]~regout\ = DFFEAS((((\mem_d_in~combout\(2)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~29_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(2),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[6][2]~regout\);

-- Location: LC_X12_Y3_N4
\data_mem|mem[4][2]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux13~15\ = (\data_mem|Mux13~14\ & (((\data_mem|mem[6][2]~regout\)) # (!\mem_a~combout\(2)))) # (!\data_mem|Mux13~14\ & (\mem_a~combout\(2) & (B1_mem[4][2])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux13~14\,
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(2),
	datad => \data_mem|mem[6][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux13~15\,
	regout => \data_mem|mem[4][2]~regout\);

-- Location: LC_X11_Y4_N9
\data_mem|Mux13~16\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux13~16_combout\ = (\mem_a~combout\(0) & ((\data_mem|Mux13~13\) # ((\mem_a~combout\(3))))) # (!\mem_a~combout\(0) & (((\data_mem|Mux13~15\ & !\mem_a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux13~13\,
	datab => \mem_a~combout\(0),
	datac => \data_mem|Mux13~15\,
	datad => \mem_a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux13~16_combout\);

-- Location: LC_X8_Y9_N8
\data_mem|Mux13~19\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux13~19_combout\ = (\mem_a~combout\(3) & ((\data_mem|Mux13~16_combout\ & ((\data_mem|Mux13~18\))) # (!\data_mem|Mux13~16_combout\ & (\data_mem|Mux13~11\)))) # (!\mem_a~combout\(3) & (((\data_mem|Mux13~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \data_mem|Mux13~11\,
	datac => \data_mem|Mux13~18\,
	datad => \data_mem|Mux13~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux13~19_combout\);

-- Location: LC_X8_Y9_N2
\data_mem|Mux13~20\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux13~20_combout\ = ((\mem_a~combout\(4) & (\data_mem|Mux13~9_combout\)) # (!\mem_a~combout\(4) & ((\data_mem|Mux13~19_combout\))))

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
	datab => \mem_a~combout\(4),
	datac => \data_mem|Mux13~9_combout\,
	datad => \data_mem|Mux13~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux13~20_combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d_in[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d_in(3),
	combout => \mem_d_in~combout\(3));

-- Location: LC_X5_Y6_N5
\data_mem|mem[4][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[4][3]~regout\ = DFFEAS((((\mem_d_in~combout\(3)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~30_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(3),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[4][3]~regout\);

-- Location: LC_X10_Y5_N5
\data_mem|mem[5][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux12~12\ = (\mem_a~combout\(0) & (((B1_mem[5][3]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\data_mem|mem[4][3]~regout\ & ((!\mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \data_mem|mem[4][3]~regout\,
	datac => \mem_d_in~combout\(3),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux12~12\,
	regout => \data_mem|mem[5][3]~regout\);

-- Location: LC_X8_Y5_N3
\data_mem|mem[7][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[7][3]~regout\ = DFFEAS((\mem_d_in~combout\(3)), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~31_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_d_in~combout\(3),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[7][3]~regout\);

-- Location: LC_X10_Y5_N6
\data_mem|mem[6][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux12~13\ = (\data_mem|Mux12~12\ & ((\data_mem|mem[7][3]~regout\) # ((!\mem_a~combout\(1))))) # (!\data_mem|Mux12~12\ & (((B1_mem[6][3] & \mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux12~12\,
	datab => \data_mem|mem[7][3]~regout\,
	datac => \mem_d_in~combout\(3),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux12~13\,
	regout => \data_mem|mem[6][3]~regout\);

-- Location: LC_X10_Y7_N5
\data_mem|mem[3][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[3][3]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~35_combout\, \mem_d_in~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[3][3]~regout\);

-- Location: LC_X7_Y7_N2
\data_mem|mem[0][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[0][3]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~34_combout\, \mem_d_in~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[0][3]~regout\);

-- Location: LC_X8_Y7_N6
\data_mem|mem[1][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux12~14\ = (\mem_a~combout\(0) & (((B1_mem[1][3]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\data_mem|mem[0][3]~regout\ & ((!\mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \data_mem|mem[0][3]~regout\,
	datac => \mem_d_in~combout\(3),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux12~14\,
	regout => \data_mem|mem[1][3]~regout\);

-- Location: LC_X10_Y7_N9
\data_mem|mem[2][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux12~15\ = (\data_mem|Mux12~14\ & ((\data_mem|mem[3][3]~regout\) # ((!\mem_a~combout\(1))))) # (!\data_mem|Mux12~14\ & (((B1_mem[2][3] & \mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[3][3]~regout\,
	datab => \data_mem|Mux12~14\,
	datac => \mem_d_in~combout\(3),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux12~15\,
	regout => \data_mem|mem[2][3]~regout\);

-- Location: LC_X12_Y7_N1
\data_mem|Mux12~16\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux12~16_combout\ = (\mem_a~combout\(2) & ((\data_mem|Mux12~13\) # ((\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & (((!\mem_a~combout\(3) & \data_mem|Mux12~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(2),
	datab => \data_mem|Mux12~13\,
	datac => \mem_a~combout\(3),
	datad => \data_mem|Mux12~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux12~16_combout\);

-- Location: LC_X5_Y7_N0
\data_mem|mem[8][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[8][3]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~26_combout\, \mem_d_in~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[8][3]~regout\);

-- Location: LC_X5_Y7_N7
\data_mem|mem[9][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux12~10\ = (\mem_a~combout\(1) & (((\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & ((B1_mem[9][3]))) # (!\mem_a~combout\(0) & (\data_mem|mem[8][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \data_mem|mem[8][3]~regout\,
	datac => \mem_d_in~combout\(3),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux12~10\,
	regout => \data_mem|mem[9][3]~regout\);

-- Location: LC_X5_Y5_N7
\data_mem|mem[11][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[11][3]~regout\ = DFFEAS(((\mem_d_in~combout\(3))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~27_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_d_in~combout\(3),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[11][3]~regout\);

-- Location: LC_X5_Y5_N3
\data_mem|mem[10][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux12~11\ = (\data_mem|Mux12~10\ & ((\data_mem|mem[11][3]~regout\) # ((!\mem_a~combout\(1))))) # (!\data_mem|Mux12~10\ & (((B1_mem[10][3] & \mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux12~10\,
	datab => \data_mem|mem[11][3]~regout\,
	datac => \mem_d_in~combout\(3),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux12~11\,
	regout => \data_mem|mem[10][3]~regout\);

-- Location: LC_X14_Y10_N5
\data_mem|mem[15][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[15][3]~regout\ = DFFEAS(((\mem_d_in~combout\(3))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~39_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_d_in~combout\(3),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[15][3]~regout\);

-- Location: LC_X14_Y9_N4
\data_mem|mem[12][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[12][3]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~38_combout\, \mem_d_in~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[12][3]~regout\);

-- Location: LC_X15_Y9_N1
\data_mem|mem[13][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux12~17\ = (\mem_a~combout\(1) & (((\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & ((B1_mem[13][3]))) # (!\mem_a~combout\(0) & (\data_mem|mem[12][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[12][3]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(3),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux12~17\,
	regout => \data_mem|mem[13][3]~regout\);

-- Location: LC_X15_Y9_N7
\data_mem|mem[14][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux12~18\ = (\mem_a~combout\(1) & ((\data_mem|Mux12~17\ & (\data_mem|mem[15][3]~regout\)) # (!\data_mem|Mux12~17\ & ((B1_mem[14][3]))))) # (!\mem_a~combout\(1) & (((\data_mem|Mux12~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[15][3]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(3),
	datad => \data_mem|Mux12~17\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux12~18\,
	regout => \data_mem|mem[14][3]~regout\);

-- Location: LC_X15_Y8_N4
\data_mem|Mux12~19\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux12~19_combout\ = (\data_mem|Mux12~16_combout\ & (((\data_mem|Mux12~18\) # (!\mem_a~combout\(3))))) # (!\data_mem|Mux12~16_combout\ & (\data_mem|Mux12~11\ & (\mem_a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux12~16_combout\,
	datab => \data_mem|Mux12~11\,
	datac => \mem_a~combout\(3),
	datad => \data_mem|Mux12~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux12~19_combout\);

-- Location: LC_X13_Y8_N2
\data_mem|mem[24][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[24][3]~regout\ = DFFEAS((\mem_d_in~combout\(3)), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_d_in~combout\(3),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[24][3]~regout\);

-- Location: LC_X12_Y5_N3
\data_mem|mem[26][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux12~0\ = (\mem_a~combout\(1) & (((B1_mem[26][3]) # (\mem_a~combout\(2))))) # (!\mem_a~combout\(1) & (\data_mem|mem[24][3]~regout\ & ((!\mem_a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[24][3]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(3),
	datad => \mem_a~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux12~0\,
	regout => \data_mem|mem[26][3]~regout\);

-- Location: LC_X12_Y7_N9
\data_mem|mem[30][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[30][3]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~7_combout\, \mem_d_in~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[30][3]~regout\);

-- Location: LC_X12_Y7_N0
\data_mem|mem[28][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux12~1\ = (\mem_a~combout\(2) & ((\data_mem|Mux12~0\ & ((\data_mem|mem[30][3]~regout\))) # (!\data_mem|Mux12~0\ & (B1_mem[28][3])))) # (!\mem_a~combout\(2) & (\data_mem|Mux12~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \data_mem|Mux12~0\,
	datac => \mem_d_in~combout\(3),
	datad => \data_mem|mem[30][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux12~1\,
	regout => \data_mem|mem[28][3]~regout\);

-- Location: LC_X13_Y7_N7
\data_mem|mem[22][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[22][3]~regout\ = DFFEAS(((\mem_d_in~combout\(3))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~19_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_d_in~combout\(3),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[22][3]~regout\);

-- Location: LC_X13_Y5_N7
\data_mem|mem[16][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[16][3]~regout\ = DFFEAS((((\mem_d_in~combout\(3)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~18_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(3),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[16][3]~regout\);

-- Location: LC_X12_Y5_N4
\data_mem|mem[18][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux12~4\ = (\mem_a~combout\(1) & (((B1_mem[18][3]) # (\mem_a~combout\(2))))) # (!\mem_a~combout\(1) & (\data_mem|mem[16][3]~regout\ & ((!\mem_a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[16][3]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(3),
	datad => \mem_a~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux12~4\,
	regout => \data_mem|mem[18][3]~regout\);

-- Location: LC_X13_Y5_N5
\data_mem|mem[20][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux12~5\ = (\mem_a~combout\(2) & ((\data_mem|Mux12~4\ & (\data_mem|mem[22][3]~regout\)) # (!\data_mem|Mux12~4\ & ((B1_mem[20][3]))))) # (!\mem_a~combout\(2) & (((\data_mem|Mux12~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[22][3]~regout\,
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(3),
	datad => \data_mem|Mux12~4\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux12~5\,
	regout => \data_mem|mem[20][3]~regout\);

-- Location: LC_X13_Y7_N9
\data_mem|mem[23][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[23][3]~regout\ = DFFEAS(((\mem_d_in~combout\(3))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~15_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_d_in~combout\(3),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[23][3]~regout\);

-- Location: LC_X9_Y10_N8
\data_mem|mem[17][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[17][3]~regout\ = DFFEAS((((\mem_d_in~combout\(3)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~13_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(3),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[17][3]~regout\);

-- Location: LC_X14_Y7_N8
\data_mem|mem[19][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux12~2\ = (\mem_a~combout\(2) & (\mem_a~combout\(1))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(1) & (B1_mem[19][3])) # (!\mem_a~combout\(1) & ((\data_mem|mem[17][3]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(3),
	datad => \data_mem|mem[17][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux12~2\,
	regout => \data_mem|mem[19][3]~regout\);

-- Location: LC_X14_Y7_N9
\data_mem|mem[21][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux12~3\ = (\mem_a~combout\(2) & ((\data_mem|Mux12~2\ & (\data_mem|mem[23][3]~regout\)) # (!\data_mem|Mux12~2\ & ((B1_mem[21][3]))))) # (!\mem_a~combout\(2) & (((\data_mem|Mux12~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[23][3]~regout\,
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(3),
	datad => \data_mem|Mux12~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux12~3\,
	regout => \data_mem|mem[21][3]~regout\);

-- Location: LC_X14_Y7_N2
\data_mem|Mux12~6\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux12~6_combout\ = (\mem_a~combout\(3) & (\mem_a~combout\(0))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(0) & ((\data_mem|Mux12~3\))) # (!\mem_a~combout\(0) & (\data_mem|Mux12~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(0),
	datac => \data_mem|Mux12~5\,
	datad => \data_mem|Mux12~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux12~6_combout\);

-- Location: LC_X13_Y8_N4
\data_mem|mem[25][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[25][3]~regout\ = DFFEAS((\mem_d_in~combout\(3)), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~22_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_d_in~combout\(3),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[25][3]~regout\);

-- Location: LC_X15_Y8_N8
\data_mem|mem[27][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux12~7\ = (\mem_a~combout\(1) & ((\mem_a~combout\(2)) # ((B1_mem[27][3])))) # (!\mem_a~combout\(1) & (!\mem_a~combout\(2) & ((\data_mem|mem[25][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(3),
	datad => \data_mem|mem[25][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux12~7\,
	regout => \data_mem|mem[27][3]~regout\);

-- Location: LC_X16_Y5_N4
\data_mem|mem[31][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[31][3]~regout\ = DFFEAS((((\mem_d_in~combout\(3)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~23_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(3),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[31][3]~regout\);

-- Location: LC_X15_Y8_N9
\data_mem|mem[29][3]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux12~8\ = (\data_mem|Mux12~7\ & (((\data_mem|mem[31][3]~regout\)) # (!\mem_a~combout\(2)))) # (!\data_mem|Mux12~7\ & (\mem_a~combout\(2) & (B1_mem[29][3])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux12~7\,
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(3),
	datad => \data_mem|mem[31][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux12~8\,
	regout => \data_mem|mem[29][3]~regout\);

-- Location: LC_X15_Y8_N2
\data_mem|Mux12~9\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux12~9_combout\ = (\data_mem|Mux12~6_combout\ & (((\data_mem|Mux12~8\) # (!\mem_a~combout\(3))))) # (!\data_mem|Mux12~6_combout\ & (\data_mem|Mux12~1\ & (\mem_a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux12~1\,
	datab => \data_mem|Mux12~6_combout\,
	datac => \mem_a~combout\(3),
	datad => \data_mem|Mux12~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux12~9_combout\);

-- Location: LC_X15_Y8_N6
\data_mem|Mux12~20\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux12~20_combout\ = ((\mem_a~combout\(4) & ((\data_mem|Mux12~9_combout\))) # (!\mem_a~combout\(4) & (\data_mem|Mux12~19_combout\)))

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
	datab => \mem_a~combout\(4),
	datac => \data_mem|Mux12~19_combout\,
	datad => \data_mem|Mux12~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux12~20_combout\);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d_in[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d_in(4),
	combout => \mem_d_in~combout\(4));

-- Location: LC_X11_Y5_N9
\data_mem|mem[27][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[27][4]~regout\ = DFFEAS((((\mem_d_in~combout\(4)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~21_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(4),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[27][4]~regout\);

-- Location: LC_X13_Y8_N8
\data_mem|mem[24][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[24][4]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~5_combout\, \mem_d_in~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[24][4]~regout\);

-- Location: LC_X13_Y8_N5
\data_mem|mem[25][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux11~0\ = (\mem_a~combout\(1) & (\mem_a~combout\(0))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & (B1_mem[25][4])) # (!\mem_a~combout\(0) & ((\data_mem|mem[24][4]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(4),
	datad => \data_mem|mem[24][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux11~0\,
	regout => \data_mem|mem[25][4]~regout\);

-- Location: LC_X12_Y5_N9
\data_mem|mem[26][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux11~1\ = (\mem_a~combout\(1) & ((\data_mem|Mux11~0\ & (\data_mem|mem[27][4]~regout\)) # (!\data_mem|Mux11~0\ & ((B1_mem[26][4]))))) # (!\mem_a~combout\(1) & (((\data_mem|Mux11~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[27][4]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(4),
	datad => \data_mem|Mux11~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux11~1\,
	regout => \data_mem|mem[26][4]~regout\);

-- Location: LC_X5_Y9_N2
\data_mem|mem[20][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[20][4]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~16_combout\, \mem_d_in~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[20][4]~regout\);

-- Location: LC_X5_Y9_N4
\data_mem|mem[21][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux11~2\ = (\mem_a~combout\(1) & (((\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & ((B1_mem[21][4]))) # (!\mem_a~combout\(0) & (\data_mem|mem[20][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \data_mem|mem[20][4]~regout\,
	datac => \mem_d_in~combout\(4),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux11~2\,
	regout => \data_mem|mem[21][4]~regout\);

-- Location: LC_X9_Y7_N9
\data_mem|mem[23][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[23][4]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~15_combout\, \mem_d_in~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[23][4]~regout\);

-- Location: LC_X9_Y7_N6
\data_mem|mem[22][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux11~3\ = (\data_mem|Mux11~2\ & (((\data_mem|mem[23][4]~regout\)) # (!\mem_a~combout\(1)))) # (!\data_mem|Mux11~2\ & (\mem_a~combout\(1) & (B1_mem[22][4])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux11~2\,
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(4),
	datad => \data_mem|mem[23][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux11~3\,
	regout => \data_mem|mem[22][4]~regout\);

-- Location: LC_X7_Y8_N9
\data_mem|mem[16][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[16][4]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~18_combout\, \mem_d_in~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[16][4]~regout\);

-- Location: LC_X7_Y8_N8
\data_mem|mem[17][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux11~4\ = (\mem_a~combout\(0) & (((B1_mem[17][4]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\data_mem|mem[16][4]~regout\ & ((!\mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \data_mem|mem[16][4]~regout\,
	datac => \mem_d_in~combout\(4),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux11~4\,
	regout => \data_mem|mem[17][4]~regout\);

-- Location: LC_X14_Y6_N5
\data_mem|mem[19][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[19][4]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~11_combout\, \mem_d_in~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[19][4]~regout\);

-- Location: LC_X12_Y5_N2
\data_mem|mem[18][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux11~5\ = (\data_mem|Mux11~4\ & (((\data_mem|mem[19][4]~regout\)) # (!\mem_a~combout\(1)))) # (!\data_mem|Mux11~4\ & (\mem_a~combout\(1) & (B1_mem[18][4])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux11~4\,
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(4),
	datad => \data_mem|mem[19][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux11~5\,
	regout => \data_mem|mem[18][4]~regout\);

-- Location: LC_X9_Y7_N2
\data_mem|Mux11~6\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux11~6_combout\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((\data_mem|Mux11~3\)))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\data_mem|Mux11~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \data_mem|Mux11~3\,
	datad => \data_mem|Mux11~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux11~6_combout\);

-- Location: LC_X11_Y5_N5
\data_mem|mem[31][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[31][4]~regout\ = DFFEAS((((\mem_d_in~combout\(4)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~23_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(4),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[31][4]~regout\);

-- Location: LC_X13_Y3_N8
\data_mem|mem[28][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[28][4]~regout\ = DFFEAS((((\mem_d_in~combout\(4)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(4),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[28][4]~regout\);

-- Location: LC_X13_Y10_N2
\data_mem|mem[29][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux11~7\ = (\mem_a~combout\(1) & (\mem_a~combout\(0))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & (B1_mem[29][4])) # (!\mem_a~combout\(0) & ((\data_mem|mem[28][4]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(4),
	datad => \data_mem|mem[28][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux11~7\,
	regout => \data_mem|mem[29][4]~regout\);

-- Location: LC_X14_Y4_N3
\data_mem|mem[30][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux11~8\ = (\mem_a~combout\(1) & ((\data_mem|Mux11~7\ & (\data_mem|mem[31][4]~regout\)) # (!\data_mem|Mux11~7\ & ((B1_mem[30][4]))))) # (!\mem_a~combout\(1) & (((\data_mem|Mux11~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[31][4]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(4),
	datad => \data_mem|Mux11~7\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux11~8\,
	regout => \data_mem|mem[30][4]~regout\);

-- Location: LC_X9_Y7_N3
\data_mem|Mux11~9\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux11~9_combout\ = (\data_mem|Mux11~6_combout\ & (((\data_mem|Mux11~8\) # (!\mem_a~combout\(3))))) # (!\data_mem|Mux11~6_combout\ & (\data_mem|Mux11~1\ & (\mem_a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux11~1\,
	datab => \data_mem|Mux11~6_combout\,
	datac => \mem_a~combout\(3),
	datad => \data_mem|Mux11~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux11~9_combout\);

-- Location: LC_X9_Y4_N8
\data_mem|mem[2][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[2][4]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~32_combout\, \mem_d_in~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[2][4]~regout\);

-- Location: LC_X9_Y4_N6
\data_mem|mem[6][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux11~12\ = (\mem_a~combout\(2) & ((\mem_a~combout\(0)) # ((B1_mem[6][4])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(0) & ((\data_mem|mem[2][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(4),
	datad => \data_mem|mem[2][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux11~12\,
	regout => \data_mem|mem[6][4]~regout\);

-- Location: LC_X6_Y6_N9
\data_mem|mem[7][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[7][4]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~31_combout\, \mem_d_in~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[7][4]~regout\);

-- Location: LC_X6_Y6_N4
\data_mem|mem[3][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux11~13\ = (\data_mem|Mux11~12\ & ((\data_mem|mem[7][4]~regout\) # ((!\mem_a~combout\(0))))) # (!\data_mem|Mux11~12\ & (((B1_mem[3][4] & \mem_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux11~12\,
	datab => \data_mem|mem[7][4]~regout\,
	datac => \mem_d_in~combout\(4),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux11~13\,
	regout => \data_mem|mem[3][4]~regout\);

-- Location: LC_X4_Y8_N9
\data_mem|mem[5][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[5][4]~regout\ = DFFEAS((((\mem_d_in~combout\(4)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~28_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(4),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[5][4]~regout\);

-- Location: LC_X7_Y7_N3
\data_mem|mem[0][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[0][4]~regout\ = DFFEAS((\mem_d_in~combout\(4)), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~34_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_d_in~combout\(4),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[0][4]~regout\);

-- Location: LC_X5_Y8_N1
\data_mem|mem[4][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux11~14\ = (\mem_a~combout\(2) & (((B1_mem[4][4]) # (\mem_a~combout\(0))))) # (!\mem_a~combout\(2) & (\data_mem|mem[0][4]~regout\ & ((!\mem_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \data_mem|mem[0][4]~regout\,
	datac => \mem_d_in~combout\(4),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux11~14\,
	regout => \data_mem|mem[4][4]~regout\);

-- Location: LC_X5_Y8_N0
\data_mem|mem[1][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux11~15\ = (\data_mem|Mux11~14\ & ((\data_mem|mem[5][4]~regout\) # ((!\mem_a~combout\(0))))) # (!\data_mem|Mux11~14\ & (((B1_mem[1][4] & \mem_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[5][4]~regout\,
	datab => \data_mem|Mux11~14\,
	datac => \mem_d_in~combout\(4),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux11~15\,
	regout => \data_mem|mem[1][4]~regout\);

-- Location: LC_X5_Y8_N4
\data_mem|Mux11~16\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux11~16_combout\ = (\mem_a~combout\(3) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(1) & (\data_mem|Mux11~13\)) # (!\mem_a~combout\(1) & ((\data_mem|Mux11~15\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux11~13\,
	datab => \data_mem|Mux11~15\,
	datac => \mem_a~combout\(3),
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux11~16_combout\);

-- Location: LC_X3_Y8_N5
\data_mem|mem[13][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[13][4]~regout\ = DFFEAS((((\mem_d_in~combout\(4)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~36_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(4),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[13][4]~regout\);

-- Location: LC_X4_Y9_N2
\data_mem|mem[8][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[8][4]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~26_combout\, \mem_d_in~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[8][4]~regout\);

-- Location: LC_X4_Y9_N8
\data_mem|mem[12][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux11~10\ = (\mem_a~combout\(2) & (((B1_mem[12][4]) # (\mem_a~combout\(0))))) # (!\mem_a~combout\(2) & (\data_mem|mem[8][4]~regout\ & ((!\mem_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \data_mem|mem[8][4]~regout\,
	datac => \mem_d_in~combout\(4),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux11~10\,
	regout => \data_mem|mem[12][4]~regout\);

-- Location: LC_X3_Y9_N5
\data_mem|mem[9][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux11~11\ = (\mem_a~combout\(0) & ((\data_mem|Mux11~10\ & (\data_mem|mem[13][4]~regout\)) # (!\data_mem|Mux11~10\ & ((B1_mem[9][4]))))) # (!\mem_a~combout\(0) & (((\data_mem|Mux11~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \data_mem|mem[13][4]~regout\,
	datac => \mem_d_in~combout\(4),
	datad => \data_mem|Mux11~10\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux11~11\,
	regout => \data_mem|mem[9][4]~regout\);

-- Location: LC_X8_Y8_N8
\data_mem|mem[10][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[10][4]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~24_combout\, \mem_d_in~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[10][4]~regout\);

-- Location: LC_X8_Y8_N4
\data_mem|mem[14][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux11~17\ = (\mem_a~combout\(0) & (\mem_a~combout\(2))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(2) & (B1_mem[14][4])) # (!\mem_a~combout\(2) & ((\data_mem|mem[10][4]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(4),
	datad => \data_mem|mem[10][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux11~17\,
	regout => \data_mem|mem[14][4]~regout\);

-- Location: LC_X6_Y8_N1
\data_mem|mem[15][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[15][4]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~39_combout\, \mem_d_in~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[15][4]~regout\);

-- Location: LC_X6_Y8_N8
\data_mem|mem[11][4]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux11~18\ = (\mem_a~combout\(0) & ((\data_mem|Mux11~17\ & ((\data_mem|mem[15][4]~regout\))) # (!\data_mem|Mux11~17\ & (B1_mem[11][4])))) # (!\mem_a~combout\(0) & (\data_mem|Mux11~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \data_mem|Mux11~17\,
	datac => \mem_d_in~combout\(4),
	datad => \data_mem|mem[15][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux11~18\,
	regout => \data_mem|mem[11][4]~regout\);

-- Location: LC_X5_Y8_N3
\data_mem|Mux11~19\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux11~19_combout\ = (\data_mem|Mux11~16_combout\ & (((\data_mem|Mux11~18\) # (!\mem_a~combout\(3))))) # (!\data_mem|Mux11~16_combout\ & (\data_mem|Mux11~11\ & (\mem_a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux11~16_combout\,
	datab => \data_mem|Mux11~11\,
	datac => \mem_a~combout\(3),
	datad => \data_mem|Mux11~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux11~19_combout\);

-- Location: LC_X5_Y8_N7
\data_mem|Mux11~20\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux11~20_combout\ = (\mem_a~combout\(4) & (\data_mem|Mux11~9_combout\)) # (!\mem_a~combout\(4) & (((\data_mem|Mux11~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(4),
	datab => \data_mem|Mux11~9_combout\,
	datad => \data_mem|Mux11~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux11~20_combout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d_in[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d_in(5),
	combout => \mem_d_in~combout\(5));

-- Location: LC_X4_Y9_N6
\data_mem|mem[8][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[8][5]~regout\ = DFFEAS((((\mem_d_in~combout\(5)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~26_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(5),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[8][5]~regout\);

-- Location: LC_X8_Y9_N9
\data_mem|mem[10][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux10~10\ = (\mem_a~combout\(2) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(1) & ((B1_mem[10][5]))) # (!\mem_a~combout\(1) & (\data_mem|mem[8][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \data_mem|mem[8][5]~regout\,
	datac => \mem_d_in~combout\(5),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux10~10\,
	regout => \data_mem|mem[10][5]~regout\);

-- Location: LC_X13_Y9_N8
\data_mem|mem[14][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[14][5]~regout\ = DFFEAS(((\mem_d_in~combout\(5))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~37_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_d_in~combout\(5),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[14][5]~regout\);

-- Location: LC_X8_Y9_N3
\data_mem|mem[12][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux10~11\ = (\mem_a~combout\(2) & ((\data_mem|Mux10~10\ & ((\data_mem|mem[14][5]~regout\))) # (!\data_mem|Mux10~10\ & (B1_mem[12][5])))) # (!\mem_a~combout\(2) & (\data_mem|Mux10~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \data_mem|Mux10~10\,
	datac => \mem_d_in~combout\(5),
	datad => \data_mem|mem[14][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux10~11\,
	regout => \data_mem|mem[12][5]~regout\);

-- Location: LC_X3_Y8_N4
\data_mem|mem[15][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[15][5]~regout\ = DFFEAS((((\mem_d_in~combout\(5)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~39_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(5),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[15][5]~regout\);

-- Location: LC_X2_Y6_N7
\data_mem|mem[9][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[9][5]~regout\ = DFFEAS((((\mem_d_in~combout\(5)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~25_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(5),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[9][5]~regout\);

-- Location: LC_X2_Y6_N2
\data_mem|mem[11][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux10~17\ = (\mem_a~combout\(2) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(1) & ((B1_mem[11][5]))) # (!\mem_a~combout\(1) & (\data_mem|mem[9][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \data_mem|mem[9][5]~regout\,
	datac => \mem_d_in~combout\(5),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux10~17\,
	regout => \data_mem|mem[11][5]~regout\);

-- Location: LC_X3_Y8_N6
\data_mem|mem[13][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux10~18\ = (\data_mem|Mux10~17\ & ((\data_mem|mem[15][5]~regout\) # ((!\mem_a~combout\(2))))) # (!\data_mem|Mux10~17\ & (((B1_mem[13][5] & \mem_a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[15][5]~regout\,
	datab => \data_mem|Mux10~17\,
	datac => \mem_d_in~combout\(5),
	datad => \mem_a~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux10~18\,
	regout => \data_mem|mem[13][5]~regout\);

-- Location: LC_X12_Y3_N6
\data_mem|mem[6][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[6][5]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~29_combout\, \mem_d_in~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[6][5]~regout\);

-- Location: LC_X12_Y4_N9
\data_mem|mem[0][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[0][5]~regout\ = DFFEAS((((\mem_d_in~combout\(5)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~34_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(5),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[0][5]~regout\);

-- Location: LC_X12_Y4_N8
\data_mem|mem[2][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux10~14\ = (\mem_a~combout\(1) & ((\mem_a~combout\(2)) # ((B1_mem[2][5])))) # (!\mem_a~combout\(1) & (!\mem_a~combout\(2) & ((\data_mem|mem[0][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(5),
	datad => \data_mem|mem[0][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux10~14\,
	regout => \data_mem|mem[2][5]~regout\);

-- Location: LC_X12_Y3_N5
\data_mem|mem[4][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux10~15\ = (\mem_a~combout\(2) & ((\data_mem|Mux10~14\ & (\data_mem|mem[6][5]~regout\)) # (!\data_mem|Mux10~14\ & ((B1_mem[4][5]))))) # (!\mem_a~combout\(2) & (((\data_mem|Mux10~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[6][5]~regout\,
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(5),
	datad => \data_mem|Mux10~14\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux10~15\,
	regout => \data_mem|mem[4][5]~regout\);

-- Location: LC_X10_Y4_N5
\data_mem|mem[7][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[7][5]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~31_combout\, \mem_d_in~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[7][5]~regout\);

-- Location: LC_X10_Y6_N4
\data_mem|mem[1][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[1][5]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~33_combout\, \mem_d_in~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[1][5]~regout\);

-- Location: LC_X10_Y6_N1
\data_mem|mem[3][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux10~12\ = (\mem_a~combout\(2) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(1) & ((B1_mem[3][5]))) # (!\mem_a~combout\(1) & (\data_mem|mem[1][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[1][5]~regout\,
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(5),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux10~12\,
	regout => \data_mem|mem[3][5]~regout\);

-- Location: LC_X10_Y4_N1
\data_mem|mem[5][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux10~13\ = (\mem_a~combout\(2) & ((\data_mem|Mux10~12\ & (\data_mem|mem[7][5]~regout\)) # (!\data_mem|Mux10~12\ & ((B1_mem[5][5]))))) # (!\mem_a~combout\(2) & (((\data_mem|Mux10~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[7][5]~regout\,
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(5),
	datad => \data_mem|Mux10~12\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux10~13\,
	regout => \data_mem|mem[5][5]~regout\);

-- Location: LC_X10_Y4_N2
\data_mem|Mux10~16\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux10~16_combout\ = (\mem_a~combout\(3) & (\mem_a~combout\(0))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(0) & ((\data_mem|Mux10~13\))) # (!\mem_a~combout\(0) & (\data_mem|Mux10~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(0),
	datac => \data_mem|Mux10~15\,
	datad => \data_mem|Mux10~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux10~16_combout\);

-- Location: LC_X10_Y4_N4
\data_mem|Mux10~19\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux10~19_combout\ = (\mem_a~combout\(3) & ((\data_mem|Mux10~16_combout\ & ((\data_mem|Mux10~18\))) # (!\data_mem|Mux10~16_combout\ & (\data_mem|Mux10~11\)))) # (!\mem_a~combout\(3) & (((\data_mem|Mux10~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \data_mem|Mux10~11\,
	datac => \data_mem|Mux10~18\,
	datad => \data_mem|Mux10~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux10~19_combout\);

-- Location: LC_X5_Y9_N8
\data_mem|mem[21][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[21][5]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~9_combout\, \mem_d_in~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[21][5]~regout\);

-- Location: LC_X6_Y9_N1
\data_mem|mem[16][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[16][5]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~18_combout\, \mem_d_in~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[16][5]~regout\);

-- Location: LC_X6_Y9_N7
\data_mem|mem[20][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux10~4\ = (\mem_a~combout\(0) & (\mem_a~combout\(2))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(2) & (B1_mem[20][5])) # (!\mem_a~combout\(2) & ((\data_mem|mem[16][5]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(5),
	datad => \data_mem|mem[16][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux10~4\,
	regout => \data_mem|mem[20][5]~regout\);

-- Location: LC_X7_Y8_N4
\data_mem|mem[17][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux10~5\ = (\mem_a~combout\(0) & ((\data_mem|Mux10~4\ & (\data_mem|mem[21][5]~regout\)) # (!\data_mem|Mux10~4\ & ((B1_mem[17][5]))))) # (!\mem_a~combout\(0) & (((\data_mem|Mux10~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \data_mem|mem[21][5]~regout\,
	datac => \mem_d_in~combout\(5),
	datad => \data_mem|Mux10~4\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux10~5\,
	regout => \data_mem|mem[17][5]~regout\);

-- Location: LC_X13_Y7_N5
\data_mem|mem[23][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[23][5]~regout\ = DFFEAS((((\mem_d_in~combout\(5)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~15_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(5),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[23][5]~regout\);

-- Location: LC_X12_Y5_N0
\data_mem|mem[18][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[18][5]~regout\ = DFFEAS((((\mem_d_in~combout\(5)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~17_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(5),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[18][5]~regout\);

-- Location: LC_X14_Y6_N2
\data_mem|mem[22][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux10~2\ = (\mem_a~combout\(2) & ((\mem_a~combout\(0)) # ((B1_mem[22][5])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(0) & ((\data_mem|mem[18][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(5),
	datad => \data_mem|mem[18][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux10~2\,
	regout => \data_mem|mem[22][5]~regout\);

-- Location: LC_X14_Y6_N9
\data_mem|mem[19][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux10~3\ = (\mem_a~combout\(0) & ((\data_mem|Mux10~2\ & (\data_mem|mem[23][5]~regout\)) # (!\data_mem|Mux10~2\ & ((B1_mem[19][5]))))) # (!\mem_a~combout\(0) & (((\data_mem|Mux10~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[23][5]~regout\,
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(5),
	datad => \data_mem|Mux10~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux10~3\,
	regout => \data_mem|mem[19][5]~regout\);

-- Location: LC_X10_Y4_N6
\data_mem|Mux10~6\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux10~6_combout\ = (\mem_a~combout\(3) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(1) & ((\data_mem|Mux10~3\))) # (!\mem_a~combout\(1) & (\data_mem|Mux10~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux10~5\,
	datab => \data_mem|Mux10~3\,
	datac => \mem_a~combout\(3),
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux10~6_combout\);

-- Location: LC_X7_Y9_N7
\data_mem|mem[24][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[24][5]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~5_combout\, \mem_d_in~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[24][5]~regout\);

-- Location: LC_X7_Y9_N0
\data_mem|mem[28][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux10~0\ = (\mem_a~combout\(2) & (((B1_mem[28][5]) # (\mem_a~combout\(0))))) # (!\mem_a~combout\(2) & (\data_mem|mem[24][5]~regout\ & ((!\mem_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \data_mem|mem[24][5]~regout\,
	datac => \mem_d_in~combout\(5),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux10~0\,
	regout => \data_mem|mem[28][5]~regout\);

-- Location: LC_X9_Y8_N9
\data_mem|mem[29][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[29][5]~regout\ = DFFEAS(((\mem_d_in~combout\(5))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~20_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_d_in~combout\(5),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[29][5]~regout\);

-- Location: LC_X9_Y8_N0
\data_mem|mem[25][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux10~1\ = (\mem_a~combout\(0) & ((\data_mem|Mux10~0\ & ((\data_mem|mem[29][5]~regout\))) # (!\data_mem|Mux10~0\ & (B1_mem[25][5])))) # (!\mem_a~combout\(0) & (\data_mem|Mux10~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \data_mem|Mux10~0\,
	datac => \mem_d_in~combout\(5),
	datad => \data_mem|mem[29][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux10~1\,
	regout => \data_mem|mem[25][5]~regout\);

-- Location: LC_X11_Y5_N8
\data_mem|mem[31][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[31][5]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~23_combout\, \mem_d_in~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[31][5]~regout\);

-- Location: LC_X12_Y5_N5
\data_mem|mem[26][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[26][5]~regout\ = DFFEAS((((\mem_d_in~combout\(5)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(5),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[26][5]~regout\);

-- Location: LC_X14_Y4_N2
\data_mem|mem[30][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux10~7\ = (\mem_a~combout\(2) & ((\mem_a~combout\(0)) # ((B1_mem[30][5])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(0) & ((\data_mem|mem[26][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(5),
	datad => \data_mem|mem[26][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux10~7\,
	regout => \data_mem|mem[30][5]~regout\);

-- Location: LC_X11_Y5_N6
\data_mem|mem[27][5]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux10~8\ = (\mem_a~combout\(0) & ((\data_mem|Mux10~7\ & (\data_mem|mem[31][5]~regout\)) # (!\data_mem|Mux10~7\ & ((B1_mem[27][5]))))) # (!\mem_a~combout\(0) & (((\data_mem|Mux10~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[31][5]~regout\,
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(5),
	datad => \data_mem|Mux10~7\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux10~8\,
	regout => \data_mem|mem[27][5]~regout\);

-- Location: LC_X10_Y4_N9
\data_mem|Mux10~9\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux10~9_combout\ = (\data_mem|Mux10~6_combout\ & (((\data_mem|Mux10~8\) # (!\mem_a~combout\(3))))) # (!\data_mem|Mux10~6_combout\ & (\data_mem|Mux10~1\ & (\mem_a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux10~6_combout\,
	datab => \data_mem|Mux10~1\,
	datac => \mem_a~combout\(3),
	datad => \data_mem|Mux10~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux10~9_combout\);

-- Location: LC_X10_Y4_N8
\data_mem|Mux10~20\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux10~20_combout\ = (\mem_a~combout\(4) & (((\data_mem|Mux10~9_combout\)))) # (!\mem_a~combout\(4) & (\data_mem|Mux10~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux10~19_combout\,
	datab => \data_mem|Mux10~9_combout\,
	datac => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux10~20_combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d_in[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d_in(6),
	combout => \mem_d_in~combout\(6));

-- Location: LC_X9_Y10_N2
\data_mem|mem[17][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[17][6]~regout\ = DFFEAS((((\mem_d_in~combout\(6)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~13_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(6),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[17][6]~regout\);

-- Location: LC_X10_Y8_N8
\data_mem|mem[21][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux9~0\ = (\mem_a~combout\(2) & (((B1_mem[21][6]) # (\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & (\data_mem|mem[17][6]~regout\ & ((!\mem_a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \data_mem|mem[17][6]~regout\,
	datac => \mem_d_in~combout\(6),
	datad => \mem_a~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux9~0\,
	regout => \data_mem|mem[21][6]~regout\);

-- Location: LC_X9_Y8_N6
\data_mem|mem[29][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[29][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~20_combout\, \mem_d_in~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(6),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[29][6]~regout\);

-- Location: LC_X10_Y8_N7
\data_mem|mem[25][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux9~1\ = (\data_mem|Mux9~0\ & ((\data_mem|mem[29][6]~regout\) # ((!\mem_a~combout\(3))))) # (!\data_mem|Mux9~0\ & (((B1_mem[25][6] & \mem_a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux9~0\,
	datab => \data_mem|mem[29][6]~regout\,
	datac => \mem_d_in~combout\(6),
	datad => \mem_a~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux9~1\,
	regout => \data_mem|mem[25][6]~regout\);

-- Location: LC_X6_Y9_N8
\data_mem|mem[16][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[16][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~18_combout\, \mem_d_in~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(6),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[16][6]~regout\);

-- Location: LC_X6_Y9_N9
\data_mem|mem[20][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux9~4\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B1_mem[20][6]))) # (!\mem_a~combout\(2) & (\data_mem|mem[16][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[16][6]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(6),
	datad => \mem_a~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux9~4\,
	regout => \data_mem|mem[20][6]~regout\);

-- Location: LC_X7_Y9_N1
\data_mem|mem[28][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[28][6]~regout\ = DFFEAS(((\mem_d_in~combout\(6))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_d_in~combout\(6),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[28][6]~regout\);

-- Location: LC_X7_Y9_N4
\data_mem|mem[24][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux9~5\ = (\data_mem|Mux9~4\ & (((\data_mem|mem[28][6]~regout\)) # (!\mem_a~combout\(3)))) # (!\data_mem|Mux9~4\ & (\mem_a~combout\(3) & (B1_mem[24][6])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux9~4\,
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(6),
	datad => \data_mem|mem[28][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux9~5\,
	regout => \data_mem|mem[24][6]~regout\);

-- Location: LC_X2_Y7_N8
\data_mem|mem[18][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[18][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~17_combout\, \mem_d_in~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(6),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[18][6]~regout\);

-- Location: LC_X2_Y7_N3
\data_mem|mem[22][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux9~2\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B1_mem[22][6]))) # (!\mem_a~combout\(2) & (\data_mem|mem[18][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \data_mem|mem[18][6]~regout\,
	datac => \mem_d_in~combout\(6),
	datad => \mem_a~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux9~2\,
	regout => \data_mem|mem[22][6]~regout\);

-- Location: LC_X6_Y7_N8
\data_mem|mem[30][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[30][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~7_combout\, \mem_d_in~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(6),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[30][6]~regout\);

-- Location: LC_X6_Y7_N3
\data_mem|mem[26][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux9~3\ = (\data_mem|Mux9~2\ & (((\data_mem|mem[30][6]~regout\)) # (!\mem_a~combout\(3)))) # (!\data_mem|Mux9~2\ & (\mem_a~combout\(3) & (B1_mem[26][6])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux9~2\,
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(6),
	datad => \data_mem|mem[30][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux9~3\,
	regout => \data_mem|mem[26][6]~regout\);

-- Location: LC_X10_Y8_N0
\data_mem|Mux9~6\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux9~6_combout\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((\data_mem|Mux9~3\))) # (!\mem_a~combout\(1) & (\data_mem|Mux9~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux9~5\,
	datab => \mem_a~combout\(0),
	datac => \data_mem|Mux9~3\,
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux9~6_combout\);

-- Location: LC_X10_Y10_N4
\data_mem|mem[19][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[19][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~11_combout\, \mem_d_in~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(6),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[19][6]~regout\);

-- Location: LC_X10_Y10_N7
\data_mem|mem[23][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux9~7\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((B1_mem[23][6])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\data_mem|mem[19][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(6),
	datad => \data_mem|mem[19][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux9~7\,
	regout => \data_mem|mem[23][6]~regout\);

-- Location: LC_X11_Y5_N2
\data_mem|mem[31][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[31][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~23_combout\, \mem_d_in~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(6),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[31][6]~regout\);

-- Location: LC_X11_Y5_N7
\data_mem|mem[27][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux9~8\ = (\mem_a~combout\(3) & ((\data_mem|Mux9~7\ & ((\data_mem|mem[31][6]~regout\))) # (!\data_mem|Mux9~7\ & (B1_mem[27][6])))) # (!\mem_a~combout\(3) & (\data_mem|Mux9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \data_mem|Mux9~7\,
	datac => \mem_d_in~combout\(6),
	datad => \data_mem|mem[31][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux9~8\,
	regout => \data_mem|mem[27][6]~regout\);

-- Location: LC_X10_Y8_N9
\data_mem|Mux9~9\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux9~9_combout\ = (\mem_a~combout\(0) & ((\data_mem|Mux9~6_combout\ & ((\data_mem|Mux9~8\))) # (!\data_mem|Mux9~6_combout\ & (\data_mem|Mux9~1\)))) # (!\mem_a~combout\(0) & (((\data_mem|Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux9~1\,
	datab => \mem_a~combout\(0),
	datac => \data_mem|Mux9~6_combout\,
	datad => \data_mem|Mux9~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux9~9_combout\);

-- Location: LC_X5_Y7_N2
\data_mem|mem[8][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[8][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~26_combout\, \mem_d_in~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(6),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[8][6]~regout\);

-- Location: LC_X5_Y7_N1
\data_mem|mem[9][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux9~10\ = (\mem_a~combout\(1) & (((\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & ((B1_mem[9][6]))) # (!\mem_a~combout\(0) & (\data_mem|mem[8][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \data_mem|mem[8][6]~regout\,
	datac => \mem_d_in~combout\(6),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux9~10\,
	regout => \data_mem|mem[9][6]~regout\);

-- Location: LC_X5_Y5_N0
\data_mem|mem[11][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[11][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~27_combout\, \mem_d_in~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(6),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[11][6]~regout\);

-- Location: LC_X5_Y5_N5
\data_mem|mem[10][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux9~11\ = (\data_mem|Mux9~10\ & ((\data_mem|mem[11][6]~regout\) # ((!\mem_a~combout\(1))))) # (!\data_mem|Mux9~10\ & (((B1_mem[10][6] & \mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux9~10\,
	datab => \data_mem|mem[11][6]~regout\,
	datac => \mem_d_in~combout\(6),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux9~11\,
	regout => \data_mem|mem[10][6]~regout\);

-- Location: LC_X8_Y5_N5
\data_mem|mem[7][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[7][6]~regout\ = DFFEAS(((\mem_d_in~combout\(6))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~31_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_d_in~combout\(6),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[7][6]~regout\);

-- Location: LC_X14_Y3_N4
\data_mem|mem[4][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[4][6]~regout\ = DFFEAS((((\mem_d_in~combout\(6)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~30_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(6),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[4][6]~regout\);

-- Location: LC_X10_Y5_N3
\data_mem|mem[5][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux9~12\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((B1_mem[5][6])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\data_mem|mem[4][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(6),
	datad => \data_mem|mem[4][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux9~12\,
	regout => \data_mem|mem[5][6]~regout\);

-- Location: LC_X10_Y5_N7
\data_mem|mem[6][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux9~13\ = (\mem_a~combout\(1) & ((\data_mem|Mux9~12\ & (\data_mem|mem[7][6]~regout\)) # (!\data_mem|Mux9~12\ & ((B1_mem[6][6]))))) # (!\mem_a~combout\(1) & (((\data_mem|Mux9~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[7][6]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(6),
	datad => \data_mem|Mux9~12\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux9~13\,
	regout => \data_mem|mem[6][6]~regout\);

-- Location: LC_X10_Y7_N8
\data_mem|mem[3][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[3][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~35_combout\, \mem_d_in~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(6),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[3][6]~regout\);

-- Location: LC_X7_Y7_N6
\data_mem|mem[0][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[0][6]~regout\ = DFFEAS((\mem_d_in~combout\(6)), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~34_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_d_in~combout\(6),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[0][6]~regout\);

-- Location: LC_X8_Y7_N1
\data_mem|mem[1][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux9~14\ = (\mem_a~combout\(0) & (((B1_mem[1][6]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\data_mem|mem[0][6]~regout\ & ((!\mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \data_mem|mem[0][6]~regout\,
	datac => \mem_d_in~combout\(6),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux9~14\,
	regout => \data_mem|mem[1][6]~regout\);

-- Location: LC_X10_Y7_N6
\data_mem|mem[2][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux9~15\ = (\data_mem|Mux9~14\ & ((\data_mem|mem[3][6]~regout\) # ((!\mem_a~combout\(1))))) # (!\data_mem|Mux9~14\ & (((B1_mem[2][6] & \mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[3][6]~regout\,
	datab => \data_mem|Mux9~14\,
	datac => \mem_d_in~combout\(6),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux9~15\,
	regout => \data_mem|mem[2][6]~regout\);

-- Location: LC_X10_Y8_N6
\data_mem|Mux9~16\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux9~16_combout\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & (\data_mem|Mux9~13\)) # (!\mem_a~combout\(2) & ((\data_mem|Mux9~15\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux9~13\,
	datab => \mem_a~combout\(3),
	datac => \data_mem|Mux9~15\,
	datad => \mem_a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux9~16_combout\);

-- Location: LC_X13_Y9_N4
\data_mem|mem[15][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[15][6]~regout\ = DFFEAS((((\mem_d_in~combout\(6)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~39_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(6),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[15][6]~regout\);

-- Location: LC_X14_Y9_N0
\data_mem|mem[12][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[12][6]~regout\ = DFFEAS((((\mem_d_in~combout\(6)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~38_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(6),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[12][6]~regout\);

-- Location: LC_X14_Y8_N4
\data_mem|mem[13][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux9~17\ = (\mem_a~combout\(0) & (((B1_mem[13][6]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\data_mem|mem[12][6]~regout\ & ((!\mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[12][6]~regout\,
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(6),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux9~17\,
	regout => \data_mem|mem[13][6]~regout\);

-- Location: LC_X13_Y9_N9
\data_mem|mem[14][6]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux9~18\ = (\mem_a~combout\(1) & ((\data_mem|Mux9~17\ & (\data_mem|mem[15][6]~regout\)) # (!\data_mem|Mux9~17\ & ((B1_mem[14][6]))))) # (!\mem_a~combout\(1) & (((\data_mem|Mux9~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[15][6]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(6),
	datad => \data_mem|Mux9~17\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux9~18\,
	regout => \data_mem|mem[14][6]~regout\);

-- Location: LC_X10_Y8_N3
\data_mem|Mux9~19\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux9~19_combout\ = (\mem_a~combout\(3) & ((\data_mem|Mux9~16_combout\ & ((\data_mem|Mux9~18\))) # (!\data_mem|Mux9~16_combout\ & (\data_mem|Mux9~11\)))) # (!\mem_a~combout\(3) & (((\data_mem|Mux9~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \data_mem|Mux9~11\,
	datac => \data_mem|Mux9~16_combout\,
	datad => \data_mem|Mux9~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux9~19_combout\);

-- Location: LC_X10_Y8_N4
\data_mem|Mux9~20\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux9~20_combout\ = ((\mem_a~combout\(4) & (\data_mem|Mux9~9_combout\)) # (!\mem_a~combout\(4) & ((\data_mem|Mux9~19_combout\))))

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
	datab => \data_mem|Mux9~9_combout\,
	datac => \mem_a~combout\(4),
	datad => \data_mem|Mux9~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux9~20_combout\);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d_in[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d_in(7),
	combout => \mem_d_in~combout\(7));

-- Location: LC_X2_Y7_N7
\data_mem|mem[18][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[18][7]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~17_combout\, \mem_d_in~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(7),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[18][7]~regout\);

-- Location: LC_X2_Y7_N6
\data_mem|mem[22][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux8~0\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B1_mem[22][7]))) # (!\mem_a~combout\(2) & (\data_mem|mem[18][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \data_mem|mem[18][7]~regout\,
	datac => \mem_d_in~combout\(7),
	datad => \mem_a~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux8~0\,
	regout => \data_mem|mem[22][7]~regout\);

-- Location: LC_X6_Y7_N9
\data_mem|mem[30][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[30][7]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~7_combout\, \mem_d_in~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(7),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[30][7]~regout\);

-- Location: LC_X6_Y7_N4
\data_mem|mem[26][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux8~1\ = (\data_mem|Mux8~0\ & (((\data_mem|mem[30][7]~regout\)) # (!\mem_a~combout\(3)))) # (!\data_mem|Mux8~0\ & (\mem_a~combout\(3) & (B1_mem[26][7])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux8~0\,
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(7),
	datad => \data_mem|mem[30][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux8~1\,
	regout => \data_mem|mem[26][7]~regout\);

-- Location: LC_X6_Y9_N3
\data_mem|mem[16][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[16][7]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~18_combout\, \mem_d_in~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(7),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[16][7]~regout\);

-- Location: LC_X6_Y9_N4
\data_mem|mem[20][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux8~4\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B1_mem[20][7]))) # (!\mem_a~combout\(2) & (\data_mem|mem[16][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[16][7]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(7),
	datad => \mem_a~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux8~4\,
	regout => \data_mem|mem[20][7]~regout\);

-- Location: LC_X7_Y9_N9
\data_mem|mem[28][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[28][7]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~1_combout\, \mem_d_in~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(7),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[28][7]~regout\);

-- Location: LC_X7_Y9_N6
\data_mem|mem[24][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux8~5\ = (\mem_a~combout\(3) & ((\data_mem|Mux8~4\ & ((\data_mem|mem[28][7]~regout\))) # (!\data_mem|Mux8~4\ & (B1_mem[24][7])))) # (!\mem_a~combout\(3) & (\data_mem|Mux8~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \data_mem|Mux8~4\,
	datac => \mem_d_in~combout\(7),
	datad => \data_mem|mem[28][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux8~5\,
	regout => \data_mem|mem[24][7]~regout\);

-- Location: LC_X9_Y8_N5
\data_mem|mem[29][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[29][7]~regout\ = DFFEAS(((\mem_d_in~combout\(7))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~20_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_d_in~combout\(7),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[29][7]~regout\);

-- Location: LC_X9_Y10_N0
\data_mem|mem[17][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[17][7]~regout\ = DFFEAS((((\mem_d_in~combout\(7)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~13_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(7),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[17][7]~regout\);

-- Location: LC_X10_Y8_N2
\data_mem|mem[21][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux8~2\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((B1_mem[21][7])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\data_mem|mem[17][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(7),
	datad => \data_mem|mem[17][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux8~2\,
	regout => \data_mem|mem[21][7]~regout\);

-- Location: LC_X10_Y8_N5
\data_mem|mem[25][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux8~3\ = (\mem_a~combout\(3) & ((\data_mem|Mux8~2\ & (\data_mem|mem[29][7]~regout\)) # (!\data_mem|Mux8~2\ & ((B1_mem[25][7]))))) # (!\mem_a~combout\(3) & (((\data_mem|Mux8~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[29][7]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(7),
	datad => \data_mem|Mux8~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux8~3\,
	regout => \data_mem|mem[25][7]~regout\);

-- Location: LC_X10_Y9_N7
\data_mem|Mux8~6\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux8~6_combout\ = (\mem_a~combout\(1) & (((\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & ((\data_mem|Mux8~3\))) # (!\mem_a~combout\(0) & (\data_mem|Mux8~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(1),
	datab => \data_mem|Mux8~5\,
	datac => \data_mem|Mux8~3\,
	datad => \mem_a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux8~6_combout\);

-- Location: LC_X11_Y9_N1
\data_mem|mem[19][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[19][7]~regout\ = DFFEAS((\mem_d_in~combout\(7)), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~11_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_d_in~combout\(7),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[19][7]~regout\);

-- Location: LC_X10_Y9_N4
\data_mem|mem[23][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux8~7\ = (\mem_a~combout\(2) & (((B1_mem[23][7]) # (\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & (\data_mem|mem[19][7]~regout\ & ((!\mem_a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[19][7]~regout\,
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(7),
	datad => \mem_a~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux8~7\,
	regout => \data_mem|mem[23][7]~regout\);

-- Location: LC_X16_Y5_N2
\data_mem|mem[31][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[31][7]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~23_combout\, \mem_d_in~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(7),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[31][7]~regout\);

-- Location: LC_X10_Y9_N9
\data_mem|mem[27][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux8~8\ = (\data_mem|Mux8~7\ & (((\data_mem|mem[31][7]~regout\)) # (!\mem_a~combout\(3)))) # (!\data_mem|Mux8~7\ & (\mem_a~combout\(3) & (B1_mem[27][7])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux8~7\,
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(7),
	datad => \data_mem|mem[31][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux8~8\,
	regout => \data_mem|mem[27][7]~regout\);

-- Location: LC_X10_Y9_N6
\data_mem|Mux8~9\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux8~9_combout\ = (\mem_a~combout\(1) & ((\data_mem|Mux8~6_combout\ & ((\data_mem|Mux8~8\))) # (!\data_mem|Mux8~6_combout\ & (\data_mem|Mux8~1\)))) # (!\mem_a~combout\(1) & (((\data_mem|Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(1),
	datab => \data_mem|Mux8~1\,
	datac => \data_mem|Mux8~6_combout\,
	datad => \data_mem|Mux8~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux8~9_combout\);

-- Location: LC_X4_Y8_N3
\data_mem|mem[7][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[7][7]~regout\ = DFFEAS((((\mem_d_in~combout\(7)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~31_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(7),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[7][7]~regout\);

-- Location: LC_X5_Y6_N9
\data_mem|mem[4][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[4][7]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~30_combout\, \mem_d_in~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(7),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[4][7]~regout\);

-- Location: LC_X5_Y6_N6
\data_mem|mem[6][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux8~12\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((B1_mem[6][7]))) # (!\mem_a~combout\(1) & (\data_mem|mem[4][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \data_mem|mem[4][7]~regout\,
	datac => \mem_d_in~combout\(7),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux8~12\,
	regout => \data_mem|mem[6][7]~regout\);

-- Location: LC_X4_Y8_N0
\data_mem|mem[5][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux8~13\ = (\data_mem|Mux8~12\ & ((\data_mem|mem[7][7]~regout\) # ((!\mem_a~combout\(0))))) # (!\data_mem|Mux8~12\ & (((B1_mem[5][7] & \mem_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[7][7]~regout\,
	datab => \data_mem|Mux8~12\,
	datac => \mem_d_in~combout\(7),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux8~13\,
	regout => \data_mem|mem[5][7]~regout\);

-- Location: LC_X6_Y6_N6
\data_mem|mem[3][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[3][7]~regout\ = DFFEAS((((\mem_d_in~combout\(7)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~35_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(7),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[3][7]~regout\);

-- Location: LC_X7_Y7_N5
\data_mem|mem[0][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[0][7]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~34_combout\, \mem_d_in~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(7),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[0][7]~regout\);

-- Location: LC_X7_Y6_N3
\data_mem|mem[1][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux8~14\ = (\mem_a~combout\(1) & (((\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & ((B1_mem[1][7]))) # (!\mem_a~combout\(0) & (\data_mem|mem[0][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \data_mem|mem[0][7]~regout\,
	datac => \mem_d_in~combout\(7),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux8~14\,
	regout => \data_mem|mem[1][7]~regout\);

-- Location: LC_X7_Y6_N8
\data_mem|mem[2][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux8~15\ = (\mem_a~combout\(1) & ((\data_mem|Mux8~14\ & (\data_mem|mem[3][7]~regout\)) # (!\data_mem|Mux8~14\ & ((B1_mem[2][7]))))) # (!\mem_a~combout\(1) & (((\data_mem|Mux8~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \data_mem|mem[3][7]~regout\,
	datac => \mem_d_in~combout\(7),
	datad => \data_mem|Mux8~14\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux8~15\,
	regout => \data_mem|mem[2][7]~regout\);

-- Location: LC_X10_Y9_N8
\data_mem|Mux8~16\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux8~16_combout\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & (\data_mem|Mux8~13\)) # (!\mem_a~combout\(2) & ((\data_mem|Mux8~15\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux8~13\,
	datab => \mem_a~combout\(3),
	datac => \mem_a~combout\(2),
	datad => \data_mem|Mux8~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux8~16_combout\);

-- Location: LC_X8_Y10_N4
\data_mem|mem[11][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[11][7]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~27_combout\, \mem_d_in~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(7),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[11][7]~regout\);

-- Location: LC_X5_Y7_N9
\data_mem|mem[8][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[8][7]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~26_combout\, \mem_d_in~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(7),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[8][7]~regout\);

-- Location: LC_X5_Y7_N6
\data_mem|mem[9][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux8~10\ = (\mem_a~combout\(1) & (((\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & ((B1_mem[9][7]))) # (!\mem_a~combout\(0) & (\data_mem|mem[8][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \data_mem|mem[8][7]~regout\,
	datac => \mem_d_in~combout\(7),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux8~10\,
	regout => \data_mem|mem[9][7]~regout\);

-- Location: LC_X8_Y10_N5
\data_mem|mem[10][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux8~11\ = (\data_mem|Mux8~10\ & ((\data_mem|mem[11][7]~regout\) # ((!\mem_a~combout\(1))))) # (!\data_mem|Mux8~10\ & (((B1_mem[10][7] & \mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[11][7]~regout\,
	datab => \data_mem|Mux8~10\,
	datac => \mem_d_in~combout\(7),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux8~11\,
	regout => \data_mem|mem[10][7]~regout\);

-- Location: LC_X8_Y9_N5
\data_mem|mem[12][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[12][7]~regout\ = DFFEAS((\mem_d_in~combout\(7)), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~38_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_d_in~combout\(7),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[12][7]~regout\);

-- Location: LC_X12_Y10_N4
\data_mem|mem[14][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux8~17\ = (\mem_a~combout\(1) & ((\mem_a~combout\(0)) # ((B1_mem[14][7])))) # (!\mem_a~combout\(1) & (!\mem_a~combout\(0) & ((\data_mem|mem[12][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(7),
	datad => \data_mem|mem[12][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux8~17\,
	regout => \data_mem|mem[14][7]~regout\);

-- Location: LC_X14_Y10_N6
\data_mem|mem[15][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[15][7]~regout\ = DFFEAS(((\mem_d_in~combout\(7))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~39_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_d_in~combout\(7),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[15][7]~regout\);

-- Location: LC_X12_Y10_N6
\data_mem|mem[13][7]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux8~18\ = (\data_mem|Mux8~17\ & (((\data_mem|mem[15][7]~regout\)) # (!\mem_a~combout\(0)))) # (!\data_mem|Mux8~17\ & (\mem_a~combout\(0) & (B1_mem[13][7])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux8~17\,
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(7),
	datad => \data_mem|mem[15][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux8~18\,
	regout => \data_mem|mem[13][7]~regout\);

-- Location: LC_X10_Y9_N2
\data_mem|Mux8~19\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux8~19_combout\ = (\data_mem|Mux8~16_combout\ & (((\data_mem|Mux8~18\)) # (!\mem_a~combout\(3)))) # (!\data_mem|Mux8~16_combout\ & (\mem_a~combout\(3) & (\data_mem|Mux8~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux8~16_combout\,
	datab => \mem_a~combout\(3),
	datac => \data_mem|Mux8~11\,
	datad => \data_mem|Mux8~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux8~19_combout\);

-- Location: LC_X10_Y9_N1
\data_mem|Mux8~20\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux8~20_combout\ = (\mem_a~combout\(4) & (((\data_mem|Mux8~9_combout\)))) # (!\mem_a~combout\(4) & (((\data_mem|Mux8~19_combout\))))

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
	dataa => \mem_a~combout\(4),
	datac => \data_mem|Mux8~9_combout\,
	datad => \data_mem|Mux8~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux8~20_combout\);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d_in[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d_in(8),
	combout => \mem_d_in~combout\(8));

-- Location: LC_X3_Y9_N0
\data_mem|mem[12][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[12][8]~regout\ = DFFEAS((((\mem_d_in~combout\(8)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~38_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(8),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[12][8]~regout\);

-- Location: LC_X12_Y10_N2
\data_mem|mem[13][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux7~17\ = (\mem_a~combout\(1) & (((\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & ((B1_mem[13][8]))) # (!\mem_a~combout\(0) & (\data_mem|mem[12][8]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \data_mem|mem[12][8]~regout\,
	datac => \mem_d_in~combout\(8),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux7~17\,
	regout => \data_mem|mem[13][8]~regout\);

-- Location: LC_X14_Y10_N3
\data_mem|mem[15][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[15][8]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~39_combout\, \mem_d_in~combout\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(8),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[15][8]~regout\);

-- Location: LC_X12_Y10_N3
\data_mem|mem[14][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux7~18\ = (\mem_a~combout\(1) & ((\data_mem|Mux7~17\ & ((\data_mem|mem[15][8]~regout\))) # (!\data_mem|Mux7~17\ & (B1_mem[14][8])))) # (!\mem_a~combout\(1) & (\data_mem|Mux7~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \data_mem|Mux7~17\,
	datac => \mem_d_in~combout\(8),
	datad => \data_mem|mem[15][8]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux7~18\,
	regout => \data_mem|mem[14][8]~regout\);

-- Location: LC_X3_Y4_N2
\data_mem|mem[8][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[8][8]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~26_combout\, \mem_d_in~combout\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(8),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[8][8]~regout\);

-- Location: LC_X3_Y4_N7
\data_mem|mem[10][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux7~10\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((B1_mem[10][8]))) # (!\mem_a~combout\(1) & (\data_mem|mem[8][8]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[8][8]~regout\,
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(8),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux7~10\,
	regout => \data_mem|mem[10][8]~regout\);

-- Location: LC_X2_Y6_N1
\data_mem|mem[11][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[11][8]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~27_combout\, \mem_d_in~combout\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(8),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[11][8]~regout\);

-- Location: LC_X2_Y6_N8
\data_mem|mem[9][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux7~11\ = (\data_mem|Mux7~10\ & ((\data_mem|mem[11][8]~regout\) # ((!\mem_a~combout\(0))))) # (!\data_mem|Mux7~10\ & (((B1_mem[9][8] & \mem_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux7~10\,
	datab => \data_mem|mem[11][8]~regout\,
	datac => \mem_d_in~combout\(8),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux7~11\,
	regout => \data_mem|mem[9][8]~regout\);

-- Location: LC_X6_Y6_N8
\data_mem|mem[3][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[3][8]~regout\ = DFFEAS((((\mem_d_in~combout\(8)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~35_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(8),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[3][8]~regout\);

-- Location: LC_X7_Y7_N8
\data_mem|mem[0][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[0][8]~regout\ = DFFEAS((((\mem_d_in~combout\(8)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~34_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(8),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[0][8]~regout\);

-- Location: LC_X7_Y6_N7
\data_mem|mem[2][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux7~14\ = (\mem_a~combout\(1) & (((B1_mem[2][8]) # (\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & (\data_mem|mem[0][8]~regout\ & ((!\mem_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \data_mem|mem[0][8]~regout\,
	datac => \mem_d_in~combout\(8),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux7~14\,
	regout => \data_mem|mem[2][8]~regout\);

-- Location: LC_X7_Y6_N9
\data_mem|mem[1][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux7~15\ = (\data_mem|Mux7~14\ & ((\data_mem|mem[3][8]~regout\) # ((!\mem_a~combout\(0))))) # (!\data_mem|Mux7~14\ & (((B1_mem[1][8] & \mem_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[3][8]~regout\,
	datab => \data_mem|Mux7~14\,
	datac => \mem_d_in~combout\(8),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux7~15\,
	regout => \data_mem|mem[1][8]~regout\);

-- Location: LC_X8_Y5_N4
\data_mem|mem[7][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[7][8]~regout\ = DFFEAS(((\mem_d_in~combout\(8))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~31_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_d_in~combout\(8),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[7][8]~regout\);

-- Location: LC_X14_Y3_N5
\data_mem|mem[4][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[4][8]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~30_combout\, \mem_d_in~combout\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(8),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[4][8]~regout\);

-- Location: LC_X10_Y5_N2
\data_mem|mem[5][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux7~12\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((B1_mem[5][8])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\data_mem|mem[4][8]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(8),
	datad => \data_mem|mem[4][8]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux7~12\,
	regout => \data_mem|mem[5][8]~regout\);

-- Location: LC_X10_Y5_N0
\data_mem|mem[6][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux7~13\ = (\mem_a~combout\(1) & ((\data_mem|Mux7~12\ & (\data_mem|mem[7][8]~regout\)) # (!\data_mem|Mux7~12\ & ((B1_mem[6][8]))))) # (!\mem_a~combout\(1) & (((\data_mem|Mux7~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[7][8]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(8),
	datad => \data_mem|Mux7~12\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux7~13\,
	regout => \data_mem|mem[6][8]~regout\);

-- Location: LC_X11_Y6_N3
\data_mem|Mux7~16\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux7~16_combout\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((\data_mem|Mux7~13\))) # (!\mem_a~combout\(2) & (\data_mem|Mux7~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \data_mem|Mux7~15\,
	datac => \mem_a~combout\(2),
	datad => \data_mem|Mux7~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux7~16_combout\);

-- Location: LC_X11_Y6_N4
\data_mem|Mux7~19\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux7~19_combout\ = (\mem_a~combout\(3) & ((\data_mem|Mux7~16_combout\ & (\data_mem|Mux7~18\)) # (!\data_mem|Mux7~16_combout\ & ((\data_mem|Mux7~11\))))) # (!\mem_a~combout\(3) & (((\data_mem|Mux7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \data_mem|Mux7~18\,
	datac => \data_mem|Mux7~11\,
	datad => \data_mem|Mux7~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux7~19_combout\);

-- Location: LC_X11_Y6_N7
\data_mem|mem[29][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[29][8]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~20_combout\, \mem_d_in~combout\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(8),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[29][8]~regout\);

-- Location: LC_X12_Y8_N3
\data_mem|mem[17][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[17][8]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~13_combout\, \mem_d_in~combout\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(8),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[17][8]~regout\);

-- Location: LC_X12_Y8_N9
\data_mem|mem[21][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux7~0\ = (\mem_a~combout\(3) & (\mem_a~combout\(2))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & (B1_mem[21][8])) # (!\mem_a~combout\(2) & ((\data_mem|mem[17][8]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(8),
	datad => \data_mem|mem[17][8]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux7~0\,
	regout => \data_mem|mem[21][8]~regout\);

-- Location: LC_X11_Y6_N1
\data_mem|mem[25][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux7~1\ = (\mem_a~combout\(3) & ((\data_mem|Mux7~0\ & (\data_mem|mem[29][8]~regout\)) # (!\data_mem|Mux7~0\ & ((B1_mem[25][8]))))) # (!\mem_a~combout\(3) & (((\data_mem|Mux7~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \data_mem|mem[29][8]~regout\,
	datac => \mem_d_in~combout\(8),
	datad => \data_mem|Mux7~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux7~1\,
	regout => \data_mem|mem[25][8]~regout\);

-- Location: LC_X3_Y6_N2
\data_mem|mem[30][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[30][8]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~7_combout\, \mem_d_in~combout\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(8),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[30][8]~regout\);

-- Location: LC_X2_Y7_N2
\data_mem|mem[18][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[18][8]~regout\ = DFFEAS(((\mem_d_in~combout\(8))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~17_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_d_in~combout\(8),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[18][8]~regout\);

-- Location: LC_X2_Y7_N5
\data_mem|mem[22][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux7~2\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B1_mem[22][8]))) # (!\mem_a~combout\(2) & (\data_mem|mem[18][8]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \data_mem|mem[18][8]~regout\,
	datac => \mem_d_in~combout\(8),
	datad => \mem_a~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux7~2\,
	regout => \data_mem|mem[22][8]~regout\);

-- Location: LC_X3_Y6_N1
\data_mem|mem[26][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux7~3\ = (\mem_a~combout\(3) & ((\data_mem|Mux7~2\ & (\data_mem|mem[30][8]~regout\)) # (!\data_mem|Mux7~2\ & ((B1_mem[26][8]))))) # (!\mem_a~combout\(3) & (((\data_mem|Mux7~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \data_mem|mem[30][8]~regout\,
	datac => \mem_d_in~combout\(8),
	datad => \data_mem|Mux7~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux7~3\,
	regout => \data_mem|mem[26][8]~regout\);

-- Location: LC_X13_Y3_N4
\data_mem|mem[28][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[28][8]~regout\ = DFFEAS((((\mem_d_in~combout\(8)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(8),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[28][8]~regout\);

-- Location: LC_X13_Y5_N3
\data_mem|mem[16][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[16][8]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~18_combout\, \mem_d_in~combout\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(8),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[16][8]~regout\);

-- Location: LC_X13_Y5_N6
\data_mem|mem[20][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux7~4\ = (\mem_a~combout\(3) & (\mem_a~combout\(2))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & (B1_mem[20][8])) # (!\mem_a~combout\(2) & ((\data_mem|mem[16][8]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(8),
	datad => \data_mem|mem[16][8]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux7~4\,
	regout => \data_mem|mem[20][8]~regout\);

-- Location: LC_X14_Y3_N2
\data_mem|mem[24][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux7~5\ = (\mem_a~combout\(3) & ((\data_mem|Mux7~4\ & (\data_mem|mem[28][8]~regout\)) # (!\data_mem|Mux7~4\ & ((B1_mem[24][8]))))) # (!\mem_a~combout\(3) & (((\data_mem|Mux7~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \data_mem|mem[28][8]~regout\,
	datac => \mem_d_in~combout\(8),
	datad => \data_mem|Mux7~4\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux7~5\,
	regout => \data_mem|mem[24][8]~regout\);

-- Location: LC_X11_Y6_N0
\data_mem|Mux7~6\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux7~6_combout\ = (\mem_a~combout\(0) & (\mem_a~combout\(1))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & (\data_mem|Mux7~3\)) # (!\mem_a~combout\(1) & ((\data_mem|Mux7~5\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \data_mem|Mux7~3\,
	datad => \data_mem|Mux7~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux7~6_combout\);

-- Location: LC_X11_Y9_N6
\data_mem|mem[19][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[19][8]~regout\ = DFFEAS((((\mem_d_in~combout\(8)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~11_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(8),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[19][8]~regout\);

-- Location: LC_X15_Y6_N6
\data_mem|mem[23][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux7~7\ = (\mem_a~combout\(3) & (\mem_a~combout\(2))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & (B1_mem[23][8])) # (!\mem_a~combout\(2) & ((\data_mem|mem[19][8]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(8),
	datad => \data_mem|mem[19][8]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux7~7\,
	regout => \data_mem|mem[23][8]~regout\);

-- Location: LC_X16_Y5_N8
\data_mem|mem[31][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[31][8]~regout\ = DFFEAS(((\mem_d_in~combout\(8))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~23_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_d_in~combout\(8),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[31][8]~regout\);

-- Location: LC_X15_Y6_N5
\data_mem|mem[27][8]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux7~8\ = (\data_mem|Mux7~7\ & (((\data_mem|mem[31][8]~regout\)) # (!\mem_a~combout\(3)))) # (!\data_mem|Mux7~7\ & (\mem_a~combout\(3) & (B1_mem[27][8])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux7~7\,
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(8),
	datad => \data_mem|mem[31][8]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux7~8\,
	regout => \data_mem|mem[27][8]~regout\);

-- Location: LC_X11_Y6_N2
\data_mem|Mux7~9\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux7~9_combout\ = (\mem_a~combout\(0) & ((\data_mem|Mux7~6_combout\ & ((\data_mem|Mux7~8\))) # (!\data_mem|Mux7~6_combout\ & (\data_mem|Mux7~1\)))) # (!\mem_a~combout\(0) & (((\data_mem|Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(0),
	datab => \data_mem|Mux7~1\,
	datac => \data_mem|Mux7~6_combout\,
	datad => \data_mem|Mux7~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux7~9_combout\);

-- Location: LC_X11_Y6_N6
\data_mem|Mux7~20\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux7~20_combout\ = ((\mem_a~combout\(4) & ((\data_mem|Mux7~9_combout\))) # (!\mem_a~combout\(4) & (\data_mem|Mux7~19_combout\)))

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
	datab => \mem_a~combout\(4),
	datac => \data_mem|Mux7~19_combout\,
	datad => \data_mem|Mux7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux7~20_combout\);

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d_in[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d_in(9),
	combout => \mem_d_in~combout\(9));

-- Location: LC_X5_Y6_N2
\data_mem|mem[4][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[4][9]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~30_combout\, \mem_d_in~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(9),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[4][9]~regout\);

-- Location: LC_X5_Y6_N8
\data_mem|mem[6][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux6~12\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((B1_mem[6][9]))) # (!\mem_a~combout\(1) & (\data_mem|mem[4][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \data_mem|mem[4][9]~regout\,
	datac => \mem_d_in~combout\(9),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux6~12\,
	regout => \data_mem|mem[6][9]~regout\);

-- Location: LC_X4_Y8_N7
\data_mem|mem[7][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[7][9]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~31_combout\, \mem_d_in~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(9),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[7][9]~regout\);

-- Location: LC_X4_Y8_N6
\data_mem|mem[5][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux6~13\ = (\data_mem|Mux6~12\ & ((\data_mem|mem[7][9]~regout\) # ((!\mem_a~combout\(0))))) # (!\data_mem|Mux6~12\ & (((B1_mem[5][9] & \mem_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux6~12\,
	datab => \data_mem|mem[7][9]~regout\,
	datac => \mem_d_in~combout\(9),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux6~13\,
	regout => \data_mem|mem[5][9]~regout\);

-- Location: LC_X6_Y6_N3
\data_mem|mem[3][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[3][9]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~35_combout\, \mem_d_in~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(9),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[3][9]~regout\);

-- Location: LC_X7_Y7_N7
\data_mem|mem[0][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[0][9]~regout\ = DFFEAS(((\mem_d_in~combout\(9))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~34_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_d_in~combout\(9),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[0][9]~regout\);

-- Location: LC_X8_Y6_N0
\data_mem|mem[1][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux6~14\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((B1_mem[1][9])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\data_mem|mem[0][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(9),
	datad => \data_mem|mem[0][9]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux6~14\,
	regout => \data_mem|mem[1][9]~regout\);

-- Location: LC_X8_Y6_N4
\data_mem|mem[2][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux6~15\ = (\mem_a~combout\(1) & ((\data_mem|Mux6~14\ & (\data_mem|mem[3][9]~regout\)) # (!\data_mem|Mux6~14\ & ((B1_mem[2][9]))))) # (!\mem_a~combout\(1) & (((\data_mem|Mux6~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[3][9]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(9),
	datad => \data_mem|Mux6~14\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux6~15\,
	regout => \data_mem|mem[2][9]~regout\);

-- Location: LC_X8_Y6_N1
\data_mem|Mux6~16\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux6~16_combout\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & (\data_mem|Mux6~13\)) # (!\mem_a~combout\(2) & ((\data_mem|Mux6~15\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \data_mem|Mux6~13\,
	datac => \data_mem|Mux6~15\,
	datad => \mem_a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux6~16_combout\);

-- Location: LC_X4_Y5_N7
\data_mem|mem[8][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[8][9]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~26_combout\, \mem_d_in~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(9),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[8][9]~regout\);

-- Location: LC_X4_Y5_N5
\data_mem|mem[9][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux6~10\ = (\mem_a~combout\(0) & (((B1_mem[9][9]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\data_mem|mem[8][9]~regout\ & ((!\mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \data_mem|mem[8][9]~regout\,
	datac => \mem_d_in~combout\(9),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux6~10\,
	regout => \data_mem|mem[9][9]~regout\);

-- Location: LC_X5_Y5_N2
\data_mem|mem[11][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[11][9]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~27_combout\, \mem_d_in~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(9),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[11][9]~regout\);

-- Location: LC_X5_Y5_N4
\data_mem|mem[10][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux6~11\ = (\data_mem|Mux6~10\ & ((\data_mem|mem[11][9]~regout\) # ((!\mem_a~combout\(1))))) # (!\data_mem|Mux6~10\ & (((B1_mem[10][9] & \mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux6~10\,
	datab => \data_mem|mem[11][9]~regout\,
	datac => \mem_d_in~combout\(9),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux6~11\,
	regout => \data_mem|mem[10][9]~regout\);

-- Location: LC_X14_Y9_N1
\data_mem|mem[12][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[12][9]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~38_combout\, \mem_d_in~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(9),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[12][9]~regout\);

-- Location: LC_X14_Y8_N6
\data_mem|mem[14][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux6~17\ = (\mem_a~combout\(1) & ((\mem_a~combout\(0)) # ((B1_mem[14][9])))) # (!\mem_a~combout\(1) & (!\mem_a~combout\(0) & ((\data_mem|mem[12][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(9),
	datad => \data_mem|mem[12][9]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux6~17\,
	regout => \data_mem|mem[14][9]~regout\);

-- Location: LC_X14_Y10_N8
\data_mem|mem[15][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[15][9]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~39_combout\, \mem_d_in~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(9),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[15][9]~regout\);

-- Location: LC_X14_Y8_N5
\data_mem|mem[13][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux6~18\ = (\data_mem|Mux6~17\ & (((\data_mem|mem[15][9]~regout\)) # (!\mem_a~combout\(0)))) # (!\data_mem|Mux6~17\ & (\mem_a~combout\(0) & (B1_mem[13][9])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux6~17\,
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(9),
	datad => \data_mem|mem[15][9]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux6~18\,
	regout => \data_mem|mem[13][9]~regout\);

-- Location: LC_X8_Y6_N5
\data_mem|Mux6~19\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux6~19_combout\ = (\mem_a~combout\(3) & ((\data_mem|Mux6~16_combout\ & ((\data_mem|Mux6~18\))) # (!\data_mem|Mux6~16_combout\ & (\data_mem|Mux6~11\)))) # (!\mem_a~combout\(3) & (\data_mem|Mux6~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \data_mem|Mux6~16_combout\,
	datac => \data_mem|Mux6~11\,
	datad => \data_mem|Mux6~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux6~19_combout\);

-- Location: LC_X3_Y6_N7
\data_mem|mem[30][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[30][9]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~7_combout\, \mem_d_in~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(9),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[30][9]~regout\);

-- Location: LC_X4_Y6_N2
\data_mem|mem[18][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[18][9]~regout\ = DFFEAS((((\mem_d_in~combout\(9)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~17_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(9),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[18][9]~regout\);

-- Location: LC_X4_Y6_N5
\data_mem|mem[22][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux6~0\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B1_mem[22][9]))) # (!\mem_a~combout\(2) & (\data_mem|mem[18][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \data_mem|mem[18][9]~regout\,
	datac => \mem_d_in~combout\(9),
	datad => \mem_a~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux6~0\,
	regout => \data_mem|mem[22][9]~regout\);

-- Location: LC_X3_Y6_N6
\data_mem|mem[26][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux6~1\ = (\mem_a~combout\(3) & ((\data_mem|Mux6~0\ & (\data_mem|mem[30][9]~regout\)) # (!\data_mem|Mux6~0\ & ((B1_mem[26][9]))))) # (!\mem_a~combout\(3) & (((\data_mem|Mux6~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \data_mem|mem[30][9]~regout\,
	datac => \mem_d_in~combout\(9),
	datad => \data_mem|Mux6~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux6~1\,
	regout => \data_mem|mem[26][9]~regout\);

-- Location: LC_X13_Y6_N3
\data_mem|mem[29][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[29][9]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~20_combout\, \mem_d_in~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(9),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[29][9]~regout\);

-- Location: LC_X12_Y8_N4
\data_mem|mem[17][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[17][9]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~13_combout\, \mem_d_in~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(9),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[17][9]~regout\);

-- Location: LC_X12_Y8_N7
\data_mem|mem[21][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux6~2\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B1_mem[21][9]))) # (!\mem_a~combout\(2) & (\data_mem|mem[17][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[17][9]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(9),
	datad => \mem_a~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux6~2\,
	regout => \data_mem|mem[21][9]~regout\);

-- Location: LC_X13_Y6_N1
\data_mem|mem[25][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux6~3\ = (\mem_a~combout\(3) & ((\data_mem|Mux6~2\ & (\data_mem|mem[29][9]~regout\)) # (!\data_mem|Mux6~2\ & ((B1_mem[25][9]))))) # (!\mem_a~combout\(3) & (((\data_mem|Mux6~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[29][9]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(9),
	datad => \data_mem|Mux6~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux6~3\,
	regout => \data_mem|mem[25][9]~regout\);

-- Location: LC_X6_Y9_N6
\data_mem|mem[16][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[16][9]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~18_combout\, \mem_d_in~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(9),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[16][9]~regout\);

-- Location: LC_X6_Y9_N5
\data_mem|mem[20][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux6~4\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B1_mem[20][9]))) # (!\mem_a~combout\(2) & (\data_mem|mem[16][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[16][9]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(9),
	datad => \mem_a~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux6~4\,
	regout => \data_mem|mem[20][9]~regout\);

-- Location: LC_X7_Y9_N8
\data_mem|mem[28][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[28][9]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~1_combout\, \mem_d_in~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(9),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[28][9]~regout\);

-- Location: LC_X7_Y9_N3
\data_mem|mem[24][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux6~5\ = (\data_mem|Mux6~4\ & (((\data_mem|mem[28][9]~regout\)) # (!\mem_a~combout\(3)))) # (!\data_mem|Mux6~4\ & (\mem_a~combout\(3) & (B1_mem[24][9])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux6~4\,
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(9),
	datad => \data_mem|mem[28][9]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux6~5\,
	regout => \data_mem|mem[24][9]~regout\);

-- Location: LC_X13_Y6_N5
\data_mem|Mux6~6\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux6~6_combout\ = (\mem_a~combout\(1) & (((\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & (\data_mem|Mux6~3\)) # (!\mem_a~combout\(0) & ((\data_mem|Mux6~5\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(1),
	datab => \data_mem|Mux6~3\,
	datac => \mem_a~combout\(0),
	datad => \data_mem|Mux6~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux6~6_combout\);

-- Location: LC_X16_Y5_N7
\data_mem|mem[31][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[31][9]~regout\ = DFFEAS((\mem_d_in~combout\(9)), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~23_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_d_in~combout\(9),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[31][9]~regout\);

-- Location: LC_X11_Y9_N9
\data_mem|mem[19][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[19][9]~regout\ = DFFEAS(((\mem_d_in~combout\(9))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~11_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_d_in~combout\(9),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[19][9]~regout\);

-- Location: LC_X15_Y6_N7
\data_mem|mem[23][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux6~7\ = (\mem_a~combout\(3) & (\mem_a~combout\(2))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & (B1_mem[23][9])) # (!\mem_a~combout\(2) & ((\data_mem|mem[19][9]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(9),
	datad => \data_mem|mem[19][9]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux6~7\,
	regout => \data_mem|mem[23][9]~regout\);

-- Location: LC_X15_Y6_N2
\data_mem|mem[27][9]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux6~8\ = (\data_mem|Mux6~7\ & ((\data_mem|mem[31][9]~regout\) # ((!\mem_a~combout\(3))))) # (!\data_mem|Mux6~7\ & (((B1_mem[27][9] & \mem_a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[31][9]~regout\,
	datab => \data_mem|Mux6~7\,
	datac => \mem_d_in~combout\(9),
	datad => \mem_a~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux6~8\,
	regout => \data_mem|mem[27][9]~regout\);

-- Location: LC_X13_Y6_N2
\data_mem|Mux6~9\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux6~9_combout\ = (\mem_a~combout\(1) & ((\data_mem|Mux6~6_combout\ & ((\data_mem|Mux6~8\))) # (!\data_mem|Mux6~6_combout\ & (\data_mem|Mux6~1\)))) # (!\mem_a~combout\(1) & (((\data_mem|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(1),
	datab => \data_mem|Mux6~1\,
	datac => \data_mem|Mux6~6_combout\,
	datad => \data_mem|Mux6~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux6~9_combout\);

-- Location: LC_X8_Y6_N2
\data_mem|Mux6~20\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux6~20_combout\ = (\mem_a~combout\(4) & (((\data_mem|Mux6~9_combout\)))) # (!\mem_a~combout\(4) & (\data_mem|Mux6~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux6~19_combout\,
	datab => \mem_a~combout\(4),
	datac => \data_mem|Mux6~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux6~20_combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d_in[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d_in(10),
	combout => \mem_d_in~combout\(10));

-- Location: LC_X13_Y9_N6
\data_mem|mem[15][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[15][10]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~39_combout\, \mem_d_in~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(10),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[15][10]~regout\);

-- Location: LC_X14_Y9_N3
\data_mem|mem[12][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[12][10]~regout\ = DFFEAS((((\mem_d_in~combout\(10)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~38_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(10),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[12][10]~regout\);

-- Location: LC_X15_Y9_N2
\data_mem|mem[13][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux5~17\ = (\mem_a~combout\(0) & (((B1_mem[13][10]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\data_mem|mem[12][10]~regout\ & ((!\mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[12][10]~regout\,
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(10),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux5~17\,
	regout => \data_mem|mem[13][10]~regout\);

-- Location: LC_X13_Y9_N3
\data_mem|mem[14][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux5~18\ = (\mem_a~combout\(1) & ((\data_mem|Mux5~17\ & (\data_mem|mem[15][10]~regout\)) # (!\data_mem|Mux5~17\ & ((B1_mem[14][10]))))) # (!\mem_a~combout\(1) & (((\data_mem|Mux5~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[15][10]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(10),
	datad => \data_mem|Mux5~17\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux5~18\,
	regout => \data_mem|mem[14][10]~regout\);

-- Location: LC_X3_Y4_N6
\data_mem|mem[8][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[8][10]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~26_combout\, \mem_d_in~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(10),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[8][10]~regout\);

-- Location: LC_X3_Y4_N4
\data_mem|mem[10][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux5~10\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((B1_mem[10][10]))) # (!\mem_a~combout\(1) & (\data_mem|mem[8][10]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[8][10]~regout\,
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(10),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux5~10\,
	regout => \data_mem|mem[10][10]~regout\);

-- Location: LC_X2_Y6_N4
\data_mem|mem[11][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[11][10]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~27_combout\, \mem_d_in~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(10),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[11][10]~regout\);

-- Location: LC_X2_Y6_N6
\data_mem|mem[9][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux5~11\ = (\data_mem|Mux5~10\ & ((\data_mem|mem[11][10]~regout\) # ((!\mem_a~combout\(0))))) # (!\data_mem|Mux5~10\ & (((B1_mem[9][10] & \mem_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux5~10\,
	datab => \data_mem|mem[11][10]~regout\,
	datac => \mem_d_in~combout\(10),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux5~11\,
	regout => \data_mem|mem[9][10]~regout\);

-- Location: LC_X8_Y4_N6
\data_mem|mem[4][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[4][10]~regout\ = DFFEAS(((\mem_d_in~combout\(10))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~30_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_d_in~combout\(10),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[4][10]~regout\);

-- Location: LC_X10_Y5_N4
\data_mem|mem[5][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux5~12\ = (\mem_a~combout\(0) & (((B1_mem[5][10]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\data_mem|mem[4][10]~regout\ & ((!\mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \data_mem|mem[4][10]~regout\,
	datac => \mem_d_in~combout\(10),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux5~12\,
	regout => \data_mem|mem[5][10]~regout\);

-- Location: LC_X8_Y5_N2
\data_mem|mem[7][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[7][10]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~31_combout\, \mem_d_in~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(10),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[7][10]~regout\);

-- Location: LC_X8_Y5_N6
\data_mem|mem[6][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux5~13\ = (\data_mem|Mux5~12\ & ((\data_mem|mem[7][10]~regout\) # ((!\mem_a~combout\(1))))) # (!\data_mem|Mux5~12\ & (((B1_mem[6][10] & \mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux5~12\,
	datab => \data_mem|mem[7][10]~regout\,
	datac => \mem_d_in~combout\(10),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux5~13\,
	regout => \data_mem|mem[6][10]~regout\);

-- Location: LC_X6_Y6_N1
\data_mem|mem[3][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[3][10]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~35_combout\, \mem_d_in~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(10),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[3][10]~regout\);

-- Location: LC_X7_Y7_N0
\data_mem|mem[0][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[0][10]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~34_combout\, \mem_d_in~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(10),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[0][10]~regout\);

-- Location: LC_X8_Y6_N3
\data_mem|mem[2][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux5~14\ = (\mem_a~combout\(0) & (\mem_a~combout\(1))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & (B1_mem[2][10])) # (!\mem_a~combout\(1) & ((\data_mem|mem[0][10]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(10),
	datad => \data_mem|mem[0][10]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux5~14\,
	regout => \data_mem|mem[2][10]~regout\);

-- Location: LC_X8_Y6_N8
\data_mem|mem[1][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux5~15\ = (\mem_a~combout\(0) & ((\data_mem|Mux5~14\ & (\data_mem|mem[3][10]~regout\)) # (!\data_mem|Mux5~14\ & ((B1_mem[1][10]))))) # (!\mem_a~combout\(0) & (((\data_mem|Mux5~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \data_mem|mem[3][10]~regout\,
	datac => \mem_d_in~combout\(10),
	datad => \data_mem|Mux5~14\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux5~15\,
	regout => \data_mem|mem[1][10]~regout\);

-- Location: LC_X8_Y6_N6
\data_mem|Mux5~16\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux5~16_combout\ = (\mem_a~combout\(3) & (\mem_a~combout\(2))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & (\data_mem|Mux5~13\)) # (!\mem_a~combout\(2) & ((\data_mem|Mux5~15\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(2),
	datac => \data_mem|Mux5~13\,
	datad => \data_mem|Mux5~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux5~16_combout\);

-- Location: LC_X8_Y6_N7
\data_mem|Mux5~19\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux5~19_combout\ = (\mem_a~combout\(3) & ((\data_mem|Mux5~16_combout\ & (\data_mem|Mux5~18\)) # (!\data_mem|Mux5~16_combout\ & ((\data_mem|Mux5~11\))))) # (!\mem_a~combout\(3) & (((\data_mem|Mux5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \data_mem|Mux5~18\,
	datac => \data_mem|Mux5~11\,
	datad => \data_mem|Mux5~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux5~19_combout\);

-- Location: LC_X12_Y8_N2
\data_mem|mem[17][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[17][10]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~13_combout\, \mem_d_in~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(10),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[17][10]~regout\);

-- Location: LC_X12_Y8_N0
\data_mem|mem[21][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux5~0\ = (\mem_a~combout\(3) & (\mem_a~combout\(2))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & (B1_mem[21][10])) # (!\mem_a~combout\(2) & ((\data_mem|mem[17][10]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(10),
	datad => \data_mem|mem[17][10]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux5~0\,
	regout => \data_mem|mem[21][10]~regout\);

-- Location: LC_X13_Y6_N9
\data_mem|mem[29][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[29][10]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~20_combout\, \mem_d_in~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(10),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[29][10]~regout\);

-- Location: LC_X13_Y6_N0
\data_mem|mem[25][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux5~1\ = (\data_mem|Mux5~0\ & (((\data_mem|mem[29][10]~regout\)) # (!\mem_a~combout\(3)))) # (!\data_mem|Mux5~0\ & (\mem_a~combout\(3) & (B1_mem[25][10])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux5~0\,
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(10),
	datad => \data_mem|mem[29][10]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux5~1\,
	regout => \data_mem|mem[25][10]~regout\);

-- Location: LC_X2_Y7_N9
\data_mem|mem[18][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[18][10]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~17_combout\, \mem_d_in~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(10),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[18][10]~regout\);

-- Location: LC_X2_Y7_N0
\data_mem|mem[22][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux5~2\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B1_mem[22][10]))) # (!\mem_a~combout\(2) & (\data_mem|mem[18][10]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \data_mem|mem[18][10]~regout\,
	datac => \mem_d_in~combout\(10),
	datad => \mem_a~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux5~2\,
	regout => \data_mem|mem[22][10]~regout\);

-- Location: LC_X3_Y6_N8
\data_mem|mem[30][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[30][10]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~7_combout\, \mem_d_in~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(10),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[30][10]~regout\);

-- Location: LC_X3_Y6_N5
\data_mem|mem[26][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux5~3\ = (\mem_a~combout\(3) & ((\data_mem|Mux5~2\ & ((\data_mem|mem[30][10]~regout\))) # (!\data_mem|Mux5~2\ & (B1_mem[26][10])))) # (!\mem_a~combout\(3) & (\data_mem|Mux5~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \data_mem|Mux5~2\,
	datac => \mem_d_in~combout\(10),
	datad => \data_mem|mem[30][10]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux5~3\,
	regout => \data_mem|mem[26][10]~regout\);

-- Location: LC_X13_Y3_N2
\data_mem|mem[28][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[28][10]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~1_combout\, \mem_d_in~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(10),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[28][10]~regout\);

-- Location: LC_X13_Y5_N9
\data_mem|mem[16][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[16][10]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~18_combout\, \mem_d_in~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(10),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[16][10]~regout\);

-- Location: LC_X13_Y5_N4
\data_mem|mem[20][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux5~4\ = (\mem_a~combout\(3) & (\mem_a~combout\(2))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & (B1_mem[20][10])) # (!\mem_a~combout\(2) & ((\data_mem|mem[16][10]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(10),
	datad => \data_mem|mem[16][10]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux5~4\,
	regout => \data_mem|mem[20][10]~regout\);

-- Location: LC_X14_Y5_N8
\data_mem|mem[24][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux5~5\ = (\mem_a~combout\(3) & ((\data_mem|Mux5~4\ & (\data_mem|mem[28][10]~regout\)) # (!\data_mem|Mux5~4\ & ((B1_mem[24][10]))))) # (!\mem_a~combout\(3) & (((\data_mem|Mux5~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[28][10]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(10),
	datad => \data_mem|Mux5~4\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux5~5\,
	regout => \data_mem|mem[24][10]~regout\);

-- Location: LC_X14_Y5_N0
\data_mem|Mux5~6\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux5~6_combout\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & (\data_mem|Mux5~3\)) # (!\mem_a~combout\(1) & ((\data_mem|Mux5~5\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux5~3\,
	datab => \mem_a~combout\(0),
	datac => \mem_a~combout\(1),
	datad => \data_mem|Mux5~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux5~6_combout\);

-- Location: LC_X15_Y5_N0
\data_mem|mem[31][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[31][10]~regout\ = DFFEAS((((\mem_d_in~combout\(10)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~23_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(10),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[31][10]~regout\);

-- Location: LC_X14_Y5_N6
\data_mem|mem[19][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[19][10]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~11_combout\, \mem_d_in~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(10),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[19][10]~regout\);

-- Location: LC_X15_Y6_N3
\data_mem|mem[23][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux5~7\ = (\mem_a~combout\(2) & (((B1_mem[23][10]) # (\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & (\data_mem|mem[19][10]~regout\ & ((!\mem_a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[19][10]~regout\,
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(10),
	datad => \mem_a~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux5~7\,
	regout => \data_mem|mem[23][10]~regout\);

-- Location: LC_X15_Y6_N1
\data_mem|mem[27][10]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux5~8\ = (\mem_a~combout\(3) & ((\data_mem|Mux5~7\ & (\data_mem|mem[31][10]~regout\)) # (!\data_mem|Mux5~7\ & ((B1_mem[27][10]))))) # (!\mem_a~combout\(3) & (((\data_mem|Mux5~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[31][10]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(10),
	datad => \data_mem|Mux5~7\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux5~8\,
	regout => \data_mem|mem[27][10]~regout\);

-- Location: LC_X14_Y6_N6
\data_mem|Mux5~9\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux5~9_combout\ = (\mem_a~combout\(0) & ((\data_mem|Mux5~6_combout\ & ((\data_mem|Mux5~8\))) # (!\data_mem|Mux5~6_combout\ & (\data_mem|Mux5~1\)))) # (!\mem_a~combout\(0) & (((\data_mem|Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux5~1\,
	datab => \mem_a~combout\(0),
	datac => \data_mem|Mux5~6_combout\,
	datad => \data_mem|Mux5~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux5~9_combout\);

-- Location: LC_X8_Y6_N9
\data_mem|Mux5~20\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux5~20_combout\ = ((\mem_a~combout\(4) & ((\data_mem|Mux5~9_combout\))) # (!\mem_a~combout\(4) & (\data_mem|Mux5~19_combout\)))

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
	datab => \data_mem|Mux5~19_combout\,
	datac => \mem_a~combout\(4),
	datad => \data_mem|Mux5~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux5~20_combout\);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d_in[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d_in(11),
	combout => \mem_d_in~combout\(11));

-- Location: LC_X4_Y6_N9
\data_mem|mem[18][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[18][11]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~17_combout\, \mem_d_in~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(11),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[18][11]~regout\);

-- Location: LC_X4_Y6_N3
\data_mem|mem[22][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux4~0\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B1_mem[22][11]))) # (!\mem_a~combout\(2) & (\data_mem|mem[18][11]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \data_mem|mem[18][11]~regout\,
	datac => \mem_d_in~combout\(11),
	datad => \mem_a~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux4~0\,
	regout => \data_mem|mem[22][11]~regout\);

-- Location: LC_X6_Y7_N0
\data_mem|mem[30][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[30][11]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~7_combout\, \mem_d_in~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(11),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[30][11]~regout\);

-- Location: LC_X11_Y8_N5
\data_mem|mem[26][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux4~1\ = (\data_mem|Mux4~0\ & (((\data_mem|mem[30][11]~regout\)) # (!\mem_a~combout\(3)))) # (!\data_mem|Mux4~0\ & (\mem_a~combout\(3) & (B1_mem[26][11])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux4~0\,
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(11),
	datad => \data_mem|mem[30][11]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux4~1\,
	regout => \data_mem|mem[26][11]~regout\);

-- Location: LC_X15_Y5_N2
\data_mem|mem[31][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[31][11]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~23_combout\, \mem_d_in~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(11),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[31][11]~regout\);

-- Location: LC_X14_Y5_N5
\data_mem|mem[19][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[19][11]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~11_combout\, \mem_d_in~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(11),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[19][11]~regout\);

-- Location: LC_X15_Y6_N9
\data_mem|mem[23][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux4~7\ = (\mem_a~combout\(2) & (((B1_mem[23][11]) # (\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & (\data_mem|mem[19][11]~regout\ & ((!\mem_a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[19][11]~regout\,
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(11),
	datad => \mem_a~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux4~7\,
	regout => \data_mem|mem[23][11]~regout\);

-- Location: LC_X15_Y6_N0
\data_mem|mem[27][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux4~8\ = (\mem_a~combout\(3) & ((\data_mem|Mux4~7\ & (\data_mem|mem[31][11]~regout\)) # (!\data_mem|Mux4~7\ & ((B1_mem[27][11]))))) # (!\mem_a~combout\(3) & (((\data_mem|Mux4~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[31][11]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(11),
	datad => \data_mem|Mux4~7\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux4~8\,
	regout => \data_mem|mem[27][11]~regout\);

-- Location: LC_X12_Y8_N1
\data_mem|mem[17][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[17][11]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~13_combout\, \mem_d_in~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(11),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[17][11]~regout\);

-- Location: LC_X12_Y8_N5
\data_mem|mem[21][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux4~2\ = (\mem_a~combout\(3) & (\mem_a~combout\(2))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & (B1_mem[21][11])) # (!\mem_a~combout\(2) & ((\data_mem|mem[17][11]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(11),
	datad => \data_mem|mem[17][11]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux4~2\,
	regout => \data_mem|mem[21][11]~regout\);

-- Location: LC_X12_Y9_N8
\data_mem|mem[29][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[29][11]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~20_combout\, \mem_d_in~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(11),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[29][11]~regout\);

-- Location: LC_X12_Y9_N4
\data_mem|mem[25][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux4~3\ = (\mem_a~combout\(3) & ((\data_mem|Mux4~2\ & ((\data_mem|mem[29][11]~regout\))) # (!\data_mem|Mux4~2\ & (B1_mem[25][11])))) # (!\mem_a~combout\(3) & (\data_mem|Mux4~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \data_mem|Mux4~2\,
	datac => \mem_d_in~combout\(11),
	datad => \data_mem|mem[29][11]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux4~3\,
	regout => \data_mem|mem[25][11]~regout\);

-- Location: LC_X13_Y3_N6
\data_mem|mem[28][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[28][11]~regout\ = DFFEAS((((\mem_d_in~combout\(11)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(11),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[28][11]~regout\);

-- Location: LC_X13_Y5_N8
\data_mem|mem[16][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[16][11]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~18_combout\, \mem_d_in~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(11),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[16][11]~regout\);

-- Location: LC_X13_Y5_N0
\data_mem|mem[20][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux4~4\ = (\mem_a~combout\(3) & (\mem_a~combout\(2))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & (B1_mem[20][11])) # (!\mem_a~combout\(2) & ((\data_mem|mem[16][11]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(11),
	datad => \data_mem|mem[16][11]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux4~4\,
	regout => \data_mem|mem[20][11]~regout\);

-- Location: LC_X14_Y5_N2
\data_mem|mem[24][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux4~5\ = (\mem_a~combout\(3) & ((\data_mem|Mux4~4\ & (\data_mem|mem[28][11]~regout\)) # (!\data_mem|Mux4~4\ & ((B1_mem[24][11]))))) # (!\mem_a~combout\(3) & (((\data_mem|Mux4~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[28][11]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(11),
	datad => \data_mem|Mux4~4\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux4~5\,
	regout => \data_mem|mem[24][11]~regout\);

-- Location: LC_X12_Y9_N5
\data_mem|Mux4~6\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux4~6_combout\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((\data_mem|Mux4~3\)))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\data_mem|Mux4~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \data_mem|Mux4~3\,
	datad => \data_mem|Mux4~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux4~6_combout\);

-- Location: LC_X12_Y9_N2
\data_mem|Mux4~9\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux4~9_combout\ = (\data_mem|Mux4~6_combout\ & (((\data_mem|Mux4~8\) # (!\mem_a~combout\(1))))) # (!\data_mem|Mux4~6_combout\ & (\data_mem|Mux4~1\ & ((\mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux4~1\,
	datab => \data_mem|Mux4~8\,
	datac => \data_mem|Mux4~6_combout\,
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux4~9_combout\);

-- Location: LC_X14_Y10_N9
\data_mem|mem[15][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[15][11]~regout\ = DFFEAS((((\mem_d_in~combout\(11)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~39_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(11),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[15][11]~regout\);

-- Location: LC_X14_Y9_N9
\data_mem|mem[12][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[12][11]~regout\ = DFFEAS((((\mem_d_in~combout\(11)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~38_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(11),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[12][11]~regout\);

-- Location: LC_X15_Y9_N5
\data_mem|mem[14][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux4~17\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((B1_mem[14][11]))) # (!\mem_a~combout\(1) & (\data_mem|mem[12][11]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[12][11]~regout\,
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(11),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux4~17\,
	regout => \data_mem|mem[14][11]~regout\);

-- Location: LC_X15_Y9_N6
\data_mem|mem[13][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux4~18\ = (\mem_a~combout\(0) & ((\data_mem|Mux4~17\ & (\data_mem|mem[15][11]~regout\)) # (!\data_mem|Mux4~17\ & ((B1_mem[13][11]))))) # (!\mem_a~combout\(0) & (((\data_mem|Mux4~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[15][11]~regout\,
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(11),
	datad => \data_mem|Mux4~17\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux4~18\,
	regout => \data_mem|mem[13][11]~regout\);

-- Location: LC_X5_Y5_N8
\data_mem|mem[11][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[11][11]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~27_combout\, \mem_d_in~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(11),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[11][11]~regout\);

-- Location: LC_X4_Y5_N2
\data_mem|mem[8][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[8][11]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~26_combout\, \mem_d_in~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(11),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[8][11]~regout\);

-- Location: LC_X4_Y5_N6
\data_mem|mem[9][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux4~10\ = (\mem_a~combout\(0) & (((B1_mem[9][11]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\data_mem|mem[8][11]~regout\ & ((!\mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \data_mem|mem[8][11]~regout\,
	datac => \mem_d_in~combout\(11),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux4~10\,
	regout => \data_mem|mem[9][11]~regout\);

-- Location: LC_X5_Y5_N9
\data_mem|mem[10][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux4~11\ = (\data_mem|Mux4~10\ & ((\data_mem|mem[11][11]~regout\) # ((!\mem_a~combout\(1))))) # (!\data_mem|Mux4~10\ & (((B1_mem[10][11] & \mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[11][11]~regout\,
	datab => \data_mem|Mux4~10\,
	datac => \mem_d_in~combout\(11),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux4~11\,
	regout => \data_mem|mem[10][11]~regout\);

-- Location: LC_X10_Y6_N7
\data_mem|mem[3][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[3][11]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~35_combout\, \mem_d_in~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(11),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[3][11]~regout\);

-- Location: LC_X12_Y4_N0
\data_mem|mem[0][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[0][11]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~34_combout\, \mem_d_in~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(11),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[0][11]~regout\);

-- Location: LC_X10_Y6_N6
\data_mem|mem[1][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux4~14\ = (\mem_a~combout\(0) & (((B1_mem[1][11]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\data_mem|mem[0][11]~regout\ & ((!\mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[0][11]~regout\,
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(11),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux4~14\,
	regout => \data_mem|mem[1][11]~regout\);

-- Location: LC_X12_Y4_N4
\data_mem|mem[2][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux4~15\ = (\mem_a~combout\(1) & ((\data_mem|Mux4~14\ & (\data_mem|mem[3][11]~regout\)) # (!\data_mem|Mux4~14\ & ((B1_mem[2][11]))))) # (!\mem_a~combout\(1) & (((\data_mem|Mux4~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \data_mem|mem[3][11]~regout\,
	datac => \mem_d_in~combout\(11),
	datad => \data_mem|Mux4~14\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux4~15\,
	regout => \data_mem|mem[2][11]~regout\);

-- Location: LC_X5_Y6_N7
\data_mem|mem[4][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[4][11]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~30_combout\, \mem_d_in~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(11),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[4][11]~regout\);

-- Location: LC_X5_Y6_N0
\data_mem|mem[6][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux4~12\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((B1_mem[6][11]))) # (!\mem_a~combout\(1) & (\data_mem|mem[4][11]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \data_mem|mem[4][11]~regout\,
	datac => \mem_d_in~combout\(11),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux4~12\,
	regout => \data_mem|mem[6][11]~regout\);

-- Location: LC_X13_Y4_N8
\data_mem|mem[7][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[7][11]~regout\ = DFFEAS((((\mem_d_in~combout\(11)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~31_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(11),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[7][11]~regout\);

-- Location: LC_X13_Y4_N3
\data_mem|mem[5][11]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux4~13\ = (\data_mem|Mux4~12\ & (((\data_mem|mem[7][11]~regout\)) # (!\mem_a~combout\(0)))) # (!\data_mem|Mux4~12\ & (\mem_a~combout\(0) & (B1_mem[5][11])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux4~12\,
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(11),
	datad => \data_mem|mem[7][11]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux4~13\,
	regout => \data_mem|mem[5][11]~regout\);

-- Location: LC_X13_Y4_N4
\data_mem|Mux4~16\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux4~16_combout\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((\data_mem|Mux4~13\))) # (!\mem_a~combout\(2) & (\data_mem|Mux4~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \data_mem|Mux4~15\,
	datac => \mem_a~combout\(2),
	datad => \data_mem|Mux4~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux4~16_combout\);

-- Location: LC_X13_Y4_N5
\data_mem|Mux4~19\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux4~19_combout\ = (\mem_a~combout\(3) & ((\data_mem|Mux4~16_combout\ & (\data_mem|Mux4~18\)) # (!\data_mem|Mux4~16_combout\ & ((\data_mem|Mux4~11\))))) # (!\mem_a~combout\(3) & (((\data_mem|Mux4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \data_mem|Mux4~18\,
	datac => \data_mem|Mux4~11\,
	datad => \data_mem|Mux4~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux4~19_combout\);

-- Location: LC_X13_Y4_N6
\data_mem|Mux4~20\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux4~20_combout\ = (\mem_a~combout\(4) & (\data_mem|Mux4~9_combout\)) # (!\mem_a~combout\(4) & (((\data_mem|Mux4~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(4),
	datab => \data_mem|Mux4~9_combout\,
	datad => \data_mem|Mux4~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux4~20_combout\);

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d_in[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d_in(12),
	combout => \mem_d_in~combout\(12));

-- Location: LC_X8_Y4_N1
\data_mem|mem[4][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[4][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~30_combout\, \mem_d_in~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(12),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[4][12]~regout\);

-- Location: LC_X8_Y4_N2
\data_mem|mem[5][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux3~10\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((B1_mem[5][12])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\data_mem|mem[4][12]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(12),
	datad => \data_mem|mem[4][12]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux3~10\,
	regout => \data_mem|mem[5][12]~regout\);

-- Location: LC_X8_Y5_N9
\data_mem|mem[7][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[7][12]~regout\ = DFFEAS((((\mem_d_in~combout\(12)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~31_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(12),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[7][12]~regout\);

-- Location: LC_X8_Y5_N7
\data_mem|mem[6][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux3~11\ = (\data_mem|Mux3~10\ & ((\data_mem|mem[7][12]~regout\) # ((!\mem_a~combout\(1))))) # (!\data_mem|Mux3~10\ & (((B1_mem[6][12] & \mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux3~10\,
	datab => \data_mem|mem[7][12]~regout\,
	datac => \mem_d_in~combout\(12),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux3~11\,
	regout => \data_mem|mem[6][12]~regout\);

-- Location: LC_X3_Y5_N8
\data_mem|mem[11][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[11][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~27_combout\, \mem_d_in~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(12),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[11][12]~regout\);

-- Location: LC_X3_Y4_N5
\data_mem|mem[8][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[8][12]~regout\ = DFFEAS((((\mem_d_in~combout\(12)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~26_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(12),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[8][12]~regout\);

-- Location: LC_X3_Y4_N0
\data_mem|mem[10][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux3~12\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((B1_mem[10][12]))) # (!\mem_a~combout\(1) & (\data_mem|mem[8][12]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[8][12]~regout\,
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(12),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux3~12\,
	regout => \data_mem|mem[10][12]~regout\);

-- Location: LC_X3_Y5_N2
\data_mem|mem[9][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux3~13\ = (\mem_a~combout\(0) & ((\data_mem|Mux3~12\ & (\data_mem|mem[11][12]~regout\)) # (!\data_mem|Mux3~12\ & ((B1_mem[9][12]))))) # (!\mem_a~combout\(0) & (((\data_mem|Mux3~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[11][12]~regout\,
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(12),
	datad => \data_mem|Mux3~12\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux3~13\,
	regout => \data_mem|mem[9][12]~regout\);

-- Location: LC_X9_Y5_N6
\data_mem|mem[3][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[3][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~35_combout\, \mem_d_in~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(12),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[3][12]~regout\);

-- Location: LC_X12_Y4_N1
\data_mem|mem[0][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[0][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~34_combout\, \mem_d_in~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(12),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[0][12]~regout\);

-- Location: LC_X12_Y4_N6
\data_mem|mem[2][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux3~14\ = (\mem_a~combout\(1) & ((\mem_a~combout\(0)) # ((B1_mem[2][12])))) # (!\mem_a~combout\(1) & (!\mem_a~combout\(0) & ((\data_mem|mem[0][12]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(12),
	datad => \data_mem|mem[0][12]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux3~14\,
	regout => \data_mem|mem[2][12]~regout\);

-- Location: LC_X9_Y5_N4
\data_mem|mem[1][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux3~15\ = (\mem_a~combout\(0) & ((\data_mem|Mux3~14\ & (\data_mem|mem[3][12]~regout\)) # (!\data_mem|Mux3~14\ & ((B1_mem[1][12]))))) # (!\mem_a~combout\(0) & (((\data_mem|Mux3~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[3][12]~regout\,
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(12),
	datad => \data_mem|Mux3~14\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux3~15\,
	regout => \data_mem|mem[1][12]~regout\);

-- Location: LC_X3_Y5_N7
\data_mem|Mux3~16\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux3~16_combout\ = (\mem_a~combout\(2) & (((\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & (\data_mem|Mux3~13\)) # (!\mem_a~combout\(3) & ((\data_mem|Mux3~15\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(2),
	datab => \data_mem|Mux3~13\,
	datac => \data_mem|Mux3~15\,
	datad => \mem_a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux3~16_combout\);

-- Location: LC_X14_Y9_N6
\data_mem|mem[12][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[12][12]~regout\ = DFFEAS(((\mem_d_in~combout\(12))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~38_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_d_in~combout\(12),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[12][12]~regout\);

-- Location: LC_X12_Y10_N9
\data_mem|mem[13][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux3~17\ = (\mem_a~combout\(1) & (((\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & ((B1_mem[13][12]))) # (!\mem_a~combout\(0) & (\data_mem|mem[12][12]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \data_mem|mem[12][12]~regout\,
	datac => \mem_d_in~combout\(12),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux3~17\,
	regout => \data_mem|mem[13][12]~regout\);

-- Location: LC_X14_Y10_N2
\data_mem|mem[15][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[15][12]~regout\ = DFFEAS((((\mem_d_in~combout\(12)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~39_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(12),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[15][12]~regout\);

-- Location: LC_X12_Y10_N8
\data_mem|mem[14][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux3~18\ = (\mem_a~combout\(1) & ((\data_mem|Mux3~17\ & ((\data_mem|mem[15][12]~regout\))) # (!\data_mem|Mux3~17\ & (B1_mem[14][12])))) # (!\mem_a~combout\(1) & (\data_mem|Mux3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \data_mem|Mux3~17\,
	datac => \mem_d_in~combout\(12),
	datad => \data_mem|mem[15][12]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux3~18\,
	regout => \data_mem|mem[14][12]~regout\);

-- Location: LC_X3_Y5_N9
\data_mem|Mux3~19\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux3~19_combout\ = (\mem_a~combout\(2) & ((\data_mem|Mux3~16_combout\ & ((\data_mem|Mux3~18\))) # (!\data_mem|Mux3~16_combout\ & (\data_mem|Mux3~11\)))) # (!\mem_a~combout\(2) & (((\data_mem|Mux3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(2),
	datab => \data_mem|Mux3~11\,
	datac => \data_mem|Mux3~16_combout\,
	datad => \data_mem|Mux3~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux3~19_combout\);

-- Location: LC_X9_Y9_N5
\data_mem|mem[29][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[29][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~20_combout\, \mem_d_in~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(12),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[29][12]~regout\);

-- Location: LC_X9_Y10_N9
\data_mem|mem[17][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[17][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~13_combout\, \mem_d_in~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(12),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[17][12]~regout\);

-- Location: LC_X9_Y10_N7
\data_mem|mem[25][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux3~0\ = (\mem_a~combout\(2) & (\mem_a~combout\(3))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & (B1_mem[25][12])) # (!\mem_a~combout\(3) & ((\data_mem|mem[17][12]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(12),
	datad => \data_mem|mem[17][12]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux3~0\,
	regout => \data_mem|mem[25][12]~regout\);

-- Location: LC_X9_Y9_N4
\data_mem|mem[21][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux3~1\ = (\mem_a~combout\(2) & ((\data_mem|Mux3~0\ & (\data_mem|mem[29][12]~regout\)) # (!\data_mem|Mux3~0\ & ((B1_mem[21][12]))))) # (!\mem_a~combout\(2) & (((\data_mem|Mux3~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[29][12]~regout\,
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(12),
	datad => \data_mem|Mux3~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux3~1\,
	regout => \data_mem|mem[21][12]~regout\);

-- Location: LC_X6_Y5_N2
\data_mem|mem[28][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[28][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~1_combout\, \mem_d_in~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(12),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[28][12]~regout\);

-- Location: LC_X11_Y4_N2
\data_mem|mem[16][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[16][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~18_combout\, \mem_d_in~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(12),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[16][12]~regout\);

-- Location: LC_X7_Y4_N0
\data_mem|mem[20][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux3~4\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((B1_mem[20][12])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\data_mem|mem[16][12]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(12),
	datad => \data_mem|mem[16][12]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux3~4\,
	regout => \data_mem|mem[20][12]~regout\);

-- Location: LC_X7_Y4_N9
\data_mem|mem[24][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux3~5\ = (\mem_a~combout\(3) & ((\data_mem|Mux3~4\ & (\data_mem|mem[28][12]~regout\)) # (!\data_mem|Mux3~4\ & ((B1_mem[24][12]))))) # (!\mem_a~combout\(3) & (((\data_mem|Mux3~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[28][12]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(12),
	datad => \data_mem|Mux3~4\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux3~5\,
	regout => \data_mem|mem[24][12]~regout\);

-- Location: LC_X3_Y6_N9
\data_mem|mem[30][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[30][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~7_combout\, \mem_d_in~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(12),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[30][12]~regout\);

-- Location: LC_X4_Y6_N1
\data_mem|mem[18][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[18][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~17_combout\, \mem_d_in~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(12),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[18][12]~regout\);

-- Location: LC_X4_Y6_N4
\data_mem|mem[22][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux3~2\ = (\mem_a~combout\(3) & (\mem_a~combout\(2))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & (B1_mem[22][12])) # (!\mem_a~combout\(2) & ((\data_mem|mem[18][12]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(12),
	datad => \data_mem|mem[18][12]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux3~2\,
	regout => \data_mem|mem[22][12]~regout\);

-- Location: LC_X3_Y6_N3
\data_mem|mem[26][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux3~3\ = (\mem_a~combout\(3) & ((\data_mem|Mux3~2\ & (\data_mem|mem[30][12]~regout\)) # (!\data_mem|Mux3~2\ & ((B1_mem[26][12]))))) # (!\mem_a~combout\(3) & (((\data_mem|Mux3~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \data_mem|mem[30][12]~regout\,
	datac => \mem_d_in~combout\(12),
	datad => \data_mem|Mux3~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux3~3\,
	regout => \data_mem|mem[26][12]~regout\);

-- Location: LC_X3_Y5_N4
\data_mem|Mux3~6\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux3~6_combout\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((\data_mem|Mux3~3\))) # (!\mem_a~combout\(1) & (\data_mem|Mux3~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux3~5\,
	datab => \mem_a~combout\(0),
	datac => \data_mem|Mux3~3\,
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux3~6_combout\);

-- Location: LC_X11_Y9_N4
\data_mem|mem[19][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[19][12]~regout\ = DFFEAS(((\mem_d_in~combout\(12))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~11_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_d_in~combout\(12),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[19][12]~regout\);

-- Location: LC_X11_Y9_N8
\data_mem|mem[27][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux3~7\ = (\mem_a~combout\(2) & (((\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & ((B1_mem[27][12]))) # (!\mem_a~combout\(3) & (\data_mem|mem[19][12]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[19][12]~regout\,
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(12),
	datad => \mem_a~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux3~7\,
	regout => \data_mem|mem[27][12]~regout\);

-- Location: LC_X11_Y10_N3
\data_mem|mem[31][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[31][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~23_combout\, \mem_d_in~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(12),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[31][12]~regout\);

-- Location: LC_X11_Y10_N5
\data_mem|mem[23][12]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux3~8\ = (\data_mem|Mux3~7\ & (((\data_mem|mem[31][12]~regout\)) # (!\mem_a~combout\(2)))) # (!\data_mem|Mux3~7\ & (\mem_a~combout\(2) & (B1_mem[23][12])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux3~7\,
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(12),
	datad => \data_mem|mem[31][12]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux3~8\,
	regout => \data_mem|mem[23][12]~regout\);

-- Location: LC_X3_Y5_N6
\data_mem|Mux3~9\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux3~9_combout\ = (\mem_a~combout\(0) & ((\data_mem|Mux3~6_combout\ & ((\data_mem|Mux3~8\))) # (!\data_mem|Mux3~6_combout\ & (\data_mem|Mux3~1\)))) # (!\mem_a~combout\(0) & (((\data_mem|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux3~1\,
	datab => \mem_a~combout\(0),
	datac => \data_mem|Mux3~6_combout\,
	datad => \data_mem|Mux3~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux3~9_combout\);

-- Location: LC_X3_Y5_N5
\data_mem|Mux3~20\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux3~20_combout\ = (\mem_a~combout\(4) & (((\data_mem|Mux3~9_combout\)))) # (!\mem_a~combout\(4) & (\data_mem|Mux3~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(4),
	datab => \data_mem|Mux3~19_combout\,
	datac => \data_mem|Mux3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux3~20_combout\);

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d_in[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d_in(13),
	combout => \mem_d_in~combout\(13));

-- Location: LC_X9_Y5_N2
\data_mem|mem[3][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[3][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~35_combout\, \mem_d_in~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(13),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[3][13]~regout\);

-- Location: LC_X12_Y4_N3
\data_mem|mem[0][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[0][13]~regout\ = DFFEAS((((\mem_d_in~combout\(13)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~34_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(13),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[0][13]~regout\);

-- Location: LC_X9_Y5_N5
\data_mem|mem[1][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux2~14\ = (\mem_a~combout\(1) & (\mem_a~combout\(0))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & (B1_mem[1][13])) # (!\mem_a~combout\(0) & ((\data_mem|mem[0][13]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(13),
	datad => \data_mem|mem[0][13]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux2~14\,
	regout => \data_mem|mem[1][13]~regout\);

-- Location: LC_X9_Y4_N9
\data_mem|mem[2][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux2~15\ = (\mem_a~combout\(1) & ((\data_mem|Mux2~14\ & (\data_mem|mem[3][13]~regout\)) # (!\data_mem|Mux2~14\ & ((B1_mem[2][13]))))) # (!\mem_a~combout\(1) & (((\data_mem|Mux2~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \data_mem|mem[3][13]~regout\,
	datac => \mem_d_in~combout\(13),
	datad => \data_mem|Mux2~14\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux2~15\,
	regout => \data_mem|mem[2][13]~regout\);

-- Location: LC_X8_Y4_N7
\data_mem|mem[4][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[4][13]~regout\ = DFFEAS((((\mem_d_in~combout\(13)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~30_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(13),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[4][13]~regout\);

-- Location: LC_X9_Y4_N3
\data_mem|mem[6][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux2~12\ = (\mem_a~combout\(1) & ((\mem_a~combout\(0)) # ((B1_mem[6][13])))) # (!\mem_a~combout\(1) & (!\mem_a~combout\(0) & ((\data_mem|mem[4][13]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(13),
	datad => \data_mem|mem[4][13]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux2~12\,
	regout => \data_mem|mem[6][13]~regout\);

-- Location: LC_X13_Y4_N9
\data_mem|mem[7][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[7][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~31_combout\, \mem_d_in~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(13),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[7][13]~regout\);

-- Location: LC_X13_Y4_N2
\data_mem|mem[5][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux2~13\ = (\data_mem|Mux2~12\ & (((\data_mem|mem[7][13]~regout\)) # (!\mem_a~combout\(0)))) # (!\data_mem|Mux2~12\ & (\mem_a~combout\(0) & (B1_mem[5][13])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux2~12\,
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(13),
	datad => \data_mem|mem[7][13]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux2~13\,
	regout => \data_mem|mem[5][13]~regout\);

-- Location: LC_X13_Y4_N7
\data_mem|Mux2~16\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux2~16_combout\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((\data_mem|Mux2~13\))) # (!\mem_a~combout\(2) & (\data_mem|Mux2~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \data_mem|Mux2~15\,
	datac => \mem_a~combout\(2),
	datad => \data_mem|Mux2~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux2~16_combout\);

-- Location: LC_X5_Y5_N6
\data_mem|mem[11][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[11][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~27_combout\, \mem_d_in~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(13),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[11][13]~regout\);

-- Location: LC_X4_Y5_N9
\data_mem|mem[8][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[8][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~26_combout\, \mem_d_in~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(13),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[8][13]~regout\);

-- Location: LC_X4_Y5_N4
\data_mem|mem[9][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux2~10\ = (\mem_a~combout\(0) & (((B1_mem[9][13]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\data_mem|mem[8][13]~regout\ & ((!\mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \data_mem|mem[8][13]~regout\,
	datac => \mem_d_in~combout\(13),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux2~10\,
	regout => \data_mem|mem[9][13]~regout\);

-- Location: LC_X5_Y5_N1
\data_mem|mem[10][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux2~11\ = (\data_mem|Mux2~10\ & ((\data_mem|mem[11][13]~regout\) # ((!\mem_a~combout\(1))))) # (!\data_mem|Mux2~10\ & (((B1_mem[10][13] & \mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[11][13]~regout\,
	datab => \data_mem|Mux2~10\,
	datac => \mem_d_in~combout\(13),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux2~11\,
	regout => \data_mem|mem[10][13]~regout\);

-- Location: LC_X13_Y9_N5
\data_mem|mem[15][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[15][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~39_combout\, \mem_d_in~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(13),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[15][13]~regout\);

-- Location: LC_X14_Y9_N7
\data_mem|mem[12][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[12][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~38_combout\, \mem_d_in~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(13),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[12][13]~regout\);

-- Location: LC_X14_Y8_N8
\data_mem|mem[14][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux2~17\ = (\mem_a~combout\(1) & ((\mem_a~combout\(0)) # ((B1_mem[14][13])))) # (!\mem_a~combout\(1) & (!\mem_a~combout\(0) & ((\data_mem|mem[12][13]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(13),
	datad => \data_mem|mem[12][13]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux2~17\,
	regout => \data_mem|mem[14][13]~regout\);

-- Location: LC_X14_Y8_N7
\data_mem|mem[13][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux2~18\ = (\mem_a~combout\(0) & ((\data_mem|Mux2~17\ & (\data_mem|mem[15][13]~regout\)) # (!\data_mem|Mux2~17\ & ((B1_mem[13][13]))))) # (!\mem_a~combout\(0) & (((\data_mem|Mux2~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[15][13]~regout\,
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(13),
	datad => \data_mem|Mux2~17\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux2~18\,
	regout => \data_mem|mem[13][13]~regout\);

-- Location: LC_X13_Y4_N0
\data_mem|Mux2~19\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux2~19_combout\ = (\mem_a~combout\(3) & ((\data_mem|Mux2~16_combout\ & ((\data_mem|Mux2~18\))) # (!\data_mem|Mux2~16_combout\ & (\data_mem|Mux2~11\)))) # (!\mem_a~combout\(3) & (\data_mem|Mux2~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \data_mem|Mux2~16_combout\,
	datac => \data_mem|Mux2~11\,
	datad => \data_mem|Mux2~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux2~19_combout\);

-- Location: LC_X11_Y6_N9
\data_mem|mem[29][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[29][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~20_combout\, \mem_d_in~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(13),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[29][13]~regout\);

-- Location: LC_X12_Y8_N8
\data_mem|mem[17][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[17][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~13_combout\, \mem_d_in~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(13),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[17][13]~regout\);

-- Location: LC_X12_Y8_N6
\data_mem|mem[21][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux2~2\ = (\mem_a~combout\(3) & (\mem_a~combout\(2))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & (B1_mem[21][13])) # (!\mem_a~combout\(2) & ((\data_mem|mem[17][13]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(13),
	datad => \data_mem|mem[17][13]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux2~2\,
	regout => \data_mem|mem[21][13]~regout\);

-- Location: LC_X11_Y6_N8
\data_mem|mem[25][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux2~3\ = (\mem_a~combout\(3) & ((\data_mem|Mux2~2\ & (\data_mem|mem[29][13]~regout\)) # (!\data_mem|Mux2~2\ & ((B1_mem[25][13]))))) # (!\mem_a~combout\(3) & (((\data_mem|Mux2~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \data_mem|mem[29][13]~regout\,
	datac => \mem_d_in~combout\(13),
	datad => \data_mem|Mux2~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux2~3\,
	regout => \data_mem|mem[25][13]~regout\);

-- Location: LC_X11_Y4_N3
\data_mem|mem[16][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[16][13]~regout\ = DFFEAS((((\mem_d_in~combout\(13)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~18_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(13),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[16][13]~regout\);

-- Location: LC_X11_Y4_N6
\data_mem|mem[24][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux2~4\ = (\mem_a~combout\(2) & (\mem_a~combout\(3))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & (B1_mem[24][13])) # (!\mem_a~combout\(3) & ((\data_mem|mem[16][13]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(13),
	datad => \data_mem|mem[16][13]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux2~4\,
	regout => \data_mem|mem[24][13]~regout\);

-- Location: LC_X13_Y3_N9
\data_mem|mem[28][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[28][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~1_combout\, \mem_d_in~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(13),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[28][13]~regout\);

-- Location: LC_X13_Y3_N5
\data_mem|mem[20][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux2~5\ = (\data_mem|Mux2~4\ & (((\data_mem|mem[28][13]~regout\)) # (!\mem_a~combout\(2)))) # (!\data_mem|Mux2~4\ & (\mem_a~combout\(2) & (B1_mem[20][13])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux2~4\,
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(13),
	datad => \data_mem|mem[28][13]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux2~5\,
	regout => \data_mem|mem[20][13]~regout\);

-- Location: LC_X14_Y4_N5
\data_mem|Mux2~6\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux2~6_combout\ = (\mem_a~combout\(1) & (((\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & (\data_mem|Mux2~3\)) # (!\mem_a~combout\(0) & ((\data_mem|Mux2~5\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux2~3\,
	datab => \mem_a~combout\(1),
	datac => \mem_a~combout\(0),
	datad => \data_mem|Mux2~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux2~6_combout\);

-- Location: LC_X14_Y5_N9
\data_mem|mem[19][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[19][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~11_combout\, \mem_d_in~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(13),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[19][13]~regout\);

-- Location: LC_X10_Y9_N3
\data_mem|mem[23][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux2~7\ = (\mem_a~combout\(2) & (((B1_mem[23][13]) # (\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & (\data_mem|mem[19][13]~regout\ & ((!\mem_a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[19][13]~regout\,
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(13),
	datad => \mem_a~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux2~7\,
	regout => \data_mem|mem[23][13]~regout\);

-- Location: LC_X11_Y7_N5
\data_mem|mem[31][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[31][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~23_combout\, \mem_d_in~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(13),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[31][13]~regout\);

-- Location: LC_X10_Y9_N5
\data_mem|mem[27][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux2~8\ = (\data_mem|Mux2~7\ & (((\data_mem|mem[31][13]~regout\)) # (!\mem_a~combout\(3)))) # (!\data_mem|Mux2~7\ & (\mem_a~combout\(3) & (B1_mem[27][13])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux2~7\,
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(13),
	datad => \data_mem|mem[31][13]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux2~8\,
	regout => \data_mem|mem[27][13]~regout\);

-- Location: LC_X11_Y8_N2
\data_mem|mem[18][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[18][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~17_combout\, \mem_d_in~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(13),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[18][13]~regout\);

-- Location: LC_X11_Y8_N9
\data_mem|mem[26][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux2~0\ = (\mem_a~combout\(2) & (\mem_a~combout\(3))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & (B1_mem[26][13])) # (!\mem_a~combout\(3) & ((\data_mem|mem[18][13]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(13),
	datad => \data_mem|mem[18][13]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux2~0\,
	regout => \data_mem|mem[26][13]~regout\);

-- Location: LC_X14_Y4_N9
\data_mem|mem[30][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[30][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~7_combout\, \mem_d_in~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(13),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[30][13]~regout\);

-- Location: LC_X14_Y4_N7
\data_mem|mem[22][13]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux2~1\ = (\mem_a~combout\(2) & ((\data_mem|Mux2~0\ & ((\data_mem|mem[30][13]~regout\))) # (!\data_mem|Mux2~0\ & (B1_mem[22][13])))) # (!\mem_a~combout\(2) & (\data_mem|Mux2~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \data_mem|Mux2~0\,
	datac => \mem_d_in~combout\(13),
	datad => \data_mem|mem[30][13]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux2~1\,
	regout => \data_mem|mem[22][13]~regout\);

-- Location: LC_X14_Y4_N8
\data_mem|Mux2~9\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux2~9_combout\ = (\data_mem|Mux2~6_combout\ & ((\data_mem|Mux2~8\) # ((!\mem_a~combout\(1))))) # (!\data_mem|Mux2~6_combout\ & (((\mem_a~combout\(1) & \data_mem|Mux2~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux2~6_combout\,
	datab => \data_mem|Mux2~8\,
	datac => \mem_a~combout\(1),
	datad => \data_mem|Mux2~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux2~9_combout\);

-- Location: LC_X13_Y4_N1
\data_mem|Mux2~20\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux2~20_combout\ = (\mem_a~combout\(4) & (((\data_mem|Mux2~9_combout\)))) # (!\mem_a~combout\(4) & (((\data_mem|Mux2~19_combout\))))

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
	dataa => \mem_a~combout\(4),
	datac => \data_mem|Mux2~19_combout\,
	datad => \data_mem|Mux2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux2~20_combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d_in[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d_in(14),
	combout => \mem_d_in~combout\(14));

-- Location: LC_X9_Y9_N8
\data_mem|mem[29][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[29][14]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~20_combout\, \mem_d_in~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(14),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[29][14]~regout\);

-- Location: LC_X9_Y10_N1
\data_mem|mem[17][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[17][14]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~13_combout\, \mem_d_in~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(14),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[17][14]~regout\);

-- Location: LC_X9_Y10_N6
\data_mem|mem[25][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux1~0\ = (\mem_a~combout\(2) & (\mem_a~combout\(3))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & (B1_mem[25][14])) # (!\mem_a~combout\(3) & ((\data_mem|mem[17][14]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(14),
	datad => \data_mem|mem[17][14]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux1~0\,
	regout => \data_mem|mem[25][14]~regout\);

-- Location: LC_X9_Y9_N0
\data_mem|mem[21][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux1~1\ = (\mem_a~combout\(2) & ((\data_mem|Mux1~0\ & (\data_mem|mem[29][14]~regout\)) # (!\data_mem|Mux1~0\ & ((B1_mem[21][14]))))) # (!\mem_a~combout\(2) & (((\data_mem|Mux1~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[29][14]~regout\,
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(14),
	datad => \data_mem|Mux1~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux1~1\,
	regout => \data_mem|mem[21][14]~regout\);

-- Location: LC_X4_Y6_N8
\data_mem|mem[18][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[18][14]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~17_combout\, \mem_d_in~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(14),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[18][14]~regout\);

-- Location: LC_X4_Y6_N0
\data_mem|mem[22][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux1~2\ = (\mem_a~combout\(3) & (\mem_a~combout\(2))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & (B1_mem[22][14])) # (!\mem_a~combout\(2) & ((\data_mem|mem[18][14]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(14),
	datad => \data_mem|mem[18][14]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux1~2\,
	regout => \data_mem|mem[22][14]~regout\);

-- Location: LC_X6_Y7_N2
\data_mem|mem[30][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[30][14]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~7_combout\, \mem_d_in~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(14),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[30][14]~regout\);

-- Location: LC_X6_Y7_N5
\data_mem|mem[26][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux1~3\ = (\data_mem|Mux1~2\ & (((\data_mem|mem[30][14]~regout\)) # (!\mem_a~combout\(3)))) # (!\data_mem|Mux1~2\ & (\mem_a~combout\(3) & (B1_mem[26][14])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux1~2\,
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(14),
	datad => \data_mem|mem[30][14]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux1~3\,
	regout => \data_mem|mem[26][14]~regout\);

-- Location: LC_X6_Y5_N0
\data_mem|mem[28][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[28][14]~regout\ = DFFEAS((((\mem_d_in~combout\(14)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(14),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[28][14]~regout\);

-- Location: LC_X11_Y4_N7
\data_mem|mem[16][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[16][14]~regout\ = DFFEAS((((\mem_d_in~combout\(14)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~18_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(14),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[16][14]~regout\);

-- Location: LC_X7_Y4_N5
\data_mem|mem[20][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux1~4\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((B1_mem[20][14])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\data_mem|mem[16][14]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(14),
	datad => \data_mem|mem[16][14]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux1~4\,
	regout => \data_mem|mem[20][14]~regout\);

-- Location: LC_X7_Y4_N6
\data_mem|mem[24][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux1~5\ = (\mem_a~combout\(3) & ((\data_mem|Mux1~4\ & (\data_mem|mem[28][14]~regout\)) # (!\data_mem|Mux1~4\ & ((B1_mem[24][14]))))) # (!\mem_a~combout\(3) & (((\data_mem|Mux1~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[28][14]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(14),
	datad => \data_mem|Mux1~4\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux1~5\,
	regout => \data_mem|mem[24][14]~regout\);

-- Location: LC_X7_Y4_N8
\data_mem|Mux1~6\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux1~6_combout\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & (\data_mem|Mux1~3\)) # (!\mem_a~combout\(1) & ((\data_mem|Mux1~5\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(0),
	datab => \data_mem|Mux1~3\,
	datac => \data_mem|Mux1~5\,
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux1~6_combout\);

-- Location: LC_X11_Y9_N2
\data_mem|mem[19][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[19][14]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~11_combout\, \mem_d_in~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(14),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[19][14]~regout\);

-- Location: LC_X11_Y9_N7
\data_mem|mem[27][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux1~7\ = (\mem_a~combout\(2) & (((\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & ((B1_mem[27][14]))) # (!\mem_a~combout\(3) & (\data_mem|mem[19][14]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \data_mem|mem[19][14]~regout\,
	datac => \mem_d_in~combout\(14),
	datad => \mem_a~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux1~7\,
	regout => \data_mem|mem[27][14]~regout\);

-- Location: LC_X11_Y10_N9
\data_mem|mem[31][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[31][14]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~23_combout\, \mem_d_in~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(14),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[31][14]~regout\);

-- Location: LC_X11_Y10_N4
\data_mem|mem[23][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux1~8\ = (\data_mem|Mux1~7\ & (((\data_mem|mem[31][14]~regout\)) # (!\mem_a~combout\(2)))) # (!\data_mem|Mux1~7\ & (\mem_a~combout\(2) & (B1_mem[23][14])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux1~7\,
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(14),
	datad => \data_mem|mem[31][14]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux1~8\,
	regout => \data_mem|mem[23][14]~regout\);

-- Location: LC_X7_Y5_N1
\data_mem|Mux1~9\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux1~9_combout\ = (\mem_a~combout\(0) & ((\data_mem|Mux1~6_combout\ & ((\data_mem|Mux1~8\))) # (!\data_mem|Mux1~6_combout\ & (\data_mem|Mux1~1\)))) # (!\mem_a~combout\(0) & (((\data_mem|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux1~1\,
	datab => \mem_a~combout\(0),
	datac => \data_mem|Mux1~6_combout\,
	datad => \data_mem|Mux1~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux1~9_combout\);

-- Location: LC_X7_Y5_N4
\data_mem|mem[7][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[7][14]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~31_combout\, \mem_d_in~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(14),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[7][14]~regout\);

-- Location: LC_X8_Y4_N3
\data_mem|mem[4][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[4][14]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~30_combout\, \mem_d_in~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(14),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[4][14]~regout\);

-- Location: LC_X8_Y4_N8
\data_mem|mem[5][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux1~10\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((B1_mem[5][14])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\data_mem|mem[4][14]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(14),
	datad => \data_mem|mem[4][14]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux1~10\,
	regout => \data_mem|mem[5][14]~regout\);

-- Location: LC_X7_Y5_N6
\data_mem|mem[6][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux1~11\ = (\mem_a~combout\(1) & ((\data_mem|Mux1~10\ & (\data_mem|mem[7][14]~regout\)) # (!\data_mem|Mux1~10\ & ((B1_mem[6][14]))))) # (!\mem_a~combout\(1) & (((\data_mem|Mux1~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[7][14]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(14),
	datad => \data_mem|Mux1~10\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux1~11\,
	regout => \data_mem|mem[6][14]~regout\);

-- Location: LC_X7_Y7_N1
\data_mem|mem[0][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[0][14]~regout\ = DFFEAS((((\mem_d_in~combout\(14)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~34_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(14),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[0][14]~regout\);

-- Location: LC_X7_Y6_N4
\data_mem|mem[2][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux1~14\ = (\mem_a~combout\(1) & (((B1_mem[2][14]) # (\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & (\data_mem|mem[0][14]~regout\ & ((!\mem_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \data_mem|mem[0][14]~regout\,
	datac => \mem_d_in~combout\(14),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux1~14\,
	regout => \data_mem|mem[2][14]~regout\);

-- Location: LC_X6_Y6_N2
\data_mem|mem[3][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[3][14]~regout\ = DFFEAS((((\mem_d_in~combout\(14)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~35_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(14),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[3][14]~regout\);

-- Location: LC_X7_Y6_N5
\data_mem|mem[1][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux1~15\ = (\data_mem|Mux1~14\ & ((\data_mem|mem[3][14]~regout\) # ((!\mem_a~combout\(0))))) # (!\data_mem|Mux1~14\ & (((B1_mem[1][14] & \mem_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux1~14\,
	datab => \data_mem|mem[3][14]~regout\,
	datac => \mem_d_in~combout\(14),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux1~15\,
	regout => \data_mem|mem[1][14]~regout\);

-- Location: LC_X3_Y7_N2
\data_mem|mem[8][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[8][14]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~26_combout\, \mem_d_in~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(14),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[8][14]~regout\);

-- Location: LC_X3_Y7_N6
\data_mem|mem[10][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux1~12\ = (\mem_a~combout\(1) & (((B1_mem[10][14]) # (\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & (\data_mem|mem[8][14]~regout\ & ((!\mem_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \data_mem|mem[8][14]~regout\,
	datac => \mem_d_in~combout\(14),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux1~12\,
	regout => \data_mem|mem[10][14]~regout\);

-- Location: LC_X2_Y6_N9
\data_mem|mem[11][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[11][14]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~27_combout\, \mem_d_in~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(14),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[11][14]~regout\);

-- Location: LC_X2_Y6_N3
\data_mem|mem[9][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux1~13\ = (\data_mem|Mux1~12\ & ((\data_mem|mem[11][14]~regout\) # ((!\mem_a~combout\(0))))) # (!\data_mem|Mux1~12\ & (((B1_mem[9][14] & \mem_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux1~12\,
	datab => \data_mem|mem[11][14]~regout\,
	datac => \mem_d_in~combout\(14),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux1~13\,
	regout => \data_mem|mem[9][14]~regout\);

-- Location: LC_X7_Y5_N7
\data_mem|Mux1~16\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux1~16_combout\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2)) # (\data_mem|Mux1~13\)))) # (!\mem_a~combout\(3) & (\data_mem|Mux1~15\ & (!\mem_a~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux1~15\,
	datab => \mem_a~combout\(3),
	datac => \mem_a~combout\(2),
	datad => \data_mem|Mux1~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux1~16_combout\);

-- Location: LC_X14_Y9_N5
\data_mem|mem[12][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[12][14]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~38_combout\, \mem_d_in~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(14),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[12][14]~regout\);

-- Location: LC_X15_Y9_N4
\data_mem|mem[13][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux1~17\ = (\mem_a~combout\(0) & (((B1_mem[13][14]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\data_mem|mem[12][14]~regout\ & ((!\mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[12][14]~regout\,
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(14),
	datad => \mem_a~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux1~17\,
	regout => \data_mem|mem[13][14]~regout\);

-- Location: LC_X14_Y10_N0
\data_mem|mem[15][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[15][14]~regout\ = DFFEAS((((\mem_d_in~combout\(14)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~39_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(14),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[15][14]~regout\);

-- Location: LC_X15_Y9_N9
\data_mem|mem[14][14]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux1~18\ = (\data_mem|Mux1~17\ & (((\data_mem|mem[15][14]~regout\)) # (!\mem_a~combout\(1)))) # (!\data_mem|Mux1~17\ & (\mem_a~combout\(1) & (B1_mem[14][14])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux1~17\,
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(14),
	datad => \data_mem|mem[15][14]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux1~18\,
	regout => \data_mem|mem[14][14]~regout\);

-- Location: LC_X7_Y5_N9
\data_mem|Mux1~19\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux1~19_combout\ = (\data_mem|Mux1~16_combout\ & (((\data_mem|Mux1~18\) # (!\mem_a~combout\(2))))) # (!\data_mem|Mux1~16_combout\ & (\data_mem|Mux1~11\ & (\mem_a~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux1~11\,
	datab => \data_mem|Mux1~16_combout\,
	datac => \mem_a~combout\(2),
	datad => \data_mem|Mux1~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux1~19_combout\);

-- Location: LC_X7_Y5_N2
\data_mem|Mux1~20\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux1~20_combout\ = ((\mem_a~combout\(4) & (\data_mem|Mux1~9_combout\)) # (!\mem_a~combout\(4) & ((\data_mem|Mux1~19_combout\))))

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
	datab => \data_mem|Mux1~9_combout\,
	datac => \mem_a~combout\(4),
	datad => \data_mem|Mux1~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux1~20_combout\);

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d_in[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d_in(15),
	combout => \mem_d_in~combout\(15));

-- Location: LC_X7_Y7_N4
\data_mem|mem[0][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[0][15]~regout\ = DFFEAS(((\mem_d_in~combout\(15))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~34_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_d_in~combout\(15),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[0][15]~regout\);

-- Location: LC_X7_Y6_N2
\data_mem|mem[1][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux0~14\ = (\mem_a~combout\(1) & (((\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & ((B1_mem[1][15]))) # (!\mem_a~combout\(0) & (\data_mem|mem[0][15]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \data_mem|mem[0][15]~regout\,
	datac => \mem_d_in~combout\(15),
	datad => \mem_a~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux0~14\,
	regout => \data_mem|mem[1][15]~regout\);

-- Location: LC_X6_Y6_N5
\data_mem|mem[3][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[3][15]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~35_combout\, \mem_d_in~combout\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(15),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[3][15]~regout\);

-- Location: LC_X7_Y6_N6
\data_mem|mem[2][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux0~15\ = (\mem_a~combout\(1) & ((\data_mem|Mux0~14\ & ((\data_mem|mem[3][15]~regout\))) # (!\data_mem|Mux0~14\ & (B1_mem[2][15])))) # (!\mem_a~combout\(1) & (\data_mem|Mux0~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \data_mem|Mux0~14\,
	datac => \mem_d_in~combout\(15),
	datad => \data_mem|mem[3][15]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux0~15\,
	regout => \data_mem|mem[2][15]~regout\);

-- Location: LC_X10_Y4_N7
\data_mem|mem[7][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[7][15]~regout\ = DFFEAS((\mem_d_in~combout\(15)), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~31_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_d_in~combout\(15),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[7][15]~regout\);

-- Location: LC_X8_Y4_N5
\data_mem|mem[4][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[4][15]~regout\ = DFFEAS((((\mem_d_in~combout\(15)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~30_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(15),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[4][15]~regout\);

-- Location: LC_X10_Y5_N9
\data_mem|mem[6][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux0~12\ = (\mem_a~combout\(0) & (\mem_a~combout\(1))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & (B1_mem[6][15])) # (!\mem_a~combout\(1) & ((\data_mem|mem[4][15]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(15),
	datad => \data_mem|mem[4][15]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux0~12\,
	regout => \data_mem|mem[6][15]~regout\);

-- Location: LC_X10_Y5_N1
\data_mem|mem[5][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux0~13\ = (\mem_a~combout\(0) & ((\data_mem|Mux0~12\ & (\data_mem|mem[7][15]~regout\)) # (!\data_mem|Mux0~12\ & ((B1_mem[5][15]))))) # (!\mem_a~combout\(0) & (((\data_mem|Mux0~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \data_mem|mem[7][15]~regout\,
	datac => \mem_d_in~combout\(15),
	datad => \data_mem|Mux0~12\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux0~13\,
	regout => \data_mem|mem[5][15]~regout\);

-- Location: LC_X8_Y7_N9
\data_mem|Mux0~16\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux0~16_combout\ = (\mem_a~combout\(2) & (((\data_mem|Mux0~13\) # (\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & (\data_mem|Mux0~15\ & ((!\mem_a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_mem|Mux0~15\,
	datab => \mem_a~combout\(2),
	datac => \data_mem|Mux0~13\,
	datad => \mem_a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux0~16_combout\);

-- Location: LC_X6_Y8_N5
\data_mem|mem[11][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[11][15]~regout\ = DFFEAS((((\mem_d_in~combout\(15)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~27_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(15),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[11][15]~regout\);

-- Location: LC_X5_Y7_N3
\data_mem|mem[8][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[8][15]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~26_combout\, \mem_d_in~combout\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(15),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[8][15]~regout\);

-- Location: LC_X5_Y7_N4
\data_mem|mem[9][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux0~10\ = (\mem_a~combout\(1) & (\mem_a~combout\(0))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & (B1_mem[9][15])) # (!\mem_a~combout\(0) & ((\data_mem|mem[8][15]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(15),
	datad => \data_mem|mem[8][15]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux0~10\,
	regout => \data_mem|mem[9][15]~regout\);

-- Location: LC_X8_Y7_N4
\data_mem|mem[10][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux0~11\ = (\mem_a~combout\(1) & ((\data_mem|Mux0~10\ & (\data_mem|mem[11][15]~regout\)) # (!\data_mem|Mux0~10\ & ((B1_mem[10][15]))))) # (!\mem_a~combout\(1) & (((\data_mem|Mux0~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \data_mem|mem[11][15]~regout\,
	datac => \mem_d_in~combout\(15),
	datad => \data_mem|Mux0~10\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux0~11\,
	regout => \data_mem|mem[10][15]~regout\);

-- Location: LC_X14_Y9_N8
\data_mem|mem[12][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[12][15]~regout\ = DFFEAS((((\mem_d_in~combout\(15)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~38_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(15),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[12][15]~regout\);

-- Location: LC_X13_Y9_N7
\data_mem|mem[14][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux0~17\ = (\mem_a~combout\(0) & (\mem_a~combout\(1))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & (B1_mem[14][15])) # (!\mem_a~combout\(1) & ((\data_mem|mem[12][15]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d_in~combout\(15),
	datad => \data_mem|mem[12][15]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux0~17\,
	regout => \data_mem|mem[14][15]~regout\);

-- Location: LC_X14_Y10_N1
\data_mem|mem[15][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[15][15]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~39_combout\, \mem_d_in~combout\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(15),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[15][15]~regout\);

-- Location: LC_X13_Y10_N7
\data_mem|mem[13][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux0~18\ = (\data_mem|Mux0~17\ & (((\data_mem|mem[15][15]~regout\)) # (!\mem_a~combout\(0)))) # (!\data_mem|Mux0~17\ & (\mem_a~combout\(0) & (B1_mem[13][15])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux0~17\,
	datab => \mem_a~combout\(0),
	datac => \mem_d_in~combout\(15),
	datad => \data_mem|mem[15][15]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux0~18\,
	regout => \data_mem|mem[13][15]~regout\);

-- Location: LC_X8_Y7_N5
\data_mem|Mux0~19\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux0~19_combout\ = (\mem_a~combout\(3) & ((\data_mem|Mux0~16_combout\ & ((\data_mem|Mux0~18\))) # (!\data_mem|Mux0~16_combout\ & (\data_mem|Mux0~11\)))) # (!\mem_a~combout\(3) & (\data_mem|Mux0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \data_mem|Mux0~16_combout\,
	datac => \data_mem|Mux0~11\,
	datad => \data_mem|Mux0~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux0~19_combout\);

-- Location: LC_X14_Y7_N5
\data_mem|mem[19][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[19][15]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~11_combout\, \mem_d_in~combout\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(15),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[19][15]~regout\);

-- Location: LC_X15_Y6_N4
\data_mem|mem[23][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux0~7\ = (\mem_a~combout\(2) & (((B1_mem[23][15]) # (\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & (\data_mem|mem[19][15]~regout\ & ((!\mem_a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[19][15]~regout\,
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(15),
	datad => \mem_a~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux0~7\,
	regout => \data_mem|mem[23][15]~regout\);

-- Location: LC_X15_Y5_N5
\data_mem|mem[31][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[31][15]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~23_combout\, \mem_d_in~combout\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(15),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[31][15]~regout\);

-- Location: LC_X15_Y6_N8
\data_mem|mem[27][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux0~8\ = (\data_mem|Mux0~7\ & (((\data_mem|mem[31][15]~regout\)) # (!\mem_a~combout\(3)))) # (!\data_mem|Mux0~7\ & (\mem_a~combout\(3) & (B1_mem[27][15])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux0~7\,
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(15),
	datad => \data_mem|mem[31][15]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux0~8\,
	regout => \data_mem|mem[27][15]~regout\);

-- Location: LC_X9_Y6_N5
\data_mem|mem[30][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[30][15]~regout\ = DFFEAS((((\mem_d_in~combout\(15)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(15),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[30][15]~regout\);

-- Location: LC_X11_Y8_N8
\data_mem|mem[18][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[18][15]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~17_combout\, \mem_d_in~combout\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(15),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[18][15]~regout\);

-- Location: LC_X11_Y8_N7
\data_mem|mem[26][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux0~0\ = (\mem_a~combout\(2) & (\mem_a~combout\(3))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & (B1_mem[26][15])) # (!\mem_a~combout\(3) & ((\data_mem|mem[18][15]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(15),
	datad => \data_mem|mem[18][15]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux0~0\,
	regout => \data_mem|mem[26][15]~regout\);

-- Location: LC_X9_Y6_N4
\data_mem|mem[22][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux0~1\ = (\mem_a~combout\(2) & ((\data_mem|Mux0~0\ & (\data_mem|mem[30][15]~regout\)) # (!\data_mem|Mux0~0\ & ((B1_mem[22][15]))))) # (!\mem_a~combout\(2) & (((\data_mem|Mux0~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[30][15]~regout\,
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(15),
	datad => \data_mem|Mux0~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux0~1\,
	regout => \data_mem|mem[22][15]~regout\);

-- Location: LC_X11_Y4_N8
\data_mem|mem[16][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[16][15]~regout\ = DFFEAS(((\mem_d_in~combout\(15))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~18_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_d_in~combout\(15),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[16][15]~regout\);

-- Location: LC_X11_Y4_N4
\data_mem|mem[24][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux0~4\ = (\mem_a~combout\(2) & (\mem_a~combout\(3))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & (B1_mem[24][15])) # (!\mem_a~combout\(3) & ((\data_mem|mem[16][15]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(15),
	datad => \data_mem|mem[16][15]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux0~4\,
	regout => \data_mem|mem[24][15]~regout\);

-- Location: LC_X12_Y6_N2
\data_mem|mem[28][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[28][15]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~1_combout\, \mem_d_in~combout\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(15),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[28][15]~regout\);

-- Location: LC_X12_Y6_N7
\data_mem|mem[20][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux0~5\ = (\data_mem|Mux0~4\ & (((\data_mem|mem[28][15]~regout\)) # (!\mem_a~combout\(2)))) # (!\data_mem|Mux0~4\ & (\mem_a~combout\(2) & (B1_mem[20][15])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|Mux0~4\,
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(15),
	datad => \data_mem|mem[28][15]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux0~5\,
	regout => \data_mem|mem[20][15]~regout\);

-- Location: LC_X13_Y6_N6
\data_mem|mem[29][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[29][15]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~20_combout\, \mem_d_in~combout\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \mem_d_in~combout\(15),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[29][15]~regout\);

-- Location: LC_X9_Y10_N5
\data_mem|mem[17][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|mem[17][15]~regout\ = DFFEAS((((\mem_d_in~combout\(15)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \data_mem|Decoder0~13_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \mem_d_in~combout\(15),
	aclr => \reset~combout\,
	ena => \data_mem|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_mem|mem[17][15]~regout\);

-- Location: LC_X9_Y9_N6
\data_mem|mem[21][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux0~2\ = (\mem_a~combout\(3) & (\mem_a~combout\(2))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & (B1_mem[21][15])) # (!\mem_a~combout\(2) & ((\data_mem|mem[17][15]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(2),
	datac => \mem_d_in~combout\(15),
	datad => \data_mem|mem[17][15]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux0~2\,
	regout => \data_mem|mem[21][15]~regout\);

-- Location: LC_X13_Y6_N7
\data_mem|mem[25][15]\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux0~3\ = (\mem_a~combout\(3) & ((\data_mem|Mux0~2\ & (\data_mem|mem[29][15]~regout\)) # (!\data_mem|Mux0~2\ & ((B1_mem[25][15]))))) # (!\mem_a~combout\(3) & (((\data_mem|Mux0~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data_mem|mem[29][15]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d_in~combout\(15),
	datad => \data_mem|Mux0~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \data_mem|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux0~3\,
	regout => \data_mem|mem[25][15]~regout\);

-- Location: LC_X13_Y6_N8
\data_mem|Mux0~6\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux0~6_combout\ = (\mem_a~combout\(1) & (((\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & ((\data_mem|Mux0~3\))) # (!\mem_a~combout\(0) & (\data_mem|Mux0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(1),
	datab => \data_mem|Mux0~5\,
	datac => \mem_a~combout\(0),
	datad => \data_mem|Mux0~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux0~6_combout\);

-- Location: LC_X9_Y6_N3
\data_mem|Mux0~9\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux0~9_combout\ = (\mem_a~combout\(1) & ((\data_mem|Mux0~6_combout\ & (\data_mem|Mux0~8\)) # (!\data_mem|Mux0~6_combout\ & ((\data_mem|Mux0~1\))))) # (!\mem_a~combout\(1) & (((\data_mem|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(1),
	datab => \data_mem|Mux0~8\,
	datac => \data_mem|Mux0~1\,
	datad => \data_mem|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux0~9_combout\);

-- Location: LC_X9_Y6_N9
\data_mem|Mux0~20\ : maxv_lcell
-- Equation(s):
-- \data_mem|Mux0~20_combout\ = ((\mem_a~combout\(4) & ((\data_mem|Mux0~9_combout\))) # (!\mem_a~combout\(4) & (\data_mem|Mux0~19_combout\)))

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
	dataa => \data_mem|Mux0~19_combout\,
	datac => \mem_a~combout\(4),
	datad => \data_mem|Mux0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_mem|Mux0~20_combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(5));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(6));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(7));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(8));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(9));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(10));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(11));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(12));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(13));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(14));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(15));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d_out[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_mem|Mux15~20_combout\,
	oe => VCC,
	padio => ww_mem_d_out(0));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d_out[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_mem|Mux14~20_combout\,
	oe => VCC,
	padio => ww_mem_d_out(1));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d_out[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_mem|Mux13~20_combout\,
	oe => VCC,
	padio => ww_mem_d_out(2));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d_out[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_mem|Mux12~20_combout\,
	oe => VCC,
	padio => ww_mem_d_out(3));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d_out[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_mem|Mux11~20_combout\,
	oe => VCC,
	padio => ww_mem_d_out(4));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d_out[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_mem|Mux10~20_combout\,
	oe => VCC,
	padio => ww_mem_d_out(5));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d_out[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_mem|Mux9~20_combout\,
	oe => VCC,
	padio => ww_mem_d_out(6));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d_out[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_mem|Mux8~20_combout\,
	oe => VCC,
	padio => ww_mem_d_out(7));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d_out[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_mem|Mux7~20_combout\,
	oe => VCC,
	padio => ww_mem_d_out(8));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d_out[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_mem|Mux6~20_combout\,
	oe => VCC,
	padio => ww_mem_d_out(9));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d_out[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_mem|Mux5~20_combout\,
	oe => VCC,
	padio => ww_mem_d_out(10));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d_out[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_mem|Mux4~20_combout\,
	oe => VCC,
	padio => ww_mem_d_out(11));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d_out[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_mem|Mux3~20_combout\,
	oe => VCC,
	padio => ww_mem_d_out(12));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d_out[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_mem|Mux2~20_combout\,
	oe => VCC,
	padio => ww_mem_d_out(13));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d_out[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_mem|Mux1~20_combout\,
	oe => VCC,
	padio => ww_mem_d_out(14));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d_out[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_mem|Mux0~20_combout\,
	oe => VCC,
	padio => ww_mem_d_out(15));
END structure;


