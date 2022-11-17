library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ParteA_NOR is
	port(sw1, sw2: in std_logic;
	LED: out std_logic);
end ParteA_NOR;

architecture arq of ParteA_NOR is
begin
	LED <= sw1 nor sw2;
end arq;