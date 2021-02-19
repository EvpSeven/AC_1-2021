library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MUX2to1gen is
generic(SIZE:positive:=32);
port(DataIn1:in std_logic_vector(SIZE-1 downto 0);
	  DataIn2:in std_logic_vector(SIZE-1 downto 0);
	  sel    :in std_logic;
	  DataOut:out std_logic_vector(SIZE-1 downto 0));
	  
end MUX2to1gen;

architecture Behavioral of MUX2to1gen is
begin
		process(sel)
	begin
		if(sel='0')then
			DataOut<=DataIn1;
		else 
			DataOut<=DataIn2;
		end if;
	end process;

end Behavioral;