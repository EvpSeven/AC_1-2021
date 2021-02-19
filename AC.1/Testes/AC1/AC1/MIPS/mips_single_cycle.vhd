library ieee;
use ieee.std_logic_1164.all;
	entity mips_single_cycle is
port( CLOCK_50 : in std_logic;
 SW : in std_logic_vector(17 downto 0);
 KEY : in std_logic_vector(3 downto 0);
 LEDR : out std_logic_vector(17 downto 0);
 HEX0 : out std_logic_vector(6 downto 0));
end mips_single_cycle;

	architecture Structural of mips_single_cycle is
signal s_clk, s_zero : std_logic;
signal s_offset32, s_pc : std_logic_vector(31 downto 0);
 signal s_jAddr : std_logic_vector(25 downto 0);
 
begin

/*Debouncer and PC update*/

-- Debouncer
	debnc: entity work.DebounceUnit(Behavioral)
 generic map(mSecMinInWidth => 200)
 port map( refClk => CLOCK_50,
 dirtyIn => KEY(0),
 pulsedOut => s_clk);

 -- PC update module
	pcupd: entity work.PCupdate(Behavioral)
 port map( clk => s_clk,
 reset => not KEY(1),
 branch => '0',
 jump => '0',
 zero => s_zero,
 offset32 => s_offset32,
 jAddr => s_jAddr,
 pc => s_pc);
end Structural; 