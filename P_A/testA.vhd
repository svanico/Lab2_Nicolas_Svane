library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity testA is end testA;
architecture testarch of testA is 
	component ParteA_NOR
	port(sw1,sw2: in std_logic;
	LED: out std_logic);
	end component;
	
	signal sw1: std_logic := '0';
	signal sw2: std_logic := '0';
	
	signal LED: std_logic;
	
begin
	uut: parteA_NOR 
	port map (sw1=>sw1,sw2=>sw2,LED=>LED);
	
	stim_proc: process
	begin	
		sw1<='0';sw2<='0'; wait for 20ns;
		sw1<='0';sw2<='1'; wait for 20ns;
		sw1<='1';sw2<='0'; wait for 20ns;
		sw1<='1';sw2<='1'; wait for 20ns;
		wait;
	end process;
end;