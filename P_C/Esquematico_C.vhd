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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Tue Nov 22 13:54:02 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Esquematico_C IS 
	PORT
	(
		CLK :  IN  STD_LOGIC;
		Cin :  IN  STD_LOGIC;
		B0 :  IN  STD_LOGIC;
		B1 :  IN  STD_LOGIC;
		B2 :  IN  STD_LOGIC;
		B3 :  IN  STD_LOGIC;
		A0 :  IN  STD_LOGIC;
		A1 :  IN  STD_LOGIC;
		A2 :  IN  STD_LOGIC;
		A3 :  IN  STD_LOGIC;
		V :  OUT  STD_LOGIC;
		Z :  OUT  STD_LOGIC;
		Sign :  OUT  STD_LOGIC;
		Carry :  OUT  STD_LOGIC;
		F0 :  OUT  STD_LOGIC;
		F1 :  OUT  STD_LOGIC;
		F2 :  OUT  STD_LOGIC;
		F3 :  OUT  STD_LOGIC
	);
END Esquematico_C;

ARCHITECTURE bdf_type OF Esquematico_C IS 

COMPONENT partec_fa
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 Cin : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 f : OUT STD_LOGIC;
		 Cout : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT d_ff
	PORT(D : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 Q : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_34 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_35 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_37 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_38 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_39 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC;


BEGIN 



b2v_inst : partec_fa
PORT MAP(A => SYNTHESIZED_WIRE_0,
		 B => SYNTHESIZED_WIRE_1,
		 Cin => Cin,
		 CLK => CLK,
		 f => SYNTHESIZED_WIRE_37,
		 Cout => SYNTHESIZED_WIRE_15);


b2v_inst10 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_34,
		 CLK => CLK,
		 Q => Sign);


SYNTHESIZED_WIRE_33 <= NOT(SYNTHESIZED_WIRE_34);



SYNTHESIZED_WIRE_29 <= NOT(SYNTHESIZED_WIRE_35);



SYNTHESIZED_WIRE_28 <= NOT(SYNTHESIZED_WIRE_36);



b2v_inst14 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_6,
		 CLK => CLK,
		 Q => Z);


b2v_inst15 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_7,
		 CLK => CLK,
		 Q => V);


b2v_inst16 : d_ff
PORT MAP(D => B1,
		 CLK => CLK,
		 Q => SYNTHESIZED_WIRE_14);


b2v_inst17 : d_ff
PORT MAP(D => B0,
		 CLK => CLK,
		 Q => SYNTHESIZED_WIRE_1);


b2v_inst18 : d_ff
PORT MAP(D => B3,
		 CLK => CLK,
		 Q => SYNTHESIZED_WIRE_35);


b2v_inst19 : d_ff
PORT MAP(D => B2,
		 CLK => CLK,
		 Q => SYNTHESIZED_WIRE_17);


b2v_inst2 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_8,
		 CLK => CLK,
		 Q => Carry);


b2v_inst20 : d_ff
PORT MAP(D => A0,
		 CLK => CLK,
		 Q => SYNTHESIZED_WIRE_0);


b2v_inst21 : d_ff
PORT MAP(D => A1,
		 CLK => CLK,
		 Q => SYNTHESIZED_WIRE_13);


b2v_inst22 : d_ff
PORT MAP(D => A3,
		 CLK => CLK,
		 Q => SYNTHESIZED_WIRE_36);


b2v_inst23 : d_ff
PORT MAP(D => A2,
		 CLK => CLK,
		 Q => SYNTHESIZED_WIRE_16);


b2v_inst24 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_37,
		 CLK => CLK,
		 Q => F0);


b2v_inst25 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_38,
		 CLK => CLK,
		 Q => F1);


b2v_inst26 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_39,
		 CLK => CLK,
		 Q => F2);


b2v_inst27 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_34,
		 CLK => CLK,
		 Q => F3);


b2v_inst3 : partec_fa
PORT MAP(A => SYNTHESIZED_WIRE_13,
		 B => SYNTHESIZED_WIRE_14,
		 Cin => SYNTHESIZED_WIRE_15,
		 CLK => CLK,
		 f => SYNTHESIZED_WIRE_38,
		 Cout => SYNTHESIZED_WIRE_18);


b2v_inst4 : partec_fa
PORT MAP(A => SYNTHESIZED_WIRE_16,
		 B => SYNTHESIZED_WIRE_17,
		 Cin => SYNTHESIZED_WIRE_18,
		 CLK => CLK,
		 f => SYNTHESIZED_WIRE_39,
		 Cout => SYNTHESIZED_WIRE_21);


b2v_inst5 : partec_fa
PORT MAP(A => SYNTHESIZED_WIRE_36,
		 B => SYNTHESIZED_WIRE_35,
		 Cin => SYNTHESIZED_WIRE_21,
		 CLK => CLK,
		 f => SYNTHESIZED_WIRE_34,
		 Cout => SYNTHESIZED_WIRE_8);


SYNTHESIZED_WIRE_6 <= NOT(SYNTHESIZED_WIRE_37 OR SYNTHESIZED_WIRE_39 OR SYNTHESIZED_WIRE_38 OR SYNTHESIZED_WIRE_34);


SYNTHESIZED_WIRE_7 <= SYNTHESIZED_WIRE_26 OR SYNTHESIZED_WIRE_27;


SYNTHESIZED_WIRE_27 <= SYNTHESIZED_WIRE_28 AND SYNTHESIZED_WIRE_29 AND SYNTHESIZED_WIRE_34;


SYNTHESIZED_WIRE_26 <= SYNTHESIZED_WIRE_36 AND SYNTHESIZED_WIRE_35 AND SYNTHESIZED_WIRE_33;


END bdf_type;