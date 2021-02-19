library ieee; 
use ieee.std_logic_1164.all;
 
library work; 
use work.MIPS_pkg.all; 
use work.DisplayUnit_pkg.all;
 
entity mips_multi_cycle is
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
			LEDR    : out std_logic_vector(8 downto 0);
			LEDG    : out std_logic_vector(6 downto 0));	
end mips_multi_cycle;

architecture Structural of mips_multi_cycle is
signal s_clk,s_PCWriteCond,s_PCWrite,s_zero,s_IorD,s_IRWrite,s_RegDst,s_MemtoReg,s_MemRead,s_MemWrite,s_ALUSelA,s_RegWrite: std_logic;
signal s_pc,s_aluout,s_memData,s_instruction,s_dataOut,s_writeData,s_offset32,s_shiftedSignal,s_rData_1,s_rData_2,s_rDataOut_1,s_rDataOut_2,s_a,s_b,s_res: std_logic_vector(31 downto 0);
signal s_jAddr26: std_logic_vector(25 downto 0);
signal s_extendsignal: std_logic_vector(15 downto 0);
signal s_ramadr,s_funct,s_opcode: std_logic_vector(5 downto 0);
signal s_rs,s_rt,s_rd,s_writeReg: std_logic_vector(4 downto 0);
signal s_ALUcontrol: std_logic_vector(2 downto 0); 
signal s_ALUSelB,s_PCSource,s_aluop: std_logic_vector(1 downto 0);

begin

divf: entity work.divFreq(Behavioral)
			generic map(KDIV => 6250000)
			port map( clkIn => CLOCK_50,
						 clkOut => s_clk);

-- Debouncer 
/*debnc: entity work.DebounceUnit(Behavioral) 
			generic map(mSecMinInWidth  => 200,
							inPolarity      => '0',  
							outPolarity     => '1') 
			port map( refClk      => CLOCK_50, 
						 dirtyIn      => KEY(0), 
						 pulsedOut   => s_clk);*/ 

-- Display module 
displ: entity work.DisplayUnit(Behavioral) 
			generic map(dataPathType => MULTI_CYCLE_DP, 
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
						zero => s_zero,
						PCSource => s_PCSource,
						PCWrite => s_PCWrite,
						PCWriteCond => s_PCWriteCond,
						PC4 => s_res,
						BTA => s_aluout,
						jAddr => s_jAddr26,
						pc => s_pc);

--M1
mux2n_1: entity work.mux2N(Behavioral)
							generic map(N => 6)
							port map(oper0 => s_pc(7 downto 2),
										oper1 => s_aluout(7 downto 2),
										sel => s_IorD,
										muxOut => s_ramadr);
				
--RAM
ram: entity work.RAM(Behavioral)
						generic map(ADDR_BUS_SIZE => RAM_ADDR_SIZE,	
										DATA_BUS_SIZE => 32)
						port map(clk => s_clk,
									readEn => s_MemRead,
									writeEn => s_MemWrite,
									address => s_ramadr,
									writeData => s_rDataOut_2,
									readData	=>	s_memData);	
									
--Instruction Register
instruction_register: entity work.RegisterN(Behavioral)
						generic map(N => 32)
						port map(clk => s_clk,
							  enable => s_IRWrite,
							  dataIn => s_memData,
							  dataOut => s_instruction);
							  
--Data Register
data_register: entity work.RegisterN(Behavioral)
						generic map(N => 32)
							port map(clk => s_clk,
										enable => '1',
										dataIn => s_memData,
										dataOut => s_dataOut);
							  
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
	
--M2
mux2n_2: entity work.mux2N(Behavioral)
							generic map(N => 5)
							port map(oper0 => s_rt,
										oper1 => s_rd,
										sel => s_RegDst,
										muxOut => s_writeReg);
										
--M3
mux2n_3: entity work.mux2N(Behavioral)
							generic map(N => 32)
							port map(oper0 =>s_aluout,
										oper1 => s_dataOut,
										sel => s_MemtoReg,
										muxOut => s_writeData);	

--Sign Extend
sign_extend: entity work.SignExtend(Behavioral)
				port map(dataIn => s_extendsignal,
							dataOut => s_offset32);	

--LeftShifter
left_shifter: entity work.LeftShifter(Behavioral)
				port map(dataIn => s_offset32, 
							dataOut => s_shiftedSignal);
	

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
										writeData => s_writeData,  
										writeEnable => s_RegWrite);	
--RegisterA
register_a:	entity work.RegisterN(Behavioral)
						generic map(N => 32)
							port map(clk => s_clk,
										enable => '1',
										dataIn => s_rData_1,
										dataOut => s_rDataOut_1 );							
								
--RegisterB
register_b:	entity work.RegisterN(Behavioral)
						generic map(N => 32)
							port map(clk => s_clk,
										enable => '1',
										dataIn => s_rData_2,
										dataOut => s_rDataOut_2);
								
--M4
mux2n_4: entity work.mux2N(Behavioral)
							generic map(N => 32)
							port map(oper0 =>s_pc,
										oper1 => s_rDataOut_1,
										sel => s_ALUSelA,
										muxOut => s_a);
--M5
mux4n_5: entity work.Mux4N(Behavioral)
							generic map(N => 32)
							port map(oper0 => s_rDataOut_2,
										oper1 => X"00000004",
										oper2 => s_offset32,
										oper3 => s_shiftedSignal,
										sel => s_ALUSelB,
										muxOut => s_b);

--ALUcontrol
alucontrol: entity work.ALUControl(Behavioral)
				port map(ALUop => s_aluop,
							funct => s_funct,           
							ALUcontrol => s_ALUcontrol);	

--ALU32
alu32: entity work.ALU32(Behavioral)
				port map(a => s_a,
							b => s_b,
							oper => s_ALUcontrol, 
							res => s_res,      
							zero => s_zero,
							ovf => open);

--AluOut
alu_out:	entity work.RegisterN(Behavioral)
						generic map(N => 32)
							port map(clk => s_clk,
										enable => '1',
										dataIn => s_res,
										dataOut => s_aluout);
				
--Control Unity
control_unity: entity work.ControlUnit(Behavioral)
								port map(Clock => s_clk,
											Reset => not(KEY(1)),
											OpCode => s_opcode,
											PCWrite => s_PCWrite,
											IRWrite => s_IRWrite,
											IorD => s_IorD,
											PCSource => s_PCSource,
											RegDest => s_RegDst,
											PCWriteCond => s_PCWriteCond,
											MemRead => s_MemRead,
											MemWrite => s_MemWrite,
											MemToReg => s_MemToReg,
											ALUSelA => s_ALUSelA,
											ALUSelB => s_ALUSelB,
											RegWrite => s_RegWrite,
											ALUop => s_aluop);				
										
DU_PC <= s_pc; 
DU_IMdata <= s_aluout;
			
LEDR(8) <= s_PCWrite;
LEDR(7) <= s_IRWrite;
LEDR(6) <= s_IorD;
LEDR(5 downto 4) <= s_PCSource;
LEDR(3) <= s_RegDst;
LEDR(2) <= s_PCWriteCond;
LEDR(1) <= s_MemRead;
LEDR(0) <= s_MemWrite;
LEDG(6) <= s_MemToReg;
LEDG(5) <= s_ALUSelA;
LEDG(4 downto 3) <= s_ALUSelB;
LEDG(2) <= s_RegWrite;
LEDG(1 downto 0) <= s_aluop;
			
end Structural;

