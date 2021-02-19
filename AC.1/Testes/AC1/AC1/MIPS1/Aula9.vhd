	architecture Behavioral of Aula9 is
	begin
		process(ALUop, funct)
	begin
case ALUop is
	when "00" => -- LW, SW, ADDI
ALUcontrol <= "010";
	when "01" => -- BEQ
ALUcontrol <= "110";
	when "10" => -- R-Type instructions
case funct is
	when "100000" => ALUcontrol <= "010"; -- ADD
	when "100010" => ALUcontrol <= "110"; -- SUB
	when "100100" => ALUcontrol <= "000"; -- AND
	when "100101" => ALUcontrol <= "001"; -- OR
	when "101010" => ALUcontrol <= "111"; -- SLT
	when others => ALUcontrol <= "010";
end case;
	when "11" => -- SLTI
ALUcontrol <= "111";
	end case;
		end process;
end Behavioral;

architecture Behavioral of ControlUnit is
	begin
process(OpCode)
	begin
RegDst <= '0'; Branch <= '0'; MemRead <= '0'; MemWrite <= '0';
MemToReg <= '0'; ALUsrc <= '0'; RegWrite <= '0'; ALUop <= "00";
case OpCode is
	when "000000" => -- R-Type instructions
ALUop <= "10";
RegDst <= '1';
RegWrite <= '1';
	when "000100" => -- BEQ
ALUop <= "01";
Branch <= '1';
	when "100011" => -- LW
ALUsrc <= '1';
MemToReg <= '1';
MemRead <= '1';
RegWrite <= '1';
	when "101011" => -- SW
ALUsrc <= '1';
MemWrite <= '1';
	when "001000" => -- ADDI
ALUsrc <= '1';
RegWrite <= '1';
	when "001010" => -- SLTI
ALUop <= "11";
ALUsrc <= '1';
RegWrite <= '1';
	when others =>
	end case;
		end process;	
			end Behavioral;

