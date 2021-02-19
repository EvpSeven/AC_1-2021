library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

library work;
use work.MIPS_pkg.all;
use work.DisplayUnit_pkg.all;

entity ALUcontrol is
	port(ALUop			: in std_logic_vector(1 downto 0);
		  funct			: in std_logic_vector(5 downto 0);
		  ALUcontr	   : out std_logic_vector(2 downto 0));
end ALUcontrol;

architecture Behavioral of ALUcontrol is
begin
	process(ALUop,funct)
	begin
		case ALUop is
			when "00" => -- LW, SW, ADDI
				ALUcontr <= "010";
			when "01" => -- BEQ
				ALUcontr <= "110";
			when "10" => -- R-Type instructions
				case funct is
					when "100000" => ALUcontr <= "010";		-- ADD
					when "100010" => ALUcontr <= "110";		-- SUB
					when "100100" => ALUcontr <= "000";		-- AND
					when "100101" => ALUcontr <= "001";		-- OR
					when "101010" => ALUcontr <= "111";		-- SLT
					when others	  => ALUcontr <= "010";
				end case;
			when "11" => -- SLTI
				ALUcontr <= "111";
		end case;
	end process;
end Behavioral;