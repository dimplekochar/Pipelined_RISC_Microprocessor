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

-- DATE "11/25/2018 20:34:58"

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

ENTITY 	WriteBack IS
    PORT (
	reset : IN std_logic;
	a3_mux_sel : IN std_logic_vector(1 DOWNTO 0);
	d3_mux_sel : IN std_logic_vector(1 DOWNTO 0);
	IR3_5 : IN std_logic_vector(2 DOWNTO 0);
	IR6_8 : IN std_logic_vector(2 DOWNTO 0);
	IR9_11 : IN std_logic_vector(2 DOWNTO 0);
	P32_47 : IN std_logic_vector(15 DOWNTO 0);
	P48_63 : IN std_logic_vector(15 DOWNTO 0);
	P64_79 : IN std_logic_vector(15 DOWNTO 0);
	P16_31 : IN std_logic_vector(15 DOWNTO 0);
	a3_mux_out : OUT std_logic_vector(2 DOWNTO 0);
	d3_mux_out : OUT std_logic_vector(15 DOWNTO 0)
	);
END WriteBack;

-- Design Ports Information


ARCHITECTURE structure OF WriteBack IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_a3_mux_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_d3_mux_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_IR3_5 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_IR6_8 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_IR9_11 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_P32_47 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_P48_63 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_P64_79 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_P16_31 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_a3_mux_out : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_d3_mux_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf_a3_mux|dout[0]~0_combout\ : std_logic;
SIGNAL \rf_a3_mux|dout[0]~1_combout\ : std_logic;
SIGNAL \rf_a3_mux|dout[1]~2_combout\ : std_logic;
SIGNAL \rf_a3_mux|dout[1]~3_combout\ : std_logic;
SIGNAL \rf_a3_mux|dout[2]~4_combout\ : std_logic;
SIGNAL \rf_a3_mux|dout[2]~5_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[0]~0_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[0]~1_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[1]~2_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[1]~3_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[2]~4_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[2]~5_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[3]~6_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[3]~7_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[4]~8_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[4]~9_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[5]~10_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[5]~11_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[6]~12_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[6]~13_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[7]~14_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[7]~15_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[8]~16_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[8]~17_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[9]~18_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[9]~19_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[10]~20_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[10]~21_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[11]~22_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[11]~23_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[12]~24_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[12]~25_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[13]~26_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[13]~27_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[14]~28_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[14]~29_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[15]~30_combout\ : std_logic;
SIGNAL \rf_d3_mux|dout[15]~31_combout\ : std_logic;
SIGNAL \P16_31~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \P32_47~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \P48_63~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \d3_mux_sel~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \P64_79~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \a3_mux_sel~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \IR3_5~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \IR6_8~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \IR9_11~combout\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_reset <= reset;
ww_a3_mux_sel <= a3_mux_sel;
ww_d3_mux_sel <= d3_mux_sel;
ww_IR3_5 <= IR3_5;
ww_IR6_8 <= IR6_8;
ww_IR9_11 <= IR9_11;
ww_P32_47 <= P32_47;
ww_P48_63 <= P48_63;
ww_P64_79 <= P64_79;
ww_P16_31 <= P16_31;
a3_mux_out <= ww_a3_mux_out;
d3_mux_out <= ww_d3_mux_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR9_11[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IR9_11(0),
	combout => \IR9_11~combout\(0));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a3_mux_sel[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a3_mux_sel(1),
	combout => \a3_mux_sel~combout\(1));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a3_mux_sel[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a3_mux_sel(0),
	combout => \a3_mux_sel~combout\(0));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR3_5[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IR3_5(0),
	combout => \IR3_5~combout\(0));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR6_8[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IR6_8(0),
	combout => \IR6_8~combout\(0));

-- Location: LC_X2_Y4_N1
\rf_a3_mux|dout[0]~0\ : maxv_lcell
-- Equation(s):
-- \rf_a3_mux|dout[0]~0_combout\ = (\a3_mux_sel~combout\(0) & (((\IR6_8~combout\(0))))) # (!\a3_mux_sel~combout\(0) & (\IR3_5~combout\(0)))

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
	dataa => \a3_mux_sel~combout\(0),
	datab => \IR3_5~combout\(0),
	datac => \IR6_8~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_a3_mux|dout[0]~0_combout\);

