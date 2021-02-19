library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux21_N is
	generic(N: positive := 32);
	port(in0 	: in std_logic_vector(N-1 downto 0);
		  in1 	: in std_logic_vector(N-1 downto 0);
		  sel 	: in std_logic;
		  MuxOut : out std_logic_vector(N-1 downto 0));
end MUX2N;

architecture Behavioral of MUX2N is
begin
	process(sel, in0, in1)
	begin
		if(sel = '0') then
			MuxOut <= in0;
		else 
			MuxOut <= in1;
		end if;
	end process;
end Behavioral;