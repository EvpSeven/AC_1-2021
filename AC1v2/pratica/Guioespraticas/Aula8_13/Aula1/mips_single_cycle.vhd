library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

library work;
use work.MIPS_pkg.all;
use work.DisplayUnit_pkg.all;

entity mips_single_cycle is
	port( CLOCK_50 : 	in std_logic;
			SW			:	in std_logic_vector(7 downto 0);
		   KEY		:	in std_logic_vector(3 downto 0);
			LEDR		:  out std_logic_vector(9 downto 0);
			HEX0		:	out std_logic_vector(6 downto 0);
			HEX1		:	out std_logic_vector(6 downto 0);
			HEX2		:	out std_logic_vector(6 downto 0);
			HEX3		:	out std_logic_vector(6 downto 0);
			HEX4		:	out std_logic_vector(6 downto 0);
			HEX5		:	out std_logic_vector(6 downto 0);
			HEX6		:	out std_logic_vector(6 downto 0);
			HEX7		:	out std_logic_vector(6 downto 0));
end mips_single_cycle;

architecture Structural of mips_single_cycle is
		signal s_clk : std_logic;
		signal s_pc  : std_logic_vector(31 downto 0);
		signal s_im  : std_logic_vector(31 downto 0);
		signal s_spl : std_logic_vector(15 downto 0);
		signal s_off : std_logic_vector(31 downto 0);
		signal s_jAd : std_logic_vector(25 downto 0);
		-----------------------------------------------
		signal s_zero : std_logic;
		signal s_aluc : std_logic_vector(5 downto 0);
		signal s_rs	  : std_logic_vector(4 downto 0);
		signal s_rt	  : std_logic_vector(4 downto 0);
		signal s_rd	  : std_logic_vector(4 downto 0);
		signal s_m1	  : std_logic_vector(4 downto 0);
		signal s_m2   : std_logic_vector(31 downto 0);
		--signal s_wd : std_logic_vector(31 downto 0);
		signal s_rd1  : std_logic_vector(31 downto 0);
		signal s_rd2  : std_logic_vector(31 downto 0);
		signal s_op	  : std_logic_vector(2 downto 0);
		-----------------------------------------------
		signal s_memread  : std_logic;
		signal s_memwrite : std_logic;
		signal s_jump		: std_logic;
		signal s_branch	: std_logic;
		signal s_memtoreg	: std_logic;
		signal s_ALUsrc	: std_logic;
		signal s_ALUop		: std_logic_vector(1 downto 0);
		signal s_regwrite : std_logic;
		signal s_regdst	: std_logic;
		signal s_res		: std_logic_vector(31 downto 0);
		signal s_m3			: std_logic_vector(31 downto 0);
		signal s_readdata : std_logic_vector(31 downto 0);
		signal s_opcode	: std_logic_vector(5 downto 0);
		
begin
	pcupdt: entity work.PCupdate(Behavioral)
		port map(clk		=>	s_clk,
					reset		=>	not KEY(1),
					branch	=>	s_branch,
					jump		=>	s_jump,
					zero		=>	s_zero,
					offset	=>	s_off,
					jAddr		=> s_jAd,
					pc			=> s_pc);
					
	instmem: entity work.InstructionMemory(Behavioral)
		generic map(ADDR_BUS_SIZE => ROM_ADDR_SIZE)
		port map(address 	 => s_pc(ROM_ADDR_SIZE+1 downto 2),
					readData  => s_im);
					
	splitter: entity work.InstrSplitter(Behavioral)
		port map(instruction => s_im,
					opcode		=> s_opcode,
					rs          => s_rs,
					rt          => s_rt,
					rd          => s_rd,
					shamt       => open, -- não liga a nada porque não usamos shifts
					funct       => s_aluc,
					imm         => s_spl,
					jAddr			=> s_jAd);
					
	M1: entity work.Mux2N(Behavioral)
		generic map (N  => 5)
		port map(in1    => s_rt,
					in2    => s_rd,
					sel    => s_regdst,
					output => s_m1);
					
	regf: entity work.RegFile(Struct)
		port map(clk         => s_clk,
					writeEnable => s_regwrite,
					writeReg    => s_m1,
					writeData   => s_m3,
					readReg1    => s_rs,
					readReg2    => s_rt,
					readData1   => s_rd1,
					readData2   => s_rd2);
					
	M2: entity work.Mux2N(Behavioral)
		generic map(N   => 32)
		port map(in1    => s_rd2,
					in2    => s_off,
					sel    => s_ALUsrc,
					output => s_m2);
				
	alu: entity work.ALU32(Behavioral)
		port map(op1       => s_rd1,
					op2       => s_m2,
					operation => s_op,
					result    => s_res,
					zero      => s_zero);
					
	alucontrol: entity work.ALUcontrol(Behavioral)
		port map(ALUop    => s_ALUop,
					funct    => s_aluc,
					ALUcontr => s_op);
					
	signext: entity work.SignExtend(Behavioral)
		port map(dataIn  => s_spl,
					dataOut => s_off);
					
	datamem: entity work.DataMemory(Behavioral)
		generic map(ADDR_BUS_SIZE => 6,
						DATA_BUS_SIZE => 32)
		port map(clk              => s_clk,
					readEn           => s_memread,
					writeEn          => s_memwrite,
					address          => s_res(7 downto 2),
					writeData        => s_rd2,
					readData         => s_readdata);
					
	M3: entity work.Mux2N(Behavioral)
		generic map(N   => 32)
		port map(in1    => s_res,
					in2    => s_readdata,
					sel    => s_memtoreg,
					output => s_m3);
				
	alucontrolunit: entity work.ControlUnit(Behavioral)
		port map(OpCode   => s_opcode,
					RegDst   => s_regdst,
					Branch   => s_branch,
					Jump     => s_jump,
					MemRead  => s_memread,
					MemWrite => s_memwrite,
					MemToReg => s_memtoreg,
					ALUsrc   => s_ALUsrc,
					RegWrite => s_regwrite,
					ALUop    => s_ALUop);
						
	-- Debouncer
	debnc: entity work.DebounceUnit(Behavioral)
		generic map(mSecMinInWidth	=> 100,
						inPolarity		=> '0',
						outPolarity		=> '1')
		port map(refClk				=> CLOCK_50,
					dirtyIn				=> KEY(0),
					pulsedOut			=> s_clk);
					
	--Display module
	displ: entity work.DisplayUnit(Behavioral)
		generic map(dataPathType => SINGLE_CYCLE_DP,
						IM_ADDR_SIZE => ROM_ADDR_SIZE,
						DM_ADDR_SIZE => RAM_ADDR_SIZE)
		port map(RefClk   => CLOCK_50,
					InputSel => SW(1 downto 0),
					DispMode => SW(2),
					NextAddr => KEY(3),
					Dir		=> KEY(2),
					disp0		=> HEX0,
					disp1		=> HEX1,
					disp2		=> HEX2,
					disp3		=> HEX3,
					disp4		=> HEX4,
					disp5		=> HEX5,
					disp6		=> HEX6,
					disp7		=> HEX7);
					
	LEDR(0) 			  <= s_jump;
	LEDR(1)          <= s_branch;
	LEDR(2)          <= s_memtoreg;
	LEDR(3)          <= s_memwrite;
	LEDR(4)          <= s_memread;
	LEDR(5)          <= s_ALUsrc;
	LEDR(6)          <= s_regwrite;
	LEDR(8 downto 7) <= s_ALUop;
	LEDR(9)          <= s_regdst;
					
	--DU_RFdata <= s_im;
	--DU_DMdata <= s_wd;
	
	
end Structural;