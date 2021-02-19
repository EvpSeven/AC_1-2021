library ieee; 
use ieee.std_logic_1164.all;
 
library work; 
use work.MIPS_pkg.all; 
use work.DisplayUnit_pkg.all;
 
entity mips_single_cycle is
	port( CLOCK_50 : in std_logic; 
			SW      : in std_logic_vector(2 downto 0); 
			KEY     : in std_logic_vector(3 downto 0); 
			HEX0    : out std_logic_vector(6 downto 0);
			HEX1    : out std_logic_vector(6 downto 0);
			HEX2    : out std_logic_vector(6 downto 0);
			HEX3    : out std_logic_vector(6 downto 0);
			HEX4    : out std_logic_vector(6 downto 0);
			HEX5    : out std_logic_vector(6 downto 0);
			HEX6    : out std_logic_vector(6 downto 0);	
			HEX7    : out std_logic_vector(6 downto 0);
			LEDR    : out std_logic_vector(9 downto 0)); 
end mips_single_cycle;
 
architecture Structural of mips_single_cycle is
	signal s_clk,s_zero,s_RegDst,s_MemRead,s_MemWrite,s_MemToReg,s_ALUsrc,s_RegWrite,s_Branch,s_Jump : std_logic;
	signal s_offset32,s_pc,s_instruction,s_rData_1,s_rData_2,s_wData,s_res,s_b,s_memData : std_logic_vector(31 downto 0);
	signal s_jAddr26: std_logic_vector(25 downto 0);
	signal s_extendsignal: std_logic_vector(15 downto 0);
	signal s_rs,s_rt,s_rd,s_writeReg: std_logic_vector(4 downto 0);
	signal s_ALUcontrol: std_logic_vector(2 downto 0);
	signal s_aluop: std_logic_vector(1 downto 0);
	signal s_funct,s_opcode: std_logic_vector(5 downto 0);
begin
-- Debouncer 
debnc: entity work.DebounceUnit(Behavioral) 
			generic map(mSecMinInWidth  => 200,
							inPolarity      => '0',  
							outPolarity     => '1') 
			port map( refClk      => CLOCK_50, 
						 dirtyIn      => KEY(0), 
						 pulsedOut   => s_clk); 

-- Display module 
displ: entity work.DisplayUnit(Behavioral) 
			generic map(dataPathType => SINGLE_CYCLE_DP, 
                  IM_ADDR_SIZE => ROM_ADDR_SIZE, 
                  DM_ADDR_SIZE => RAM_ADDR_SIZE) 
			port map( RefClk  => CLOCK_50, 
						InputSel => SW(1 downto 0), 
						DispMode => SW(2), 
						NextAddr => KEY(3), 
						Dir     => KEY(2), 
						disp0   => HEX0, 
						disp1   => HEX1,
						disp2   => HEX2,
						disp3   => HEX3,
						disp4   => HEX4,
						disp5   => HEX5,
						disp6   => HEX6,
						disp7   => HEX7); 

-- PUpdate
pcupdate: entity work.PCupdate(Behavioral)
			port map(clk  => s_clk,
						reset => not(KEY(1)),
						branch => s_Branch,
						jump => s_Jump,
						zero => s_zero,
						offset32 => s_offset32,
						jAddr26 => s_jAddr26,
						pc => s_pc);
						
-- Instruction Memory
instruction_memory: entity work.instructionMemory(Behavioral)
							generic map(ADDR_BUS_SIZE => ROM_ADDR_SIZE)
							port map(address => s_pc(7 downto 2),
										readData => s_instruction);
										
--InstrSplitter
instrsplitter: entity work.InstrSplitter(Behavioral)
							port map(instruction => s_instruction,
										opcode => s_opcode,     
										rs => s_rs,        
										rt => s_rt,        
										rd => s_rd,       
										shamt => open,      
										funct => s_funct,     
										imm => s_extendsignal,        
										jAddr => s_jAddr26);
										
--SignExtend
signextend: entity work.SignExtend(Behavioral)
							port map(dataIn => s_extendsignal,
										dataOut => s_offset32);
	
--M1
mux2n_1: entity work.mux2N(Behavioral)
							generic map(N => 5)
							port map(oper0 => s_rt,
										oper1 => s_rd,
										sel => s_RegDst,
										muxOut => s_writeReg);
										
										
--RegFile
regfile_1: entity work.RegFile(Behavioral)
							generic map(WORD_BITS => 32,
											ADDR_BITS => 5)
							port map(clk => s_clk,
										readAddr1 => s_rs,         
										readData1 => s_rData_1,
										readAddr2 => s_rt,
										readData2 => s_rData_2,				
										writeAddr => s_writeReg,  
										writeData => s_wData,  
										writeEnable => s_RegWrite);
	
										
--M2
mux2n_2: entity work.mux2N(Behavioral)
							generic map(N => 32)
							port map(oper0 => s_rData_2,
										oper1 => s_offset32,
										sel => s_ALUsrc,
										muxOut => s_b);
					
--M3
mux2n_3: entity work.mux2N(Behavioral)
							generic map(N => 32)
							port map(oper0 => s_res,
										oper1 => s_memData,
										sel => s_MemToReg,
										muxOut => s_wData);					
			
--ALU32
alu32: entity work.ALU32(Behavioral)
				port map(a => s_rData_1,
							b => s_b,
							oper => s_ALUcontrol, 
							res => s_res,      
							zero => s_zero,
							ovf => open);
							
--ALUcontrol
alucontrol: entity work.ALUControl(Behavioral)
				port map(ALUop => s_aluop,
							funct => s_funct,           
							ALUcontrol => s_ALUcontrol);  
						
--DataMemory
datamemory: entity work.DataMemory(Behavioral)
						generic map(ADDR_BUS_SIZE => RAM_ADDR_SIZE,	
										DATA_BUS_SIZE => 32)
						port map(clk => s_clk,
									readEn => s_MemRead,
									writeEn => s_MemWrite,
									address => s_res(7 downto 2),
									writeData => s_rData_2,
									readData	=>	s_memData);
							
--Control Unity
control_unity: entity work.ControlUnit(Behavioral)
								port map(OpCode => s_opcode,
											RegDst => s_RegDst,
											Branch => s_Branch,
											MemRead => s_MemRead,
											MemWrite => s_MemWrite,
											MemToReg => s_MemToReg,
											ALUsrc => s_ALUsrc,
											RegWrite => s_RegWrite,
											Jump => s_Jump,
											ALUop => s_aluop);

							
LEDR(0) <= s_RegDst;
LEDR(1) <= s_Branch;
LEDR(2) <= s_MemRead;
LEDR(3) <= s_MemWrite;
LEDR(4) <= s_MemToReg;
LEDR(5) <= s_ALUsrc; 
LEDR(6) <= s_RegWrite;
LEDR(8 downto 7) <= s_aluop;
LEDR(9) <= s_Jump;
DU_PC <= s_pc;

							
end Structural;										