-- Location: LC_X2_Y4_N2
\rf_a3_mux|dout[0]~1\ : maxv_lcell
-- Equation(s):
-- \rf_a3_mux|dout[0]~1_combout\ = ((\a3_mux_sel~combout\(1) & (\IR9_11~combout\(0))) # (!\a3_mux_sel~combout\(1) & ((\rf_a3_mux|dout[0]~0_combout\))))

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
	dataa => \IR9_11~combout\(0),
	datac => \a3_mux_sel~combout\(1),
	datad => \rf_a3_mux|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_a3_mux|dout[0]~1_combout\);

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR9_11[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IR9_11(1),
	combout => \IR9_11~combout\(1));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR6_8[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IR6_8(1),
	combout => \IR6_8~combout\(1));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR3_5[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IR3_5(1),
	combout => \IR3_5~combout\(1));

-- Location: LC_X2_Y4_N5
\rf_a3_mux|dout[1]~2\ : maxv_lcell
-- Equation(s):
-- \rf_a3_mux|dout[1]~2_combout\ = (\a3_mux_sel~combout\(0) & (((\IR6_8~combout\(1))))) # (!\a3_mux_sel~combout\(0) & (((\IR3_5~combout\(1)))))

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
	dataa => \a3_mux_sel~combout\(0),
	datac => \IR6_8~combout\(1),
	datad => \IR3_5~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_a3_mux|dout[1]~2_combout\);

-- Location: LC_X2_Y4_N4
\rf_a3_mux|dout[1]~3\ : maxv_lcell
-- Equation(s):
-- \rf_a3_mux|dout[1]~3_combout\ = (\a3_mux_sel~combout\(1) & (\IR9_11~combout\(1))) # (!\a3_mux_sel~combout\(1) & (((\rf_a3_mux|dout[1]~2_combout\))))

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
	dataa => \a3_mux_sel~combout\(1),
	datab => \IR9_11~combout\(1),
	datac => \rf_a3_mux|dout[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_a3_mux|dout[1]~3_combout\);

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR9_11[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IR9_11(2),
	combout => \IR9_11~combout\(2));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR3_5[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IR3_5(2),
	combout => \IR3_5~combout\(2));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR6_8[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IR6_8(2),
	combout => \IR6_8~combout\(2));

-- Location: LC_X2_Y4_N9
\rf_a3_mux|dout[2]~4\ : maxv_lcell
-- Equation(s):
-- \rf_a3_mux|dout[2]~4_combout\ = ((\a3_mux_sel~combout\(0) & ((\IR6_8~combout\(2)))) # (!\a3_mux_sel~combout\(0) & (\IR3_5~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR3_5~combout\(2),
	datac => \IR6_8~combout\(2),
	datad => \a3_mux_sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_a3_mux|dout[2]~4_combout\);

-- Location: LC_X2_Y4_N8
\rf_a3_mux|dout[2]~5\ : maxv_lcell
-- Equation(s):
-- \rf_a3_mux|dout[2]~5_combout\ = (\a3_mux_sel~combout\(1) & (((\IR9_11~combout\(2))))) # (!\a3_mux_sel~combout\(1) & (((\rf_a3_mux|dout[2]~4_combout\))))

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
	dataa => \a3_mux_sel~combout\(1),
	datac => \IR9_11~combout\(2),
	datad => \rf_a3_mux|dout[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_a3_mux|dout[2]~5_combout\);

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d3_mux_sel[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d3_mux_sel(1),
	combout => \d3_mux_sel~combout\(1));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P64_79[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P64_79(0),
	combout => \P64_79~combout\(0));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P32_47[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P32_47(0),
	combout => \P32_47~combout\(0));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d3_mux_sel[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d3_mux_sel(0),
	combout => \d3_mux_sel~combout\(0));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P48_63[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P48_63(0),
	combout => \P48_63~combout\(0));

-- Location: LC_X7_Y7_N6
\rf_d3_mux|dout[0]~0\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[0]~0_combout\ = (\d3_mux_sel~combout\(1) & (((\d3_mux_sel~combout\(0))))) # (!\d3_mux_sel~combout\(1) & ((\d3_mux_sel~combout\(0) & ((\P48_63~combout\(0)))) # (!\d3_mux_sel~combout\(0) & (\P32_47~combout\(0)))))

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
	dataa => \d3_mux_sel~combout\(1),
	datab => \P32_47~combout\(0),
	datac => \d3_mux_sel~combout\(0),
	datad => \P48_63~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[0]~0_combout\);

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P16_31[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P16_31(0),
	combout => \P16_31~combout\(0));

