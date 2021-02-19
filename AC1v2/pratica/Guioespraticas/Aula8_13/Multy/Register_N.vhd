library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Register_N is
	
	port( clk	: in std_logic;
			valIn	: in std_logic_vector(31 downto 0);
		   enable		: in std_logic;
		   valout : out std_logic_vector(31 downto 0));
end Register_N;

architecture Behavioral of Register_N is
begin
		process(clk)
		begin
			if(rising_edge(clk)) then
				if(enable='1') then
					valout <= valIn;
				end if;
			end if;
		end process;	
		
end Behavioral;
	DU_RFdata <= valout;
	DU_DMaddr<= valout;