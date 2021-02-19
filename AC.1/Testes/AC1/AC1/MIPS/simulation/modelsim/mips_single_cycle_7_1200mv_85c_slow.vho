-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.1 Build 189 12/02/2015 SJ Lite Edition"

-- DATE "11/03/2016 19:11:15"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PCupdate IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	branch : IN std_logic;
	jump : IN std_logic;
	zero : IN std_logic;
	offset : IN std_logic_vector(31 DOWNTO 0);
	jAddr : IN std_logic_vector(25 DOWNTO 0);
	pc : OUT std_logic_vector(31 DOWNTO 0)
	);
END PCupdate;

-- Design Ports Information
-- offset[30]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[31]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[0]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[1]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[3]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[4]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[5]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[6]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[7]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[8]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[9]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[10]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[11]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[12]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[13]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[14]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[15]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[16]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[17]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[18]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[19]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[20]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[21]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[22]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[23]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[24]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[25]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[26]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[27]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[28]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[29]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[30]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[31]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jump	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[1]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[1]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[2]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[3]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[4]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[4]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[5]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[5]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[6]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[7]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[8]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[9]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[9]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[10]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[10]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[11]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[11]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[12]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[12]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[13]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[13]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[14]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[14]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[15]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[15]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[16]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[16]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[17]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[17]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[18]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[18]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[19]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[19]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[20]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[20]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[21]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[21]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[22]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[22]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[23]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[23]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[24]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[24]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[25]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[25]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[26]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[27]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[28]	=>  Location: PIN_Y28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[29]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PCupdate IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_branch : std_logic;
SIGNAL ww_jump : std_logic;
SIGNAL ww_zero : std_logic;
SIGNAL ww_offset : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_jAddr : std_logic_vector(25 DOWNTO 0);
SIGNAL ww_pc : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \offset[30]~input_o\ : std_logic;
SIGNAL \offset[31]~input_o\ : std_logic;
SIGNAL \pc[0]~output_o\ : std_logic;
SIGNAL \pc[1]~output_o\ : std_logic;
SIGNAL \pc[2]~output_o\ : std_logic;
SIGNAL \pc[3]~output_o\ : std_logic;
SIGNAL \pc[4]~output_o\ : std_logic;
SIGNAL \pc[5]~output_o\ : std_logic;
SIGNAL \pc[6]~output_o\ : std_logic;
SIGNAL \pc[7]~output_o\ : std_logic;
SIGNAL \pc[8]~output_o\ : std_logic;
SIGNAL \pc[9]~output_o\ : std_logic;
SIGNAL \pc[10]~output_o\ : std_logic;
SIGNAL \pc[11]~output_o\ : std_logic;
SIGNAL \pc[12]~output_o\ : std_logic;
SIGNAL \pc[13]~output_o\ : std_logic;
SIGNAL \pc[14]~output_o\ : std_logic;
SIGNAL \pc[15]~output_o\ : std_logic;
SIGNAL \pc[16]~output_o\ : std_logic;
SIGNAL \pc[17]~output_o\ : std_logic;
SIGNAL \pc[18]~output_o\ : std_logic;
SIGNAL \pc[19]~output_o\ : std_logic;
SIGNAL \pc[20]~output_o\ : std_logic;
SIGNAL \pc[21]~output_o\ : std_logic;
SIGNAL \pc[22]~output_o\ : std_logic;
SIGNAL \pc[23]~output_o\ : std_logic;
SIGNAL \pc[24]~output_o\ : std_logic;
SIGNAL \pc[25]~output_o\ : std_logic;
SIGNAL \pc[26]~output_o\ : std_logic;
SIGNAL \pc[27]~output_o\ : std_logic;
SIGNAL \pc[28]~output_o\ : std_logic;
SIGNAL \pc[29]~output_o\ : std_logic;
SIGNAL \pc[30]~output_o\ : std_logic;
SIGNAL \pc[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \branch~input_o\ : std_logic;
SIGNAL \zero~input_o\ : std_logic;
SIGNAL \s_pc4[2]~0_combout\ : std_logic;
SIGNAL \offset[0]~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \jAddr[0]~input_o\ : std_logic;
SIGNAL \jump~input_o\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \s_pc4[2]~1\ : std_logic;
SIGNAL \s_pc4[3]~2_combout\ : std_logic;
SIGNAL \offset[1]~input_o\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \jAddr[1]~input_o\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7_combout\ : std_logic;
SIGNAL \jAddr[2]~input_o\ : std_logic;
SIGNAL \s_pc4[3]~3\ : std_logic;
SIGNAL \s_pc4[4]~4_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \offset[2]~input_o\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \offset[3]~input_o\ : std_logic;
SIGNAL \s_pc4[4]~5\ : std_logic;
SIGNAL \s_pc4[5]~6_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \jAddr[3]~input_o\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \jAddr[4]~input_o\ : std_logic;
SIGNAL \s_pc4[5]~7\ : std_logic;
SIGNAL \s_pc4[6]~8_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \offset[4]~input_o\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~19_combout\ : std_logic;
SIGNAL \jAddr[5]~input_o\ : std_logic;
SIGNAL \s_pc4[6]~9\ : std_logic;
SIGNAL \s_pc4[7]~10_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \offset[5]~input_o\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~23_combout\ : std_logic;
SIGNAL \offset[6]~input_o\ : std_logic;
SIGNAL \s_pc4[7]~11\ : std_logic;
SIGNAL \s_pc4[8]~12_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \jAddr[6]~input_o\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~27_combout\ : std_logic;
SIGNAL \s_pc4[8]~13\ : std_logic;
SIGNAL \s_pc4[9]~14_combout\ : std_logic;
SIGNAL \jAddr[7]~input_o\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \offset[7]~input_o\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~31_combout\ : std_logic;
SIGNAL \s_pc4[9]~15\ : std_logic;
SIGNAL \s_pc4[10]~16_combout\ : std_logic;
SIGNAL \jAddr[8]~input_o\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \offset[8]~input_o\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \jAddr[9]~input_o\ : std_logic;
SIGNAL \s_pc4[10]~17\ : std_logic;
SIGNAL \s_pc4[11]~18_combout\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \offset[9]~input_o\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~39_combout\ : std_logic;
SIGNAL \jAddr[10]~input_o\ : std_logic;
SIGNAL \s_pc4[11]~19\ : std_logic;
SIGNAL \s_pc4[12]~20_combout\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \offset[10]~input_o\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~43_combout\ : std_logic;
SIGNAL \jAddr[11]~input_o\ : std_logic;
SIGNAL \s_pc4[12]~21\ : std_logic;
SIGNAL \s_pc4[13]~22_combout\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \offset[11]~input_o\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~47_combout\ : std_logic;
SIGNAL \offset[12]~input_o\ : std_logic;
SIGNAL \s_pc4[13]~23\ : std_logic;
SIGNAL \s_pc4[14]~24_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \jAddr[12]~input_o\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~51_combout\ : std_logic;
SIGNAL \jAddr[13]~input_o\ : std_logic;
SIGNAL \s_pc4[14]~25\ : std_logic;
SIGNAL \s_pc4[15]~26_combout\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \offset[13]~input_o\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add1~55_combout\ : std_logic;
SIGNAL \s_pc4[15]~27\ : std_logic;
SIGNAL \s_pc4[16]~28_combout\ : std_logic;
SIGNAL \offset[14]~input_o\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \jAddr[14]~input_o\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~59_combout\ : std_logic;
SIGNAL \jAddr[15]~input_o\ : std_logic;
SIGNAL \s_pc4[16]~29\ : std_logic;
SIGNAL \s_pc4[17]~30_combout\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \offset[15]~input_o\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~63_combout\ : std_logic;
SIGNAL \jAddr[16]~input_o\ : std_logic;
SIGNAL \s_pc4[17]~31\ : std_logic;
SIGNAL \s_pc4[18]~32_combout\ : std_logic;
SIGNAL \Add1~66_combout\ : std_logic;
SIGNAL \offset[16]~input_o\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~64_combout\ : std_logic;
SIGNAL \Add1~67_combout\ : std_logic;
SIGNAL \jAddr[17]~input_o\ : std_logic;
SIGNAL \s_pc4[18]~33\ : std_logic;
SIGNAL \s_pc4[19]~34_combout\ : std_logic;
SIGNAL \Add1~70_combout\ : std_logic;
SIGNAL \offset[17]~input_o\ : std_logic;
SIGNAL \Add1~65\ : std_logic;
SIGNAL \Add1~68_combout\ : std_logic;
SIGNAL \Add1~71_combout\ : std_logic;
SIGNAL \jAddr[18]~input_o\ : std_logic;
SIGNAL \s_pc4[19]~35\ : std_logic;
SIGNAL \s_pc4[20]~36_combout\ : std_logic;
SIGNAL \Add1~74_combout\ : std_logic;
SIGNAL \offset[18]~input_o\ : std_logic;
SIGNAL \Add1~69\ : std_logic;
SIGNAL \Add1~72_combout\ : std_logic;
SIGNAL \Add1~75_combout\ : std_logic;
SIGNAL \offset[19]~input_o\ : std_logic;
SIGNAL \s_pc4[20]~37\ : std_logic;
SIGNAL \s_pc4[21]~38_combout\ : std_logic;
SIGNAL \Add1~73\ : std_logic;
SIGNAL \Add1~76_combout\ : std_logic;
SIGNAL \jAddr[19]~input_o\ : std_logic;
SIGNAL \Add1~78_combout\ : std_logic;
SIGNAL \Add1~79_combout\ : std_logic;
SIGNAL \offset[20]~input_o\ : std_logic;
SIGNAL \s_pc4[21]~39\ : std_logic;
SIGNAL \s_pc4[22]~40_combout\ : std_logic;
SIGNAL \Add1~77\ : std_logic;
SIGNAL \Add1~80_combout\ : std_logic;
SIGNAL \jAddr[20]~input_o\ : std_logic;
SIGNAL \Add1~82_combout\ : std_logic;
SIGNAL \Add1~83_combout\ : std_logic;
SIGNAL \offset[21]~input_o\ : std_logic;
SIGNAL \s_pc4[22]~41\ : std_logic;
SIGNAL \s_pc4[23]~42_combout\ : std_logic;
SIGNAL \Add1~81\ : std_logic;
SIGNAL \Add1~84_combout\ : std_logic;
SIGNAL \jAddr[21]~input_o\ : std_logic;
SIGNAL \Add1~86_combout\ : std_logic;
SIGNAL \Add1~87_combout\ : std_logic;
SIGNAL \offset[22]~input_o\ : std_logic;
SIGNAL \s_pc4[23]~43\ : std_logic;
SIGNAL \s_pc4[24]~44_combout\ : std_logic;
SIGNAL \Add1~85\ : std_logic;
SIGNAL \Add1~88_combout\ : std_logic;
SIGNAL \jAddr[22]~input_o\ : std_logic;
SIGNAL \Add1~90_combout\ : std_logic;
SIGNAL \Add1~91_combout\ : std_logic;
SIGNAL \jAddr[23]~input_o\ : std_logic;
SIGNAL \s_pc4[24]~45\ : std_logic;
SIGNAL \s_pc4[25]~46_combout\ : std_logic;
SIGNAL \Add1~94_combout\ : std_logic;
SIGNAL \offset[23]~input_o\ : std_logic;
SIGNAL \Add1~89\ : std_logic;
SIGNAL \Add1~92_combout\ : std_logic;
SIGNAL \Add1~95_combout\ : std_logic;
SIGNAL \jAddr[24]~input_o\ : std_logic;
SIGNAL \s_pc4[25]~47\ : std_logic;
SIGNAL \s_pc4[26]~48_combout\ : std_logic;
SIGNAL \Add1~98_combout\ : std_logic;
SIGNAL \offset[24]~input_o\ : std_logic;
SIGNAL \Add1~93\ : std_logic;
SIGNAL \Add1~96_combout\ : std_logic;
SIGNAL \Add1~99_combout\ : std_logic;
SIGNAL \jAddr[25]~input_o\ : std_logic;
SIGNAL \s_pc4[26]~49\ : std_logic;
SIGNAL \s_pc4[27]~50_combout\ : std_logic;
SIGNAL \Add1~102_combout\ : std_logic;
SIGNAL \offset[25]~input_o\ : std_logic;
SIGNAL \Add1~97\ : std_logic;
SIGNAL \Add1~100_combout\ : std_logic;
SIGNAL \Add1~103_combout\ : std_logic;
SIGNAL \s_pc4[27]~51\ : std_logic;
SIGNAL \s_pc4[28]~52_combout\ : std_logic;
SIGNAL \offset[26]~input_o\ : std_logic;
SIGNAL \Add1~101\ : std_logic;
SIGNAL \Add1~104_combout\ : std_logic;
SIGNAL \Add1~106_combout\ : std_logic;
SIGNAL \s_pc4[28]~53\ : std_logic;
SIGNAL \s_pc4[29]~54_combout\ : std_logic;
SIGNAL \offset[27]~input_o\ : std_logic;
SIGNAL \Add1~105\ : std_logic;
SIGNAL \Add1~107_combout\ : std_logic;
SIGNAL \Add1~109_combout\ : std_logic;
SIGNAL \offset[28]~input_o\ : std_logic;
SIGNAL \s_pc4[29]~55\ : std_logic;
SIGNAL \s_pc4[30]~56_combout\ : std_logic;
SIGNAL \Add1~108\ : std_logic;
SIGNAL \Add1~110_combout\ : std_logic;
SIGNAL \Add1~112_combout\ : std_logic;
SIGNAL \s_pc4[30]~57\ : std_logic;
SIGNAL \s_pc4[31]~58_combout\ : std_logic;
SIGNAL \offset[29]~input_o\ : std_logic;
SIGNAL \Add1~111\ : std_logic;
SIGNAL \Add1~113_combout\ : std_logic;
SIGNAL \Add1~115_combout\ : std_logic;
SIGNAL s_pc : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_branch <= branch;
ww_jump <= jump;
ww_zero <= zero;
ww_offset <= offset;
ww_jAddr <= jAddr;
pc <= ww_pc;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X113_Y73_N2
\pc[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pc[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\pc[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pc[1]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\pc[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(2),
	devoe => ww_devoe,
	o => \pc[2]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\pc[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(3),
	devoe => ww_devoe,
	o => \pc[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\pc[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(4),
	devoe => ww_devoe,
	o => \pc[4]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\pc[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(5),
	devoe => ww_devoe,
	o => \pc[5]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\pc[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(6),
	devoe => ww_devoe,
	o => \pc[6]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\pc[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(7),
	devoe => ww_devoe,
	o => \pc[7]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\pc[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(8),
	devoe => ww_devoe,
	o => \pc[8]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\pc[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(9),
	devoe => ww_devoe,
	o => \pc[9]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\pc[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(10),
	devoe => ww_devoe,
	o => \pc[10]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\pc[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(11),
	devoe => ww_devoe,
	o => \pc[11]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\pc[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(12),
	devoe => ww_devoe,
	o => \pc[12]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\pc[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(13),
	devoe => ww_devoe,
	o => \pc[13]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\pc[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(14),
	devoe => ww_devoe,
	o => \pc[14]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\pc[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(15),
	devoe => ww_devoe,
	o => \pc[15]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\pc[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(16),
	devoe => ww_devoe,
	o => \pc[16]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\pc[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(17),
	devoe => ww_devoe,
	o => \pc[17]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\pc[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(18),
	devoe => ww_devoe,
	o => \pc[18]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\pc[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(19),
	devoe => ww_devoe,
	o => \pc[19]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\pc[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(20),
	devoe => ww_devoe,
	o => \pc[20]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\pc[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(21),
	devoe => ww_devoe,
	o => \pc[21]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\pc[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(22),
	devoe => ww_devoe,
	o => \pc[22]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\pc[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(23),
	devoe => ww_devoe,
	o => \pc[23]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\pc[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(24),
	devoe => ww_devoe,
	o => \pc[24]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\pc[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(25),
	devoe => ww_devoe,
	o => \pc[25]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\pc[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(26),
	devoe => ww_devoe,
	o => \pc[26]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\pc[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(27),
	devoe => ww_devoe,
	o => \pc[27]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\pc[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(28),
	devoe => ww_devoe,
	o => \pc[28]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\pc[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(29),
	devoe => ww_devoe,
	o => \pc[29]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\pc[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(30),
	devoe => ww_devoe,
	o => \pc[30]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\pc[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(31),
	devoe => ww_devoe,
	o => \pc[31]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X69_Y73_N15
\branch~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch,
	o => \branch~input_o\);

-- Location: IOIBUF_X67_Y73_N1
\zero~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_zero,
	o => \zero~input_o\);

-- Location: LCCOMB_X67_Y70_N2
\s_pc4[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[2]~0_combout\ = s_pc(2) $ (VCC)
-- \s_pc4[2]~1\ = CARRY(s_pc(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(2),
	datad => VCC,
	combout => \s_pc4[2]~0_combout\,
	cout => \s_pc4[2]~1\);

-- Location: IOIBUF_X62_Y73_N15
\offset[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(0),
	o => \offset[0]~input_o\);

-- Location: LCCOMB_X66_Y70_N2
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\s_pc4[2]~0_combout\ & (\offset[0]~input_o\ $ (VCC))) # (!\s_pc4[2]~0_combout\ & (\offset[0]~input_o\ & VCC))
-- \Add1~1\ = CARRY((\s_pc4[2]~0_combout\ & \offset[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_pc4[2]~0_combout\,
	datab => \offset[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: IOIBUF_X60_Y73_N22
\jAddr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(0),
	o => \jAddr[0]~input_o\);

-- Location: IOIBUF_X69_Y73_N1
\jump~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump,
	o => \jump~input_o\);

-- Location: LCCOMB_X65_Y70_N28
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\jump~input_o\ & (\jAddr[0]~input_o\)) # (!\jump~input_o\ & ((\s_pc4[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr[0]~input_o\,
	datab => \s_pc4[2]~0_combout\,
	datac => \jump~input_o\,
	combout => \Add1~2_combout\);

-- Location: LCCOMB_X68_Y70_N4
\Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (\branch~input_o\ & ((\zero~input_o\ & (\Add1~0_combout\)) # (!\zero~input_o\ & ((\Add1~2_combout\))))) # (!\branch~input_o\ & (((\Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch~input_o\,
	datab => \zero~input_o\,
	datac => \Add1~0_combout\,
	datad => \Add1~2_combout\,
	combout => \Add1~3_combout\);

-- Location: IOIBUF_X69_Y73_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X68_Y70_N5
\s_pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~3_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(2));

-- Location: LCCOMB_X67_Y70_N4
\s_pc4[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[3]~2_combout\ = (s_pc(3) & (!\s_pc4[2]~1\)) # (!s_pc(3) & ((\s_pc4[2]~1\) # (GND)))
-- \s_pc4[3]~3\ = CARRY((!\s_pc4[2]~1\) # (!s_pc(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(3),
	datad => VCC,
	cin => \s_pc4[2]~1\,
	combout => \s_pc4[3]~2_combout\,
	cout => \s_pc4[3]~3\);

-- Location: IOIBUF_X85_Y73_N8
\offset[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(1),
	o => \offset[1]~input_o\);

-- Location: LCCOMB_X66_Y70_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\s_pc4[3]~2_combout\ & ((\offset[1]~input_o\ & (\Add1~1\ & VCC)) # (!\offset[1]~input_o\ & (!\Add1~1\)))) # (!\s_pc4[3]~2_combout\ & ((\offset[1]~input_o\ & (!\Add1~1\)) # (!\offset[1]~input_o\ & ((\Add1~1\) # (GND)))))
-- \Add1~5\ = CARRY((\s_pc4[3]~2_combout\ & (!\offset[1]~input_o\ & !\Add1~1\)) # (!\s_pc4[3]~2_combout\ & ((!\Add1~1\) # (!\offset[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_pc4[3]~2_combout\,
	datab => \offset[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: IOIBUF_X72_Y73_N8
\jAddr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(1),
	o => \jAddr[1]~input_o\);

-- Location: LCCOMB_X68_Y70_N18
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\jump~input_o\ & ((\jAddr[1]~input_o\))) # (!\jump~input_o\ & (\s_pc4[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jump~input_o\,
	datac => \s_pc4[3]~2_combout\,
	datad => \jAddr[1]~input_o\,
	combout => \Add1~6_combout\);

-- Location: LCCOMB_X68_Y70_N30
\Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~7_combout\ = (\branch~input_o\ & ((\zero~input_o\ & (\Add1~4_combout\)) # (!\zero~input_o\ & ((\Add1~6_combout\))))) # (!\branch~input_o\ & (((\Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch~input_o\,
	datab => \zero~input_o\,
	datac => \Add1~4_combout\,
	datad => \Add1~6_combout\,
	combout => \Add1~7_combout\);

-- Location: FF_X68_Y70_N31
\s_pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~7_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(3));

-- Location: IOIBUF_X52_Y73_N15
\jAddr[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(2),
	o => \jAddr[2]~input_o\);

-- Location: LCCOMB_X67_Y70_N6
\s_pc4[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[4]~4_combout\ = (s_pc(4) & (\s_pc4[3]~3\ $ (GND))) # (!s_pc(4) & (!\s_pc4[3]~3\ & VCC))
-- \s_pc4[4]~5\ = CARRY((s_pc(4) & !\s_pc4[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(4),
	datad => VCC,
	cin => \s_pc4[3]~3\,
	combout => \s_pc4[4]~4_combout\,
	cout => \s_pc4[4]~5\);

-- Location: LCCOMB_X65_Y70_N18
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\jump~input_o\ & (\jAddr[2]~input_o\)) # (!\jump~input_o\ & ((\s_pc4[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jAddr[2]~input_o\,
	datac => \jump~input_o\,
	datad => \s_pc4[4]~4_combout\,
	combout => \Add1~10_combout\);

-- Location: IOIBUF_X87_Y73_N15
\offset[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(2),
	o => \offset[2]~input_o\);

-- Location: LCCOMB_X66_Y70_N6
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\s_pc4[4]~4_combout\ $ (\offset[2]~input_o\ $ (!\Add1~5\)))) # (GND)
-- \Add1~9\ = CARRY((\s_pc4[4]~4_combout\ & ((\offset[2]~input_o\) # (!\Add1~5\))) # (!\s_pc4[4]~4_combout\ & (\offset[2]~input_o\ & !\Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_pc4[4]~4_combout\,
	datab => \offset[2]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X68_Y70_N12
\Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = (\branch~input_o\ & ((\zero~input_o\ & ((\Add1~8_combout\))) # (!\zero~input_o\ & (\Add1~10_combout\)))) # (!\branch~input_o\ & (((\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch~input_o\,
	datab => \zero~input_o\,
	datac => \Add1~10_combout\,
	datad => \Add1~8_combout\,
	combout => \Add1~11_combout\);

-- Location: FF_X68_Y70_N13
\s_pc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~11_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(4));

-- Location: IOIBUF_X65_Y73_N8
\offset[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(3),
	o => \offset[3]~input_o\);

-- Location: LCCOMB_X67_Y70_N8
\s_pc4[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[5]~6_combout\ = (s_pc(5) & (!\s_pc4[4]~5\)) # (!s_pc(5) & ((\s_pc4[4]~5\) # (GND)))
-- \s_pc4[5]~7\ = CARRY((!\s_pc4[4]~5\) # (!s_pc(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(5),
	datad => VCC,
	cin => \s_pc4[4]~5\,
	combout => \s_pc4[5]~6_combout\,
	cout => \s_pc4[5]~7\);

-- Location: LCCOMB_X66_Y70_N8
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\offset[3]~input_o\ & ((\s_pc4[5]~6_combout\ & (\Add1~9\ & VCC)) # (!\s_pc4[5]~6_combout\ & (!\Add1~9\)))) # (!\offset[3]~input_o\ & ((\s_pc4[5]~6_combout\ & (!\Add1~9\)) # (!\s_pc4[5]~6_combout\ & ((\Add1~9\) # (GND)))))
-- \Add1~13\ = CARRY((\offset[3]~input_o\ & (!\s_pc4[5]~6_combout\ & !\Add1~9\)) # (!\offset[3]~input_o\ & ((!\Add1~9\) # (!\s_pc4[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[3]~input_o\,
	datab => \s_pc4[5]~6_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: IOIBUF_X100_Y73_N22
\jAddr[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(3),
	o => \jAddr[3]~input_o\);

-- Location: LCCOMB_X68_Y70_N16
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\jump~input_o\ & (\jAddr[3]~input_o\)) # (!\jump~input_o\ & ((\s_pc4[5]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jump~input_o\,
	datac => \jAddr[3]~input_o\,
	datad => \s_pc4[5]~6_combout\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X68_Y70_N2
\Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~15_combout\ = (\branch~input_o\ & ((\zero~input_o\ & (\Add1~12_combout\)) # (!\zero~input_o\ & ((\Add1~14_combout\))))) # (!\branch~input_o\ & (((\Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch~input_o\,
	datab => \zero~input_o\,
	datac => \Add1~12_combout\,
	datad => \Add1~14_combout\,
	combout => \Add1~15_combout\);

-- Location: FF_X68_Y70_N3
\s_pc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~15_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(5));

-- Location: IOIBUF_X60_Y73_N8
\jAddr[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(4),
	o => \jAddr[4]~input_o\);

-- Location: LCCOMB_X67_Y70_N10
\s_pc4[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[6]~8_combout\ = (s_pc(6) & (\s_pc4[5]~7\ $ (GND))) # (!s_pc(6) & (!\s_pc4[5]~7\ & VCC))
-- \s_pc4[6]~9\ = CARRY((s_pc(6) & !\s_pc4[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(6),
	datad => VCC,
	cin => \s_pc4[5]~7\,
	combout => \s_pc4[6]~8_combout\,
	cout => \s_pc4[6]~9\);

-- Location: LCCOMB_X65_Y70_N16
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\jump~input_o\ & (\jAddr[4]~input_o\)) # (!\jump~input_o\ & ((\s_pc4[6]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr[4]~input_o\,
	datac => \jump~input_o\,
	datad => \s_pc4[6]~8_combout\,
	combout => \Add1~18_combout\);

-- Location: IOIBUF_X38_Y73_N22
\offset[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(4),
	o => \offset[4]~input_o\);

-- Location: LCCOMB_X66_Y70_N10
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((\offset[4]~input_o\ $ (\s_pc4[6]~8_combout\ $ (!\Add1~13\)))) # (GND)
-- \Add1~17\ = CARRY((\offset[4]~input_o\ & ((\s_pc4[6]~8_combout\) # (!\Add1~13\))) # (!\offset[4]~input_o\ & (\s_pc4[6]~8_combout\ & !\Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[4]~input_o\,
	datab => \s_pc4[6]~8_combout\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X68_Y70_N28
\Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~19_combout\ = (\branch~input_o\ & ((\zero~input_o\ & ((\Add1~16_combout\))) # (!\zero~input_o\ & (\Add1~18_combout\)))) # (!\branch~input_o\ & (((\Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch~input_o\,
	datab => \zero~input_o\,
	datac => \Add1~18_combout\,
	datad => \Add1~16_combout\,
	combout => \Add1~19_combout\);

-- Location: FF_X68_Y70_N29
\s_pc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~19_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(6));

-- Location: IOIBUF_X49_Y73_N15
\jAddr[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(5),
	o => \jAddr[5]~input_o\);

-- Location: LCCOMB_X67_Y70_N12
\s_pc4[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[7]~10_combout\ = (s_pc(7) & (!\s_pc4[6]~9\)) # (!s_pc(7) & ((\s_pc4[6]~9\) # (GND)))
-- \s_pc4[7]~11\ = CARRY((!\s_pc4[6]~9\) # (!s_pc(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(7),
	datad => VCC,
	cin => \s_pc4[6]~9\,
	combout => \s_pc4[7]~10_combout\,
	cout => \s_pc4[7]~11\);

-- Location: LCCOMB_X65_Y70_N14
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\jump~input_o\ & (\jAddr[5]~input_o\)) # (!\jump~input_o\ & ((\s_pc4[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr[5]~input_o\,
	datac => \jump~input_o\,
	datad => \s_pc4[7]~10_combout\,
	combout => \Add1~22_combout\);

-- Location: IOIBUF_X65_Y73_N15
\offset[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(5),
	o => \offset[5]~input_o\);

-- Location: LCCOMB_X66_Y70_N12
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (\offset[5]~input_o\ & ((\s_pc4[7]~10_combout\ & (\Add1~17\ & VCC)) # (!\s_pc4[7]~10_combout\ & (!\Add1~17\)))) # (!\offset[5]~input_o\ & ((\s_pc4[7]~10_combout\ & (!\Add1~17\)) # (!\s_pc4[7]~10_combout\ & ((\Add1~17\) # (GND)))))
-- \Add1~21\ = CARRY((\offset[5]~input_o\ & (!\s_pc4[7]~10_combout\ & !\Add1~17\)) # (!\offset[5]~input_o\ & ((!\Add1~17\) # (!\s_pc4[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[5]~input_o\,
	datab => \s_pc4[7]~10_combout\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X67_Y70_N0
\Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~23_combout\ = (\branch~input_o\ & ((\zero~input_o\ & ((\Add1~20_combout\))) # (!\zero~input_o\ & (\Add1~22_combout\)))) # (!\branch~input_o\ & (((\Add1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch~input_o\,
	datab => \zero~input_o\,
	datac => \Add1~22_combout\,
	datad => \Add1~20_combout\,
	combout => \Add1~23_combout\);

-- Location: FF_X67_Y70_N1
\s_pc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~23_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(7));

-- Location: IOIBUF_X65_Y73_N22
\offset[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(6),
	o => \offset[6]~input_o\);

-- Location: LCCOMB_X67_Y70_N14
\s_pc4[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[8]~12_combout\ = (s_pc(8) & (\s_pc4[7]~11\ $ (GND))) # (!s_pc(8) & (!\s_pc4[7]~11\ & VCC))
-- \s_pc4[8]~13\ = CARRY((s_pc(8) & !\s_pc4[7]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(8),
	datad => VCC,
	cin => \s_pc4[7]~11\,
	combout => \s_pc4[8]~12_combout\,
	cout => \s_pc4[8]~13\);

-- Location: LCCOMB_X66_Y70_N14
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((\offset[6]~input_o\ $ (\s_pc4[8]~12_combout\ $ (!\Add1~21\)))) # (GND)
-- \Add1~25\ = CARRY((\offset[6]~input_o\ & ((\s_pc4[8]~12_combout\) # (!\Add1~21\))) # (!\offset[6]~input_o\ & (\s_pc4[8]~12_combout\ & !\Add1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[6]~input_o\,
	datab => \s_pc4[8]~12_combout\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: IOIBUF_X81_Y73_N1
\jAddr[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(6),
	o => \jAddr[6]~input_o\);

-- Location: LCCOMB_X69_Y70_N24
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\jump~input_o\ & ((\jAddr[6]~input_o\))) # (!\jump~input_o\ & (\s_pc4[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jump~input_o\,
	datac => \s_pc4[8]~12_combout\,
	datad => \jAddr[6]~input_o\,
	combout => \Add1~26_combout\);

-- Location: LCCOMB_X68_Y70_N10
\Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~27_combout\ = (\branch~input_o\ & ((\zero~input_o\ & (\Add1~24_combout\)) # (!\zero~input_o\ & ((\Add1~26_combout\))))) # (!\branch~input_o\ & (((\Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch~input_o\,
	datab => \zero~input_o\,
	datac => \Add1~24_combout\,
	datad => \Add1~26_combout\,
	combout => \Add1~27_combout\);

-- Location: FF_X68_Y70_N11
\s_pc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~27_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(8));

-- Location: LCCOMB_X67_Y70_N16
\s_pc4[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[9]~14_combout\ = (s_pc(9) & (!\s_pc4[8]~13\)) # (!s_pc(9) & ((\s_pc4[8]~13\) # (GND)))
-- \s_pc4[9]~15\ = CARRY((!\s_pc4[8]~13\) # (!s_pc(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(9),
	datad => VCC,
	cin => \s_pc4[8]~13\,
	combout => \s_pc4[9]~14_combout\,
	cout => \s_pc4[9]~15\);

-- Location: IOIBUF_X79_Y73_N1
\jAddr[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(7),
	o => \jAddr[7]~input_o\);

-- Location: LCCOMB_X68_Y70_N26
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\jump~input_o\ & ((\jAddr[7]~input_o\))) # (!\jump~input_o\ & (\s_pc4[9]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_pc4[9]~14_combout\,
	datab => \jAddr[7]~input_o\,
	datac => \jump~input_o\,
	combout => \Add1~30_combout\);

-- Location: IOIBUF_X58_Y73_N22
\offset[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(7),
	o => \offset[7]~input_o\);

-- Location: LCCOMB_X66_Y70_N16
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (\offset[7]~input_o\ & ((\s_pc4[9]~14_combout\ & (\Add1~25\ & VCC)) # (!\s_pc4[9]~14_combout\ & (!\Add1~25\)))) # (!\offset[7]~input_o\ & ((\s_pc4[9]~14_combout\ & (!\Add1~25\)) # (!\s_pc4[9]~14_combout\ & ((\Add1~25\) # (GND)))))
-- \Add1~29\ = CARRY((\offset[7]~input_o\ & (!\s_pc4[9]~14_combout\ & !\Add1~25\)) # (!\offset[7]~input_o\ & ((!\Add1~25\) # (!\s_pc4[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[7]~input_o\,
	datab => \s_pc4[9]~14_combout\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X68_Y70_N0
\Add1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~31_combout\ = (\branch~input_o\ & ((\zero~input_o\ & ((\Add1~28_combout\))) # (!\zero~input_o\ & (\Add1~30_combout\)))) # (!\branch~input_o\ & (((\Add1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch~input_o\,
	datab => \zero~input_o\,
	datac => \Add1~30_combout\,
	datad => \Add1~28_combout\,
	combout => \Add1~31_combout\);

-- Location: FF_X68_Y70_N1
\s_pc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~31_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(9));

-- Location: LCCOMB_X67_Y70_N18
\s_pc4[10]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[10]~16_combout\ = (s_pc(10) & (\s_pc4[9]~15\ $ (GND))) # (!s_pc(10) & (!\s_pc4[9]~15\ & VCC))
-- \s_pc4[10]~17\ = CARRY((s_pc(10) & !\s_pc4[9]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(10),
	datad => VCC,
	cin => \s_pc4[9]~15\,
	combout => \s_pc4[10]~16_combout\,
	cout => \s_pc4[10]~17\);

-- Location: IOIBUF_X81_Y73_N22
\jAddr[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(8),
	o => \jAddr[8]~input_o\);

-- Location: LCCOMB_X69_Y70_N30
\Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\jump~input_o\ & ((\jAddr[8]~input_o\))) # (!\jump~input_o\ & (\s_pc4[10]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jump~input_o\,
	datac => \s_pc4[10]~16_combout\,
	datad => \jAddr[8]~input_o\,
	combout => \Add1~34_combout\);

-- Location: IOIBUF_X42_Y73_N1
\offset[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(8),
	o => \offset[8]~input_o\);

-- Location: LCCOMB_X66_Y70_N18
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = ((\offset[8]~input_o\ $ (\s_pc4[10]~16_combout\ $ (!\Add1~29\)))) # (GND)
-- \Add1~33\ = CARRY((\offset[8]~input_o\ & ((\s_pc4[10]~16_combout\) # (!\Add1~29\))) # (!\offset[8]~input_o\ & (\s_pc4[10]~16_combout\ & !\Add1~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[8]~input_o\,
	datab => \s_pc4[10]~16_combout\,
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X68_Y70_N14
\Add1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~35_combout\ = (\branch~input_o\ & ((\zero~input_o\ & ((\Add1~32_combout\))) # (!\zero~input_o\ & (\Add1~34_combout\)))) # (!\branch~input_o\ & (((\Add1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch~input_o\,
	datab => \zero~input_o\,
	datac => \Add1~34_combout\,
	datad => \Add1~32_combout\,
	combout => \Add1~35_combout\);

-- Location: FF_X68_Y70_N15
\s_pc[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~35_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(10));

-- Location: IOIBUF_X85_Y73_N22
\jAddr[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(9),
	o => \jAddr[9]~input_o\);

-- Location: LCCOMB_X67_Y70_N20
\s_pc4[11]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[11]~18_combout\ = (s_pc(11) & (!\s_pc4[10]~17\)) # (!s_pc(11) & ((\s_pc4[10]~17\) # (GND)))
-- \s_pc4[11]~19\ = CARRY((!\s_pc4[10]~17\) # (!s_pc(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(11),
	datad => VCC,
	cin => \s_pc4[10]~17\,
	combout => \s_pc4[11]~18_combout\,
	cout => \s_pc4[11]~19\);

-- Location: LCCOMB_X68_Y70_N8
\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\jump~input_o\ & (\jAddr[9]~input_o\)) # (!\jump~input_o\ & ((\s_pc4[11]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jAddr[9]~input_o\,
	datac => \jump~input_o\,
	datad => \s_pc4[11]~18_combout\,
	combout => \Add1~38_combout\);

-- Location: IOIBUF_X38_Y73_N1
\offset[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(9),
	o => \offset[9]~input_o\);

-- Location: LCCOMB_X66_Y70_N20
\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (\s_pc4[11]~18_combout\ & ((\offset[9]~input_o\ & (\Add1~33\ & VCC)) # (!\offset[9]~input_o\ & (!\Add1~33\)))) # (!\s_pc4[11]~18_combout\ & ((\offset[9]~input_o\ & (!\Add1~33\)) # (!\offset[9]~input_o\ & ((\Add1~33\) # (GND)))))
-- \Add1~37\ = CARRY((\s_pc4[11]~18_combout\ & (!\offset[9]~input_o\ & !\Add1~33\)) # (!\s_pc4[11]~18_combout\ & ((!\Add1~33\) # (!\offset[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_pc4[11]~18_combout\,
	datab => \offset[9]~input_o\,
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X68_Y70_N24
\Add1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~39_combout\ = (\branch~input_o\ & ((\zero~input_o\ & ((\Add1~36_combout\))) # (!\zero~input_o\ & (\Add1~38_combout\)))) # (!\branch~input_o\ & (((\Add1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch~input_o\,
	datab => \zero~input_o\,
	datac => \Add1~38_combout\,
	datad => \Add1~36_combout\,
	combout => \Add1~39_combout\);

-- Location: FF_X68_Y70_N25
\s_pc[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~39_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(11));

-- Location: IOIBUF_X54_Y73_N8
\jAddr[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(10),
	o => \jAddr[10]~input_o\);

-- Location: LCCOMB_X67_Y70_N22
\s_pc4[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[12]~20_combout\ = (s_pc(12) & (\s_pc4[11]~19\ $ (GND))) # (!s_pc(12) & (!\s_pc4[11]~19\ & VCC))
-- \s_pc4[12]~21\ = CARRY((s_pc(12) & !\s_pc4[11]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(12),
	datad => VCC,
	cin => \s_pc4[11]~19\,
	combout => \s_pc4[12]~20_combout\,
	cout => \s_pc4[12]~21\);

-- Location: LCCOMB_X65_Y70_N8
\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\jump~input_o\ & (\jAddr[10]~input_o\)) # (!\jump~input_o\ & ((\s_pc4[12]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jump~input_o\,
	datac => \jAddr[10]~input_o\,
	datad => \s_pc4[12]~20_combout\,
	combout => \Add1~42_combout\);

-- Location: IOIBUF_X62_Y73_N22
\offset[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(10),
	o => \offset[10]~input_o\);

-- Location: LCCOMB_X66_Y70_N22
\Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = ((\offset[10]~input_o\ $ (\s_pc4[12]~20_combout\ $ (!\Add1~37\)))) # (GND)
-- \Add1~41\ = CARRY((\offset[10]~input_o\ & ((\s_pc4[12]~20_combout\) # (!\Add1~37\))) # (!\offset[10]~input_o\ & (\s_pc4[12]~20_combout\ & !\Add1~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[10]~input_o\,
	datab => \s_pc4[12]~20_combout\,
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X65_Y70_N0
\Add1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~43_combout\ = (\zero~input_o\ & ((\branch~input_o\ & ((\Add1~40_combout\))) # (!\branch~input_o\ & (\Add1~42_combout\)))) # (!\zero~input_o\ & (((\Add1~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zero~input_o\,
	datab => \branch~input_o\,
	datac => \Add1~42_combout\,
	datad => \Add1~40_combout\,
	combout => \Add1~43_combout\);

-- Location: FF_X65_Y70_N1
\s_pc[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~43_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(12));

-- Location: IOIBUF_X79_Y73_N8
\jAddr[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(11),
	o => \jAddr[11]~input_o\);

-- Location: LCCOMB_X67_Y70_N24
\s_pc4[13]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[13]~22_combout\ = (s_pc(13) & (!\s_pc4[12]~21\)) # (!s_pc(13) & ((\s_pc4[12]~21\) # (GND)))
-- \s_pc4[13]~23\ = CARRY((!\s_pc4[12]~21\) # (!s_pc(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(13),
	datad => VCC,
	cin => \s_pc4[12]~21\,
	combout => \s_pc4[13]~22_combout\,
	cout => \s_pc4[13]~23\);

-- Location: LCCOMB_X68_Y70_N22
\Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\jump~input_o\ & (\jAddr[11]~input_o\)) # (!\jump~input_o\ & ((\s_pc4[13]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jump~input_o\,
	datac => \jAddr[11]~input_o\,
	datad => \s_pc4[13]~22_combout\,
	combout => \Add1~46_combout\);

-- Location: IOIBUF_X67_Y73_N15
\offset[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(11),
	o => \offset[11]~input_o\);

-- Location: LCCOMB_X66_Y70_N24
\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (\s_pc4[13]~22_combout\ & ((\offset[11]~input_o\ & (\Add1~41\ & VCC)) # (!\offset[11]~input_o\ & (!\Add1~41\)))) # (!\s_pc4[13]~22_combout\ & ((\offset[11]~input_o\ & (!\Add1~41\)) # (!\offset[11]~input_o\ & ((\Add1~41\) # (GND)))))
-- \Add1~45\ = CARRY((\s_pc4[13]~22_combout\ & (!\offset[11]~input_o\ & !\Add1~41\)) # (!\s_pc4[13]~22_combout\ & ((!\Add1~41\) # (!\offset[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_pc4[13]~22_combout\,
	datab => \offset[11]~input_o\,
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X68_Y70_N6
\Add1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~47_combout\ = (\branch~input_o\ & ((\zero~input_o\ & ((\Add1~44_combout\))) # (!\zero~input_o\ & (\Add1~46_combout\)))) # (!\branch~input_o\ & (((\Add1~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch~input_o\,
	datab => \zero~input_o\,
	datac => \Add1~46_combout\,
	datad => \Add1~44_combout\,
	combout => \Add1~47_combout\);

-- Location: FF_X68_Y70_N7
\s_pc[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~47_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(13));

-- Location: IOIBUF_X72_Y73_N1
\offset[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(12),
	o => \offset[12]~input_o\);

-- Location: LCCOMB_X67_Y70_N26
\s_pc4[14]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[14]~24_combout\ = (s_pc(14) & (\s_pc4[13]~23\ $ (GND))) # (!s_pc(14) & (!\s_pc4[13]~23\ & VCC))
-- \s_pc4[14]~25\ = CARRY((s_pc(14) & !\s_pc4[13]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(14),
	datad => VCC,
	cin => \s_pc4[13]~23\,
	combout => \s_pc4[14]~24_combout\,
	cout => \s_pc4[14]~25\);

-- Location: LCCOMB_X66_Y70_N26
\Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = ((\offset[12]~input_o\ $ (\s_pc4[14]~24_combout\ $ (!\Add1~45\)))) # (GND)
-- \Add1~49\ = CARRY((\offset[12]~input_o\ & ((\s_pc4[14]~24_combout\) # (!\Add1~45\))) # (!\offset[12]~input_o\ & (\s_pc4[14]~24_combout\ & !\Add1~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[12]~input_o\,
	datab => \s_pc4[14]~24_combout\,
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: IOIBUF_X81_Y73_N8
\jAddr[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(12),
	o => \jAddr[12]~input_o\);

-- Location: LCCOMB_X69_Y70_N4
\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\jump~input_o\ & ((\jAddr[12]~input_o\))) # (!\jump~input_o\ & (\s_pc4[14]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_pc4[14]~24_combout\,
	datab => \jump~input_o\,
	datad => \jAddr[12]~input_o\,
	combout => \Add1~50_combout\);

-- Location: LCCOMB_X68_Y70_N20
\Add1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~51_combout\ = (\branch~input_o\ & ((\zero~input_o\ & (\Add1~48_combout\)) # (!\zero~input_o\ & ((\Add1~50_combout\))))) # (!\branch~input_o\ & (((\Add1~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch~input_o\,
	datab => \zero~input_o\,
	datac => \Add1~48_combout\,
	datad => \Add1~50_combout\,
	combout => \Add1~51_combout\);

-- Location: FF_X68_Y70_N21
\s_pc[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~51_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(14));

-- Location: IOIBUF_X52_Y73_N22
\jAddr[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(13),
	o => \jAddr[13]~input_o\);

-- Location: LCCOMB_X67_Y70_N28
\s_pc4[15]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[15]~26_combout\ = (s_pc(15) & (!\s_pc4[14]~25\)) # (!s_pc(15) & ((\s_pc4[14]~25\) # (GND)))
-- \s_pc4[15]~27\ = CARRY((!\s_pc4[14]~25\) # (!s_pc(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(15),
	datad => VCC,
	cin => \s_pc4[14]~25\,
	combout => \s_pc4[15]~26_combout\,
	cout => \s_pc4[15]~27\);

-- Location: LCCOMB_X65_Y70_N30
\Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (\jump~input_o\ & (\jAddr[13]~input_o\)) # (!\jump~input_o\ & ((\s_pc4[15]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr[13]~input_o\,
	datac => \jump~input_o\,
	datad => \s_pc4[15]~26_combout\,
	combout => \Add1~54_combout\);

-- Location: IOIBUF_X89_Y73_N8
\offset[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(13),
	o => \offset[13]~input_o\);

-- Location: LCCOMB_X66_Y70_N28
\Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (\offset[13]~input_o\ & ((\s_pc4[15]~26_combout\ & (\Add1~49\ & VCC)) # (!\s_pc4[15]~26_combout\ & (!\Add1~49\)))) # (!\offset[13]~input_o\ & ((\s_pc4[15]~26_combout\ & (!\Add1~49\)) # (!\s_pc4[15]~26_combout\ & ((\Add1~49\) # 
-- (GND)))))
-- \Add1~53\ = CARRY((\offset[13]~input_o\ & (!\s_pc4[15]~26_combout\ & !\Add1~49\)) # (!\offset[13]~input_o\ & ((!\Add1~49\) # (!\s_pc4[15]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[13]~input_o\,
	datab => \s_pc4[15]~26_combout\,
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X65_Y70_N10
\Add1~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~55_combout\ = (\zero~input_o\ & ((\branch~input_o\ & ((\Add1~52_combout\))) # (!\branch~input_o\ & (\Add1~54_combout\)))) # (!\zero~input_o\ & (((\Add1~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zero~input_o\,
	datab => \branch~input_o\,
	datac => \Add1~54_combout\,
	datad => \Add1~52_combout\,
	combout => \Add1~55_combout\);

-- Location: FF_X65_Y70_N11
\s_pc[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~55_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(15));

-- Location: LCCOMB_X67_Y70_N30
\s_pc4[16]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[16]~28_combout\ = (s_pc(16) & (\s_pc4[15]~27\ $ (GND))) # (!s_pc(16) & (!\s_pc4[15]~27\ & VCC))
-- \s_pc4[16]~29\ = CARRY((s_pc(16) & !\s_pc4[15]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(16),
	datad => VCC,
	cin => \s_pc4[15]~27\,
	combout => \s_pc4[16]~28_combout\,
	cout => \s_pc4[16]~29\);

-- Location: IOIBUF_X58_Y73_N8
\offset[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(14),
	o => \offset[14]~input_o\);

-- Location: LCCOMB_X66_Y70_N30
\Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = ((\s_pc4[16]~28_combout\ $ (\offset[14]~input_o\ $ (!\Add1~53\)))) # (GND)
-- \Add1~57\ = CARRY((\s_pc4[16]~28_combout\ & ((\offset[14]~input_o\) # (!\Add1~53\))) # (!\s_pc4[16]~28_combout\ & (\offset[14]~input_o\ & !\Add1~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_pc4[16]~28_combout\,
	datab => \offset[14]~input_o\,
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: IOIBUF_X60_Y73_N15
\jAddr[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(14),
	o => \jAddr[14]~input_o\);

-- Location: LCCOMB_X65_Y70_N24
\Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (\jump~input_o\ & (\jAddr[14]~input_o\)) # (!\jump~input_o\ & ((\s_pc4[16]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr[14]~input_o\,
	datac => \jump~input_o\,
	datad => \s_pc4[16]~28_combout\,
	combout => \Add1~58_combout\);

-- Location: LCCOMB_X66_Y70_N0
\Add1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~59_combout\ = (\zero~input_o\ & ((\branch~input_o\ & (\Add1~56_combout\)) # (!\branch~input_o\ & ((\Add1~58_combout\))))) # (!\zero~input_o\ & (((\Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zero~input_o\,
	datab => \branch~input_o\,
	datac => \Add1~56_combout\,
	datad => \Add1~58_combout\,
	combout => \Add1~59_combout\);

-- Location: FF_X66_Y70_N1
\s_pc[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~59_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(16));

-- Location: IOIBUF_X83_Y73_N8
\jAddr[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(15),
	o => \jAddr[15]~input_o\);

-- Location: LCCOMB_X67_Y69_N0
\s_pc4[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[17]~30_combout\ = (s_pc(17) & (!\s_pc4[16]~29\)) # (!s_pc(17) & ((\s_pc4[16]~29\) # (GND)))
-- \s_pc4[17]~31\ = CARRY((!\s_pc4[16]~29\) # (!s_pc(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(17),
	datad => VCC,
	cin => \s_pc4[16]~29\,
	combout => \s_pc4[17]~30_combout\,
	cout => \s_pc4[17]~31\);

-- Location: LCCOMB_X68_Y69_N26
\Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = (\jump~input_o\ & (\jAddr[15]~input_o\)) # (!\jump~input_o\ & ((\s_pc4[17]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jAddr[15]~input_o\,
	datac => \s_pc4[17]~30_combout\,
	datad => \jump~input_o\,
	combout => \Add1~62_combout\);

-- Location: IOIBUF_X87_Y73_N1
\offset[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(15),
	o => \offset[15]~input_o\);

-- Location: LCCOMB_X66_Y69_N0
\Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (\offset[15]~input_o\ & ((\s_pc4[17]~30_combout\ & (\Add1~57\ & VCC)) # (!\s_pc4[17]~30_combout\ & (!\Add1~57\)))) # (!\offset[15]~input_o\ & ((\s_pc4[17]~30_combout\ & (!\Add1~57\)) # (!\s_pc4[17]~30_combout\ & ((\Add1~57\) # 
-- (GND)))))
-- \Add1~61\ = CARRY((\offset[15]~input_o\ & (!\s_pc4[17]~30_combout\ & !\Add1~57\)) # (!\offset[15]~input_o\ & ((!\Add1~57\) # (!\s_pc4[17]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[15]~input_o\,
	datab => \s_pc4[17]~30_combout\,
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X68_Y69_N24
\Add1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~63_combout\ = (\zero~input_o\ & ((\branch~input_o\ & ((\Add1~60_combout\))) # (!\branch~input_o\ & (\Add1~62_combout\)))) # (!\zero~input_o\ & (((\Add1~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zero~input_o\,
	datab => \branch~input_o\,
	datac => \Add1~62_combout\,
	datad => \Add1~60_combout\,
	combout => \Add1~63_combout\);

-- Location: FF_X68_Y69_N25
\s_pc[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~63_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(17));

-- Location: IOIBUF_X96_Y73_N15
\jAddr[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(16),
	o => \jAddr[16]~input_o\);

-- Location: LCCOMB_X67_Y69_N2
\s_pc4[18]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[18]~32_combout\ = (s_pc(18) & (\s_pc4[17]~31\ $ (GND))) # (!s_pc(18) & (!\s_pc4[17]~31\ & VCC))
-- \s_pc4[18]~33\ = CARRY((s_pc(18) & !\s_pc4[17]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(18),
	datad => VCC,
	cin => \s_pc4[17]~31\,
	combout => \s_pc4[18]~32_combout\,
	cout => \s_pc4[18]~33\);

-- Location: LCCOMB_X68_Y69_N4
\Add1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~66_combout\ = (\jump~input_o\ & (\jAddr[16]~input_o\)) # (!\jump~input_o\ & ((\s_pc4[18]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jump~input_o\,
	datac => \jAddr[16]~input_o\,
	datad => \s_pc4[18]~32_combout\,
	combout => \Add1~66_combout\);

-- Location: IOIBUF_X98_Y73_N15
\offset[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(16),
	o => \offset[16]~input_o\);

-- Location: LCCOMB_X66_Y69_N2
\Add1~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~64_combout\ = ((\s_pc4[18]~32_combout\ $ (\offset[16]~input_o\ $ (!\Add1~61\)))) # (GND)
-- \Add1~65\ = CARRY((\s_pc4[18]~32_combout\ & ((\offset[16]~input_o\) # (!\Add1~61\))) # (!\s_pc4[18]~32_combout\ & (\offset[16]~input_o\ & !\Add1~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_pc4[18]~32_combout\,
	datab => \offset[16]~input_o\,
	datad => VCC,
	cin => \Add1~61\,
	combout => \Add1~64_combout\,
	cout => \Add1~65\);

-- Location: LCCOMB_X65_Y69_N24
\Add1~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~67_combout\ = (\zero~input_o\ & ((\branch~input_o\ & ((\Add1~64_combout\))) # (!\branch~input_o\ & (\Add1~66_combout\)))) # (!\zero~input_o\ & (((\Add1~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zero~input_o\,
	datab => \branch~input_o\,
	datac => \Add1~66_combout\,
	datad => \Add1~64_combout\,
	combout => \Add1~67_combout\);

-- Location: FF_X65_Y69_N25
\s_pc[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~67_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(18));

-- Location: IOIBUF_X83_Y73_N1
\jAddr[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(17),
	o => \jAddr[17]~input_o\);

-- Location: LCCOMB_X67_Y69_N4
\s_pc4[19]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[19]~34_combout\ = (s_pc(19) & (!\s_pc4[18]~33\)) # (!s_pc(19) & ((\s_pc4[18]~33\) # (GND)))
-- \s_pc4[19]~35\ = CARRY((!\s_pc4[18]~33\) # (!s_pc(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(19),
	datad => VCC,
	cin => \s_pc4[18]~33\,
	combout => \s_pc4[19]~34_combout\,
	cout => \s_pc4[19]~35\);

-- Location: LCCOMB_X68_Y69_N22
\Add1~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~70_combout\ = (\jump~input_o\ & (\jAddr[17]~input_o\)) # (!\jump~input_o\ & ((\s_pc4[19]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr[17]~input_o\,
	datac => \s_pc4[19]~34_combout\,
	datad => \jump~input_o\,
	combout => \Add1~70_combout\);

-- Location: IOIBUF_X38_Y73_N15
\offset[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(17),
	o => \offset[17]~input_o\);

-- Location: LCCOMB_X66_Y69_N4
\Add1~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~68_combout\ = (\s_pc4[19]~34_combout\ & ((\offset[17]~input_o\ & (\Add1~65\ & VCC)) # (!\offset[17]~input_o\ & (!\Add1~65\)))) # (!\s_pc4[19]~34_combout\ & ((\offset[17]~input_o\ & (!\Add1~65\)) # (!\offset[17]~input_o\ & ((\Add1~65\) # (GND)))))
-- \Add1~69\ = CARRY((\s_pc4[19]~34_combout\ & (!\offset[17]~input_o\ & !\Add1~65\)) # (!\s_pc4[19]~34_combout\ & ((!\Add1~65\) # (!\offset[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_pc4[19]~34_combout\,
	datab => \offset[17]~input_o\,
	datad => VCC,
	cin => \Add1~65\,
	combout => \Add1~68_combout\,
	cout => \Add1~69\);

-- Location: LCCOMB_X65_Y69_N10
\Add1~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~71_combout\ = (\zero~input_o\ & ((\branch~input_o\ & ((\Add1~68_combout\))) # (!\branch~input_o\ & (\Add1~70_combout\)))) # (!\zero~input_o\ & (((\Add1~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zero~input_o\,
	datab => \branch~input_o\,
	datac => \Add1~70_combout\,
	datad => \Add1~68_combout\,
	combout => \Add1~71_combout\);

-- Location: FF_X65_Y69_N11
\s_pc[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~71_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(19));

-- Location: IOIBUF_X45_Y73_N1
\jAddr[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(18),
	o => \jAddr[18]~input_o\);

-- Location: LCCOMB_X67_Y69_N6
\s_pc4[20]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[20]~36_combout\ = (s_pc(20) & (\s_pc4[19]~35\ $ (GND))) # (!s_pc(20) & (!\s_pc4[19]~35\ & VCC))
-- \s_pc4[20]~37\ = CARRY((s_pc(20) & !\s_pc4[19]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(20),
	datad => VCC,
	cin => \s_pc4[19]~35\,
	combout => \s_pc4[20]~36_combout\,
	cout => \s_pc4[20]~37\);

-- Location: LCCOMB_X65_Y69_N8
\Add1~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~74_combout\ = (\jump~input_o\ & (\jAddr[18]~input_o\)) # (!\jump~input_o\ & ((\s_pc4[20]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr[18]~input_o\,
	datab => \jump~input_o\,
	datad => \s_pc4[20]~36_combout\,
	combout => \Add1~74_combout\);

-- Location: IOIBUF_X35_Y73_N22
\offset[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(18),
	o => \offset[18]~input_o\);

-- Location: LCCOMB_X66_Y69_N6
\Add1~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~72_combout\ = ((\s_pc4[20]~36_combout\ $ (\offset[18]~input_o\ $ (!\Add1~69\)))) # (GND)
-- \Add1~73\ = CARRY((\s_pc4[20]~36_combout\ & ((\offset[18]~input_o\) # (!\Add1~69\))) # (!\s_pc4[20]~36_combout\ & (\offset[18]~input_o\ & !\Add1~69\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_pc4[20]~36_combout\,
	datab => \offset[18]~input_o\,
	datad => VCC,
	cin => \Add1~69\,
	combout => \Add1~72_combout\,
	cout => \Add1~73\);

-- Location: LCCOMB_X65_Y69_N4
\Add1~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~75_combout\ = (\zero~input_o\ & ((\branch~input_o\ & ((\Add1~72_combout\))) # (!\branch~input_o\ & (\Add1~74_combout\)))) # (!\zero~input_o\ & (((\Add1~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zero~input_o\,
	datab => \branch~input_o\,
	datac => \Add1~74_combout\,
	datad => \Add1~72_combout\,
	combout => \Add1~75_combout\);

-- Location: FF_X65_Y69_N5
\s_pc[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~75_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(20));

-- Location: IOIBUF_X58_Y73_N15
\offset[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(19),
	o => \offset[19]~input_o\);

-- Location: LCCOMB_X67_Y69_N8
\s_pc4[21]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[21]~38_combout\ = (s_pc(21) & (!\s_pc4[20]~37\)) # (!s_pc(21) & ((\s_pc4[20]~37\) # (GND)))
-- \s_pc4[21]~39\ = CARRY((!\s_pc4[20]~37\) # (!s_pc(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(21),
	datad => VCC,
	cin => \s_pc4[20]~37\,
	combout => \s_pc4[21]~38_combout\,
	cout => \s_pc4[21]~39\);

-- Location: LCCOMB_X66_Y69_N8
\Add1~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~76_combout\ = (\offset[19]~input_o\ & ((\s_pc4[21]~38_combout\ & (\Add1~73\ & VCC)) # (!\s_pc4[21]~38_combout\ & (!\Add1~73\)))) # (!\offset[19]~input_o\ & ((\s_pc4[21]~38_combout\ & (!\Add1~73\)) # (!\s_pc4[21]~38_combout\ & ((\Add1~73\) # 
-- (GND)))))
-- \Add1~77\ = CARRY((\offset[19]~input_o\ & (!\s_pc4[21]~38_combout\ & !\Add1~73\)) # (!\offset[19]~input_o\ & ((!\Add1~73\) # (!\s_pc4[21]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[19]~input_o\,
	datab => \s_pc4[21]~38_combout\,
	datad => VCC,
	cin => \Add1~73\,
	combout => \Add1~76_combout\,
	cout => \Add1~77\);

-- Location: IOIBUF_X105_Y73_N8
\jAddr[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(19),
	o => \jAddr[19]~input_o\);

-- Location: LCCOMB_X68_Y69_N28
\Add1~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~78_combout\ = (\jump~input_o\ & (\jAddr[19]~input_o\)) # (!\jump~input_o\ & ((\s_pc4[21]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jAddr[19]~input_o\,
	datac => \jump~input_o\,
	datad => \s_pc4[21]~38_combout\,
	combout => \Add1~78_combout\);

-- Location: LCCOMB_X65_Y69_N6
\Add1~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~79_combout\ = (\zero~input_o\ & ((\branch~input_o\ & (\Add1~76_combout\)) # (!\branch~input_o\ & ((\Add1~78_combout\))))) # (!\zero~input_o\ & (((\Add1~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zero~input_o\,
	datab => \branch~input_o\,
	datac => \Add1~76_combout\,
	datad => \Add1~78_combout\,
	combout => \Add1~79_combout\);

-- Location: FF_X65_Y69_N7
\s_pc[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~79_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(21));

-- Location: IOIBUF_X47_Y73_N15
\offset[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(20),
	o => \offset[20]~input_o\);

-- Location: LCCOMB_X67_Y69_N10
\s_pc4[22]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[22]~40_combout\ = (s_pc(22) & (\s_pc4[21]~39\ $ (GND))) # (!s_pc(22) & (!\s_pc4[21]~39\ & VCC))
-- \s_pc4[22]~41\ = CARRY((s_pc(22) & !\s_pc4[21]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(22),
	datad => VCC,
	cin => \s_pc4[21]~39\,
	combout => \s_pc4[22]~40_combout\,
	cout => \s_pc4[22]~41\);

-- Location: LCCOMB_X66_Y69_N10
\Add1~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~80_combout\ = ((\offset[20]~input_o\ $ (\s_pc4[22]~40_combout\ $ (!\Add1~77\)))) # (GND)
-- \Add1~81\ = CARRY((\offset[20]~input_o\ & ((\s_pc4[22]~40_combout\) # (!\Add1~77\))) # (!\offset[20]~input_o\ & (\s_pc4[22]~40_combout\ & !\Add1~77\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[20]~input_o\,
	datab => \s_pc4[22]~40_combout\,
	datad => VCC,
	cin => \Add1~77\,
	combout => \Add1~80_combout\,
	cout => \Add1~81\);

-- Location: IOIBUF_X49_Y73_N22
\jAddr[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(20),
	o => \jAddr[20]~input_o\);

-- Location: LCCOMB_X65_Y69_N18
\Add1~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~82_combout\ = (\jump~input_o\ & (\jAddr[20]~input_o\)) # (!\jump~input_o\ & ((\s_pc4[22]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr[20]~input_o\,
	datab => \jump~input_o\,
	datad => \s_pc4[22]~40_combout\,
	combout => \Add1~82_combout\);

-- Location: LCCOMB_X65_Y69_N16
\Add1~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~83_combout\ = (\zero~input_o\ & ((\branch~input_o\ & (\Add1~80_combout\)) # (!\branch~input_o\ & ((\Add1~82_combout\))))) # (!\zero~input_o\ & (((\Add1~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zero~input_o\,
	datab => \branch~input_o\,
	datac => \Add1~80_combout\,
	datad => \Add1~82_combout\,
	combout => \Add1~83_combout\);

-- Location: FF_X65_Y69_N17
\s_pc[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~83_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(22));

-- Location: IOIBUF_X94_Y73_N8
\offset[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(21),
	o => \offset[21]~input_o\);

-- Location: LCCOMB_X67_Y69_N12
\s_pc4[23]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[23]~42_combout\ = (s_pc(23) & (!\s_pc4[22]~41\)) # (!s_pc(23) & ((\s_pc4[22]~41\) # (GND)))
-- \s_pc4[23]~43\ = CARRY((!\s_pc4[22]~41\) # (!s_pc(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(23),
	datad => VCC,
	cin => \s_pc4[22]~41\,
	combout => \s_pc4[23]~42_combout\,
	cout => \s_pc4[23]~43\);

-- Location: LCCOMB_X66_Y69_N12
\Add1~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~84_combout\ = (\offset[21]~input_o\ & ((\s_pc4[23]~42_combout\ & (\Add1~81\ & VCC)) # (!\s_pc4[23]~42_combout\ & (!\Add1~81\)))) # (!\offset[21]~input_o\ & ((\s_pc4[23]~42_combout\ & (!\Add1~81\)) # (!\s_pc4[23]~42_combout\ & ((\Add1~81\) # 
-- (GND)))))
-- \Add1~85\ = CARRY((\offset[21]~input_o\ & (!\s_pc4[23]~42_combout\ & !\Add1~81\)) # (!\offset[21]~input_o\ & ((!\Add1~81\) # (!\s_pc4[23]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[21]~input_o\,
	datab => \s_pc4[23]~42_combout\,
	datad => VCC,
	cin => \Add1~81\,
	combout => \Add1~84_combout\,
	cout => \Add1~85\);

-- Location: IOIBUF_X45_Y73_N8
\jAddr[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(21),
	o => \jAddr[21]~input_o\);

-- Location: LCCOMB_X65_Y69_N28
\Add1~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~86_combout\ = (\jump~input_o\ & (\jAddr[21]~input_o\)) # (!\jump~input_o\ & ((\s_pc4[23]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jump~input_o\,
	datac => \jAddr[21]~input_o\,
	datad => \s_pc4[23]~42_combout\,
	combout => \Add1~86_combout\);

-- Location: LCCOMB_X65_Y69_N14
\Add1~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~87_combout\ = (\zero~input_o\ & ((\branch~input_o\ & (\Add1~84_combout\)) # (!\branch~input_o\ & ((\Add1~86_combout\))))) # (!\zero~input_o\ & (((\Add1~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zero~input_o\,
	datab => \branch~input_o\,
	datac => \Add1~84_combout\,
	datad => \Add1~86_combout\,
	combout => \Add1~87_combout\);

-- Location: FF_X65_Y69_N15
\s_pc[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~87_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(23));

-- Location: IOIBUF_X47_Y73_N1
\offset[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(22),
	o => \offset[22]~input_o\);

-- Location: LCCOMB_X67_Y69_N14
\s_pc4[24]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[24]~44_combout\ = (s_pc(24) & (\s_pc4[23]~43\ $ (GND))) # (!s_pc(24) & (!\s_pc4[23]~43\ & VCC))
-- \s_pc4[24]~45\ = CARRY((s_pc(24) & !\s_pc4[23]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(24),
	datad => VCC,
	cin => \s_pc4[23]~43\,
	combout => \s_pc4[24]~44_combout\,
	cout => \s_pc4[24]~45\);

-- Location: LCCOMB_X66_Y69_N14
\Add1~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~88_combout\ = ((\offset[22]~input_o\ $ (\s_pc4[24]~44_combout\ $ (!\Add1~85\)))) # (GND)
-- \Add1~89\ = CARRY((\offset[22]~input_o\ & ((\s_pc4[24]~44_combout\) # (!\Add1~85\))) # (!\offset[22]~input_o\ & (\s_pc4[24]~44_combout\ & !\Add1~85\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[22]~input_o\,
	datab => \s_pc4[24]~44_combout\,
	datad => VCC,
	cin => \Add1~85\,
	combout => \Add1~88_combout\,
	cout => \Add1~89\);

-- Location: IOIBUF_X102_Y73_N1
\jAddr[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(22),
	o => \jAddr[22]~input_o\);

-- Location: LCCOMB_X68_Y69_N10
\Add1~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~90_combout\ = (\jump~input_o\ & (\jAddr[22]~input_o\)) # (!\jump~input_o\ & ((\s_pc4[24]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jAddr[22]~input_o\,
	datac => \jump~input_o\,
	datad => \s_pc4[24]~44_combout\,
	combout => \Add1~90_combout\);

-- Location: LCCOMB_X65_Y69_N0
\Add1~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~91_combout\ = (\zero~input_o\ & ((\branch~input_o\ & (\Add1~88_combout\)) # (!\branch~input_o\ & ((\Add1~90_combout\))))) # (!\zero~input_o\ & (((\Add1~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zero~input_o\,
	datab => \branch~input_o\,
	datac => \Add1~88_combout\,
	datad => \Add1~90_combout\,
	combout => \Add1~91_combout\);

-- Location: FF_X65_Y69_N1
\s_pc[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~91_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(24));

-- Location: IOIBUF_X33_Y73_N1
\jAddr[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(23),
	o => \jAddr[23]~input_o\);

-- Location: LCCOMB_X67_Y69_N16
\s_pc4[25]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[25]~46_combout\ = (s_pc(25) & (!\s_pc4[24]~45\)) # (!s_pc(25) & ((\s_pc4[24]~45\) # (GND)))
-- \s_pc4[25]~47\ = CARRY((!\s_pc4[24]~45\) # (!s_pc(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(25),
	datad => VCC,
	cin => \s_pc4[24]~45\,
	combout => \s_pc4[25]~46_combout\,
	cout => \s_pc4[25]~47\);

-- Location: LCCOMB_X65_Y69_N30
\Add1~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~94_combout\ = (\jump~input_o\ & (\jAddr[23]~input_o\)) # (!\jump~input_o\ & ((\s_pc4[25]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jump~input_o\,
	datac => \jAddr[23]~input_o\,
	datad => \s_pc4[25]~46_combout\,
	combout => \Add1~94_combout\);

-- Location: IOIBUF_X85_Y73_N1
\offset[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(23),
	o => \offset[23]~input_o\);

-- Location: LCCOMB_X66_Y69_N16
\Add1~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~92_combout\ = (\offset[23]~input_o\ & ((\s_pc4[25]~46_combout\ & (\Add1~89\ & VCC)) # (!\s_pc4[25]~46_combout\ & (!\Add1~89\)))) # (!\offset[23]~input_o\ & ((\s_pc4[25]~46_combout\ & (!\Add1~89\)) # (!\s_pc4[25]~46_combout\ & ((\Add1~89\) # 
-- (GND)))))
-- \Add1~93\ = CARRY((\offset[23]~input_o\ & (!\s_pc4[25]~46_combout\ & !\Add1~89\)) # (!\offset[23]~input_o\ & ((!\Add1~89\) # (!\s_pc4[25]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[23]~input_o\,
	datab => \s_pc4[25]~46_combout\,
	datad => VCC,
	cin => \Add1~89\,
	combout => \Add1~92_combout\,
	cout => \Add1~93\);

-- Location: LCCOMB_X65_Y69_N2
\Add1~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~95_combout\ = (\zero~input_o\ & ((\branch~input_o\ & ((\Add1~92_combout\))) # (!\branch~input_o\ & (\Add1~94_combout\)))) # (!\zero~input_o\ & (((\Add1~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zero~input_o\,
	datab => \branch~input_o\,
	datac => \Add1~94_combout\,
	datad => \Add1~92_combout\,
	combout => \Add1~95_combout\);

-- Location: FF_X65_Y69_N3
\s_pc[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~95_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(25));

-- Location: IOIBUF_X105_Y73_N1
\jAddr[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(24),
	o => \jAddr[24]~input_o\);

-- Location: LCCOMB_X67_Y69_N18
\s_pc4[26]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[26]~48_combout\ = (s_pc(26) & (\s_pc4[25]~47\ $ (GND))) # (!s_pc(26) & (!\s_pc4[25]~47\ & VCC))
-- \s_pc4[26]~49\ = CARRY((s_pc(26) & !\s_pc4[25]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(26),
	datad => VCC,
	cin => \s_pc4[25]~47\,
	combout => \s_pc4[26]~48_combout\,
	cout => \s_pc4[26]~49\);

-- Location: LCCOMB_X68_Y69_N8
\Add1~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~98_combout\ = (\jump~input_o\ & (\jAddr[24]~input_o\)) # (!\jump~input_o\ & ((\s_pc4[26]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jump~input_o\,
	datac => \jAddr[24]~input_o\,
	datad => \s_pc4[26]~48_combout\,
	combout => \Add1~98_combout\);

-- Location: IOIBUF_X115_Y69_N22
\offset[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(24),
	o => \offset[24]~input_o\);

-- Location: LCCOMB_X66_Y69_N18
\Add1~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~96_combout\ = ((\offset[24]~input_o\ $ (\s_pc4[26]~48_combout\ $ (!\Add1~93\)))) # (GND)
-- \Add1~97\ = CARRY((\offset[24]~input_o\ & ((\s_pc4[26]~48_combout\) # (!\Add1~93\))) # (!\offset[24]~input_o\ & (\s_pc4[26]~48_combout\ & !\Add1~93\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[24]~input_o\,
	datab => \s_pc4[26]~48_combout\,
	datad => VCC,
	cin => \Add1~93\,
	combout => \Add1~96_combout\,
	cout => \Add1~97\);

-- Location: LCCOMB_X65_Y69_N20
\Add1~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~99_combout\ = (\zero~input_o\ & ((\branch~input_o\ & ((\Add1~96_combout\))) # (!\branch~input_o\ & (\Add1~98_combout\)))) # (!\zero~input_o\ & (((\Add1~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zero~input_o\,
	datab => \branch~input_o\,
	datac => \Add1~98_combout\,
	datad => \Add1~96_combout\,
	combout => \Add1~99_combout\);

-- Location: FF_X65_Y69_N21
\s_pc[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~99_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(26));

-- Location: IOIBUF_X102_Y73_N8
\jAddr[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(25),
	o => \jAddr[25]~input_o\);

-- Location: LCCOMB_X67_Y69_N20
\s_pc4[27]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[27]~50_combout\ = (s_pc(27) & (!\s_pc4[26]~49\)) # (!s_pc(27) & ((\s_pc4[26]~49\) # (GND)))
-- \s_pc4[27]~51\ = CARRY((!\s_pc4[26]~49\) # (!s_pc(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(27),
	datad => VCC,
	cin => \s_pc4[26]~49\,
	combout => \s_pc4[27]~50_combout\,
	cout => \s_pc4[27]~51\);

-- Location: LCCOMB_X68_Y69_N30
\Add1~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~102_combout\ = (\jump~input_o\ & (\jAddr[25]~input_o\)) # (!\jump~input_o\ & ((\s_pc4[27]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr[25]~input_o\,
	datab => \jump~input_o\,
	datad => \s_pc4[27]~50_combout\,
	combout => \Add1~102_combout\);

-- Location: IOIBUF_X94_Y73_N1
\offset[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(25),
	o => \offset[25]~input_o\);

-- Location: LCCOMB_X66_Y69_N20
\Add1~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~100_combout\ = (\s_pc4[27]~50_combout\ & ((\offset[25]~input_o\ & (\Add1~97\ & VCC)) # (!\offset[25]~input_o\ & (!\Add1~97\)))) # (!\s_pc4[27]~50_combout\ & ((\offset[25]~input_o\ & (!\Add1~97\)) # (!\offset[25]~input_o\ & ((\Add1~97\) # (GND)))))
-- \Add1~101\ = CARRY((\s_pc4[27]~50_combout\ & (!\offset[25]~input_o\ & !\Add1~97\)) # (!\s_pc4[27]~50_combout\ & ((!\Add1~97\) # (!\offset[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_pc4[27]~50_combout\,
	datab => \offset[25]~input_o\,
	datad => VCC,
	cin => \Add1~97\,
	combout => \Add1~100_combout\,
	cout => \Add1~101\);

-- Location: LCCOMB_X67_Y69_N30
\Add1~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~103_combout\ = (\branch~input_o\ & ((\zero~input_o\ & ((\Add1~100_combout\))) # (!\zero~input_o\ & (\Add1~102_combout\)))) # (!\branch~input_o\ & (((\Add1~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch~input_o\,
	datab => \zero~input_o\,
	datac => \Add1~102_combout\,
	datad => \Add1~100_combout\,
	combout => \Add1~103_combout\);

-- Location: FF_X67_Y69_N31
\s_pc[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~103_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(27));

-- Location: LCCOMB_X67_Y69_N22
\s_pc4[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[28]~52_combout\ = (s_pc(28) & (\s_pc4[27]~51\ $ (GND))) # (!s_pc(28) & (!\s_pc4[27]~51\ & VCC))
-- \s_pc4[28]~53\ = CARRY((s_pc(28) & !\s_pc4[27]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(28),
	datad => VCC,
	cin => \s_pc4[27]~51\,
	combout => \s_pc4[28]~52_combout\,
	cout => \s_pc4[28]~53\);

-- Location: IOIBUF_X85_Y73_N15
\offset[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(26),
	o => \offset[26]~input_o\);

-- Location: LCCOMB_X66_Y69_N22
\Add1~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~104_combout\ = ((\offset[26]~input_o\ $ (\s_pc4[28]~52_combout\ $ (!\Add1~101\)))) # (GND)
-- \Add1~105\ = CARRY((\offset[26]~input_o\ & ((\s_pc4[28]~52_combout\) # (!\Add1~101\))) # (!\offset[26]~input_o\ & (\s_pc4[28]~52_combout\ & !\Add1~101\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[26]~input_o\,
	datab => \s_pc4[28]~52_combout\,
	datad => VCC,
	cin => \Add1~101\,
	combout => \Add1~104_combout\,
	cout => \Add1~105\);

-- Location: LCCOMB_X65_Y69_N22
\Add1~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~106_combout\ = (\zero~input_o\ & ((\branch~input_o\ & ((\Add1~104_combout\))) # (!\branch~input_o\ & (\s_pc4[28]~52_combout\)))) # (!\zero~input_o\ & (((\s_pc4[28]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zero~input_o\,
	datab => \branch~input_o\,
	datac => \s_pc4[28]~52_combout\,
	datad => \Add1~104_combout\,
	combout => \Add1~106_combout\);

-- Location: FF_X65_Y69_N23
\s_pc[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~106_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(28));

-- Location: LCCOMB_X67_Y69_N24
\s_pc4[29]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[29]~54_combout\ = (s_pc(29) & (!\s_pc4[28]~53\)) # (!s_pc(29) & ((\s_pc4[28]~53\) # (GND)))
-- \s_pc4[29]~55\ = CARRY((!\s_pc4[28]~53\) # (!s_pc(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_pc(29),
	datad => VCC,
	cin => \s_pc4[28]~53\,
	combout => \s_pc4[29]~54_combout\,
	cout => \s_pc4[29]~55\);

-- Location: IOIBUF_X35_Y73_N15
\offset[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(27),
	o => \offset[27]~input_o\);

-- Location: LCCOMB_X66_Y69_N24
\Add1~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~107_combout\ = (\s_pc4[29]~54_combout\ & ((\offset[27]~input_o\ & (\Add1~105\ & VCC)) # (!\offset[27]~input_o\ & (!\Add1~105\)))) # (!\s_pc4[29]~54_combout\ & ((\offset[27]~input_o\ & (!\Add1~105\)) # (!\offset[27]~input_o\ & ((\Add1~105\) # 
-- (GND)))))
-- \Add1~108\ = CARRY((\s_pc4[29]~54_combout\ & (!\offset[27]~input_o\ & !\Add1~105\)) # (!\s_pc4[29]~54_combout\ & ((!\Add1~105\) # (!\offset[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_pc4[29]~54_combout\,
	datab => \offset[27]~input_o\,
	datad => VCC,
	cin => \Add1~105\,
	combout => \Add1~107_combout\,
	cout => \Add1~108\);

-- Location: LCCOMB_X65_Y69_N12
\Add1~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~109_combout\ = (\zero~input_o\ & ((\branch~input_o\ & ((\Add1~107_combout\))) # (!\branch~input_o\ & (\s_pc4[29]~54_combout\)))) # (!\zero~input_o\ & (((\s_pc4[29]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zero~input_o\,
	datab => \branch~input_o\,
	datac => \s_pc4[29]~54_combout\,
	datad => \Add1~107_combout\,
	combout => \Add1~109_combout\);

-- Location: FF_X65_Y69_N13
\s_pc[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~109_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(29));

-- Location: IOIBUF_X115_Y37_N22
\offset[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(28),
	o => \offset[28]~input_o\);

-- Location: LCCOMB_X67_Y69_N26
\s_pc4[30]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[30]~56_combout\ = (s_pc(30) & (\s_pc4[29]~55\ $ (GND))) # (!s_pc(30) & (!\s_pc4[29]~55\ & VCC))
-- \s_pc4[30]~57\ = CARRY((s_pc(30) & !\s_pc4[29]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_pc(30),
	datad => VCC,
	cin => \s_pc4[29]~55\,
	combout => \s_pc4[30]~56_combout\,
	cout => \s_pc4[30]~57\);

-- Location: LCCOMB_X66_Y69_N26
\Add1~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~110_combout\ = ((\offset[28]~input_o\ $ (\s_pc4[30]~56_combout\ $ (!\Add1~108\)))) # (GND)
-- \Add1~111\ = CARRY((\offset[28]~input_o\ & ((\s_pc4[30]~56_combout\) # (!\Add1~108\))) # (!\offset[28]~input_o\ & (\s_pc4[30]~56_combout\ & !\Add1~108\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[28]~input_o\,
	datab => \s_pc4[30]~56_combout\,
	datad => VCC,
	cin => \Add1~108\,
	combout => \Add1~110_combout\,
	cout => \Add1~111\);

-- Location: LCCOMB_X66_Y69_N30
\Add1~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~112_combout\ = (\zero~input_o\ & ((\branch~input_o\ & (\Add1~110_combout\)) # (!\branch~input_o\ & ((\s_pc4[30]~56_combout\))))) # (!\zero~input_o\ & (((\s_pc4[30]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zero~input_o\,
	datab => \branch~input_o\,
	datac => \Add1~110_combout\,
	datad => \s_pc4[30]~56_combout\,
	combout => \Add1~112_combout\);

-- Location: FF_X66_Y69_N31
\s_pc[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~112_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(30));

-- Location: LCCOMB_X67_Y69_N28
\s_pc4[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc4[31]~58_combout\ = \s_pc4[30]~57\ $ (s_pc(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => s_pc(31),
	cin => \s_pc4[30]~57\,
	combout => \s_pc4[31]~58_combout\);

-- Location: IOIBUF_X115_Y37_N15
\offset[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(29),
	o => \offset[29]~input_o\);

-- Location: LCCOMB_X66_Y69_N28
\Add1~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~113_combout\ = \offset[29]~input_o\ $ (\Add1~111\ $ (\s_pc4[31]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \offset[29]~input_o\,
	datad => \s_pc4[31]~58_combout\,
	cin => \Add1~111\,
	combout => \Add1~113_combout\);

-- Location: LCCOMB_X65_Y69_N26
\Add1~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~115_combout\ = (\zero~input_o\ & ((\branch~input_o\ & ((\Add1~113_combout\))) # (!\branch~input_o\ & (\s_pc4[31]~58_combout\)))) # (!\zero~input_o\ & (((\s_pc4[31]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zero~input_o\,
	datab => \branch~input_o\,
	datac => \s_pc4[31]~58_combout\,
	datad => \Add1~113_combout\,
	combout => \Add1~115_combout\);

-- Location: FF_X65_Y69_N27
\s_pc[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~115_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(31));

-- Location: IOIBUF_X33_Y0_N1
\offset[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(30),
	o => \offset[30]~input_o\);

-- Location: IOIBUF_X109_Y0_N1
\offset[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(31),
	o => \offset[31]~input_o\);

ww_pc(0) <= \pc[0]~output_o\;

ww_pc(1) <= \pc[1]~output_o\;

ww_pc(2) <= \pc[2]~output_o\;

ww_pc(3) <= \pc[3]~output_o\;

ww_pc(4) <= \pc[4]~output_o\;

ww_pc(5) <= \pc[5]~output_o\;

ww_pc(6) <= \pc[6]~output_o\;

ww_pc(7) <= \pc[7]~output_o\;

ww_pc(8) <= \pc[8]~output_o\;

ww_pc(9) <= \pc[9]~output_o\;

ww_pc(10) <= \pc[10]~output_o\;

ww_pc(11) <= \pc[11]~output_o\;

ww_pc(12) <= \pc[12]~output_o\;

ww_pc(13) <= \pc[13]~output_o\;

ww_pc(14) <= \pc[14]~output_o\;

ww_pc(15) <= \pc[15]~output_o\;

ww_pc(16) <= \pc[16]~output_o\;

ww_pc(17) <= \pc[17]~output_o\;

ww_pc(18) <= \pc[18]~output_o\;

ww_pc(19) <= \pc[19]~output_o\;

ww_pc(20) <= \pc[20]~output_o\;

ww_pc(21) <= \pc[21]~output_o\;

ww_pc(22) <= \pc[22]~output_o\;

ww_pc(23) <= \pc[23]~output_o\;

ww_pc(24) <= \pc[24]~output_o\;

ww_pc(25) <= \pc[25]~output_o\;

ww_pc(26) <= \pc[26]~output_o\;

ww_pc(27) <= \pc[27]~output_o\;

ww_pc(28) <= \pc[28]~output_o\;

ww_pc(29) <= \pc[29]~output_o\;

ww_pc(30) <= \pc[30]~output_o\;

ww_pc(31) <= \pc[31]~output_o\;
END structure;


