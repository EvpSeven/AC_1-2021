-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "11/11/2018 19:17:32"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	InstructionMemory IS
    PORT (
	address : IN std_logic_vector(5 DOWNTO 0);
	readData : OUT std_logic_vector(31 DOWNTO 0)
	);
END InstructionMemory;

ARCHITECTURE structure OF InstructionMemory IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_address : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_readData : std_logic_vector(31 DOWNTO 0);
SIGNAL \readData[0]~output_o\ : std_logic;
SIGNAL \readData[1]~output_o\ : std_logic;
SIGNAL \readData[2]~output_o\ : std_logic;
SIGNAL \readData[3]~output_o\ : std_logic;
SIGNAL \readData[4]~output_o\ : std_logic;
SIGNAL \readData[5]~output_o\ : std_logic;
SIGNAL \readData[6]~output_o\ : std_logic;
SIGNAL \readData[7]~output_o\ : std_logic;
SIGNAL \readData[8]~output_o\ : std_logic;
SIGNAL \readData[9]~output_o\ : std_logic;
SIGNAL \readData[10]~output_o\ : std_logic;
SIGNAL \readData[11]~output_o\ : std_logic;
SIGNAL \readData[12]~output_o\ : std_logic;
SIGNAL \readData[13]~output_o\ : std_logic;
SIGNAL \readData[14]~output_o\ : std_logic;
SIGNAL \readData[15]~output_o\ : std_logic;
SIGNAL \readData[16]~output_o\ : std_logic;
SIGNAL \readData[17]~output_o\ : std_logic;
SIGNAL \readData[18]~output_o\ : std_logic;
SIGNAL \readData[19]~output_o\ : std_logic;
SIGNAL \readData[20]~output_o\ : std_logic;
SIGNAL \readData[21]~output_o\ : std_logic;
SIGNAL \readData[22]~output_o\ : std_logic;
SIGNAL \readData[23]~output_o\ : std_logic;
SIGNAL \readData[24]~output_o\ : std_logic;
SIGNAL \readData[25]~output_o\ : std_logic;
SIGNAL \readData[26]~output_o\ : std_logic;
SIGNAL \readData[27]~output_o\ : std_logic;
SIGNAL \readData[28]~output_o\ : std_logic;
SIGNAL \readData[29]~output_o\ : std_logic;
SIGNAL \readData[30]~output_o\ : std_logic;
SIGNAL \readData[31]~output_o\ : std_logic;
SIGNAL \address[4]~input_o\ : std_logic;
SIGNAL \address[5]~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~3_combout\ : std_logic;

BEGIN

ww_address <= address;
readData <= ww_readData;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux2~3_combout\ <= NOT \Mux2~3_combout\;
\ALT_INV_Mux11~3_combout\ <= NOT \Mux11~3_combout\;

\readData[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~3_combout\,
	devoe => ww_devoe,
	o => \readData[0]~output_o\);

\readData[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~3_combout\,
	devoe => ww_devoe,
	o => \readData[1]~output_o\);

\readData[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~3_combout\,
	devoe => ww_devoe,
	o => \readData[2]~output_o\);

\readData[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~3_combout\,
	devoe => ww_devoe,
	o => \readData[3]~output_o\);

\readData[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~3_combout\,
	devoe => ww_devoe,
	o => \readData[4]~output_o\);

\readData[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~3_combout\,
	devoe => ww_devoe,
	o => \readData[5]~output_o\);

\readData[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~3_combout\,
	devoe => ww_devoe,
	o => \readData[6]~output_o\);

\readData[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~3_combout\,
	devoe => ww_devoe,
	o => \readData[7]~output_o\);

\readData[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~3_combout\,
	devoe => ww_devoe,
	o => \readData[8]~output_o\);

\readData[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~3_combout\,
	devoe => ww_devoe,
	o => \readData[9]~output_o\);

\readData[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~3_combout\,
	devoe => ww_devoe,
	o => \readData[10]~output_o\);

\readData[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~3_combout\,
	devoe => ww_devoe,
	o => \readData[11]~output_o\);

