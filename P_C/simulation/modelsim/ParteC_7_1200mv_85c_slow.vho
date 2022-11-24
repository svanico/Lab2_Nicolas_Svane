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

-- DATE "11/22/2022 07:33:28"

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

ENTITY 	Esquematico_C IS
    PORT (
	V : OUT std_logic;
	A3 : IN std_logic;
	CLK : IN std_logic;
	B3 : IN std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	Cin : IN std_logic;
	Z : OUT std_logic;
	Sign : OUT std_logic;
	Carry : OUT std_logic
	);
END Esquematico_C;

-- Design Ports Information
-- V	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Carry	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Esquematico_C IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_V : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_Sign : std_logic;
SIGNAL ww_Carry : std_logic;
SIGNAL \inst23|Q~q\ : std_logic;
SIGNAL \inst16|Q~q\ : std_logic;
SIGNAL \inst|f~0_combout\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \inst23|Q~feeder_combout\ : std_logic;
SIGNAL \V~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \Sign~output_o\ : std_logic;
SIGNAL \Carry~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \inst21|Q~q\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \inst20|Q~feeder_combout\ : std_logic;
SIGNAL \inst20|Q~q\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \inst17|Q~feeder_combout\ : std_logic;
SIGNAL \inst17|Q~q\ : std_logic;
SIGNAL \inst|Cout~0_combout\ : std_logic;
SIGNAL \inst|Cout~1_combout\ : std_logic;
SIGNAL \inst3|f~combout\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \inst19|Q~feeder_combout\ : std_logic;
SIGNAL \inst19|Q~q\ : std_logic;
SIGNAL \inst3|Cout~0_combout\ : std_logic;
SIGNAL \inst4|f~0_combout\ : std_logic;
SIGNAL \inst4|Cout~0_combout\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \inst18|Q~q\ : std_logic;
SIGNAL \inst4|Cout~1_combout\ : std_logic;
SIGNAL \inst5|f~combout\ : std_logic;
SIGNAL \inst6~combout\ : std_logic;
SIGNAL \inst14|Q~q\ : std_logic;
SIGNAL \inst10|Q~q\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \inst22|Q~q\ : std_logic;
SIGNAL \inst5|Cout~0_combout\ : std_logic;
SIGNAL \inst2|Q~q\ : std_logic;

BEGIN

V <= ww_V;
ww_A3 <= A3;
ww_CLK <= CLK;
ww_B3 <= B3;
ww_A2 <= A2;
ww_B2 <= B2;
ww_A1 <= A1;
ww_B1 <= B1;
ww_A0 <= A0;
ww_B0 <= B0;
ww_Cin <= Cin;
Z <= ww_Z;
Sign <= ww_Sign;
Carry <= ww_Carry;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: FF_X72_Y1_N23
\inst23|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst23|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|Q~q\);

-- Location: FF_X72_Y1_N31
\inst16|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \B1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|Q~q\);

-- Location: LCCOMB_X72_Y1_N16
\inst|f~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|f~0_combout\ = \inst20|Q~q\ $ (\Cin~input_o\ $ (\inst17|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Q~q\,
	datab => \Cin~input_o\,
	datad => \inst17|Q~q\,
	combout => \inst|f~0_combout\);

-- Location: IOIBUF_X52_Y0_N15
\Cin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X81_Y0_N22
\A2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\B1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: LCCOMB_X72_Y1_N22
\inst23|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|Q~feeder_combout\ = \A2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A2~input_o\,
	combout => \inst23|Q~feeder_combout\);

-- Location: IOOBUF_X74_Y0_N23
\V~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \V~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\Z~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|Q~q\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\Sign~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Q~q\,
	devoe => ww_devoe,
	o => \Sign~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\Carry~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Q~q\,
	devoe => ww_devoe,
	o => \Carry~output_o\);

-- Location: IOIBUF_X20_Y73_N22
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X85_Y0_N8
\A1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: FF_X72_Y1_N17
\inst21|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \A1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|Q~q\);

-- Location: IOIBUF_X56_Y0_N22
\A0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: LCCOMB_X72_Y1_N8
\inst20|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Q~feeder_combout\ = \A0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A0~input_o\,
	combout => \inst20|Q~feeder_combout\);

-- Location: FF_X72_Y1_N9
\inst20|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst20|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Q~q\);

-- Location: IOIBUF_X56_Y0_N15
\B0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: LCCOMB_X72_Y1_N18
\inst17|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Q~feeder_combout\ = \B0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B0~input_o\,
	combout => \inst17|Q~feeder_combout\);

-- Location: FF_X72_Y1_N19
\inst17|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst17|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|Q~q\);

-- Location: LCCOMB_X72_Y1_N24
\inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Cout~0_combout\ = (\inst20|Q~q\ & \inst17|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|Q~q\,
	datad => \inst17|Q~q\,
	combout => \inst|Cout~0_combout\);

