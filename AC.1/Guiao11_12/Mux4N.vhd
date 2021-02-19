library ieee;
use ieee.std_logic_1164.all;

entity Mux4N is
	generic(N: positive := 32);
	port(oper0 :in std_logic_vector(N-1 downto 0);
		  oper1 :in std_logic_vector(N-1 downto 0);
		  oper2 :in std_logic_vector(N-1 downto 0);
		  oper3 :in std_logic_vector(N-1 downto 0);
		  sel: in std_logic_vector(1 downto 0);
		  muxOut : out std_logic_vector(N-1 downto 0));
end Mux4N;

architecture Behavioral of Mux4N is
begin
		  muxOut <= oper0 when sel="00" else
						oper1 when sel="01" else
						oper2 when sel="10" else
						oper3;
end Behavioral; 