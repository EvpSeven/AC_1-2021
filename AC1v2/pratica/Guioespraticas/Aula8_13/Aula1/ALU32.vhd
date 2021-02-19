library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

library work;
use work.MIPS_pkg.all;
use work.DisplayUnit_pkg.all;

entity ALU32 is
	port(op1		  : in std_logic_vector(31 downto 0);
		  op2		  : in std_logic_vector(31 downto 0);
		  operation: in std_logic_vector(2 downto 0);
		  result	  : out std_logic_vector(31 downto 0);
		  zero	  : out std_logic);
end ALU32;

architecture Behavioral of ALU32 is
	signal s_op1,s_op2,s_result: unsigned(31 downto 0);
	signal s_zero: std_logic;
begin
	s_op1 <= unsigned(op1);
	s_op2 <= unsigned(op2);
	zero <= '1' when s_result = X"00000000" else '0';
	process(operation, s_op1, s_op2, op1, op2)
	begin
		case operation is
			when "000" =>
				s_result <= s_op1 and s_op2;
			when "001" =>
				s_result <= s_op1 or s_op2;
			when "010" =>
				s_result <= s_op1 + s_op2;
			when "011"=>
				s_result <= s_op1 xor s_op2;
			when "100"=>
				s_result <= s_op1 nor s_op2;
			when "110"=>
				s_result <= s_op1 - s_op2;
			when "111"=>
				if(signed(op1) < signed(op2)) then
					s_result <= X"00000001";
				else 
					s_result <= (others => '0');
				end if;
			when others=>
				s_result <= (others => '-');
		end case;
	end process;
	result <= std_logic_vector(s_result);
end Behavioral;