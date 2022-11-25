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

-- DATE "11/25/2022 14:27:44"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sec_luces IS
    PORT (
	reset : IN std_logic;
	clock : IN std_logic;
	x : IN std_logic;
	luz1 : OUT std_logic;
	luz2 : OUT std_logic;
	luz3 : OUT std_logic;
	luz4 : OUT std_logic
	);
END sec_luces;

-- Design Ports Information
-- luz1	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- luz2	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- luz3	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- luz4	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sec_luces IS
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
SIGNAL ww_clock : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_luz1 : std_logic;
SIGNAL ww_luz2 : std_logic;
SIGNAL ww_luz3 : std_logic;
SIGNAL ww_luz4 : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \x~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \luz1~output_o\ : std_logic;
SIGNAL \luz2~output_o\ : std_logic;
SIGNAL \luz3~output_o\ : std_logic;
SIGNAL \luz4~output_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \fstate.state_bit_0~1_combout\ : std_logic;
SIGNAL \fstate.state_bit_0~2_combout\ : std_logic;
SIGNAL \fstate.state_bit_0~q\ : std_logic;
SIGNAL \fstate.state_bit_1~0_combout\ : std_logic;
SIGNAL \fstate.state_bit_1~1_combout\ : std_logic;
SIGNAL \fstate.state_bit_1~q\ : std_logic;
SIGNAL \fstate.state_bit_2~0_combout\ : std_logic;
SIGNAL \fstate.state_bit_2~q\ : std_logic;
SIGNAL \fstate.state_bit_0~0_combout\ : std_logic;
SIGNAL \luz2~0_combout\ : std_logic;
SIGNAL \luz4~0_combout\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clock <= clock;
ww_x <= x;
luz1 <= ww_luz1;
luz2 <= ww_luz2;
luz3 <= ww_luz3;
luz4 <= ww_luz4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: IOIBUF_X0_Y53_N8
\x~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: IOIBUF_X0_Y36_N1
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G4
\clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOOBUF_X0_Y52_N16
\luz1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fstate.state_bit_0~0_combout\,
	devoe => ww_devoe,
	o => \luz1~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\luz2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \luz2~0_combout\,
	devoe => ww_devoe,
	o => \luz2~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\luz3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \luz2~0_combout\,
	devoe => ww_devoe,
	o => \luz3~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\luz4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \luz4~0_combout\,
	devoe => ww_devoe,
	o => \luz4~output_o\);

-- Location: IOIBUF_X0_Y52_N1
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X1_Y52_N18
\fstate.state_bit_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.state_bit_0~1_combout\ = (!\fstate.state_bit_2~q\ & (!\fstate.state_bit_0~q\ & ((\x~input_o\) # (!\fstate.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~input_o\,
	datab => \fstate.state_bit_2~q\,
	datac => \fstate.state_bit_0~q\,
	datad => \fstate.state_bit_1~q\,
	combout => \fstate.state_bit_0~1_combout\);

-- Location: LCCOMB_X1_Y52_N30
\fstate.state_bit_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.state_bit_0~2_combout\ = (!\reset~input_o\ & \fstate.state_bit_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \fstate.state_bit_0~1_combout\,
	combout => \fstate.state_bit_0~2_combout\);

-- Location: FF_X1_Y52_N31
\fstate.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fstate.state_bit_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.state_bit_0~q\);

-- Location: LCCOMB_X1_Y52_N24
\fstate.state_bit_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.state_bit_1~0_combout\ = (\fstate.state_bit_0~q\) # ((\x~input_o\ & !\fstate.state_bit_2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~input_o\,
	datac => \fstate.state_bit_0~q\,
	datad => \fstate.state_bit_2~q\,
	combout => \fstate.state_bit_1~0_combout\);

-- Location: LCCOMB_X1_Y52_N16
\fstate.state_bit_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.state_bit_1~1_combout\ = (!\reset~input_o\ & ((\fstate.state_bit_2~q\ & (!\fstate.state_bit_1~q\ & !\fstate.state_bit_1~0_combout\)) # (!\fstate.state_bit_2~q\ & (\fstate.state_bit_1~q\ $ (\fstate.state_bit_1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.state_bit_2~q\,
	datab => \reset~input_o\,
	datac => \fstate.state_bit_1~q\,
	datad => \fstate.state_bit_1~0_combout\,
	combout => \fstate.state_bit_1~1_combout\);

-- Location: FF_X1_Y52_N17
\fstate.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fstate.state_bit_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.state_bit_1~q\);

-- Location: LCCOMB_X1_Y52_N14
\fstate.state_bit_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.state_bit_2~0_combout\ = (!\reset~input_o\ & (\fstate.state_bit_1~q\ & ((\fstate.state_bit_0~q\) # (!\fstate.state_bit_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.state_bit_0~q\,
	datab => \reset~input_o\,
	datac => \fstate.state_bit_2~q\,
	datad => \fstate.state_bit_1~q\,
	combout => \fstate.state_bit_2~0_combout\);

-- Location: FF_X1_Y52_N15
\fstate.state_bit_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fstate.state_bit_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.state_bit_2~q\);

-- Location: LCCOMB_X1_Y52_N12
\fstate.state_bit_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.state_bit_0~0_combout\ = (!\fstate.state_bit_2~q\ & (!\reset~input_o\ & !\fstate.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.state_bit_2~q\,
	datac => \reset~input_o\,
	datad => \fstate.state_bit_1~q\,
	combout => \fstate.state_bit_0~0_combout\);

-- Location: LCCOMB_X1_Y52_N20
\luz2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \luz2~0_combout\ = (!\reset~input_o\ & (\fstate.state_bit_0~q\ $ (((\fstate.state_bit_2~q\) # (!\fstate.state_bit_1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.state_bit_2~q\,
	datab => \reset~input_o\,
	datac => \fstate.state_bit_0~q\,
	datad => \fstate.state_bit_1~q\,
	combout => \luz2~0_combout\);

-- Location: LCCOMB_X1_Y52_N22
\luz4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \luz4~0_combout\ = (!\reset~input_o\ & ((\fstate.state_bit_2~q\ & (\fstate.state_bit_0~q\ & !\fstate.state_bit_1~q\)) # (!\fstate.state_bit_2~q\ & ((\fstate.state_bit_0~q\) # (!\fstate.state_bit_1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.state_bit_2~q\,
	datab => \reset~input_o\,
	datac => \fstate.state_bit_0~q\,
	datad => \fstate.state_bit_1~q\,
	combout => \luz4~0_combout\);

ww_luz1 <= \luz1~output_o\;

ww_luz2 <= \luz2~output_o\;

ww_luz3 <= \luz3~output_o\;

ww_luz4 <= \luz4~output_o\;
END structure;


