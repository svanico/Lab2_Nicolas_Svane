library ieee;
use ieee.std_logic_1164.all;

entity Full_Adder is
	port(A,B,Cin,CLK : in std_logic;
	f,Cout : out std_logic);
end Full_Adder;

architecture arch of Full_Adder is

component D_FF
	port(D,CLK: in std_logic;
			Q: out std_logic);
	end component;
	
	signal aa,bb,ci,co,z : std_logic;
begin
	z <= aa xor bb xor ci;
	co <= (aa and bb) or (ci and (a xor b));
	
	D1: D_FF port map (A,CLK,aa);
	D2: D_FF port map (B,CLK,bb);
	D3: D_FF port map (Cin,CLK,ci);
	D4: D_FF port map (co,CLK,Cout);
	D5: D_FF port map (z,CLK,f);
end arch;