-- Location: LC_X7_Y7_N0
\rf_d3_mux|dout[0]~1\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[0]~1_combout\ = (\d3_mux_sel~combout\(1) & ((\rf_d3_mux|dout[0]~0_combout\ & ((\P16_31~combout\(0)))) # (!\rf_d3_mux|dout[0]~0_combout\ & (\P64_79~combout\(0))))) # (!\d3_mux_sel~combout\(1) & (((\rf_d3_mux|dout[0]~0_combout\))))

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
	dataa => \d3_mux_sel~combout\(1),
	datab => \P64_79~combout\(0),
	datac => \rf_d3_mux|dout[0]~0_combout\,
	datad => \P16_31~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[0]~1_combout\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P16_31[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P16_31(1),
	combout => \P16_31~combout\(1));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P64_79[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P64_79(1),
	combout => \P64_79~combout\(1));

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P32_47[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P32_47(1),
	combout => \P32_47~combout\(1));

-- Location: LC_X7_Y7_N2
\rf_d3_mux|dout[1]~2\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[1]~2_combout\ = (\d3_mux_sel~combout\(1) & ((\P64_79~combout\(1)) # ((\d3_mux_sel~combout\(0))))) # (!\d3_mux_sel~combout\(1) & (((!\d3_mux_sel~combout\(0) & \P32_47~combout\(1)))))

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
	dataa => \d3_mux_sel~combout\(1),
	datab => \P64_79~combout\(1),
	datac => \d3_mux_sel~combout\(0),
	datad => \P32_47~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[1]~2_combout\);

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P48_63[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P48_63(1),
	combout => \P48_63~combout\(1));

-- Location: LC_X7_Y7_N4
\rf_d3_mux|dout[1]~3\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[1]~3_combout\ = (\rf_d3_mux|dout[1]~2_combout\ & ((\P16_31~combout\(1)) # ((!\d3_mux_sel~combout\(0))))) # (!\rf_d3_mux|dout[1]~2_combout\ & (((\d3_mux_sel~combout\(0) & \P48_63~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P16_31~combout\(1),
	datab => \rf_d3_mux|dout[1]~2_combout\,
	datac => \d3_mux_sel~combout\(0),
	datad => \P48_63~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[1]~3_combout\);

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P48_63[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P48_63(2),
	combout => \P48_63~combout\(2));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P32_47[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P32_47(2),
	combout => \P32_47~combout\(2));

-- Location: LC_X7_Y7_N1
\rf_d3_mux|dout[2]~4\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[2]~4_combout\ = (\d3_mux_sel~combout\(1) & (\d3_mux_sel~combout\(0))) # (!\d3_mux_sel~combout\(1) & ((\d3_mux_sel~combout\(0) & (\P48_63~combout\(2))) # (!\d3_mux_sel~combout\(0) & ((\P32_47~combout\(2))))))

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
	dataa => \d3_mux_sel~combout\(1),
	datab => \d3_mux_sel~combout\(0),
	datac => \P48_63~combout\(2),
	datad => \P32_47~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[2]~4_combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P64_79[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P64_79(2),
	combout => \P64_79~combout\(2));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P16_31[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P16_31(2),
	combout => \P16_31~combout\(2));

-- Location: LC_X7_Y7_N3
\rf_d3_mux|dout[2]~5\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[2]~5_combout\ = (\d3_mux_sel~combout\(1) & ((\rf_d3_mux|dout[2]~4_combout\ & ((\P16_31~combout\(2)))) # (!\rf_d3_mux|dout[2]~4_combout\ & (\P64_79~combout\(2))))) # (!\d3_mux_sel~combout\(1) & (\rf_d3_mux|dout[2]~4_combout\))

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
	dataa => \d3_mux_sel~combout\(1),
	datab => \rf_d3_mux|dout[2]~4_combout\,
	datac => \P64_79~combout\(2),
	datad => \P16_31~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[2]~5_combout\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P16_31[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P16_31(3),
	combout => \P16_31~combout\(3));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P48_63[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P48_63(3),
	combout => \P48_63~combout\(3));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P64_79[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P64_79(3),
	combout => \P64_79~combout\(3));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P32_47[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P32_47(3),
	combout => \P32_47~combout\(3));

-- Location: LC_X7_Y7_N7
\rf_d3_mux|dout[3]~6\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[3]~6_combout\ = (\d3_mux_sel~combout\(1) & ((\d3_mux_sel~combout\(0)) # ((\P64_79~combout\(3))))) # (!\d3_mux_sel~combout\(1) & (!\d3_mux_sel~combout\(0) & ((\P32_47~combout\(3)))))

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
	dataa => \d3_mux_sel~combout\(1),
	datab => \d3_mux_sel~combout\(0),
	datac => \P64_79~combout\(3),
	datad => \P32_47~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[3]~6_combout\);

-- Location: LC_X7_Y7_N8
\rf_d3_mux|dout[3]~7\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[3]~7_combout\ = (\d3_mux_sel~combout\(0) & ((\rf_d3_mux|dout[3]~6_combout\ & (\P16_31~combout\(3))) # (!\rf_d3_mux|dout[3]~6_combout\ & ((\P48_63~combout\(3)))))) # (!\d3_mux_sel~combout\(0) & (((\rf_d3_mux|dout[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P16_31~combout\(3),
	datab => \P48_63~combout\(3),
	datac => \d3_mux_sel~combout\(0),
	datad => \rf_d3_mux|dout[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[3]~7_combout\);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P32_47[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P32_47(4),
	combout => \P32_47~combout\(4));

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P48_63[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P48_63(4),
	combout => \P48_63~combout\(4));

-- Location: LC_X10_Y10_N8
\rf_d3_mux|dout[4]~8\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[4]~8_combout\ = (\d3_mux_sel~combout\(0) & (((\d3_mux_sel~combout\(1)) # (\P48_63~combout\(4))))) # (!\d3_mux_sel~combout\(0) & (\P32_47~combout\(4) & (!\d3_mux_sel~combout\(1))))

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
	dataa => \P32_47~combout\(4),
	datab => \d3_mux_sel~combout\(0),
	datac => \d3_mux_sel~combout\(1),
	datad => \P48_63~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[4]~8_combout\);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P64_79[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P64_79(4),
	combout => \P64_79~combout\(4));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P16_31[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P16_31(4),
	combout => \P16_31~combout\(4));

-- Location: LC_X10_Y10_N2
\rf_d3_mux|dout[4]~9\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[4]~9_combout\ = (\rf_d3_mux|dout[4]~8_combout\ & (((\P16_31~combout\(4)) # (!\d3_mux_sel~combout\(1))))) # (!\rf_d3_mux|dout[4]~8_combout\ & (\P64_79~combout\(4) & (\d3_mux_sel~combout\(1))))

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
	dataa => \rf_d3_mux|dout[4]~8_combout\,
	datab => \P64_79~combout\(4),
	datac => \d3_mux_sel~combout\(1),
	datad => \P16_31~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[4]~9_combout\);

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P48_63[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P48_63(5),
	combout => \P48_63~combout\(5));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P32_47[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P32_47(5),
	combout => \P32_47~combout\(5));

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P64_79[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P64_79(5),
	combout => \P64_79~combout\(5));

-- Location: LC_X10_Y10_N4
\rf_d3_mux|dout[5]~10\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[5]~10_combout\ = (\d3_mux_sel~combout\(1) & (((\d3_mux_sel~combout\(0)) # (\P64_79~combout\(5))))) # (!\d3_mux_sel~combout\(1) & (\P32_47~combout\(5) & (!\d3_mux_sel~combout\(0))))

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
	dataa => \d3_mux_sel~combout\(1),
	datab => \P32_47~combout\(5),
	datac => \d3_mux_sel~combout\(0),
	datad => \P64_79~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[5]~10_combout\);

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P16_31[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P16_31(5),
	combout => \P16_31~combout\(5));

-- Location: LC_X10_Y10_N1
\rf_d3_mux|dout[5]~11\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[5]~11_combout\ = (\d3_mux_sel~combout\(0) & ((\rf_d3_mux|dout[5]~10_combout\ & ((\P16_31~combout\(5)))) # (!\rf_d3_mux|dout[5]~10_combout\ & (\P48_63~combout\(5))))) # (!\d3_mux_sel~combout\(0) & (((\rf_d3_mux|dout[5]~10_combout\))))

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
	dataa => \P48_63~combout\(5),
	datab => \d3_mux_sel~combout\(0),
	datac => \rf_d3_mux|dout[5]~10_combout\,
	datad => \P16_31~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[5]~11_combout\);

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P16_31[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P16_31(6),
	combout => \P16_31~combout\(6));

-- Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P64_79[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P64_79(6),
	combout => \P64_79~combout\(6));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P48_63[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P48_63(6),
	combout => \P48_63~combout\(6));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P32_47[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P32_47(6),
	combout => \P32_47~combout\(6));

-- Location: LC_X10_Y10_N9
\rf_d3_mux|dout[6]~12\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[6]~12_combout\ = (\d3_mux_sel~combout\(1) & (\d3_mux_sel~combout\(0))) # (!\d3_mux_sel~combout\(1) & ((\d3_mux_sel~combout\(0) & (\P48_63~combout\(6))) # (!\d3_mux_sel~combout\(0) & ((\P32_47~combout\(6))))))

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
	dataa => \d3_mux_sel~combout\(1),
	datab => \d3_mux_sel~combout\(0),
	datac => \P48_63~combout\(6),
	datad => \P32_47~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[6]~12_combout\);

-- Location: LC_X10_Y10_N0
\rf_d3_mux|dout[6]~13\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[6]~13_combout\ = (\d3_mux_sel~combout\(1) & ((\rf_d3_mux|dout[6]~12_combout\ & (\P16_31~combout\(6))) # (!\rf_d3_mux|dout[6]~12_combout\ & ((\P64_79~combout\(6)))))) # (!\d3_mux_sel~combout\(1) & (((\rf_d3_mux|dout[6]~12_combout\))))

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
	dataa => \d3_mux_sel~combout\(1),
	datab => \P16_31~combout\(6),
	datac => \P64_79~combout\(6),
	datad => \rf_d3_mux|dout[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[6]~13_combout\);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P16_31[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P16_31(7),
	combout => \P16_31~combout\(7));

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P64_79[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P64_79(7),
	combout => \P64_79~combout\(7));

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P32_47[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P32_47(7),
	combout => \P32_47~combout\(7));

-- Location: LC_X10_Y10_N7
\rf_d3_mux|dout[7]~14\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[7]~14_combout\ = (\d3_mux_sel~combout\(0) & (((\d3_mux_sel~combout\(1))))) # (!\d3_mux_sel~combout\(0) & ((\d3_mux_sel~combout\(1) & (\P64_79~combout\(7))) # (!\d3_mux_sel~combout\(1) & ((\P32_47~combout\(7))))))

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
	dataa => \P64_79~combout\(7),
	datab => \d3_mux_sel~combout\(0),
	datac => \d3_mux_sel~combout\(1),
	datad => \P32_47~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[7]~14_combout\);

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P48_63[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P48_63(7),
	combout => \P48_63~combout\(7));

-- Location: LC_X10_Y10_N6
\rf_d3_mux|dout[7]~15\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[7]~15_combout\ = (\rf_d3_mux|dout[7]~14_combout\ & ((\P16_31~combout\(7)) # ((!\d3_mux_sel~combout\(0))))) # (!\rf_d3_mux|dout[7]~14_combout\ & (((\d3_mux_sel~combout\(0) & \P48_63~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P16_31~combout\(7),
	datab => \rf_d3_mux|dout[7]~14_combout\,
	datac => \d3_mux_sel~combout\(0),
	datad => \P48_63~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[7]~15_combout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P32_47[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P32_47(8),
	combout => \P32_47~combout\(8));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P48_63[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P48_63(8),
	combout => \P48_63~combout\(8));

-- Location: LC_X10_Y10_N3
\rf_d3_mux|dout[8]~16\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[8]~16_combout\ = (\d3_mux_sel~combout\(1) & (((\d3_mux_sel~combout\(0))))) # (!\d3_mux_sel~combout\(1) & ((\d3_mux_sel~combout\(0) & ((\P48_63~combout\(8)))) # (!\d3_mux_sel~combout\(0) & (\P32_47~combout\(8)))))

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
	dataa => \d3_mux_sel~combout\(1),
	datab => \P32_47~combout\(8),
	datac => \d3_mux_sel~combout\(0),
	datad => \P48_63~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[8]~16_combout\);

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P16_31[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P16_31(8),
	combout => \P16_31~combout\(8));

-- Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P64_79[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P64_79(8),
	combout => \P64_79~combout\(8));

-- Location: LC_X10_Y10_N5
\rf_d3_mux|dout[8]~17\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[8]~17_combout\ = (\rf_d3_mux|dout[8]~16_combout\ & ((\P16_31~combout\(8)) # ((!\d3_mux_sel~combout\(1))))) # (!\rf_d3_mux|dout[8]~16_combout\ & (((\d3_mux_sel~combout\(1) & \P64_79~combout\(8)))))

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
	dataa => \rf_d3_mux|dout[8]~16_combout\,
	datab => \P16_31~combout\(8),
	datac => \d3_mux_sel~combout\(1),
	datad => \P64_79~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[8]~17_combout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P64_79[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P64_79(9),
	combout => \P64_79~combout\(9));

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P32_47[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P32_47(9),
	combout => \P32_47~combout\(9));

-- Location: LC_X1_Y7_N4
\rf_d3_mux|dout[9]~18\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[9]~18_combout\ = (\d3_mux_sel~combout\(1) & ((\P64_79~combout\(9)) # ((\d3_mux_sel~combout\(0))))) # (!\d3_mux_sel~combout\(1) & (((\P32_47~combout\(9) & !\d3_mux_sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d3_mux_sel~combout\(1),
	datab => \P64_79~combout\(9),
	datac => \P32_47~combout\(9),
	datad => \d3_mux_sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[9]~18_combout\);

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P16_31[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P16_31(9),
	combout => \P16_31~combout\(9));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P48_63[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P48_63(9),
	combout => \P48_63~combout\(9));

-- Location: LC_X1_Y7_N6
\rf_d3_mux|dout[9]~19\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[9]~19_combout\ = (\rf_d3_mux|dout[9]~18_combout\ & ((\P16_31~combout\(9)) # ((!\d3_mux_sel~combout\(0))))) # (!\rf_d3_mux|dout[9]~18_combout\ & (((\P48_63~combout\(9) & \d3_mux_sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_d3_mux|dout[9]~18_combout\,
	datab => \P16_31~combout\(9),
	datac => \P48_63~combout\(9),
	datad => \d3_mux_sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[9]~19_combout\);

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P64_79[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P64_79(10),
	combout => \P64_79~combout\(10));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P16_31[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P16_31(10),
	combout => \P16_31~combout\(10));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P32_47[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P32_47(10),
	combout => \P32_47~combout\(10));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P48_63[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P48_63(10),
	combout => \P48_63~combout\(10));

-- Location: LC_X1_Y7_N2
\rf_d3_mux|dout[10]~20\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[10]~20_combout\ = (\d3_mux_sel~combout\(1) & (((\d3_mux_sel~combout\(0))))) # (!\d3_mux_sel~combout\(1) & ((\d3_mux_sel~combout\(0) & ((\P48_63~combout\(10)))) # (!\d3_mux_sel~combout\(0) & (\P32_47~combout\(10)))))

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
	dataa => \d3_mux_sel~combout\(1),
	datab => \P32_47~combout\(10),
	datac => \P48_63~combout\(10),
	datad => \d3_mux_sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[10]~20_combout\);

-- Location: LC_X1_Y7_N5
\rf_d3_mux|dout[10]~21\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[10]~21_combout\ = (\d3_mux_sel~combout\(1) & ((\rf_d3_mux|dout[10]~20_combout\ & ((\P16_31~combout\(10)))) # (!\rf_d3_mux|dout[10]~20_combout\ & (\P64_79~combout\(10))))) # (!\d3_mux_sel~combout\(1) & (((\rf_d3_mux|dout[10]~20_combout\))))

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
	dataa => \d3_mux_sel~combout\(1),
	datab => \P64_79~combout\(10),
	datac => \P16_31~combout\(10),
	datad => \rf_d3_mux|dout[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[10]~21_combout\);

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P64_79[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P64_79(11),
	combout => \P64_79~combout\(11));

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P32_47[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P32_47(11),
	combout => \P32_47~combout\(11));

-- Location: LC_X1_Y7_N7
\rf_d3_mux|dout[11]~22\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[11]~22_combout\ = (\d3_mux_sel~combout\(1) & ((\P64_79~combout\(11)) # ((\d3_mux_sel~combout\(0))))) # (!\d3_mux_sel~combout\(1) & (((\P32_47~combout\(11) & !\d3_mux_sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d3_mux_sel~combout\(1),
	datab => \P64_79~combout\(11),
	datac => \P32_47~combout\(11),
	datad => \d3_mux_sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[11]~22_combout\);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P16_31[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P16_31(11),
	combout => \P16_31~combout\(11));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P48_63[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P48_63(11),
	combout => \P48_63~combout\(11));

-- Location: LC_X1_Y9_N2
\rf_d3_mux|dout[11]~23\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[11]~23_combout\ = (\rf_d3_mux|dout[11]~22_combout\ & ((\P16_31~combout\(11)) # ((!\d3_mux_sel~combout\(0))))) # (!\rf_d3_mux|dout[11]~22_combout\ & (((\P48_63~combout\(11) & \d3_mux_sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_d3_mux|dout[11]~22_combout\,
	datab => \P16_31~combout\(11),
	datac => \P48_63~combout\(11),
	datad => \d3_mux_sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[11]~23_combout\);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P16_31[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P16_31(12),
	combout => \P16_31~combout\(12));

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P64_79[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P64_79(12),
	combout => \P64_79~combout\(12));

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P48_63[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P48_63(12),
	combout => \P48_63~combout\(12));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P32_47[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P32_47(12),
	combout => \P32_47~combout\(12));

-- Location: LC_X1_Y7_N9
\rf_d3_mux|dout[12]~24\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[12]~24_combout\ = (\d3_mux_sel~combout\(1) & (((\d3_mux_sel~combout\(0))))) # (!\d3_mux_sel~combout\(1) & ((\d3_mux_sel~combout\(0) & (\P48_63~combout\(12))) # (!\d3_mux_sel~combout\(0) & ((\P32_47~combout\(12))))))

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
	dataa => \P48_63~combout\(12),
	datab => \P32_47~combout\(12),
	datac => \d3_mux_sel~combout\(1),
	datad => \d3_mux_sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[12]~24_combout\);

-- Location: LC_X1_Y7_N1
\rf_d3_mux|dout[12]~25\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[12]~25_combout\ = (\d3_mux_sel~combout\(1) & ((\rf_d3_mux|dout[12]~24_combout\ & (\P16_31~combout\(12))) # (!\rf_d3_mux|dout[12]~24_combout\ & ((\P64_79~combout\(12)))))) # (!\d3_mux_sel~combout\(1) & (((\rf_d3_mux|dout[12]~24_combout\))))

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
	dataa => \d3_mux_sel~combout\(1),
	datab => \P16_31~combout\(12),
	datac => \P64_79~combout\(12),
	datad => \rf_d3_mux|dout[12]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[12]~25_combout\);

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P48_63[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P48_63(13),
	combout => \P48_63~combout\(13));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P32_47[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P32_47(13),
	combout => \P32_47~combout\(13));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P64_79[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P64_79(13),
	combout => \P64_79~combout\(13));

-- Location: LC_X12_Y7_N2
\rf_d3_mux|dout[13]~26\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[13]~26_combout\ = (\d3_mux_sel~combout\(1) & ((\d3_mux_sel~combout\(0)) # ((\P64_79~combout\(13))))) # (!\d3_mux_sel~combout\(1) & (!\d3_mux_sel~combout\(0) & (\P32_47~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d3_mux_sel~combout\(1),
	datab => \d3_mux_sel~combout\(0),
	datac => \P32_47~combout\(13),
	datad => \P64_79~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[13]~26_combout\);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P16_31[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P16_31(13),
	combout => \P16_31~combout\(13));

-- Location: LC_X12_Y7_N4
\rf_d3_mux|dout[13]~27\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[13]~27_combout\ = (\rf_d3_mux|dout[13]~26_combout\ & (((\P16_31~combout\(13)) # (!\d3_mux_sel~combout\(0))))) # (!\rf_d3_mux|dout[13]~26_combout\ & (\P48_63~combout\(13) & ((\d3_mux_sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P48_63~combout\(13),
	datab => \rf_d3_mux|dout[13]~26_combout\,
	datac => \P16_31~combout\(13),
	datad => \d3_mux_sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[13]~27_combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P16_31[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P16_31(14),
	combout => \P16_31~combout\(14));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P32_47[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P32_47(14),
	combout => \P32_47~combout\(14));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P48_63[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P48_63(14),
	combout => \P48_63~combout\(14));

-- Location: LC_X7_Y7_N9
\rf_d3_mux|dout[14]~28\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[14]~28_combout\ = (\d3_mux_sel~combout\(1) & (((\d3_mux_sel~combout\(0))))) # (!\d3_mux_sel~combout\(1) & ((\d3_mux_sel~combout\(0) & ((\P48_63~combout\(14)))) # (!\d3_mux_sel~combout\(0) & (\P32_47~combout\(14)))))

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
	dataa => \d3_mux_sel~combout\(1),
	datab => \P32_47~combout\(14),
	datac => \d3_mux_sel~combout\(0),
	datad => \P48_63~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[14]~28_combout\);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P64_79[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P64_79(14),
	combout => \P64_79~combout\(14));

-- Location: LC_X7_Y7_N5
\rf_d3_mux|dout[14]~29\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[14]~29_combout\ = (\rf_d3_mux|dout[14]~28_combout\ & ((\P16_31~combout\(14)) # ((!\d3_mux_sel~combout\(1))))) # (!\rf_d3_mux|dout[14]~28_combout\ & (((\P64_79~combout\(14) & \d3_mux_sel~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P16_31~combout\(14),
	datab => \rf_d3_mux|dout[14]~28_combout\,
	datac => \P64_79~combout\(14),
	datad => \d3_mux_sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[14]~29_combout\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P64_79[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P64_79(15),
	combout => \P64_79~combout\(15));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P32_47[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P32_47(15),
	combout => \P32_47~combout\(15));

-- Location: LC_X1_Y7_N3
\rf_d3_mux|dout[15]~30\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[15]~30_combout\ = (\d3_mux_sel~combout\(1) & ((\P64_79~combout\(15)) # ((\d3_mux_sel~combout\(0))))) # (!\d3_mux_sel~combout\(1) & (((\P32_47~combout\(15) & !\d3_mux_sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P64_79~combout\(15),
	datab => \P32_47~combout\(15),
	datac => \d3_mux_sel~combout\(1),
	datad => \d3_mux_sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[15]~30_combout\);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P48_63[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P48_63(15),
	combout => \P48_63~combout\(15));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P16_31[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_P16_31(15),
	combout => \P16_31~combout\(15));

-- Location: LC_X1_Y7_N8
\rf_d3_mux|dout[15]~31\ : maxv_lcell
-- Equation(s):
-- \rf_d3_mux|dout[15]~31_combout\ = (\rf_d3_mux|dout[15]~30_combout\ & (((\P16_31~combout\(15)) # (!\d3_mux_sel~combout\(0))))) # (!\rf_d3_mux|dout[15]~30_combout\ & (\P48_63~combout\(15) & ((\d3_mux_sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_d3_mux|dout[15]~30_combout\,
	datab => \P48_63~combout\(15),
	datac => \P16_31~combout\(15),
	datad => \d3_mux_sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rf_d3_mux|dout[15]~31_combout\);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset);

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\a3_mux_out[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf_a3_mux|dout[0]~1_combout\,
	oe => VCC,
	padio => ww_a3_mux_out(0));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\a3_mux_out[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf_a3_mux|dout[1]~3_combout\,
	oe => VCC,
	padio => ww_a3_mux_out(1));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\a3_mux_out[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf_a3_mux|dout[2]~5_combout\,
	oe => VCC,
	padio => ww_a3_mux_out(2));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\d3_mux_out[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf_d3_mux|dout[0]~1_combout\,
	oe => VCC,
	padio => ww_d3_mux_out(0));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\d3_mux_out[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf_d3_mux|dout[1]~3_combout\,
	oe => VCC,
	padio => ww_d3_mux_out(1));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\d3_mux_out[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf_d3_mux|dout[2]~5_combout\,
	oe => VCC,
	padio => ww_d3_mux_out(2));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\d3_mux_out[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf_d3_mux|dout[3]~7_combout\,
	oe => VCC,
	padio => ww_d3_mux_out(3));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\d3_mux_out[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf_d3_mux|dout[4]~9_combout\,
	oe => VCC,
	padio => ww_d3_mux_out(4));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\d3_mux_out[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf_d3_mux|dout[5]~11_combout\,
	oe => VCC,
	padio => ww_d3_mux_out(5));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\d3_mux_out[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf_d3_mux|dout[6]~13_combout\,
	oe => VCC,
	padio => ww_d3_mux_out(6));

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\d3_mux_out[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf_d3_mux|dout[7]~15_combout\,
	oe => VCC,
	padio => ww_d3_mux_out(7));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\d3_mux_out[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf_d3_mux|dout[8]~17_combout\,
	oe => VCC,
	padio => ww_d3_mux_out(8));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\d3_mux_out[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf_d3_mux|dout[9]~19_combout\,
	oe => VCC,
	padio => ww_d3_mux_out(9));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\d3_mux_out[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf_d3_mux|dout[10]~21_combout\,
	oe => VCC,
	padio => ww_d3_mux_out(10));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\d3_mux_out[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf_d3_mux|dout[11]~23_combout\,
	oe => VCC,
	padio => ww_d3_mux_out(11));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\d3_mux_out[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf_d3_mux|dout[12]~25_combout\,
	oe => VCC,
	padio => ww_d3_mux_out(12));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\d3_mux_out[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf_d3_mux|dout[13]~27_combout\,
	oe => VCC,
	padio => ww_d3_mux_out(13));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\d3_mux_out[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf_d3_mux|dout[14]~29_combout\,
	oe => VCC,
	padio => ww_d3_mux_out(14));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\d3_mux_out[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rf_d3_mux|dout[15]~31_combout\,
	oe => VCC,
	padio => ww_d3_mux_out(15));
END structure;


