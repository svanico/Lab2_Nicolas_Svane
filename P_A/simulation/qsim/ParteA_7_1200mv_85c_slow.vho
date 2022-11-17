-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/16/2022 17:46:59"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ParteA IS
    PORT (
	\OUT\ : OUT std_logic;
	IN2 : IN std_logic;
	IN1 : IN std_logic
	);
END ParteA;

-- Design Ports Information
-- OUT	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN2	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ParteA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_OUT\ : std_logic;
SIGNAL ww_IN2 : std_logic;
SIGNAL ww_IN1 : std_logic;
SIGNAL \OUT~output_o\ : std_logic;
SIGNAL \IN1~input_o\ : std_logic;
SIGNAL \IN2~input_o\ : std_logic;
SIGNAL \inst~combout\ : std_logic;
SIGNAL \ALT_INV_inst~combout\ : std_logic;

BEGIN

\OUT\ <= \ww_OUT\;
ww_IN2 <= IN2;
ww_IN1 <= IN1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst~combout\ <= NOT \inst~combout\;

-- Location: IOOBUF_X0_Y47_N16
\OUT~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst~combout\,
	devoe => ww_devoe,
	o => \OUT~output_o\);

-- Location: IOIBUF_X0_Y47_N1
\IN1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1,
	o => \IN1~input_o\);

-- Location: IOIBUF_X0_Y47_N22
\IN2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN2,
	o => \IN2~input_o\);

-- Location: LCCOMB_X1_Y47_N0
inst : cycloneiii_lcell_comb
-- Equation(s):
-- \inst~combout\ = (\IN1~input_o\) # (\IN2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN1~input_o\,
	datad => \IN2~input_o\,
	combout => \inst~combout\);

\ww_OUT\ <= \OUT~output_o\;
END structure;