\readData[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~3_combout\,
	devoe => ww_devoe,
	o => \readData[12]~output_o\);

\readData[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~3_combout\,
	devoe => ww_devoe,
	o => \readData[13]~output_o\);

\readData[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~3_combout\,
	devoe => ww_devoe,
	o => \readData[14]~output_o\);

\readData[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~3_combout\,
	devoe => ww_devoe,
	o => \readData[15]~output_o\);

\readData[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux11~3_combout\,
	devoe => ww_devoe,
	o => \readData[16]~output_o\);

\readData[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~3_combout\,
	devoe => ww_devoe,
	o => \readData[17]~output_o\);

\readData[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~2_combout\,
	devoe => ww_devoe,
	o => \readData[18]~output_o\);

\readData[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~3_combout\,
	devoe => ww_devoe,
	o => \readData[19]~output_o\);

\readData[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[20]~output_o\);

\readData[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~3_combout\,
	devoe => ww_devoe,
	o => \readData[21]~output_o\);

\readData[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~3_combout\,
	devoe => ww_devoe,
	o => \readData[22]~output_o\);

\readData[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~1_combout\,
	devoe => ww_devoe,
	o => \readData[23]~output_o\);

\readData[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~2_combout\,
	devoe => ww_devoe,
	o => \readData[24]~output_o\);

\readData[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[25]~output_o\);

\readData[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \readData[26]~output_o\);

\readData[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux2~3_combout\,
	devoe => ww_devoe,
	o => \readData[27]~output_o\);

\readData[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[28]~output_o\);

\readData[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~3_combout\,
	devoe => ww_devoe,
	o => \readData[29]~output_o\);

\readData[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[30]~output_o\);

\readData[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \readData[31]~output_o\);

\address[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(4),
	o => \address[4]~input_o\);

\address[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(5),
	o => \address[5]~input_o\);

\address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

\address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

\address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

\address[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

\Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\address[3]~input_o\ & (!\address[0]~input_o\ & (!\address[1]~input_o\))) # (!\address[3]~input_o\ & (\address[2]~input_o\ & (\address[0]~input_o\ $ (!\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux27~2_combout\);

\Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (!\address[4]~input_o\ & (!\address[5]~input_o\ & \Mux27~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \address[5]~input_o\,
	datac => \Mux27~2_combout\,
	combout => \Mux27~3_combout\);

\Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\address[0]~input_o\ & (\address[2]~input_o\ $ (((\address[1]~input_o\) # (\address[3]~input_o\))))) # (!\address[0]~input_o\ & ((\address[2]~input_o\ & (!\address[1]~input_o\)) # (!\address[2]~input_o\ & ((\address[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux26~2_combout\);

\Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (!\address[4]~input_o\ & (!\address[5]~input_o\ & \Mux26~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \address[5]~input_o\,
	datac => \Mux26~2_combout\,
	combout => \Mux26~3_combout\);

\Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\address[0]~input_o\ & (\address[2]~input_o\ $ (((\address[3]~input_o\) # (!\address[1]~input_o\))))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((!\address[3]~input_o\))) # (!\address[1]~input_o\ & ((\address[2]~input_o\) # 
-- (\address[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux25~2_combout\);

\Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (!\address[4]~input_o\ & (!\address[5]~input_o\ & \Mux25~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \address[5]~input_o\,
	datac => \Mux25~2_combout\,
	combout => \Mux25~3_combout\);

\Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\address[1]~input_o\ & (!\address[2]~input_o\ & ((\address[0]~input_o\) # (\address[3]~input_o\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (\address[2]~input_o\ & !\address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux24~2_combout\);

\Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (!\address[4]~input_o\ & (!\address[5]~input_o\ & \Mux24~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \address[5]~input_o\,
	datac => \Mux24~2_combout\,
	combout => \Mux24~3_combout\);

\Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\ & (!\address[2]~input_o\))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\address[2]~input_o\ & !\address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux23~2_combout\);

\Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (!\address[4]~input_o\ & (!\address[5]~input_o\ & \Mux23~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \address[5]~input_o\,
	datac => \Mux23~2_combout\,
	combout => \Mux23~3_combout\);

\Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\address[2]~input_o\ & (((!\address[0]~input_o\ & !\address[1]~input_o\)) # (!\address[3]~input_o\))) # (!\address[2]~input_o\ & (((\address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux22~2_combout\);

\Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (!\address[4]~input_o\ & (!\address[5]~input_o\ & \Mux22~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \address[5]~input_o\,
	datac => \Mux22~2_combout\,
	combout => \Mux22~3_combout\);

\Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\ & (!\address[2]~input_o\ & \address[3]~input_o\))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux21~2_combout\);

\Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (!\address[4]~input_o\ & (!\address[5]~input_o\ & \Mux21~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \address[5]~input_o\,
	datac => \Mux21~2_combout\,
	combout => \Mux21~3_combout\);

\Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\address[0]~input_o\ & ((\address[2]~input_o\ $ (\address[3]~input_o\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux16~2_combout\);

\Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (!\address[4]~input_o\ & (!\address[5]~input_o\ & \Mux16~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \address[5]~input_o\,
	datac => \Mux16~2_combout\,
	combout => \Mux16~3_combout\);

\Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\address[1]~input_o\ & ((\address[2]~input_o\ $ (\address[3]~input_o\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (\address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux15~2_combout\);

\Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (!\address[4]~input_o\ & (!\address[5]~input_o\ & \Mux15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \address[5]~input_o\,
	datac => \Mux15~2_combout\,
	combout => \Mux15~3_combout\);

\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\address[2]~input_o\ & (((!\address[0]~input_o\ & !\address[1]~input_o\)) # (!\address[3]~input_o\))) # (!\address[2]~input_o\ & (\address[0]~input_o\ & (\address[1]~input_o\ & \address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux14~2_combout\);

\Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (!\address[4]~input_o\ & (!\address[5]~input_o\ & \Mux14~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \address[5]~input_o\,
	datac => \Mux14~2_combout\,
	combout => \Mux14~3_combout\);

\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\address[2]~input_o\ & (!\address[0]~input_o\ & (!\address[1]~input_o\))) # (!\address[2]~input_o\ & (((\address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux13~2_combout\);

\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (!\address[4]~input_o\ & (!\address[5]~input_o\ & \Mux13~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \address[5]~input_o\,
	datac => \Mux13~2_combout\,
	combout => \Mux13~3_combout\);

\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\address[2]~input_o\ & (((\address[3]~input_o\)))) # (!\address[2]~input_o\ & (\address[0]~input_o\ & (\address[1]~input_o\ & !\address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux11~2_combout\);

\Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\address[4]~input_o\) # ((\address[5]~input_o\) # (\Mux11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \address[5]~input_o\,
	datac => \Mux11~2_combout\,
	combout => \Mux11~3_combout\);

\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\address[2]~input_o\ & (((!\address[3]~input_o\)))) # (!\address[2]~input_o\ & ((\address[3]~input_o\) # ((\address[0]~input_o\ & \address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux10~2_combout\);

\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (!\address[4]~input_o\ & (!\address[5]~input_o\ & \Mux10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \address[5]~input_o\,
	datac => \Mux10~2_combout\,
	combout => \Mux10~3_combout\);

\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (!\address[0]~input_o\ & (!\address[1]~input_o\ & (!\address[4]~input_o\ & !\address[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[4]~input_o\,
	datad => \address[5]~input_o\,
	combout => \Mux9~1_combout\);

\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\address[2]~input_o\ & (\address[3]~input_o\ & \Mux9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \Mux9~1_combout\,
	combout => \Mux9~2_combout\);

\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\address[3]~input_o\ & ((\address[0]~input_o\ & (\address[1]~input_o\ & !\address[2]~input_o\)) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & \address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux8~2_combout\);

\Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (!\address[4]~input_o\ & (!\address[5]~input_o\ & \Mux8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \address[5]~input_o\,
	datac => \Mux8~2_combout\,
	combout => \Mux8~3_combout\);

\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\address[0]~input_o\ & (!\address[2]~input_o\ & (\address[1]~input_o\ $ (!\address[3]~input_o\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\address[2]~input_o\ & \address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux7~2_combout\);

\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (!\address[4]~input_o\ & (!\address[5]~input_o\ & \Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \address[5]~input_o\,
	datac => \Mux7~2_combout\,
	combout => \Mux7~3_combout\);

\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\address[2]~input_o\ & (!\address[3]~input_o\ & ((\address[0]~input_o\) # (\address[1]~input_o\)))) # (!\address[2]~input_o\ & (((\address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux6~2_combout\);

\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (!\address[4]~input_o\ & (!\address[5]~input_o\ & \Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \address[5]~input_o\,
	datac => \Mux6~2_combout\,
	combout => \Mux6~3_combout\);

\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\ & (!\address[4]~input_o\ & !\address[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[4]~input_o\,
	datad => \address[5]~input_o\,
	combout => \Mux5~0_combout\);

\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\address[3]~input_o\ & (\Mux5~0_combout\ & !\address[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \Mux5~0_combout\,
	datad => \address[2]~input_o\,
	combout => \Mux5~1_combout\);

\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (!\address[4]~input_o\ & !\address[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \address[4]~input_o\,
	datad => \address[5]~input_o\,
	combout => \Mux9~0_combout\);

\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux9~0_combout\ & (!\address[0]~input_o\ & (!\address[2]~input_o\ & !\address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \address[0]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux3~0_combout\);

\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\address[1]~input_o\ & ((\address[2]~input_o\) # (\address[0]~input_o\ $ (\address[3]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\) # (\address[2]~input_o\ $ (\address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux2~2_combout\);

\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\address[4]~input_o\) # ((\address[5]~input_o\) # (\Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \address[5]~input_o\,
	datac => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\address[0]~input_o\ & (!\address[2]~input_o\ & ((\address[1]~input_o\) # (!\address[3]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (!\address[2]~input_o\ & !\address[3]~input_o\)) # (!\address[1]~input_o\ & 
-- (\address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux1~2_combout\);

\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (!\address[4]~input_o\ & (!\address[5]~input_o\ & \Mux1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \address[5]~input_o\,
	datac => \Mux1~2_combout\,
	combout => \Mux1~3_combout\);

ww_readData(0) <= \readData[0]~output_o\;

ww_readData(1) <= \readData[1]~output_o\;

ww_readData(2) <= \readData[2]~output_o\;

ww_readData(3) <= \readData[3]~output_o\;

ww_readData(4) <= \readData[4]~output_o\;

ww_readData(5) <= \readData[5]~output_o\;

ww_readData(6) <= \readData[6]~output_o\;

ww_readData(7) <= \readData[7]~output_o\;

ww_readData(8) <= \readData[8]~output_o\;

ww_readData(9) <= \readData[9]~output_o\;

ww_readData(10) <= \readData[10]~output_o\;

ww_readData(11) <= \readData[11]~output_o\;

ww_readData(12) <= \readData[12]~output_o\;

ww_readData(13) <= \readData[13]~output_o\;

ww_readData(14) <= \readData[14]~output_o\;

ww_readData(15) <= \readData[15]~output_o\;

ww_readData(16) <= \readData[16]~output_o\;

ww_readData(17) <= \readData[17]~output_o\;

ww_readData(18) <= \readData[18]~output_o\;

ww_readData(19) <= \readData[19]~output_o\;

ww_readData(20) <= \readData[20]~output_o\;

ww_readData(21) <= \readData[21]~output_o\;

ww_readData(22) <= \readData[22]~output_o\;

ww_readData(23) <= \readData[23]~output_o\;

ww_readData(24) <= \readData[24]~output_o\;

ww_readData(25) <= \readData[25]~output_o\;

ww_readData(26) <= \readData[26]~output_o\;

ww_readData(27) <= \readData[27]~output_o\;

ww_readData(28) <= \readData[28]~output_o\;

ww_readData(29) <= \readData[29]~output_o\;

ww_readData(30) <= \readData[30]~output_o\;

ww_readData(31) <= \readData[31]~output_o\;
END structure;


