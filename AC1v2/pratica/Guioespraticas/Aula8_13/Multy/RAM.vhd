library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

library work;
use work.MIPS_pkg.all;
use work.DisplayUnit_pkg.all;

entity RAM is
	generic( ADDR_BUS_SIZE : positive := 6;
				DATA_BUS_SIZE : positive := 32);
	port(clk					  : in std_logic;
		  addr				  : in std_logic_vector(ADDR_BUS_SIZE - 1 downto 0);
		  ce					  : in std_logic; -- chip enable
		  wr					  : in std_logic; -- write
		  rd					  : in std_logic; -- read
		  dio					  : inout std_logic_vector(DATA_BUS_SIZE - 1 downto 0));
end RAM;

architecture Behavioral of RAM is
	constant NUM_WORDS : positive := (2**ADDR_BUS_SIZE);
	subtype TData is std_logic_vector(DATA_BUS_SIZE-1 downto 0);
	type TMemory is array(0 to NUM_WORDS - 1) of TData;
	signal s_memory : TMemory := (X"20050004",
											X"20060080",
											X"00003820",
											X"0005082a",
											X"10200006",
											X"00a54020",
											X"acc80000",
											X"00e83820",
											X"20c60004",
											X"20a5ffff",
											X"08000003",
											X"acc70000",
											X"1000ffff",
											others => X"00000000");
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			if (ce = '1') then
				if(wr = '1') then
					s_memory(to_integer(unsigned(addr))) <= dio;
				end if;
			end if;
		end if;
	end process;
	process(ce,addr,rd,wr)
	begin
		if (ce = '1' and rd = '1' and wr = '0') then
			dio <= s_memory(to_integer(unsigned(addr)));
		else
			dio <= (others => 'Z');
		end if;
	end process;
	DU_DMdata <= s_memory(to_integer(unsigned(DU_DMaddr)));
end Behavioral;