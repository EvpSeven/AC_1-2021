library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ALUgen is
	generic (SIZE:positive:=32);
	port(	a 		: in 	std_logic_vector(SIZE-1 downto 0);
			b 		: in 	std_logic_vector(SIZE-1 downto 0);
			oper 	: in 	std_logic_vector( 2 downto 0);
			res 	: out std_logic_vector(SIZE-1 downto 0);
			zero 	: out std_logic;
			ovf 	: out std_logic);
end ALUgen;

architecture Behavioral of ALUgen is

signal s_res : std_logic_vector(SIZE-1 downto 0);
signal s_b : unsigned(SIZE-1 downto 0);

begin
	s_b 	<= not(unsigned(b)) + 1 when oper = "110" else
				unsigned(b); -- complemento para 2 (se subtração)
	res 	<= s_res;
	zero 	<= '1' when s_res = X"00000000" else '0';
	ovf 	<= (not a(SIZE-1) and not s_b(SIZE-1) and s_res(SIZE-1)) or
				(a(SIZE-1) and s_b(SIZE-1) and not s_res(SIZE-1));

process(oper, a, b, s_b)
begin
	case oper is
		when "000" => -- AND
			s_res <= a and b;
		when "001" => -- OR
			s_res <= a or b;
		when "010" => -- ADD
			s_res <= std_logic_vector(unsigned(a) + s_b);
		when "011" => -- XOR
			s_res <= a xor b;
		when "100" => -- NOR
			s_res <= a nor b;
		when "110" => -- SUB
			s_res <= std_logic_vector(unsigned(a) + s_b);
		when "111" => -- SLT
			if(signed(a) < signed(b)) then
				s_res <= X"00000001";
			else
				s_res <= (others => '0');
			end if;
		when others =>
			s_res <= (others => '-');
	end case;
end process;
end Behavioral;