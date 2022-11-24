library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;

entity D_FF is
	port (D,CLK: in std_logic;
			Q:out std_logic);
end D_FF;

architecture arch of D_FF is
begin	
	process (CLK)
	begin
	if (CLK='1' and CLK'event) then
	Q<=D;
	end if;
	end process;
end arch;