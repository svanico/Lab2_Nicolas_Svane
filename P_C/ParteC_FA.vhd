library ieee;
use ieee.std_logic_1164.all;

entity ParteC_FA is
	port(A,B,Cin,CLK : in std_logic;
	f,Cout : out std_logic);
end ParteC_FA;

architecture behavioural of ParteC_FA is
begin
	f <= A xor B xor Cin;
	Cout <= (A and B) or (Cin and (A xor B));
end behavioural;