-- Location: LCCOMB_X72_Y1_N26
\inst|Cout~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Cout~1_combout\ = (\Cin~input_o\ & ((\inst20|Q~q\) # (\inst17|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \inst20|Q~q\,
	datad => \inst17|Q~q\,
	combout => \inst|Cout~1_combout\);

-- Location: LCCOMB_X72_Y1_N20
\inst3|f\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|f~combout\ = \inst16|Q~q\ $ (\inst21|Q~q\ $ (((\inst|Cout~0_combout\) # (\inst|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Q~q\,
	datab => \inst21|Q~q\,
	datac => \inst|Cout~0_combout\,
	datad => \inst|Cout~1_combout\,
	combout => \inst3|f~combout\);

-- Location: IOIBUF_X67_Y0_N15
\B2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: LCCOMB_X72_Y1_N4
\inst19|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19|Q~feeder_combout\ = \B2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B2~input_o\,
	combout => \inst19|Q~feeder_combout\);

-- Location: FF_X72_Y1_N5
\inst19|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst19|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Q~q\);

-- Location: LCCOMB_X72_Y1_N12
\inst3|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Cout~0_combout\ = (\inst16|Q~q\ & ((\inst21|Q~q\) # ((\inst|Cout~1_combout\) # (\inst|Cout~0_combout\)))) # (!\inst16|Q~q\ & (\inst21|Q~q\ & ((\inst|Cout~1_combout\) # (\inst|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Q~q\,
	datab => \inst21|Q~q\,
	datac => \inst|Cout~1_combout\,
	datad => \inst|Cout~0_combout\,
	combout => \inst3|Cout~0_combout\);

-- Location: LCCOMB_X72_Y1_N14
\inst4|f~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|f~0_combout\ = \inst23|Q~q\ $ (\inst19|Q~q\ $ (\inst3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|Q~q\,
	datac => \inst19|Q~q\,
	datad => \inst3|Cout~0_combout\,
	combout => \inst4|f~0_combout\);

-- Location: LCCOMB_X72_Y1_N2
\inst4|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Cout~0_combout\ = (\inst23|Q~q\ & \inst19|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|Q~q\,
	datac => \inst19|Q~q\,
	combout => \inst4|Cout~0_combout\);

-- Location: IOIBUF_X83_Y0_N1
\B3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

-- Location: FF_X72_Y1_N27
\inst18|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \B3~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|Q~q\);

-- Location: LCCOMB_X72_Y1_N10
\inst4|Cout~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Cout~1_combout\ = (\inst3|Cout~0_combout\ & ((\inst23|Q~q\) # (\inst19|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|Q~q\,
	datac => \inst19|Q~q\,
	datad => \inst3|Cout~0_combout\,
	combout => \inst4|Cout~1_combout\);

-- Location: LCCOMB_X72_Y1_N6
\inst5|f\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|f~combout\ = \inst22|Q~q\ $ (\inst18|Q~q\ $ (((\inst4|Cout~0_combout\) # (\inst4|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|Q~q\,
	datab => \inst4|Cout~0_combout\,
	datac => \inst18|Q~q\,
	datad => \inst4|Cout~1_combout\,
	combout => \inst5|f~combout\);

-- Location: LCCOMB_X72_Y1_N28
inst6 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6~combout\ = (!\inst|f~0_combout\ & (!\inst3|f~combout\ & (!\inst4|f~0_combout\ & !\inst5|f~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f~0_combout\,
	datab => \inst3|f~combout\,
	datac => \inst4|f~0_combout\,
	datad => \inst5|f~combout\,
	combout => \inst6~combout\);

-- Location: FF_X72_Y1_N29
\inst14|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|Q~q\);

-- Location: FF_X72_Y1_N7
\inst10|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst5|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Q~q\);

-- Location: IOIBUF_X94_Y0_N8
\A3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: FF_X72_Y1_N25
\inst22|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \A3~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|Q~q\);

-- Location: LCCOMB_X72_Y1_N0
\inst5|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Cout~0_combout\ = (\inst18|Q~q\ & ((\inst4|Cout~0_combout\) # ((\inst4|Cout~1_combout\) # (\inst22|Q~q\)))) # (!\inst18|Q~q\ & (\inst22|Q~q\ & ((\inst4|Cout~0_combout\) # (\inst4|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Cout~0_combout\,
	datab => \inst18|Q~q\,
	datac => \inst4|Cout~1_combout\,
	datad => \inst22|Q~q\,
	combout => \inst5|Cout~0_combout\);

-- Location: FF_X72_Y1_N1
\inst2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst5|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Q~q\);

ww_V <= \V~output_o\;

ww_Z <= \Z~output_o\;

ww_Sign <= \Sign~output_o\;

ww_Carry <= \Carry~output_o\;
END structure;


