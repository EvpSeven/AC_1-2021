library ieee;
use ieee.std_logic_1164.all;

entity ALUControlUnit is
		port( ALUop : in std_logic_vector(1 downto 0);
				funct : in std_logic_vector(5 downto 0);
				ALUcontrol : out std_logic_vector(2 downto 0));
end ALUControlUnit;

architecture Behavioral of ALUControlUnit is
begin
	process(ALUop, funct)
	begin
		
		case ALUop is  when "00" =>     ALUcontrol <= "010";  -- LW, SW, ADDI
							when "01" =>     ALUcontrol <= "110";  -- BEQ
							when "10" => 									-- R-Type instructions
								
									case funct is	when "100000" => ALUcontrol <= "010"; -- ADD
														when "100010" => ALUcontrol <= "110"; -- SUB
														when "100100" => ALUcontrol <= "000"; -- AND
														when "100101" => ALUcontrol <= "001"; -- OR
														when "101010" => ALUcontrol <= "111"; -- SLT
														when "100110" => ALUcontrol <= "011";
														when "100111" => ALUcontrol <= "100";
														
														when others => ALUcontrol <= "010";
									end case;
							when "11" => 		ALUcontrol <= "111"; -- SLTI

		end case;
		
	end process;
end Behavioral;