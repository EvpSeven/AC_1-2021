library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LeftShifter is
	port(dataIn : in std_logic_vector(31 downto 0);
		  dataOut: out std_logic_vector(31 downto 0));
end LeftShifter;

architecture Behavioral of LeftShifter is
begin
		dataOut <= dataIn(29 downto 0) & "00";
end Behavioral;		