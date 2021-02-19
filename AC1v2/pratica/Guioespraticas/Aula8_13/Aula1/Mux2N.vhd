library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2N is
	generic(N: positive := 32);
	port(in1 	: in std_logic_vector(N-1 downto 0);
		  in2 	: in std_logic_vector(N-1 downto 0);
		  sel 	: in std_logic;
		  output : out std_logic_vector(N-1 downto 0));
end MUX2N;

architecture Behavioral of MUX2N is
begin
	process(sel, in1, in2)
	begin
		if(sel = '0') then
			output <= in1;
		else 
			output <= in2;
		end if;
	end process;
end Behavioral;