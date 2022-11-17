library ieee;
use ieee.std_logic_1164.all;
entity Full_Adder_test is end full_Adder_test;

architecture behaviour of full_Adder_test is

	component Full_Adder 
	port {A, B, Cin, CLK : in std_logic;
		f, Cout : out std_logic);
	end component;
	
	signal A : std_logic := '0';
	signal B : std_logic := '0';
	signal Cin : std_logic := '0';
	signal CLK : std_logic := '0';
	signal f : std_logic;
	signal Cout : std_logic;
	
constant clock_period time := 20ns;

begin
	uut: Full_Adder
	port map( A=>A, B=>B, Cin=>Cin, CLK=>CLK, f=>f, Cout=>Cout);
	
	clock_process:process
	begin
		CLK<='0';
		wait for clock_period/2;
		CLK<='1';
		wait for clock_period/2;
	end process;
	
	stim_proc: process 
	begin
		A<='0';B<='0';Cin<='0'; wait for 30ns;
		A<='0';B<='0';Cin<='1'; wait for 30ns;
		A<='0';B<='1';Cin<='0'; wait for 30ns;
		A<='0';B<='1';Cin<='1'; wait for 30ns;
		A<='1';B<='0';Cin<='0'; wait for 30ns;
		A<='1';B<='0';Cin<='1'; wait for 30ns;
		A<='1';B<='1';Cin<='0'; wait for 30ns;
		A<='1';B<='1';Cin<='1'; wait for 30ns;
		wait;
	end process;
end;