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

-- DATE "11/13/2018 10:58:08"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mips_single_cycle IS
    PORT (
	\global.bp.work.DisplayUnit_pkg.DU_DMaddr_5__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMaddr_5__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMaddr_4__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFaddr_4__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMaddr_4__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMaddr_3__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFaddr_3__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMaddr_3__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMaddr_2__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFaddr_2__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMaddr_2__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMaddr_1__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFaddr_1__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMaddr_1__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMaddr_0__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFaddr_0__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMaddr_0__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_31__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_31__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_30__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_30__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_29__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_29__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_28__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_28__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_27__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_27__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_26__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_26__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_25__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_25__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_24__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_24__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_23__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_23__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_22__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_22__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_21__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_21__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_20__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_20__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_19__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_19__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_18__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_18__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_17__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_17__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_16__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_16__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_15__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_15__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_14__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_14__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_13__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_13__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_12__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_12__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_11__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_11__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_10__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_10__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_9__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_9__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_8__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_8__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_7__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_7__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_6__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_6__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_5__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_5__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_4__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_4__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_3__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_3__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_2__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_2__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_1__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_1__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_0__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_0__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_0__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_0__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_1__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_1__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_2__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_2__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_3__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_3__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_4__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_4__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_5__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_5__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_6__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_6__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_7__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_7__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_8__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_8__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_9__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_9__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_10__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_10__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_11__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_11__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_12__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_12__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_13__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_13__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_14__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_14__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_15__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_15__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_16__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_16__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_17__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_17__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_18__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_18__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_19__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_19__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_20__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_20__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_21__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_21__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_22__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_22__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_23__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_23__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_24__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_24__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_25__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_25__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_26__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_26__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_27__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_27__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_28__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_28__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_29__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_29__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_30__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_30__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_31__gl_input\ : IN std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_31__gl_input\ : IN std_logic;
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(2 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX6 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX7 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END mips_single_cycle;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mips_single_cycle IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_5__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_5__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_4__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_4__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_4__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_3__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_3__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_3__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_2__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_2__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_2__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_1__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_1__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_1__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_0__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_0__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_0__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_31__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_31__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_30__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_30__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_29__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_29__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_28__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_28__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_27__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_27__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_26__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_26__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_25__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_25__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_24__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_24__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_23__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_23__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_22__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_22__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_21__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_21__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_20__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_20__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_19__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_19__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_18__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_18__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_17__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_17__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_16__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_16__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_15__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_15__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_14__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_14__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_13__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_13__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_12__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_12__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_11__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_11__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_10__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_10__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_9__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_9__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_8__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_8__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_7__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_7__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_6__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_6__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_5__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_5__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_4__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_4__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_3__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_3__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_2__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_2__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_1__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_1__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_0__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_0__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_0__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_0__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_1__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_1__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_2__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_2__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_3__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_3__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_4__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_4__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_5__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_5__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_6__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_6__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_7__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_7__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_8__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_8__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_9__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_9__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_10__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_10__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_11__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_11__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_12__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_12__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_13__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_13__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_14__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_14__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_15__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_15__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_16__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_16__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_17__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_17__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_18__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_18__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_19__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_19__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_20__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_20__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_21__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_21__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_22__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_22__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_23__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_23__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_24__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_24__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_25__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_25__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_26__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_26__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_27__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_27__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_28__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_28__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_29__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_29__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_30__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_30__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_31__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_31__gl_input\ : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \debouncer|s_pulsedOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instrution_memory|Mux47~3_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \instrution_memory|Mux33~2_wirecell_combout\ : std_logic;
SIGNAL \instrution_memory|Mux37~1_wirecell_combout\ : std_logic;
SIGNAL \instrution_memory|Mux39~0_wirecell_combout\ : std_logic;
SIGNAL \instrution_memory|Mux43~0_wirecell_combout\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \displ|s_count[0]~31_combout\ : std_logic;
SIGNAL \displ|s_count[22]~33_combout\ : std_logic;
SIGNAL \displ|s_count[0]~32\ : std_logic;
SIGNAL \displ|s_count[1]~34_combout\ : std_logic;
SIGNAL \displ|s_count[1]~35\ : std_logic;
SIGNAL \displ|s_count[2]~36_combout\ : std_logic;
SIGNAL \displ|s_count[2]~37\ : std_logic;
SIGNAL \displ|s_count[3]~38_combout\ : std_logic;
SIGNAL \displ|s_count[3]~39\ : std_logic;
SIGNAL \displ|s_count[4]~40_combout\ : std_logic;
SIGNAL \displ|s_count[4]~41\ : std_logic;
SIGNAL \displ|s_count[5]~42_combout\ : std_logic;
SIGNAL \displ|s_count[5]~43\ : std_logic;
SIGNAL \displ|s_count[6]~44_combout\ : std_logic;
SIGNAL \displ|s_count[6]~45\ : std_logic;
SIGNAL \displ|s_count[7]~46_combout\ : std_logic;
SIGNAL \displ|s_count[7]~47\ : std_logic;
SIGNAL \displ|s_count[8]~48_combout\ : std_logic;
SIGNAL \displ|s_count[8]~49\ : std_logic;
SIGNAL \displ|s_count[9]~50_combout\ : std_logic;
SIGNAL \displ|s_count[9]~51\ : std_logic;
SIGNAL \displ|s_count[10]~52_combout\ : std_logic;
SIGNAL \displ|s_count[10]~53\ : std_logic;
SIGNAL \displ|s_count[11]~54_combout\ : std_logic;
SIGNAL \displ|s_count[11]~55\ : std_logic;
SIGNAL \displ|s_count[12]~56_combout\ : std_logic;
SIGNAL \displ|s_count[12]~57\ : std_logic;
SIGNAL \displ|s_count[13]~58_combout\ : std_logic;
SIGNAL \displ|s_count[13]~59\ : std_logic;
SIGNAL \displ|s_count[14]~60_combout\ : std_logic;
SIGNAL \displ|s_count[14]~61\ : std_logic;
SIGNAL \displ|s_count[15]~62_combout\ : std_logic;
SIGNAL \displ|s_count[15]~63\ : std_logic;
SIGNAL \displ|s_count[16]~64_combout\ : std_logic;
SIGNAL \displ|s_count[16]~65\ : std_logic;
SIGNAL \displ|s_count[17]~66_combout\ : std_logic;
SIGNAL \displ|s_count[17]~67\ : std_logic;
SIGNAL \displ|s_count[18]~68_combout\ : std_logic;
SIGNAL \displ|s_count[18]~69\ : std_logic;
SIGNAL \displ|s_count[19]~70_combout\ : std_logic;
SIGNAL \displ|s_count[19]~71\ : std_logic;
SIGNAL \displ|s_count[20]~72_combout\ : std_logic;
SIGNAL \displ|s_count[20]~73\ : std_logic;
SIGNAL \displ|s_count[21]~74_combout\ : std_logic;
SIGNAL \displ|s_count[21]~75\ : std_logic;
SIGNAL \displ|s_count[22]~76_combout\ : std_logic;
SIGNAL \displ|s_count[22]~77\ : std_logic;
SIGNAL \displ|s_count[23]~78_combout\ : std_logic;
SIGNAL \displ|s_count[23]~79\ : std_logic;
SIGNAL \displ|s_count[24]~80_combout\ : std_logic;
SIGNAL \displ|s_count[24]~81\ : std_logic;
SIGNAL \displ|s_count[25]~82_combout\ : std_logic;
SIGNAL \displ|s_count[25]~83\ : std_logic;
SIGNAL \displ|s_count[26]~84_combout\ : std_logic;
SIGNAL \displ|s_count[26]~85\ : std_logic;
SIGNAL \displ|s_count[27]~86_combout\ : std_logic;
SIGNAL \displ|s_count[27]~87\ : std_logic;
SIGNAL \displ|s_count[28]~88_combout\ : std_logic;
SIGNAL \displ|s_count[28]~89\ : std_logic;
SIGNAL \displ|s_count[29]~90_combout\ : std_logic;
SIGNAL \displ|Equal1~1_combout\ : std_logic;
SIGNAL \displ|Equal1~2_combout\ : std_logic;
SIGNAL \displ|Equal1~3_combout\ : std_logic;
SIGNAL \displ|Equal1~0_combout\ : std_logic;
SIGNAL \displ|Equal1~4_combout\ : std_logic;
SIGNAL \displ|s_count[29]~91\ : std_logic;
SIGNAL \displ|s_count[30]~92_combout\ : std_logic;
SIGNAL \displ|Equal1~5_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[0]~31_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[0]~32\ : std_logic;
SIGNAL \displ|s_repeatCount[1]~33_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[1]~34\ : std_logic;
SIGNAL \displ|s_repeatCount[2]~35_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[2]~36\ : std_logic;
SIGNAL \displ|s_repeatCount[3]~37_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[3]~38\ : std_logic;
SIGNAL \displ|s_repeatCount[4]~39_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[4]~40\ : std_logic;
SIGNAL \displ|s_repeatCount[5]~41_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[5]~42\ : std_logic;
SIGNAL \displ|s_repeatCount[6]~43_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[6]~44\ : std_logic;
SIGNAL \displ|s_repeatCount[7]~45_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[7]~46\ : std_logic;
SIGNAL \displ|s_repeatCount[8]~47_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[8]~48\ : std_logic;
SIGNAL \displ|s_repeatCount[9]~49_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[9]~50\ : std_logic;
SIGNAL \displ|s_repeatCount[10]~51_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[10]~52\ : std_logic;
SIGNAL \displ|s_repeatCount[11]~53_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[11]~54\ : std_logic;
SIGNAL \displ|s_repeatCount[12]~55_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[12]~56\ : std_logic;
SIGNAL \displ|s_repeatCount[13]~57_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[13]~58\ : std_logic;
SIGNAL \displ|s_repeatCount[14]~59_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[14]~60\ : std_logic;
SIGNAL \displ|s_repeatCount[15]~61_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[15]~62\ : std_logic;
SIGNAL \displ|s_repeatCount[16]~63_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[16]~64\ : std_logic;
SIGNAL \displ|s_repeatCount[17]~65_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[17]~66\ : std_logic;
SIGNAL \displ|s_repeatCount[18]~67_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[18]~68\ : std_logic;
SIGNAL \displ|s_repeatCount[19]~69_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[19]~70\ : std_logic;
SIGNAL \displ|s_repeatCount[20]~71_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[20]~72\ : std_logic;
SIGNAL \displ|s_repeatCount[21]~73_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[21]~74\ : std_logic;
SIGNAL \displ|s_repeatCount[22]~75_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[22]~76\ : std_logic;
SIGNAL \displ|s_repeatCount[23]~77_combout\ : std_logic;
SIGNAL \displ|s_thd[24]~6_combout\ : std_logic;
SIGNAL \displ|s_thd[24]~5_combout\ : std_logic;
SIGNAL \displ|s_thd[24]~2_combout\ : std_logic;
SIGNAL \displ|s_thd[24]~0_combout\ : std_logic;
SIGNAL \displ|s_thd[24]~3_combout\ : std_logic;
SIGNAL \displ|s_thd[24]~1_combout\ : std_logic;
SIGNAL \displ|s_thd[24]~4_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[23]~78\ : std_logic;
SIGNAL \displ|s_repeatCount[24]~79_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[24]~80\ : std_logic;
SIGNAL \displ|s_repeatCount[25]~81_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[25]~82\ : std_logic;
SIGNAL \displ|s_repeatCount[26]~83_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[26]~84\ : std_logic;
SIGNAL \displ|s_repeatCount[27]~85_combout\ : std_logic;
SIGNAL \displ|s_thd[24]~7_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[27]~86\ : std_logic;
SIGNAL \displ|s_repeatCount[28]~87_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[28]~88\ : std_logic;
SIGNAL \displ|s_repeatCount[29]~89_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[29]~90\ : std_logic;
SIGNAL \displ|s_repeatCount[30]~91_combout\ : std_logic;
SIGNAL \displ|s_thd[24]~8_combout\ : std_logic;
SIGNAL \displ|s_thd[24]~9_combout\ : std_logic;
SIGNAL \displ|Equal1~7_combout\ : std_logic;
SIGNAL \displ|Equal1~8_combout\ : std_logic;
SIGNAL \displ|Equal1~9_combout\ : std_logic;
SIGNAL \displ|Equal1~10_combout\ : std_logic;
SIGNAL \displ|Equal1~6_combout\ : std_logic;
SIGNAL \displ|Equal1~11_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \displ|s_dec~0_combout\ : std_logic;
SIGNAL \displ|s_dec~q\ : std_logic;
SIGNAL \displ|s_inc~0_combout\ : std_logic;
SIGNAL \displ|s_inc~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \displ|Decoder0~1_combout\ : std_logic;
SIGNAL \displ|Decoder0~3_combout\ : std_logic;
SIGNAL \displ|s_addrCounters~16_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[3][5]~q\ : std_logic;
SIGNAL \displ|Mux38~0_combout\ : std_logic;
SIGNAL \displ|Decoder0~2_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[2][5]~17_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[2][5]~q\ : std_logic;
SIGNAL \displ|Decoder0~4_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[0][5]~q\ : std_logic;
SIGNAL \displ|Mux0~0_combout\ : std_logic;
SIGNAL \displ|Mux0~1_combout\ : std_logic;
SIGNAL \displ|Add0~0_combout\ : std_logic;
SIGNAL \displ|s_addrCounters~8_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[3][0]~q\ : std_logic;
SIGNAL \displ|s_addrCounters~4_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[1][0]~q\ : std_logic;
SIGNAL \displ|Mux5~0_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[0][0]~q\ : std_logic;
SIGNAL \displ|s_addrCounters~6_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[2][0]~q\ : std_logic;
SIGNAL \displ|Mux5~1_combout\ : std_logic;
SIGNAL \displ|Add0~1\ : std_logic;
SIGNAL \displ|Add0~2_combout\ : std_logic;
SIGNAL \displ|s_addrCounters~0_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[1][1]~q\ : std_logic;
SIGNAL \displ|s_addrCounters~10_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[3][1]~q\ : std_logic;
SIGNAL \displ|Mux4~0_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[0][1]~q\ : std_logic;
SIGNAL \displ|s_addrCounters~7_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[2][1]~q\ : std_logic;
SIGNAL \displ|Mux4~1_combout\ : std_logic;
SIGNAL \displ|Add0~3\ : std_logic;
SIGNAL \displ|Add0~4_combout\ : std_logic;
SIGNAL \displ|s_addrCounters~9_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[2][2]~q\ : std_logic;
SIGNAL \displ|s_addrCounters~5_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[1][2]~q\ : std_logic;
SIGNAL \displ|s_addrCounters~12_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[3][2]~q\ : std_logic;
SIGNAL \displ|Mux3~0_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[0][2]~q\ : std_logic;
SIGNAL \displ|Mux3~1_combout\ : std_logic;
SIGNAL \displ|Add0~5\ : std_logic;
SIGNAL \displ|Add0~6_combout\ : std_logic;
SIGNAL \displ|s_addrCounters~3_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[1][3]~q\ : std_logic;
SIGNAL \displ|s_addrCounters~14_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[3][3]~q\ : std_logic;
SIGNAL \displ|Mux40~0_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[0][3]~q\ : std_logic;
SIGNAL \displ|s_addrCounters~11_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[2][3]~q\ : std_logic;
SIGNAL \displ|Mux2~0_combout\ : std_logic;
SIGNAL \displ|Mux2~1_combout\ : std_logic;
SIGNAL \displ|Add0~7\ : std_logic;
SIGNAL \displ|Add0~8_combout\ : std_logic;
SIGNAL \displ|s_addrCounters~15_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[3][4]~q\ : std_logic;
SIGNAL \displ|s_addrCounters~1_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[1][4]~q\ : std_logic;
SIGNAL \displ|Mux39~0_combout\ : std_logic;
SIGNAL \displ|s_addrCounters~13_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[2][4]~q\ : std_logic;
SIGNAL \displ|s_addrCounters[0][4]~q\ : std_logic;
SIGNAL \displ|Mux1~0_combout\ : std_logic;
SIGNAL \displ|Mux1~1_combout\ : std_logic;
SIGNAL \displ|Add0~9\ : std_logic;
SIGNAL \displ|Add0~10_combout\ : std_logic;
SIGNAL \displ|s_addrCounters~2_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[1][5]~q\ : std_logic;
SIGNAL \instrution_memory|Mux29~6_combout\ : std_logic;
SIGNAL \instrution_memory|Mux48~0_combout\ : std_logic;
SIGNAL \displ|Mux37~1GND_combout\ : std_logic;
SIGNAL \displ|Mux37~0_combout\ : std_logic;
SIGNAL \displ|Mux37~1_combout\ : std_logic;
SIGNAL \instrution_memory|Mux31~0_combout\ : std_logic;
SIGNAL \instrution_memory|Mux29~8_combout\ : std_logic;
SIGNAL \instrution_memory|Mux29~9_combout\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[0]~23_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \debouncer|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debouncer|s_dirtyIn~q\ : std_logic;
SIGNAL \debouncer|Equal0~0_combout\ : std_logic;
SIGNAL \debouncer|Equal0~1_combout\ : std_logic;
SIGNAL \debouncer|Equal0~8_combout\ : std_logic;
SIGNAL \debouncer|Equal0~3_combout\ : std_logic;
SIGNAL \debouncer|Equal0~4_combout\ : std_logic;
SIGNAL \debouncer|LessThan0~0_combout\ : std_logic;
SIGNAL \debouncer|LessThan0~1_combout\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[1]~65_combout\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[1]~66_combout\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[1]~67_combout\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[0]~24\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[1]~25_combout\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[1]~26\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[2]~27_combout\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[2]~28\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[3]~29_combout\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[3]~30\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[4]~31_combout\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[4]~32\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[5]~33_combout\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[5]~34\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[6]~35_combout\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[6]~36\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[7]~37_combout\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[7]~38\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[8]~39_combout\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[8]~40\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[9]~41_combout\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[9]~42\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[10]~43_combout\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[10]~44\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[11]~45_combout\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[11]~46\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[12]~47_combout\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[12]~48\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[13]~49_combout\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[13]~50\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[14]~51_combout\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[14]~52\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[15]~53_combout\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[15]~54\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[16]~55_combout\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[16]~56\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[17]~57_combout\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[17]~58\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[18]~59_combout\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[18]~60\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[19]~61_combout\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[19]~62\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[20]~63_combout\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[20]~64\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[21]~68_combout\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[21]~69\ : std_logic;
SIGNAL \debouncer|s_debounceCnt[22]~70_combout\ : std_logic;
SIGNAL \debouncer|Equal0~5_combout\ : std_logic;
SIGNAL \debouncer|Equal0~6_combout\ : std_logic;
SIGNAL \debouncer|Equal0~2_combout\ : std_logic;
SIGNAL \debouncer|Equal0~7_combout\ : std_logic;
SIGNAL \debouncer|s_pulsedOut~q\ : std_logic;
SIGNAL \debouncer|s_pulsedOut~clkctrl_outclk\ : std_logic;
SIGNAL \pcupdate|s_pc[2]~30_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \pcupdate|s_pc[2]~31\ : std_logic;
SIGNAL \pcupdate|s_pc[3]~32_combout\ : std_logic;
SIGNAL \displ|Mux34~0_combout\ : std_logic;
SIGNAL \displ|Mux34~1_combout\ : std_logic;
SIGNAL \instrution_memory|Mux46~3_combout\ : std_logic;
SIGNAL \instrution_memory|Mux46~6_combout\ : std_logic;
SIGNAL \displ|Mux35~0_combout\ : std_logic;
SIGNAL \displ|Mux35~1_combout\ : std_logic;
SIGNAL \instrution_memory|Mux28~0_combout\ : std_logic;
SIGNAL \instrution_memory|Mux29~7_combout\ : std_logic;
SIGNAL \instrution_memory|Mux47~2_combout\ : std_logic;
SIGNAL \instrution_memory|Mux47~0_combout\ : std_logic;
SIGNAL \instrution_memory|Mux47~1_combout\ : std_logic;
SIGNAL \displ|Mux36~0_combout\ : std_logic;
SIGNAL \displ|Mux36~1_combout\ : std_logic;
SIGNAL \displ|Mux52~0_combout\ : std_logic;
SIGNAL \displ|Mux51~0_combout\ : std_logic;
SIGNAL \displ|Mux50~0_combout\ : std_logic;
SIGNAL \displ|Mux49~0_combout\ : std_logic;
SIGNAL \displ|Mux48~0_combout\ : std_logic;
SIGNAL \displ|Mux47~0_combout\ : std_logic;
SIGNAL \displ|Mux46~0_combout\ : std_logic;
SIGNAL \instrution_memory|Mux38~0_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[3]~33\ : std_logic;
SIGNAL \pcupdate|s_pc[4]~34_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[4]~35\ : std_logic;
SIGNAL \pcupdate|s_pc[5]~36_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[5]~37\ : std_logic;
SIGNAL \pcupdate|s_pc[6]~38_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[6]~39\ : std_logic;
SIGNAL \pcupdate|s_pc[7]~40_combout\ : std_logic;
SIGNAL \displ|Mux30~0_combout\ : std_logic;
SIGNAL \displ|Mux30~1_combout\ : std_logic;
SIGNAL \displ|Mux31~0_combout\ : std_logic;
SIGNAL \displ|Mux31~1_combout\ : std_logic;
SIGNAL \displ|Mux33~0_combout\ : std_logic;
SIGNAL \instrution_memory|Mux44~0_combout\ : std_logic;
SIGNAL \displ|Mux33~1_combout\ : std_logic;
SIGNAL \instrution_memory|Mux43~0_combout\ : std_logic;
SIGNAL \displ|Mux32~0_combout\ : std_logic;
SIGNAL \displ|Mux32~1_combout\ : std_logic;
SIGNAL \displ|Mux59~0_combout\ : std_logic;
SIGNAL \displ|Mux58~0_combout\ : std_logic;
SIGNAL \displ|Mux57~0_combout\ : std_logic;
SIGNAL \displ|Mux56~0_combout\ : std_logic;
SIGNAL \displ|Mux55~0_combout\ : std_logic;
SIGNAL \displ|Mux54~0_combout\ : std_logic;
SIGNAL \displ|Mux53~0_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[7]~41\ : std_logic;
SIGNAL \pcupdate|s_pc[8]~42_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[8]~43\ : std_logic;
SIGNAL \pcupdate|s_pc[9]~44_combout\ : std_logic;
SIGNAL \displ|Mux28~0_combout\ : std_logic;
SIGNAL \displ|Mux28~1_combout\ : std_logic;
SIGNAL \instrution_memory|Mux42~3_combout\ : std_logic;
SIGNAL \instrution_memory|Mux42~6_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[9]~45\ : std_logic;
SIGNAL \pcupdate|s_pc[10]~46_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[10]~47\ : std_logic;
SIGNAL \pcupdate|s_pc[11]~48_combout\ : std_logic;
SIGNAL \displ|Mux26~0_combout\ : std_logic;
SIGNAL \displ|Mux26~1_combout\ : std_logic;
SIGNAL \displ|Mux27~0_combout\ : std_logic;
SIGNAL \displ|Mux27~1_combout\ : std_logic;
SIGNAL \displ|Mux29~0_combout\ : std_logic;
SIGNAL \displ|Mux29~1_combout\ : std_logic;
SIGNAL \displ|Mux66~0_combout\ : std_logic;
SIGNAL \displ|Mux65~0_combout\ : std_logic;
SIGNAL \displ|Mux64~0_combout\ : std_logic;
SIGNAL \displ|Mux63~0_combout\ : std_logic;
SIGNAL \displ|Mux62~0_combout\ : std_logic;
SIGNAL \displ|Mux61~0_combout\ : std_logic;
SIGNAL \displ|Mux60~0_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[11]~49\ : std_logic;
SIGNAL \pcupdate|s_pc[12]~50_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[12]~51\ : std_logic;
SIGNAL \pcupdate|s_pc[13]~52_combout\ : std_logic;
SIGNAL \instrution_memory|Mux40~3_combout\ : std_logic;
SIGNAL \instrution_memory|Mux40~6_combout\ : std_logic;
SIGNAL \displ|Mux24~0_combout\ : std_logic;
SIGNAL \displ|Mux24~1_combout\ : std_logic;
SIGNAL \instrution_memory|Mux39~0_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[13]~53\ : std_logic;
SIGNAL \pcupdate|s_pc[14]~54_combout\ : std_logic;
SIGNAL \displ|Mux23~0_combout\ : std_logic;
SIGNAL \displ|Mux23~1_combout\ : std_logic;
SIGNAL \displ|Mux25~0_combout\ : std_logic;
SIGNAL \instrution_memory|Mux41~3_combout\ : std_logic;
SIGNAL \instrution_memory|Mux41~6_combout\ : std_logic;
SIGNAL \displ|Mux25~1_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[14]~55\ : std_logic;
SIGNAL \pcupdate|s_pc[15]~56_combout\ : std_logic;
SIGNAL \displ|Mux22~0_combout\ : std_logic;
SIGNAL \displ|Mux22~1_combout\ : std_logic;
SIGNAL \displ|Mux73~0_combout\ : std_logic;
SIGNAL \displ|Mux72~0_combout\ : std_logic;
SIGNAL \displ|Mux71~0_combout\ : std_logic;
SIGNAL \displ|Mux70~0_combout\ : std_logic;
SIGNAL \displ|Mux69~0_combout\ : std_logic;
SIGNAL \displ|Mux68~0_combout\ : std_logic;
SIGNAL \displ|Mux67~0_combout\ : std_logic;
SIGNAL \displ|Decoder0~0_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[15]~57\ : std_logic;
SIGNAL \pcupdate|s_pc[16]~58_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[16]~59\ : std_logic;
SIGNAL \pcupdate|s_pc[17]~60_combout\ : std_logic;
SIGNAL \instrution_memory|Mux29~3_combout\ : std_logic;
SIGNAL \instrution_memory|Mux29~13_combout\ : std_logic;
SIGNAL \displ|Mux20~0_combout\ : std_logic;
SIGNAL \displ|Mux20~1_combout\ : std_logic;
SIGNAL \instrution_memory|Mux37~0_combout\ : std_logic;
SIGNAL \instrution_memory|Mux29~10_combout\ : std_logic;
SIGNAL \instrution_memory|Mux37~1_combout\ : std_logic;
SIGNAL \displ|Mux21~0_combout\ : std_logic;
SIGNAL \displ|Mux21~1_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[17]~61\ : std_logic;
SIGNAL \pcupdate|s_pc[18]~62_combout\ : std_logic;
SIGNAL \displ|Mux19~0_combout\ : std_logic;
SIGNAL \instrution_memory|Mux31~2_combout\ : std_logic;
SIGNAL \displ|Mux19~1_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[18]~63\ : std_logic;
SIGNAL \pcupdate|s_pc[19]~64_combout\ : std_logic;
SIGNAL \instrution_memory|Mux31~1_combout\ : std_logic;
SIGNAL \displ|Mux18~0_combout\ : std_logic;
SIGNAL \displ|Mux18~1_combout\ : std_logic;
SIGNAL \displ|Mux80~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \displ|Mux43~0_combout\ : std_logic;
SIGNAL \displ|Mux43~1_combout\ : std_logic;
SIGNAL \displ|Mux42~0_combout\ : std_logic;
SIGNAL \displ|Mux42~1_combout\ : std_logic;
SIGNAL \displ|Mux45~0_combout\ : std_logic;
SIGNAL \displ|Mux44~0_combout\ : std_logic;
SIGNAL \displ|Mux122~0_combout\ : std_logic;
SIGNAL \displ|disp4[0]~0_combout\ : std_logic;
SIGNAL \displ|Mux79~0_combout\ : std_logic;
SIGNAL \displ|Mux121~0_combout\ : std_logic;
SIGNAL \displ|disp4[1]~1_combout\ : std_logic;
SIGNAL \displ|Mux78~0_combout\ : std_logic;
SIGNAL \displ|Mux120~0_combout\ : std_logic;
SIGNAL \displ|disp4[2]~2_combout\ : std_logic;
SIGNAL \displ|Mux77~0_combout\ : std_logic;
SIGNAL \displ|Mux119~0_combout\ : std_logic;
SIGNAL \displ|disp4[3]~3_combout\ : std_logic;
SIGNAL \displ|Mux118~0_combout\ : std_logic;
SIGNAL \displ|Mux76~0_combout\ : std_logic;
SIGNAL \displ|disp4[4]~4_combout\ : std_logic;
SIGNAL \displ|Mux75~0_combout\ : std_logic;
SIGNAL \displ|Mux117~0_combout\ : std_logic;
SIGNAL \displ|disp4[5]~5_combout\ : std_logic;
SIGNAL \displ|Mux74~0_combout\ : std_logic;
SIGNAL \displ|Mux116~0_combout\ : std_logic;
SIGNAL \displ|disp4[6]~6_combout\ : std_logic;
SIGNAL \displ|Mux41~0_combout\ : std_logic;
SIGNAL \displ|Mux41~1_combout\ : std_logic;
SIGNAL \displ|Mux115~0_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[19]~65\ : std_logic;
SIGNAL \pcupdate|s_pc[20]~66_combout\ : std_logic;
SIGNAL \displ|Mux17~0_combout\ : std_logic;
SIGNAL \displ|Mux17~1_combout\ : std_logic;
SIGNAL \instrution_memory|Mux33~2_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[20]~67\ : std_logic;
SIGNAL \pcupdate|s_pc[21]~68_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[21]~69\ : std_logic;
SIGNAL \pcupdate|s_pc[22]~70_combout\ : std_logic;
SIGNAL \displ|Mux15~0_combout\ : std_logic;
SIGNAL \displ|Mux15~1_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[22]~71\ : std_logic;
SIGNAL \pcupdate|s_pc[23]~72_combout\ : std_logic;
SIGNAL \instrution_memory|Mux32~0_combout\ : std_logic;
SIGNAL \displ|Mux14~0_combout\ : std_logic;
SIGNAL \displ|Mux14~1_combout\ : std_logic;
SIGNAL \instrution_memory|Mux34~0_combout\ : std_logic;
SIGNAL \displ|Mux16~0_combout\ : std_logic;
SIGNAL \displ|Mux16~1_combout\ : std_logic;
SIGNAL \displ|Mux87~0_combout\ : std_logic;
SIGNAL \displ|disp5[0]~0_combout\ : std_logic;
SIGNAL \displ|Mux86~0_combout\ : std_logic;
SIGNAL \displ|Mux114~0_combout\ : std_logic;
SIGNAL \displ|disp5[1]~1_combout\ : std_logic;
SIGNAL \displ|Mux113~0_combout\ : std_logic;
SIGNAL \displ|Mux85~0_combout\ : std_logic;
SIGNAL \displ|disp5[2]~2_combout\ : std_logic;
SIGNAL \displ|Mux84~0_combout\ : std_logic;
SIGNAL \displ|Mux112~0_combout\ : std_logic;
SIGNAL \displ|disp5[3]~3_combout\ : std_logic;
SIGNAL \displ|Mux111~0_combout\ : std_logic;
SIGNAL \displ|Mux83~0_combout\ : std_logic;
SIGNAL \displ|disp5[4]~4_combout\ : std_logic;
SIGNAL \displ|Mux82~0_combout\ : std_logic;
SIGNAL \displ|Mux110~0_combout\ : std_logic;
SIGNAL \displ|disp5[5]~5_combout\ : std_logic;
SIGNAL \displ|Mux81~0_combout\ : std_logic;
SIGNAL \displ|Mux109~0_combout\ : std_logic;
SIGNAL \displ|disp5[6]~6_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[23]~73\ : std_logic;
SIGNAL \pcupdate|s_pc[24]~74_combout\ : std_logic;
SIGNAL \displ|Mux13~0_combout\ : std_logic;
SIGNAL \displ|Mux13~1_combout\ : std_logic;
SIGNAL \instrution_memory|Mux28~1_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[24]~75\ : std_logic;
SIGNAL \pcupdate|s_pc[25]~76_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[25]~77\ : std_logic;
SIGNAL \pcupdate|s_pc[26]~78_combout\ : std_logic;
SIGNAL \displ|Mux11~0_combout\ : std_logic;
SIGNAL \displ|Mux11~1_combout\ : std_logic;
SIGNAL \instrution_memory|Mux30~0_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[26]~79\ : std_logic;
SIGNAL \pcupdate|s_pc[27]~80_combout\ : std_logic;
SIGNAL \displ|Mux10~0_combout\ : std_logic;
SIGNAL \displ|Mux10~1_combout\ : std_logic;
SIGNAL \displ|Mux12~0_combout\ : std_logic;
SIGNAL \displ|Mux12~1_combout\ : std_logic;
SIGNAL \displ|Mux94~0_combout\ : std_logic;
SIGNAL \displ|disp6[0]~0_combout\ : std_logic;
SIGNAL \displ|Mux93~0_combout\ : std_logic;
SIGNAL \displ|disp6[1]~1_combout\ : std_logic;
SIGNAL \displ|Mux92~0_combout\ : std_logic;
SIGNAL \displ|disp6[2]~2_combout\ : std_logic;
SIGNAL \displ|Mux91~0_combout\ : std_logic;
SIGNAL \displ|disp6[3]~3_combout\ : std_logic;
SIGNAL \displ|Mux90~0_combout\ : std_logic;
SIGNAL \displ|disp6[4]~4_combout\ : std_logic;
SIGNAL \displ|Mux89~0_combout\ : std_logic;
SIGNAL \displ|disp6[5]~5_combout\ : std_logic;
SIGNAL \displ|Mux88~0_combout\ : std_logic;
SIGNAL \displ|disp6[6]~6_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[27]~81\ : std_logic;
SIGNAL \pcupdate|s_pc[28]~82_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[28]~83\ : std_logic;
SIGNAL \pcupdate|s_pc[29]~84_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[29]~85\ : std_logic;
SIGNAL \pcupdate|s_pc[30]~86_combout\ : std_logic;
SIGNAL \displ|Mux7~0_combout\ : std_logic;
SIGNAL \displ|Mux7~1_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[30]~87\ : std_logic;
SIGNAL \pcupdate|s_pc[31]~88_combout\ : std_logic;
SIGNAL \displ|Mux6~0_combout\ : std_logic;
SIGNAL \displ|Mux6~1_combout\ : std_logic;
SIGNAL \displ|Mux9~0_combout\ : std_logic;
SIGNAL \displ|Mux9~1_combout\ : std_logic;
SIGNAL \instrution_memory|Mux29~11_combout\ : std_logic;
SIGNAL \instrution_memory|Mux29~12_combout\ : std_logic;
SIGNAL \displ|Mux8~0_combout\ : std_logic;
SIGNAL \displ|Mux8~1_combout\ : std_logic;
SIGNAL \displ|Mux101~0_combout\ : std_logic;
SIGNAL \displ|disp7[0]~0_combout\ : std_logic;
SIGNAL \displ|Mux100~0_combout\ : std_logic;
SIGNAL \displ|disp7[1]~1_combout\ : std_logic;
SIGNAL \displ|Mux99~0_combout\ : std_logic;
SIGNAL \displ|disp7[2]~2_combout\ : std_logic;
SIGNAL \displ|Mux98~0_combout\ : std_logic;
SIGNAL \displ|disp7[3]~3_combout\ : std_logic;
SIGNAL \displ|Mux97~0_combout\ : std_logic;
SIGNAL \displ|disp7[4]~4_combout\ : std_logic;
SIGNAL \displ|Mux96~0_combout\ : std_logic;
SIGNAL \displ|disp7[5]~5_combout\ : std_logic;
SIGNAL \displ|Mux95~0_combout\ : std_logic;
SIGNAL \displ|disp7[6]~6_combout\ : std_logic;
SIGNAL \pcupdate|s_pc\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \displ|s_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \displ|s_repeatCount\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \debouncer|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \debouncer|ALT_INV_s_dirtyIn~q\ : std_logic;
SIGNAL \displ|ALT_INV_disp7[6]~6_combout\ : std_logic;
SIGNAL \displ|ALT_INV_Mux67~0_combout\ : std_logic;
SIGNAL \displ|ALT_INV_Mux60~0_combout\ : std_logic;
SIGNAL \displ|ALT_INV_Mux53~0_combout\ : std_logic;
SIGNAL \displ|ALT_INV_Mux46~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

\global.bp.work.DisplayUnit_pkg.DU_DMaddr_5__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_5__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMaddr_5__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_5__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMaddr_4__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_4__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFaddr_4__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_4__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMaddr_4__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_4__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMaddr_3__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_3__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFaddr_3__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_3__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMaddr_3__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_3__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMaddr_2__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_2__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFaddr_2__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_2__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMaddr_2__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_2__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMaddr_1__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_1__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFaddr_1__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_1__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMaddr_1__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_1__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMaddr_0__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_0__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFaddr_0__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_0__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMaddr_0__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_0__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_31__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_31__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_31__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_31__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_30__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_30__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_30__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_30__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_29__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_29__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_29__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_29__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_28__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_28__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_28__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_28__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_27__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_27__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_27__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_27__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_26__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_26__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_26__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_26__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_25__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_25__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_25__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_25__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_24__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_24__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_24__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_24__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_23__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_23__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_23__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_23__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_22__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_22__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_22__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_22__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_21__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_21__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_21__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_21__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_20__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_20__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_20__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_20__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_19__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_19__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_19__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_19__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_18__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_18__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_18__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_18__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_17__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_17__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_17__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_17__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_16__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_16__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_16__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_16__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_15__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_15__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_15__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_15__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_14__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_14__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_14__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_14__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_13__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_13__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_13__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_13__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_12__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_12__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_12__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_12__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_11__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_11__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_11__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_11__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_10__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_10__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_10__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_10__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_9__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_9__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_9__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_9__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_8__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_8__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_8__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_8__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_7__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_7__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_7__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_7__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_6__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_6__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_6__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_6__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_5__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_5__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_5__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_5__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_4__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_4__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_4__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_4__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_3__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_3__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_3__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_3__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_2__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_2__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_2__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_2__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_1__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_1__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_1__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_1__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_0__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_0__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_0__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_0__gl_output\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_0__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_0__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_0__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_0__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_1__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_1__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_1__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_1__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_2__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_2__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_2__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_2__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_3__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_3__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_3__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_3__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_4__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_4__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_4__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_4__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_5__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_5__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_5__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_5__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_6__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_6__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_6__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_6__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_7__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_7__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_7__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_7__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_8__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_8__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_8__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_8__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_9__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_9__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_9__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_9__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_10__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_10__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_10__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_10__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_11__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_11__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_11__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_11__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_12__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_12__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_12__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_12__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_13__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_13__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_13__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_13__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_14__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_14__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_14__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_14__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_15__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_15__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_15__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_15__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_16__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_16__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_16__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_16__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_17__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_17__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_17__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_17__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_18__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_18__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_18__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_18__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_19__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_19__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_19__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_19__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_20__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_20__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_20__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_20__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_21__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_21__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_21__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_21__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_22__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_22__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_22__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_22__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_23__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_23__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_23__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_23__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_24__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_24__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_24__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_24__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_25__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_25__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_25__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_25__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_26__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_26__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_26__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_26__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_27__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_27__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_27__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_27__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_28__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_28__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_28__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_28__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_29__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_29__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_29__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_29__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_30__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_30__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_30__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_30__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_31__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_RFdata_31__gl_input\;
\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_31__gl_input\ <= \global.bp.work.DisplayUnit_pkg.DU_DMdata_31__gl_input\;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\debouncer|s_pulsedOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \debouncer|s_pulsedOut~q\);
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\debouncer|ALT_INV_s_dirtyIn~q\ <= NOT \debouncer|s_dirtyIn~q\;
\displ|ALT_INV_disp7[6]~6_combout\ <= NOT \displ|disp7[6]~6_combout\;
\displ|ALT_INV_Mux67~0_combout\ <= NOT \displ|Mux67~0_combout\;
\displ|ALT_INV_Mux60~0_combout\ <= NOT \displ|Mux60~0_combout\;
\displ|ALT_INV_Mux53~0_combout\ <= NOT \displ|Mux53~0_combout\;
\displ|ALT_INV_Mux46~0_combout\ <= NOT \displ|Mux46~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux52~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux51~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux50~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux49~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux48~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux47~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|ALT_INV_Mux46~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux59~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux58~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux57~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux56~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux55~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux54~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|ALT_INV_Mux53~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux66~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux65~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux64~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux63~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux62~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux61~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|ALT_INV_Mux60~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux73~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux72~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux71~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux70~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux69~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux68~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|ALT_INV_Mux67~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp4[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp4[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp4[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp4[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp4[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp4[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp4[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp5[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp5[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp5[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp5[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp5[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp5[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp5[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp6[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp6[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp6[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp6[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp6[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp6[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp6[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp7[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp7[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp7[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp7[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp7[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp7[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|ALT_INV_disp7[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LCCOMB_X113_Y33_N2
\displ|s_count[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[0]~31_combout\ = \displ|s_count\(0) $ (VCC)
-- \displ|s_count[0]~32\ = CARRY(\displ|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(0),
	datad => VCC,
	combout => \displ|s_count[0]~31_combout\,
	cout => \displ|s_count[0]~32\);

-- Location: LCCOMB_X112_Y32_N12
\displ|s_count[22]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[22]~33_combout\ = (\displ|Equal1~11_combout\) # (\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \displ|Equal1~11_combout\,
	datad => \KEY[3]~input_o\,
	combout => \displ|s_count[22]~33_combout\);

-- Location: FF_X113_Y33_N3
\displ|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[0]~31_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(0));

-- Location: LCCOMB_X113_Y33_N4
\displ|s_count[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[1]~34_combout\ = (\displ|s_count\(1) & (!\displ|s_count[0]~32\)) # (!\displ|s_count\(1) & ((\displ|s_count[0]~32\) # (GND)))
-- \displ|s_count[1]~35\ = CARRY((!\displ|s_count[0]~32\) # (!\displ|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(1),
	datad => VCC,
	cin => \displ|s_count[0]~32\,
	combout => \displ|s_count[1]~34_combout\,
	cout => \displ|s_count[1]~35\);

-- Location: FF_X113_Y33_N5
\displ|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[1]~34_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(1));

-- Location: LCCOMB_X113_Y33_N6
\displ|s_count[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[2]~36_combout\ = (\displ|s_count\(2) & (\displ|s_count[1]~35\ $ (GND))) # (!\displ|s_count\(2) & (!\displ|s_count[1]~35\ & VCC))
-- \displ|s_count[2]~37\ = CARRY((\displ|s_count\(2) & !\displ|s_count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(2),
	datad => VCC,
	cin => \displ|s_count[1]~35\,
	combout => \displ|s_count[2]~36_combout\,
	cout => \displ|s_count[2]~37\);

-- Location: FF_X113_Y33_N7
\displ|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[2]~36_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(2));

-- Location: LCCOMB_X113_Y33_N8
\displ|s_count[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[3]~38_combout\ = (\displ|s_count\(3) & (!\displ|s_count[2]~37\)) # (!\displ|s_count\(3) & ((\displ|s_count[2]~37\) # (GND)))
-- \displ|s_count[3]~39\ = CARRY((!\displ|s_count[2]~37\) # (!\displ|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(3),
	datad => VCC,
	cin => \displ|s_count[2]~37\,
	combout => \displ|s_count[3]~38_combout\,
	cout => \displ|s_count[3]~39\);

-- Location: FF_X113_Y33_N9
\displ|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[3]~38_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(3));

-- Location: LCCOMB_X113_Y33_N10
\displ|s_count[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[4]~40_combout\ = (\displ|s_count\(4) & (\displ|s_count[3]~39\ $ (GND))) # (!\displ|s_count\(4) & (!\displ|s_count[3]~39\ & VCC))
-- \displ|s_count[4]~41\ = CARRY((\displ|s_count\(4) & !\displ|s_count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(4),
	datad => VCC,
	cin => \displ|s_count[3]~39\,
	combout => \displ|s_count[4]~40_combout\,
	cout => \displ|s_count[4]~41\);

-- Location: FF_X113_Y33_N11
\displ|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[4]~40_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(4));

-- Location: LCCOMB_X113_Y33_N12
\displ|s_count[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[5]~42_combout\ = (\displ|s_count\(5) & (!\displ|s_count[4]~41\)) # (!\displ|s_count\(5) & ((\displ|s_count[4]~41\) # (GND)))
-- \displ|s_count[5]~43\ = CARRY((!\displ|s_count[4]~41\) # (!\displ|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(5),
	datad => VCC,
	cin => \displ|s_count[4]~41\,
	combout => \displ|s_count[5]~42_combout\,
	cout => \displ|s_count[5]~43\);

-- Location: FF_X113_Y33_N13
\displ|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[5]~42_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(5));

-- Location: LCCOMB_X113_Y33_N14
\displ|s_count[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[6]~44_combout\ = (\displ|s_count\(6) & (\displ|s_count[5]~43\ $ (GND))) # (!\displ|s_count\(6) & (!\displ|s_count[5]~43\ & VCC))
-- \displ|s_count[6]~45\ = CARRY((\displ|s_count\(6) & !\displ|s_count[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(6),
	datad => VCC,
	cin => \displ|s_count[5]~43\,
	combout => \displ|s_count[6]~44_combout\,
	cout => \displ|s_count[6]~45\);

-- Location: FF_X113_Y33_N15
\displ|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[6]~44_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(6));

-- Location: LCCOMB_X113_Y33_N16
\displ|s_count[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[7]~46_combout\ = (\displ|s_count\(7) & (!\displ|s_count[6]~45\)) # (!\displ|s_count\(7) & ((\displ|s_count[6]~45\) # (GND)))
-- \displ|s_count[7]~47\ = CARRY((!\displ|s_count[6]~45\) # (!\displ|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(7),
	datad => VCC,
	cin => \displ|s_count[6]~45\,
	combout => \displ|s_count[7]~46_combout\,
	cout => \displ|s_count[7]~47\);

-- Location: FF_X113_Y33_N17
\displ|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[7]~46_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(7));

-- Location: LCCOMB_X113_Y33_N18
\displ|s_count[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[8]~48_combout\ = (\displ|s_count\(8) & (\displ|s_count[7]~47\ $ (GND))) # (!\displ|s_count\(8) & (!\displ|s_count[7]~47\ & VCC))
-- \displ|s_count[8]~49\ = CARRY((\displ|s_count\(8) & !\displ|s_count[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(8),
	datad => VCC,
	cin => \displ|s_count[7]~47\,
	combout => \displ|s_count[8]~48_combout\,
	cout => \displ|s_count[8]~49\);

-- Location: FF_X113_Y33_N19
\displ|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[8]~48_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(8));

-- Location: LCCOMB_X113_Y33_N20
\displ|s_count[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[9]~50_combout\ = (\displ|s_count\(9) & (!\displ|s_count[8]~49\)) # (!\displ|s_count\(9) & ((\displ|s_count[8]~49\) # (GND)))
-- \displ|s_count[9]~51\ = CARRY((!\displ|s_count[8]~49\) # (!\displ|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(9),
	datad => VCC,
	cin => \displ|s_count[8]~49\,
	combout => \displ|s_count[9]~50_combout\,
	cout => \displ|s_count[9]~51\);

-- Location: FF_X113_Y33_N21
\displ|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[9]~50_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(9));

-- Location: LCCOMB_X113_Y33_N22
\displ|s_count[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[10]~52_combout\ = (\displ|s_count\(10) & (\displ|s_count[9]~51\ $ (GND))) # (!\displ|s_count\(10) & (!\displ|s_count[9]~51\ & VCC))
-- \displ|s_count[10]~53\ = CARRY((\displ|s_count\(10) & !\displ|s_count[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(10),
	datad => VCC,
	cin => \displ|s_count[9]~51\,
	combout => \displ|s_count[10]~52_combout\,
	cout => \displ|s_count[10]~53\);

-- Location: FF_X113_Y33_N23
\displ|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[10]~52_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(10));

-- Location: LCCOMB_X113_Y33_N24
\displ|s_count[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[11]~54_combout\ = (\displ|s_count\(11) & (!\displ|s_count[10]~53\)) # (!\displ|s_count\(11) & ((\displ|s_count[10]~53\) # (GND)))
-- \displ|s_count[11]~55\ = CARRY((!\displ|s_count[10]~53\) # (!\displ|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(11),
	datad => VCC,
	cin => \displ|s_count[10]~53\,
	combout => \displ|s_count[11]~54_combout\,
	cout => \displ|s_count[11]~55\);

-- Location: FF_X113_Y33_N25
\displ|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[11]~54_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(11));

-- Location: LCCOMB_X113_Y33_N26
\displ|s_count[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[12]~56_combout\ = (\displ|s_count\(12) & (\displ|s_count[11]~55\ $ (GND))) # (!\displ|s_count\(12) & (!\displ|s_count[11]~55\ & VCC))
-- \displ|s_count[12]~57\ = CARRY((\displ|s_count\(12) & !\displ|s_count[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(12),
	datad => VCC,
	cin => \displ|s_count[11]~55\,
	combout => \displ|s_count[12]~56_combout\,
	cout => \displ|s_count[12]~57\);

-- Location: FF_X113_Y33_N27
\displ|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[12]~56_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(12));

-- Location: LCCOMB_X113_Y33_N28
\displ|s_count[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[13]~58_combout\ = (\displ|s_count\(13) & (!\displ|s_count[12]~57\)) # (!\displ|s_count\(13) & ((\displ|s_count[12]~57\) # (GND)))
-- \displ|s_count[13]~59\ = CARRY((!\displ|s_count[12]~57\) # (!\displ|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(13),
	datad => VCC,
	cin => \displ|s_count[12]~57\,
	combout => \displ|s_count[13]~58_combout\,
	cout => \displ|s_count[13]~59\);

-- Location: FF_X113_Y33_N29
\displ|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[13]~58_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(13));

-- Location: LCCOMB_X113_Y33_N30
\displ|s_count[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[14]~60_combout\ = (\displ|s_count\(14) & (\displ|s_count[13]~59\ $ (GND))) # (!\displ|s_count\(14) & (!\displ|s_count[13]~59\ & VCC))
-- \displ|s_count[14]~61\ = CARRY((\displ|s_count\(14) & !\displ|s_count[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(14),
	datad => VCC,
	cin => \displ|s_count[13]~59\,
	combout => \displ|s_count[14]~60_combout\,
	cout => \displ|s_count[14]~61\);

-- Location: FF_X113_Y33_N31
\displ|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[14]~60_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(14));

-- Location: LCCOMB_X113_Y32_N0
\displ|s_count[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[15]~62_combout\ = (\displ|s_count\(15) & (!\displ|s_count[14]~61\)) # (!\displ|s_count\(15) & ((\displ|s_count[14]~61\) # (GND)))
-- \displ|s_count[15]~63\ = CARRY((!\displ|s_count[14]~61\) # (!\displ|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(15),
	datad => VCC,
	cin => \displ|s_count[14]~61\,
	combout => \displ|s_count[15]~62_combout\,
	cout => \displ|s_count[15]~63\);

-- Location: FF_X113_Y32_N1
\displ|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[15]~62_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(15));

-- Location: LCCOMB_X113_Y32_N2
\displ|s_count[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[16]~64_combout\ = (\displ|s_count\(16) & (\displ|s_count[15]~63\ $ (GND))) # (!\displ|s_count\(16) & (!\displ|s_count[15]~63\ & VCC))
-- \displ|s_count[16]~65\ = CARRY((\displ|s_count\(16) & !\displ|s_count[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(16),
	datad => VCC,
	cin => \displ|s_count[15]~63\,
	combout => \displ|s_count[16]~64_combout\,
	cout => \displ|s_count[16]~65\);

-- Location: FF_X113_Y32_N3
\displ|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[16]~64_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(16));

-- Location: LCCOMB_X113_Y32_N4
\displ|s_count[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[17]~66_combout\ = (\displ|s_count\(17) & (!\displ|s_count[16]~65\)) # (!\displ|s_count\(17) & ((\displ|s_count[16]~65\) # (GND)))
-- \displ|s_count[17]~67\ = CARRY((!\displ|s_count[16]~65\) # (!\displ|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(17),
	datad => VCC,
	cin => \displ|s_count[16]~65\,
	combout => \displ|s_count[17]~66_combout\,
	cout => \displ|s_count[17]~67\);

-- Location: FF_X113_Y32_N5
\displ|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[17]~66_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(17));

-- Location: LCCOMB_X113_Y32_N6
\displ|s_count[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[18]~68_combout\ = (\displ|s_count\(18) & (\displ|s_count[17]~67\ $ (GND))) # (!\displ|s_count\(18) & (!\displ|s_count[17]~67\ & VCC))
-- \displ|s_count[18]~69\ = CARRY((\displ|s_count\(18) & !\displ|s_count[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(18),
	datad => VCC,
	cin => \displ|s_count[17]~67\,
	combout => \displ|s_count[18]~68_combout\,
	cout => \displ|s_count[18]~69\);

-- Location: FF_X113_Y32_N7
\displ|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[18]~68_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(18));

-- Location: LCCOMB_X113_Y32_N8
\displ|s_count[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[19]~70_combout\ = (\displ|s_count\(19) & (!\displ|s_count[18]~69\)) # (!\displ|s_count\(19) & ((\displ|s_count[18]~69\) # (GND)))
-- \displ|s_count[19]~71\ = CARRY((!\displ|s_count[18]~69\) # (!\displ|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(19),
	datad => VCC,
	cin => \displ|s_count[18]~69\,
	combout => \displ|s_count[19]~70_combout\,
	cout => \displ|s_count[19]~71\);

-- Location: FF_X113_Y32_N9
\displ|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[19]~70_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(19));

-- Location: LCCOMB_X113_Y32_N10
\displ|s_count[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[20]~72_combout\ = (\displ|s_count\(20) & (\displ|s_count[19]~71\ $ (GND))) # (!\displ|s_count\(20) & (!\displ|s_count[19]~71\ & VCC))
-- \displ|s_count[20]~73\ = CARRY((\displ|s_count\(20) & !\displ|s_count[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(20),
	datad => VCC,
	cin => \displ|s_count[19]~71\,
	combout => \displ|s_count[20]~72_combout\,
	cout => \displ|s_count[20]~73\);

-- Location: FF_X113_Y32_N11
\displ|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[20]~72_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(20));

-- Location: LCCOMB_X113_Y32_N12
\displ|s_count[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[21]~74_combout\ = (\displ|s_count\(21) & (!\displ|s_count[20]~73\)) # (!\displ|s_count\(21) & ((\displ|s_count[20]~73\) # (GND)))
-- \displ|s_count[21]~75\ = CARRY((!\displ|s_count[20]~73\) # (!\displ|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(21),
	datad => VCC,
	cin => \displ|s_count[20]~73\,
	combout => \displ|s_count[21]~74_combout\,
	cout => \displ|s_count[21]~75\);

-- Location: FF_X113_Y32_N13
\displ|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[21]~74_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(21));

-- Location: LCCOMB_X113_Y32_N14
\displ|s_count[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[22]~76_combout\ = (\displ|s_count\(22) & (\displ|s_count[21]~75\ $ (GND))) # (!\displ|s_count\(22) & (!\displ|s_count[21]~75\ & VCC))
-- \displ|s_count[22]~77\ = CARRY((\displ|s_count\(22) & !\displ|s_count[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(22),
	datad => VCC,
	cin => \displ|s_count[21]~75\,
	combout => \displ|s_count[22]~76_combout\,
	cout => \displ|s_count[22]~77\);

-- Location: FF_X113_Y32_N15
\displ|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[22]~76_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(22));

-- Location: LCCOMB_X113_Y32_N16
\displ|s_count[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[23]~78_combout\ = (\displ|s_count\(23) & (!\displ|s_count[22]~77\)) # (!\displ|s_count\(23) & ((\displ|s_count[22]~77\) # (GND)))
-- \displ|s_count[23]~79\ = CARRY((!\displ|s_count[22]~77\) # (!\displ|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(23),
	datad => VCC,
	cin => \displ|s_count[22]~77\,
	combout => \displ|s_count[23]~78_combout\,
	cout => \displ|s_count[23]~79\);

-- Location: FF_X113_Y32_N17
\displ|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[23]~78_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(23));

-- Location: LCCOMB_X113_Y32_N18
\displ|s_count[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[24]~80_combout\ = (\displ|s_count\(24) & (\displ|s_count[23]~79\ $ (GND))) # (!\displ|s_count\(24) & (!\displ|s_count[23]~79\ & VCC))
-- \displ|s_count[24]~81\ = CARRY((\displ|s_count\(24) & !\displ|s_count[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(24),
	datad => VCC,
	cin => \displ|s_count[23]~79\,
	combout => \displ|s_count[24]~80_combout\,
	cout => \displ|s_count[24]~81\);

-- Location: FF_X113_Y32_N19
\displ|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[24]~80_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(24));

-- Location: LCCOMB_X113_Y32_N20
\displ|s_count[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[25]~82_combout\ = (\displ|s_count\(25) & (!\displ|s_count[24]~81\)) # (!\displ|s_count\(25) & ((\displ|s_count[24]~81\) # (GND)))
-- \displ|s_count[25]~83\ = CARRY((!\displ|s_count[24]~81\) # (!\displ|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(25),
	datad => VCC,
	cin => \displ|s_count[24]~81\,
	combout => \displ|s_count[25]~82_combout\,
	cout => \displ|s_count[25]~83\);

-- Location: FF_X113_Y32_N21
\displ|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[25]~82_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(25));

-- Location: LCCOMB_X113_Y32_N22
\displ|s_count[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[26]~84_combout\ = (\displ|s_count\(26) & (\displ|s_count[25]~83\ $ (GND))) # (!\displ|s_count\(26) & (!\displ|s_count[25]~83\ & VCC))
-- \displ|s_count[26]~85\ = CARRY((\displ|s_count\(26) & !\displ|s_count[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(26),
	datad => VCC,
	cin => \displ|s_count[25]~83\,
	combout => \displ|s_count[26]~84_combout\,
	cout => \displ|s_count[26]~85\);

-- Location: FF_X113_Y32_N23
\displ|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[26]~84_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(26));

-- Location: LCCOMB_X113_Y32_N24
\displ|s_count[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[27]~86_combout\ = (\displ|s_count\(27) & (!\displ|s_count[26]~85\)) # (!\displ|s_count\(27) & ((\displ|s_count[26]~85\) # (GND)))
-- \displ|s_count[27]~87\ = CARRY((!\displ|s_count[26]~85\) # (!\displ|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(27),
	datad => VCC,
	cin => \displ|s_count[26]~85\,
	combout => \displ|s_count[27]~86_combout\,
	cout => \displ|s_count[27]~87\);

-- Location: FF_X113_Y32_N25
\displ|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[27]~86_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(27));

-- Location: LCCOMB_X113_Y32_N26
\displ|s_count[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[28]~88_combout\ = (\displ|s_count\(28) & (\displ|s_count[27]~87\ $ (GND))) # (!\displ|s_count\(28) & (!\displ|s_count[27]~87\ & VCC))
-- \displ|s_count[28]~89\ = CARRY((\displ|s_count\(28) & !\displ|s_count[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(28),
	datad => VCC,
	cin => \displ|s_count[27]~87\,
	combout => \displ|s_count[28]~88_combout\,
	cout => \displ|s_count[28]~89\);

-- Location: FF_X113_Y32_N27
\displ|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[28]~88_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(28));

-- Location: LCCOMB_X113_Y32_N28
\displ|s_count[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[29]~90_combout\ = (\displ|s_count\(29) & (!\displ|s_count[28]~89\)) # (!\displ|s_count\(29) & ((\displ|s_count[28]~89\) # (GND)))
-- \displ|s_count[29]~91\ = CARRY((!\displ|s_count[28]~89\) # (!\displ|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(29),
	datad => VCC,
	cin => \displ|s_count[28]~89\,
	combout => \displ|s_count[29]~90_combout\,
	cout => \displ|s_count[29]~91\);

-- Location: FF_X113_Y32_N29
\displ|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[29]~90_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(29));

-- Location: LCCOMB_X113_Y33_N0
\displ|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Equal1~1_combout\ = (!\displ|s_count\(4) & (!\displ|s_count\(7) & (!\displ|s_count\(5) & \displ|s_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(4),
	datab => \displ|s_count\(7),
	datac => \displ|s_count\(5),
	datad => \displ|s_count\(8),
	combout => \displ|Equal1~1_combout\);

-- Location: LCCOMB_X112_Y32_N4
\displ|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Equal1~2_combout\ = (!\displ|s_count\(17) & (!\displ|s_count\(12) & (!\displ|s_count\(15) & \displ|s_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(17),
	datab => \displ|s_count\(12),
	datac => \displ|s_count\(15),
	datad => \displ|s_count\(11),
	combout => \displ|Equal1~2_combout\);

-- Location: LCCOMB_X112_Y32_N22
\displ|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Equal1~3_combout\ = (!\displ|s_count\(26) & (!\displ|s_count\(27) & (!\displ|s_count\(25) & !\displ|s_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(26),
	datab => \displ|s_count\(27),
	datac => \displ|s_count\(25),
	datad => \displ|s_count\(23),
	combout => \displ|Equal1~3_combout\);

-- Location: LCCOMB_X112_Y33_N8
\displ|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Equal1~0_combout\ = (!\displ|s_count\(1) & (!\displ|s_count\(2) & (!\displ|s_count\(3) & !\displ|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(1),
	datab => \displ|s_count\(2),
	datac => \displ|s_count\(3),
	datad => \displ|s_count\(0),
	combout => \displ|Equal1~0_combout\);

-- Location: LCCOMB_X112_Y32_N24
\displ|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Equal1~4_combout\ = (\displ|Equal1~1_combout\ & (\displ|Equal1~2_combout\ & (\displ|Equal1~3_combout\ & \displ|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Equal1~1_combout\,
	datab => \displ|Equal1~2_combout\,
	datac => \displ|Equal1~3_combout\,
	datad => \displ|Equal1~0_combout\,
	combout => \displ|Equal1~4_combout\);

-- Location: LCCOMB_X113_Y32_N30
\displ|s_count[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[30]~92_combout\ = \displ|s_count\(30) $ (!\displ|s_count[29]~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(30),
	cin => \displ|s_count[29]~91\,
	combout => \displ|s_count[30]~92_combout\);

-- Location: FF_X113_Y32_N31
\displ|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[30]~92_combout\,
	sclr => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(30));

-- Location: LCCOMB_X112_Y32_N10
\displ|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Equal1~5_combout\ = (!\displ|s_count\(29) & (\displ|Equal1~4_combout\ & (!\displ|s_count\(30) & !\displ|s_count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(29),
	datab => \displ|Equal1~4_combout\,
	datac => \displ|s_count\(30),
	datad => \displ|s_count\(28),
	combout => \displ|Equal1~5_combout\);

-- Location: LCCOMB_X111_Y34_N2
\displ|s_repeatCount[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[0]~31_combout\ = \displ|s_repeatCount\(0) $ (VCC)
-- \displ|s_repeatCount[0]~32\ = CARRY(\displ|s_repeatCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(0),
	datad => VCC,
	combout => \displ|s_repeatCount[0]~31_combout\,
	cout => \displ|s_repeatCount[0]~32\);

-- Location: FF_X111_Y34_N3
\displ|s_repeatCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[0]~31_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(0));

-- Location: LCCOMB_X111_Y34_N4
\displ|s_repeatCount[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[1]~33_combout\ = (\displ|s_repeatCount\(1) & (!\displ|s_repeatCount[0]~32\)) # (!\displ|s_repeatCount\(1) & ((\displ|s_repeatCount[0]~32\) # (GND)))
-- \displ|s_repeatCount[1]~34\ = CARRY((!\displ|s_repeatCount[0]~32\) # (!\displ|s_repeatCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(1),
	datad => VCC,
	cin => \displ|s_repeatCount[0]~32\,
	combout => \displ|s_repeatCount[1]~33_combout\,
	cout => \displ|s_repeatCount[1]~34\);

-- Location: FF_X111_Y34_N5
\displ|s_repeatCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[1]~33_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(1));

-- Location: LCCOMB_X111_Y34_N6
\displ|s_repeatCount[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[2]~35_combout\ = (\displ|s_repeatCount\(2) & (\displ|s_repeatCount[1]~34\ $ (GND))) # (!\displ|s_repeatCount\(2) & (!\displ|s_repeatCount[1]~34\ & VCC))
-- \displ|s_repeatCount[2]~36\ = CARRY((\displ|s_repeatCount\(2) & !\displ|s_repeatCount[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(2),
	datad => VCC,
	cin => \displ|s_repeatCount[1]~34\,
	combout => \displ|s_repeatCount[2]~35_combout\,
	cout => \displ|s_repeatCount[2]~36\);

-- Location: FF_X111_Y34_N7
\displ|s_repeatCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[2]~35_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(2));

-- Location: LCCOMB_X111_Y34_N8
\displ|s_repeatCount[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[3]~37_combout\ = (\displ|s_repeatCount\(3) & (!\displ|s_repeatCount[2]~36\)) # (!\displ|s_repeatCount\(3) & ((\displ|s_repeatCount[2]~36\) # (GND)))
-- \displ|s_repeatCount[3]~38\ = CARRY((!\displ|s_repeatCount[2]~36\) # (!\displ|s_repeatCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(3),
	datad => VCC,
	cin => \displ|s_repeatCount[2]~36\,
	combout => \displ|s_repeatCount[3]~37_combout\,
	cout => \displ|s_repeatCount[3]~38\);

-- Location: FF_X111_Y34_N9
\displ|s_repeatCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[3]~37_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(3));

-- Location: LCCOMB_X111_Y34_N10
\displ|s_repeatCount[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[4]~39_combout\ = (\displ|s_repeatCount\(4) & (\displ|s_repeatCount[3]~38\ $ (GND))) # (!\displ|s_repeatCount\(4) & (!\displ|s_repeatCount[3]~38\ & VCC))
-- \displ|s_repeatCount[4]~40\ = CARRY((\displ|s_repeatCount\(4) & !\displ|s_repeatCount[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(4),
	datad => VCC,
	cin => \displ|s_repeatCount[3]~38\,
	combout => \displ|s_repeatCount[4]~39_combout\,
	cout => \displ|s_repeatCount[4]~40\);

-- Location: FF_X111_Y34_N11
\displ|s_repeatCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[4]~39_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(4));

-- Location: LCCOMB_X111_Y34_N12
\displ|s_repeatCount[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[5]~41_combout\ = (\displ|s_repeatCount\(5) & (!\displ|s_repeatCount[4]~40\)) # (!\displ|s_repeatCount\(5) & ((\displ|s_repeatCount[4]~40\) # (GND)))
-- \displ|s_repeatCount[5]~42\ = CARRY((!\displ|s_repeatCount[4]~40\) # (!\displ|s_repeatCount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(5),
	datad => VCC,
	cin => \displ|s_repeatCount[4]~40\,
	combout => \displ|s_repeatCount[5]~41_combout\,
	cout => \displ|s_repeatCount[5]~42\);

-- Location: FF_X111_Y34_N13
\displ|s_repeatCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[5]~41_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(5));

-- Location: LCCOMB_X111_Y34_N14
\displ|s_repeatCount[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[6]~43_combout\ = (\displ|s_repeatCount\(6) & (\displ|s_repeatCount[5]~42\ $ (GND))) # (!\displ|s_repeatCount\(6) & (!\displ|s_repeatCount[5]~42\ & VCC))
-- \displ|s_repeatCount[6]~44\ = CARRY((\displ|s_repeatCount\(6) & !\displ|s_repeatCount[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(6),
	datad => VCC,
	cin => \displ|s_repeatCount[5]~42\,
	combout => \displ|s_repeatCount[6]~43_combout\,
	cout => \displ|s_repeatCount[6]~44\);

-- Location: FF_X111_Y34_N15
\displ|s_repeatCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[6]~43_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(6));

-- Location: LCCOMB_X111_Y34_N16
\displ|s_repeatCount[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[7]~45_combout\ = (\displ|s_repeatCount\(7) & (!\displ|s_repeatCount[6]~44\)) # (!\displ|s_repeatCount\(7) & ((\displ|s_repeatCount[6]~44\) # (GND)))
-- \displ|s_repeatCount[7]~46\ = CARRY((!\displ|s_repeatCount[6]~44\) # (!\displ|s_repeatCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(7),
	datad => VCC,
	cin => \displ|s_repeatCount[6]~44\,
	combout => \displ|s_repeatCount[7]~45_combout\,
	cout => \displ|s_repeatCount[7]~46\);

-- Location: FF_X111_Y34_N17
\displ|s_repeatCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[7]~45_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(7));

-- Location: LCCOMB_X111_Y34_N18
\displ|s_repeatCount[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[8]~47_combout\ = (\displ|s_repeatCount\(8) & (\displ|s_repeatCount[7]~46\ $ (GND))) # (!\displ|s_repeatCount\(8) & (!\displ|s_repeatCount[7]~46\ & VCC))
-- \displ|s_repeatCount[8]~48\ = CARRY((\displ|s_repeatCount\(8) & !\displ|s_repeatCount[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(8),
	datad => VCC,
	cin => \displ|s_repeatCount[7]~46\,
	combout => \displ|s_repeatCount[8]~47_combout\,
	cout => \displ|s_repeatCount[8]~48\);

-- Location: FF_X111_Y34_N19
\displ|s_repeatCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[8]~47_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(8));

-- Location: LCCOMB_X111_Y34_N20
\displ|s_repeatCount[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[9]~49_combout\ = (\displ|s_repeatCount\(9) & (!\displ|s_repeatCount[8]~48\)) # (!\displ|s_repeatCount\(9) & ((\displ|s_repeatCount[8]~48\) # (GND)))
-- \displ|s_repeatCount[9]~50\ = CARRY((!\displ|s_repeatCount[8]~48\) # (!\displ|s_repeatCount\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(9),
	datad => VCC,
	cin => \displ|s_repeatCount[8]~48\,
	combout => \displ|s_repeatCount[9]~49_combout\,
	cout => \displ|s_repeatCount[9]~50\);

-- Location: FF_X111_Y34_N21
\displ|s_repeatCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[9]~49_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(9));

-- Location: LCCOMB_X111_Y34_N22
\displ|s_repeatCount[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[10]~51_combout\ = (\displ|s_repeatCount\(10) & (\displ|s_repeatCount[9]~50\ $ (GND))) # (!\displ|s_repeatCount\(10) & (!\displ|s_repeatCount[9]~50\ & VCC))
-- \displ|s_repeatCount[10]~52\ = CARRY((\displ|s_repeatCount\(10) & !\displ|s_repeatCount[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(10),
	datad => VCC,
	cin => \displ|s_repeatCount[9]~50\,
	combout => \displ|s_repeatCount[10]~51_combout\,
	cout => \displ|s_repeatCount[10]~52\);

-- Location: FF_X111_Y34_N23
\displ|s_repeatCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[10]~51_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(10));

-- Location: LCCOMB_X111_Y34_N24
\displ|s_repeatCount[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[11]~53_combout\ = (\displ|s_repeatCount\(11) & (!\displ|s_repeatCount[10]~52\)) # (!\displ|s_repeatCount\(11) & ((\displ|s_repeatCount[10]~52\) # (GND)))
-- \displ|s_repeatCount[11]~54\ = CARRY((!\displ|s_repeatCount[10]~52\) # (!\displ|s_repeatCount\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(11),
	datad => VCC,
	cin => \displ|s_repeatCount[10]~52\,
	combout => \displ|s_repeatCount[11]~53_combout\,
	cout => \displ|s_repeatCount[11]~54\);

-- Location: FF_X111_Y34_N25
\displ|s_repeatCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[11]~53_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(11));

-- Location: LCCOMB_X111_Y34_N26
\displ|s_repeatCount[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[12]~55_combout\ = (\displ|s_repeatCount\(12) & (\displ|s_repeatCount[11]~54\ $ (GND))) # (!\displ|s_repeatCount\(12) & (!\displ|s_repeatCount[11]~54\ & VCC))
-- \displ|s_repeatCount[12]~56\ = CARRY((\displ|s_repeatCount\(12) & !\displ|s_repeatCount[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(12),
	datad => VCC,
	cin => \displ|s_repeatCount[11]~54\,
	combout => \displ|s_repeatCount[12]~55_combout\,
	cout => \displ|s_repeatCount[12]~56\);

-- Location: FF_X111_Y34_N27
\displ|s_repeatCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[12]~55_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(12));

-- Location: LCCOMB_X111_Y34_N28
\displ|s_repeatCount[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[13]~57_combout\ = (\displ|s_repeatCount\(13) & (!\displ|s_repeatCount[12]~56\)) # (!\displ|s_repeatCount\(13) & ((\displ|s_repeatCount[12]~56\) # (GND)))
-- \displ|s_repeatCount[13]~58\ = CARRY((!\displ|s_repeatCount[12]~56\) # (!\displ|s_repeatCount\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(13),
	datad => VCC,
	cin => \displ|s_repeatCount[12]~56\,
	combout => \displ|s_repeatCount[13]~57_combout\,
	cout => \displ|s_repeatCount[13]~58\);

-- Location: FF_X111_Y34_N29
\displ|s_repeatCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[13]~57_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(13));

-- Location: LCCOMB_X111_Y34_N30
\displ|s_repeatCount[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[14]~59_combout\ = (\displ|s_repeatCount\(14) & (\displ|s_repeatCount[13]~58\ $ (GND))) # (!\displ|s_repeatCount\(14) & (!\displ|s_repeatCount[13]~58\ & VCC))
-- \displ|s_repeatCount[14]~60\ = CARRY((\displ|s_repeatCount\(14) & !\displ|s_repeatCount[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(14),
	datad => VCC,
	cin => \displ|s_repeatCount[13]~58\,
	combout => \displ|s_repeatCount[14]~59_combout\,
	cout => \displ|s_repeatCount[14]~60\);

-- Location: FF_X111_Y34_N31
\displ|s_repeatCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[14]~59_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(14));

-- Location: LCCOMB_X111_Y33_N0
\displ|s_repeatCount[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[15]~61_combout\ = (\displ|s_repeatCount\(15) & (!\displ|s_repeatCount[14]~60\)) # (!\displ|s_repeatCount\(15) & ((\displ|s_repeatCount[14]~60\) # (GND)))
-- \displ|s_repeatCount[15]~62\ = CARRY((!\displ|s_repeatCount[14]~60\) # (!\displ|s_repeatCount\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(15),
	datad => VCC,
	cin => \displ|s_repeatCount[14]~60\,
	combout => \displ|s_repeatCount[15]~61_combout\,
	cout => \displ|s_repeatCount[15]~62\);

-- Location: FF_X111_Y33_N1
\displ|s_repeatCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[15]~61_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(15));

-- Location: LCCOMB_X111_Y33_N2
\displ|s_repeatCount[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[16]~63_combout\ = (\displ|s_repeatCount\(16) & (\displ|s_repeatCount[15]~62\ $ (GND))) # (!\displ|s_repeatCount\(16) & (!\displ|s_repeatCount[15]~62\ & VCC))
-- \displ|s_repeatCount[16]~64\ = CARRY((\displ|s_repeatCount\(16) & !\displ|s_repeatCount[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(16),
	datad => VCC,
	cin => \displ|s_repeatCount[15]~62\,
	combout => \displ|s_repeatCount[16]~63_combout\,
	cout => \displ|s_repeatCount[16]~64\);

-- Location: FF_X111_Y33_N3
\displ|s_repeatCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[16]~63_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(16));

-- Location: LCCOMB_X111_Y33_N4
\displ|s_repeatCount[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[17]~65_combout\ = (\displ|s_repeatCount\(17) & (!\displ|s_repeatCount[16]~64\)) # (!\displ|s_repeatCount\(17) & ((\displ|s_repeatCount[16]~64\) # (GND)))
-- \displ|s_repeatCount[17]~66\ = CARRY((!\displ|s_repeatCount[16]~64\) # (!\displ|s_repeatCount\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(17),
	datad => VCC,
	cin => \displ|s_repeatCount[16]~64\,
	combout => \displ|s_repeatCount[17]~65_combout\,
	cout => \displ|s_repeatCount[17]~66\);

-- Location: FF_X111_Y33_N5
\displ|s_repeatCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[17]~65_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(17));

-- Location: LCCOMB_X111_Y33_N6
\displ|s_repeatCount[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[18]~67_combout\ = (\displ|s_repeatCount\(18) & (\displ|s_repeatCount[17]~66\ $ (GND))) # (!\displ|s_repeatCount\(18) & (!\displ|s_repeatCount[17]~66\ & VCC))
-- \displ|s_repeatCount[18]~68\ = CARRY((\displ|s_repeatCount\(18) & !\displ|s_repeatCount[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(18),
	datad => VCC,
	cin => \displ|s_repeatCount[17]~66\,
	combout => \displ|s_repeatCount[18]~67_combout\,
	cout => \displ|s_repeatCount[18]~68\);

-- Location: FF_X111_Y33_N7
\displ|s_repeatCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[18]~67_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(18));

-- Location: LCCOMB_X111_Y33_N8
\displ|s_repeatCount[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[19]~69_combout\ = (\displ|s_repeatCount\(19) & (!\displ|s_repeatCount[18]~68\)) # (!\displ|s_repeatCount\(19) & ((\displ|s_repeatCount[18]~68\) # (GND)))
-- \displ|s_repeatCount[19]~70\ = CARRY((!\displ|s_repeatCount[18]~68\) # (!\displ|s_repeatCount\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(19),
	datad => VCC,
	cin => \displ|s_repeatCount[18]~68\,
	combout => \displ|s_repeatCount[19]~69_combout\,
	cout => \displ|s_repeatCount[19]~70\);

-- Location: FF_X111_Y33_N9
\displ|s_repeatCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[19]~69_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(19));

-- Location: LCCOMB_X111_Y33_N10
\displ|s_repeatCount[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[20]~71_combout\ = (\displ|s_repeatCount\(20) & (\displ|s_repeatCount[19]~70\ $ (GND))) # (!\displ|s_repeatCount\(20) & (!\displ|s_repeatCount[19]~70\ & VCC))
-- \displ|s_repeatCount[20]~72\ = CARRY((\displ|s_repeatCount\(20) & !\displ|s_repeatCount[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(20),
	datad => VCC,
	cin => \displ|s_repeatCount[19]~70\,
	combout => \displ|s_repeatCount[20]~71_combout\,
	cout => \displ|s_repeatCount[20]~72\);

-- Location: FF_X111_Y33_N11
\displ|s_repeatCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[20]~71_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(20));

-- Location: LCCOMB_X111_Y33_N12
\displ|s_repeatCount[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[21]~73_combout\ = (\displ|s_repeatCount\(21) & (!\displ|s_repeatCount[20]~72\)) # (!\displ|s_repeatCount\(21) & ((\displ|s_repeatCount[20]~72\) # (GND)))
-- \displ|s_repeatCount[21]~74\ = CARRY((!\displ|s_repeatCount[20]~72\) # (!\displ|s_repeatCount\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(21),
	datad => VCC,
	cin => \displ|s_repeatCount[20]~72\,
	combout => \displ|s_repeatCount[21]~73_combout\,
	cout => \displ|s_repeatCount[21]~74\);

-- Location: FF_X111_Y33_N13
\displ|s_repeatCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[21]~73_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(21));

-- Location: LCCOMB_X111_Y33_N14
\displ|s_repeatCount[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[22]~75_combout\ = (\displ|s_repeatCount\(22) & (\displ|s_repeatCount[21]~74\ $ (GND))) # (!\displ|s_repeatCount\(22) & (!\displ|s_repeatCount[21]~74\ & VCC))
-- \displ|s_repeatCount[22]~76\ = CARRY((\displ|s_repeatCount\(22) & !\displ|s_repeatCount[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(22),
	datad => VCC,
	cin => \displ|s_repeatCount[21]~74\,
	combout => \displ|s_repeatCount[22]~75_combout\,
	cout => \displ|s_repeatCount[22]~76\);

-- Location: FF_X111_Y33_N15
\displ|s_repeatCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[22]~75_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(22));

-- Location: LCCOMB_X111_Y33_N16
\displ|s_repeatCount[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[23]~77_combout\ = (\displ|s_repeatCount\(23) & (!\displ|s_repeatCount[22]~76\)) # (!\displ|s_repeatCount\(23) & ((\displ|s_repeatCount[22]~76\) # (GND)))
-- \displ|s_repeatCount[23]~78\ = CARRY((!\displ|s_repeatCount[22]~76\) # (!\displ|s_repeatCount\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(23),
	datad => VCC,
	cin => \displ|s_repeatCount[22]~76\,
	combout => \displ|s_repeatCount[23]~77_combout\,
	cout => \displ|s_repeatCount[23]~78\);

-- Location: FF_X111_Y33_N17
\displ|s_repeatCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[23]~77_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(23));

-- Location: LCCOMB_X110_Y33_N10
\displ|s_thd[24]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_thd[24]~6_combout\ = (\displ|s_repeatCount\(22)) # ((\displ|s_repeatCount\(21)) # ((\displ|s_repeatCount\(20)) # (\displ|s_repeatCount\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(22),
	datab => \displ|s_repeatCount\(21),
	datac => \displ|s_repeatCount\(20),
	datad => \displ|s_repeatCount\(23),
	combout => \displ|s_thd[24]~6_combout\);

-- Location: LCCOMB_X110_Y33_N24
\displ|s_thd[24]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_thd[24]~5_combout\ = (\displ|s_repeatCount\(17)) # ((\displ|s_repeatCount\(18)) # ((\displ|s_repeatCount\(19)) # (\displ|s_repeatCount\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(17),
	datab => \displ|s_repeatCount\(18),
	datac => \displ|s_repeatCount\(19),
	datad => \displ|s_repeatCount\(16),
	combout => \displ|s_thd[24]~5_combout\);

-- Location: LCCOMB_X110_Y34_N12
\displ|s_thd[24]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_thd[24]~2_combout\ = (\displ|s_repeatCount\(11)) # ((\displ|s_repeatCount\(10)) # ((\displ|s_repeatCount\(9)) # (\displ|s_repeatCount\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(11),
	datab => \displ|s_repeatCount\(10),
	datac => \displ|s_repeatCount\(9),
	datad => \displ|s_repeatCount\(8),
	combout => \displ|s_thd[24]~2_combout\);

-- Location: LCCOMB_X110_Y34_N24
\displ|s_thd[24]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_thd[24]~0_combout\ = (\displ|s_repeatCount\(3)) # (\displ|s_repeatCount\(2) $ (((!\displ|s_repeatCount\(1) & !\displ|s_repeatCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(1),
	datab => \displ|s_repeatCount\(2),
	datac => \displ|s_repeatCount\(3),
	datad => \displ|s_repeatCount\(0),
	combout => \displ|s_thd[24]~0_combout\);

-- Location: LCCOMB_X111_Y34_N0
\displ|s_thd[24]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_thd[24]~3_combout\ = (\displ|s_repeatCount\(12)) # ((\displ|s_repeatCount\(15)) # ((\displ|s_repeatCount\(14)) # (\displ|s_repeatCount\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(12),
	datab => \displ|s_repeatCount\(15),
	datac => \displ|s_repeatCount\(14),
	datad => \displ|s_repeatCount\(13),
	combout => \displ|s_thd[24]~3_combout\);

-- Location: LCCOMB_X110_Y34_N10
\displ|s_thd[24]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_thd[24]~1_combout\ = (\displ|s_repeatCount\(4)) # ((\displ|s_repeatCount\(6)) # ((\displ|s_repeatCount\(5)) # (\displ|s_repeatCount\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(4),
	datab => \displ|s_repeatCount\(6),
	datac => \displ|s_repeatCount\(5),
	datad => \displ|s_repeatCount\(7),
	combout => \displ|s_thd[24]~1_combout\);

-- Location: LCCOMB_X110_Y34_N30
\displ|s_thd[24]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_thd[24]~4_combout\ = (\displ|s_thd[24]~2_combout\) # ((\displ|s_thd[24]~0_combout\) # ((\displ|s_thd[24]~3_combout\) # (\displ|s_thd[24]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_thd[24]~2_combout\,
	datab => \displ|s_thd[24]~0_combout\,
	datac => \displ|s_thd[24]~3_combout\,
	datad => \displ|s_thd[24]~1_combout\,
	combout => \displ|s_thd[24]~4_combout\);

-- Location: LCCOMB_X111_Y33_N18
\displ|s_repeatCount[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[24]~79_combout\ = (\displ|s_repeatCount\(24) & (\displ|s_repeatCount[23]~78\ $ (GND))) # (!\displ|s_repeatCount\(24) & (!\displ|s_repeatCount[23]~78\ & VCC))
-- \displ|s_repeatCount[24]~80\ = CARRY((\displ|s_repeatCount\(24) & !\displ|s_repeatCount[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(24),
	datad => VCC,
	cin => \displ|s_repeatCount[23]~78\,
	combout => \displ|s_repeatCount[24]~79_combout\,
	cout => \displ|s_repeatCount[24]~80\);

-- Location: FF_X111_Y33_N19
\displ|s_repeatCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[24]~79_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(24));

-- Location: LCCOMB_X111_Y33_N20
\displ|s_repeatCount[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[25]~81_combout\ = (\displ|s_repeatCount\(25) & (!\displ|s_repeatCount[24]~80\)) # (!\displ|s_repeatCount\(25) & ((\displ|s_repeatCount[24]~80\) # (GND)))
-- \displ|s_repeatCount[25]~82\ = CARRY((!\displ|s_repeatCount[24]~80\) # (!\displ|s_repeatCount\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(25),
	datad => VCC,
	cin => \displ|s_repeatCount[24]~80\,
	combout => \displ|s_repeatCount[25]~81_combout\,
	cout => \displ|s_repeatCount[25]~82\);

-- Location: FF_X111_Y33_N21
\displ|s_repeatCount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[25]~81_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(25));

-- Location: LCCOMB_X111_Y33_N22
\displ|s_repeatCount[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[26]~83_combout\ = (\displ|s_repeatCount\(26) & (\displ|s_repeatCount[25]~82\ $ (GND))) # (!\displ|s_repeatCount\(26) & (!\displ|s_repeatCount[25]~82\ & VCC))
-- \displ|s_repeatCount[26]~84\ = CARRY((\displ|s_repeatCount\(26) & !\displ|s_repeatCount[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(26),
	datad => VCC,
	cin => \displ|s_repeatCount[25]~82\,
	combout => \displ|s_repeatCount[26]~83_combout\,
	cout => \displ|s_repeatCount[26]~84\);

-- Location: FF_X111_Y33_N23
\displ|s_repeatCount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[26]~83_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(26));

-- Location: LCCOMB_X111_Y33_N24
\displ|s_repeatCount[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[27]~85_combout\ = (\displ|s_repeatCount\(27) & (!\displ|s_repeatCount[26]~84\)) # (!\displ|s_repeatCount\(27) & ((\displ|s_repeatCount[26]~84\) # (GND)))
-- \displ|s_repeatCount[27]~86\ = CARRY((!\displ|s_repeatCount[26]~84\) # (!\displ|s_repeatCount\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(27),
	datad => VCC,
	cin => \displ|s_repeatCount[26]~84\,
	combout => \displ|s_repeatCount[27]~85_combout\,
	cout => \displ|s_repeatCount[27]~86\);

-- Location: FF_X111_Y33_N25
\displ|s_repeatCount[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[27]~85_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(27));

-- Location: LCCOMB_X110_Y33_N12
\displ|s_thd[24]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_thd[24]~7_combout\ = (\displ|s_repeatCount\(27)) # ((\displ|s_repeatCount\(26)) # ((\displ|s_repeatCount\(25)) # (\displ|s_repeatCount\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(27),
	datab => \displ|s_repeatCount\(26),
	datac => \displ|s_repeatCount\(25),
	datad => \displ|s_repeatCount\(24),
	combout => \displ|s_thd[24]~7_combout\);

-- Location: LCCOMB_X111_Y33_N26
\displ|s_repeatCount[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[28]~87_combout\ = (\displ|s_repeatCount\(28) & (\displ|s_repeatCount[27]~86\ $ (GND))) # (!\displ|s_repeatCount\(28) & (!\displ|s_repeatCount[27]~86\ & VCC))
-- \displ|s_repeatCount[28]~88\ = CARRY((\displ|s_repeatCount\(28) & !\displ|s_repeatCount[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(28),
	datad => VCC,
	cin => \displ|s_repeatCount[27]~86\,
	combout => \displ|s_repeatCount[28]~87_combout\,
	cout => \displ|s_repeatCount[28]~88\);

-- Location: FF_X111_Y33_N27
\displ|s_repeatCount[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[28]~87_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(28));

-- Location: LCCOMB_X111_Y33_N28
\displ|s_repeatCount[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[29]~89_combout\ = (\displ|s_repeatCount\(29) & (!\displ|s_repeatCount[28]~88\)) # (!\displ|s_repeatCount\(29) & ((\displ|s_repeatCount[28]~88\) # (GND)))
-- \displ|s_repeatCount[29]~90\ = CARRY((!\displ|s_repeatCount[28]~88\) # (!\displ|s_repeatCount\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(29),
	datad => VCC,
	cin => \displ|s_repeatCount[28]~88\,
	combout => \displ|s_repeatCount[29]~89_combout\,
	cout => \displ|s_repeatCount[29]~90\);

-- Location: FF_X111_Y33_N29
\displ|s_repeatCount[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[29]~89_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(29));

-- Location: LCCOMB_X111_Y33_N30
\displ|s_repeatCount[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[30]~91_combout\ = \displ|s_repeatCount\(30) $ (!\displ|s_repeatCount[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(30),
	cin => \displ|s_repeatCount[29]~90\,
	combout => \displ|s_repeatCount[30]~91_combout\);

-- Location: FF_X111_Y33_N31
\displ|s_repeatCount[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[30]~91_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(30));

-- Location: LCCOMB_X110_Y33_N6
\displ|s_thd[24]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_thd[24]~8_combout\ = (\displ|s_thd[24]~7_combout\) # ((\displ|s_repeatCount\(29)) # ((\displ|s_repeatCount\(30)) # (\displ|s_repeatCount\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_thd[24]~7_combout\,
	datab => \displ|s_repeatCount\(29),
	datac => \displ|s_repeatCount\(30),
	datad => \displ|s_repeatCount\(28),
	combout => \displ|s_thd[24]~8_combout\);

-- Location: LCCOMB_X110_Y33_N0
\displ|s_thd[24]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_thd[24]~9_combout\ = (\displ|s_thd[24]~6_combout\) # ((\displ|s_thd[24]~5_combout\) # ((\displ|s_thd[24]~4_combout\) # (\displ|s_thd[24]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_thd[24]~6_combout\,
	datab => \displ|s_thd[24]~5_combout\,
	datac => \displ|s_thd[24]~4_combout\,
	datad => \displ|s_thd[24]~8_combout\,
	combout => \displ|s_thd[24]~9_combout\);

-- Location: LCCOMB_X112_Y33_N28
\displ|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Equal1~7_combout\ = (\displ|s_count\(16) & (\displ|s_count\(13) & (!\displ|s_thd[24]~9_combout\ & \displ|s_count\(10)))) # (!\displ|s_count\(16) & (!\displ|s_count\(13) & (\displ|s_thd[24]~9_combout\ & !\displ|s_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(16),
	datab => \displ|s_count\(13),
	datac => \displ|s_thd[24]~9_combout\,
	datad => \displ|s_count\(10),
	combout => \displ|Equal1~7_combout\);

-- Location: LCCOMB_X112_Y32_N20
\displ|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Equal1~8_combout\ = (\displ|s_count\(14) & (!\displ|s_count\(24) & (\displ|s_count\(22) & !\displ|s_count\(16)))) # (!\displ|s_count\(14) & (\displ|s_count\(24) & (!\displ|s_count\(22) & \displ|s_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(14),
	datab => \displ|s_count\(24),
	datac => \displ|s_count\(22),
	datad => \displ|s_count\(16),
	combout => \displ|Equal1~8_combout\);

-- Location: LCCOMB_X112_Y32_N6
\displ|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Equal1~9_combout\ = (\displ|s_count\(18) & (!\displ|s_count\(21) & (\displ|s_count\(19) & !\displ|s_count\(16)))) # (!\displ|s_count\(18) & (\displ|s_count\(21) & (!\displ|s_count\(19) & \displ|s_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(18),
	datab => \displ|s_count\(21),
	datac => \displ|s_count\(19),
	datad => \displ|s_count\(16),
	combout => \displ|Equal1~9_combout\);

-- Location: LCCOMB_X112_Y32_N8
\displ|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Equal1~10_combout\ = (\displ|Equal1~8_combout\ & \displ|Equal1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Equal1~8_combout\,
	datad => \displ|Equal1~9_combout\,
	combout => \displ|Equal1~10_combout\);

-- Location: LCCOMB_X112_Y33_N2
\displ|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Equal1~6_combout\ = (\displ|s_count\(20) & (!\displ|s_count\(6) & (!\displ|s_count\(9) & \displ|s_count\(16)))) # (!\displ|s_count\(20) & (\displ|s_count\(6) & (\displ|s_count\(9) & !\displ|s_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(20),
	datab => \displ|s_count\(6),
	datac => \displ|s_count\(9),
	datad => \displ|s_count\(16),
	combout => \displ|Equal1~6_combout\);

-- Location: LCCOMB_X112_Y32_N26
\displ|Equal1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Equal1~11_combout\ = (\displ|Equal1~5_combout\ & (\displ|Equal1~7_combout\ & (\displ|Equal1~10_combout\ & \displ|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Equal1~5_combout\,
	datab => \displ|Equal1~7_combout\,
	datac => \displ|Equal1~10_combout\,
	datad => \displ|Equal1~6_combout\,
	combout => \displ|Equal1~11_combout\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X112_Y32_N18
\displ|s_dec~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_dec~0_combout\ = (!\KEY[3]~input_o\ & (\displ|Equal1~11_combout\ & !\KEY[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datac => \displ|Equal1~11_combout\,
	datad => \KEY[2]~input_o\,
	combout => \displ|s_dec~0_combout\);

-- Location: FF_X112_Y32_N19
\displ|s_dec\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_dec~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_dec~q\);

-- Location: LCCOMB_X112_Y32_N16
\displ|s_inc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_inc~0_combout\ = (!\KEY[3]~input_o\ & (\displ|Equal1~11_combout\ & \KEY[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datac => \displ|Equal1~11_combout\,
	datad => \KEY[2]~input_o\,
	combout => \displ|s_inc~0_combout\);

-- Location: FF_X112_Y32_N17
\displ|s_inc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_inc~q\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X109_Y16_N8
\displ|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Decoder0~1_combout\ = (\SW[0]~input_o\ & (!\SW[1]~input_o\ & ((\displ|s_dec~q\) # (\displ|s_inc~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_dec~q\,
	datab => \displ|s_inc~q\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Decoder0~1_combout\);

-- Location: LCCOMB_X109_Y16_N28
\displ|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Decoder0~3_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\ & ((\displ|s_dec~q\) # (\displ|s_inc~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_dec~q\,
	datab => \displ|s_inc~q\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Decoder0~3_combout\);

-- Location: LCCOMB_X110_Y16_N28
\displ|s_addrCounters~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~16_combout\ = (\displ|Decoder0~3_combout\ & ((\displ|Add0~10_combout\))) # (!\displ|Decoder0~3_combout\ & (\displ|s_addrCounters[3][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Decoder0~3_combout\,
	datac => \displ|s_addrCounters[3][5]~q\,
	datad => \displ|Add0~10_combout\,
	combout => \displ|s_addrCounters~16_combout\);

-- Location: FF_X110_Y16_N29
\displ|s_addrCounters[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[3][5]~q\);

-- Location: LCCOMB_X110_Y16_N30
\displ|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux38~0_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\displ|s_addrCounters[3][5]~q\)) # (!\SW[1]~input_o\ & ((\displ|s_addrCounters[1][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \displ|s_addrCounters[3][5]~q\,
	datac => \SW[0]~input_o\,
	datad => \displ|s_addrCounters[1][5]~q\,
	combout => \displ|Mux38~0_combout\);

-- Location: LCCOMB_X109_Y16_N26
\displ|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Decoder0~2_combout\ = (!\SW[0]~input_o\ & (\SW[1]~input_o\ & ((\displ|s_dec~q\) # (\displ|s_inc~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_dec~q\,
	datab => \displ|s_inc~q\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Decoder0~2_combout\);

-- Location: LCCOMB_X110_Y16_N8
\displ|s_addrCounters[2][5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters[2][5]~17_combout\ = (\displ|Decoder0~2_combout\ & ((\displ|Add0~10_combout\))) # (!\displ|Decoder0~2_combout\ & (\displ|s_addrCounters[2][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Decoder0~2_combout\,
	datac => \displ|s_addrCounters[2][5]~q\,
	datad => \displ|Add0~10_combout\,
	combout => \displ|s_addrCounters[2][5]~17_combout\);

-- Location: FF_X110_Y16_N9
\displ|s_addrCounters[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters[2][5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[2][5]~q\);

-- Location: LCCOMB_X109_Y16_N22
\displ|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Decoder0~4_combout\ = (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & ((\displ|s_dec~q\) # (\displ|s_inc~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_dec~q\,
	datab => \displ|s_inc~q\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Decoder0~4_combout\);

-- Location: FF_X109_Y16_N21
\displ|s_addrCounters[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|Add0~10_combout\,
	ena => \displ|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[0][5]~q\);

-- Location: LCCOMB_X110_Y16_N10
\displ|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux0~0_combout\ = (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\displ|s_addrCounters[2][5]~q\)) # (!\SW[1]~input_o\ & ((\displ|s_addrCounters[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \displ|s_addrCounters[2][5]~q\,
	datac => \SW[0]~input_o\,
	datad => \displ|s_addrCounters[0][5]~q\,
	combout => \displ|Mux0~0_combout\);

-- Location: LCCOMB_X110_Y16_N4
\displ|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux0~1_combout\ = (\displ|Mux38~0_combout\) # (\displ|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \displ|Mux38~0_combout\,
	datad => \displ|Mux0~0_combout\,
	combout => \displ|Mux0~1_combout\);

-- Location: LCCOMB_X109_Y16_N10
\displ|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Add0~0_combout\ = \displ|Mux5~1_combout\ $ (VCC)
-- \displ|Add0~1\ = CARRY(\displ|Mux5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux5~1_combout\,
	datad => VCC,
	combout => \displ|Add0~0_combout\,
	cout => \displ|Add0~1\);

-- Location: LCCOMB_X108_Y16_N20
\displ|s_addrCounters~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~8_combout\ = (\displ|Decoder0~3_combout\ & ((\displ|Add0~0_combout\))) # (!\displ|Decoder0~3_combout\ & (\displ|s_addrCounters[3][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Decoder0~3_combout\,
	datac => \displ|s_addrCounters[3][0]~q\,
	datad => \displ|Add0~0_combout\,
	combout => \displ|s_addrCounters~8_combout\);

-- Location: FF_X108_Y16_N21
\displ|s_addrCounters[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[3][0]~q\);

-- Location: LCCOMB_X108_Y16_N8
\displ|s_addrCounters~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~4_combout\ = (\displ|Decoder0~1_combout\ & ((\displ|Add0~0_combout\))) # (!\displ|Decoder0~1_combout\ & (\displ|s_addrCounters[1][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Decoder0~1_combout\,
	datac => \displ|s_addrCounters[1][0]~q\,
	datad => \displ|Add0~0_combout\,
	combout => \displ|s_addrCounters~4_combout\);

-- Location: FF_X108_Y16_N9
\displ|s_addrCounters[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[1][0]~q\);

-- Location: LCCOMB_X108_Y16_N10
\displ|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux5~0_combout\ = (\SW[1]~input_o\ & ((\displ|s_addrCounters[3][0]~q\) # ((!\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\displ|s_addrCounters[1][0]~q\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \displ|s_addrCounters[3][0]~q\,
	datac => \displ|s_addrCounters[1][0]~q\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux5~0_combout\);

-- Location: FF_X109_Y16_N11
\displ|s_addrCounters[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|Add0~0_combout\,
	ena => \displ|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[0][0]~q\);

-- Location: LCCOMB_X109_Y16_N2
\displ|s_addrCounters~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~6_combout\ = (\displ|Decoder0~2_combout\ & ((\displ|Add0~0_combout\))) # (!\displ|Decoder0~2_combout\ & (\displ|s_addrCounters[2][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Decoder0~2_combout\,
	datac => \displ|s_addrCounters[2][0]~q\,
	datad => \displ|Add0~0_combout\,
	combout => \displ|s_addrCounters~6_combout\);

-- Location: FF_X109_Y16_N3
\displ|s_addrCounters[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[2][0]~q\);

-- Location: LCCOMB_X109_Y16_N30
\displ|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux5~1_combout\ = (\displ|Mux5~0_combout\ & (((\SW[0]~input_o\) # (\displ|s_addrCounters[2][0]~q\)))) # (!\displ|Mux5~0_combout\ & (\displ|s_addrCounters[0][0]~q\ & (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux5~0_combout\,
	datab => \displ|s_addrCounters[0][0]~q\,
	datac => \SW[0]~input_o\,
	datad => \displ|s_addrCounters[2][0]~q\,
	combout => \displ|Mux5~1_combout\);

-- Location: LCCOMB_X109_Y16_N12
\displ|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Add0~2_combout\ = (\displ|Mux4~1_combout\ & ((\displ|s_inc~q\ & (!\displ|Add0~1\)) # (!\displ|s_inc~q\ & (\displ|Add0~1\ & VCC)))) # (!\displ|Mux4~1_combout\ & ((\displ|s_inc~q\ & ((\displ|Add0~1\) # (GND))) # (!\displ|s_inc~q\ & 
-- (!\displ|Add0~1\))))
-- \displ|Add0~3\ = CARRY((\displ|Mux4~1_combout\ & (\displ|s_inc~q\ & !\displ|Add0~1\)) # (!\displ|Mux4~1_combout\ & ((\displ|s_inc~q\) # (!\displ|Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux4~1_combout\,
	datab => \displ|s_inc~q\,
	datad => VCC,
	cin => \displ|Add0~1\,
	combout => \displ|Add0~2_combout\,
	cout => \displ|Add0~3\);

-- Location: LCCOMB_X109_Y16_N0
\displ|s_addrCounters~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~0_combout\ = (\displ|Decoder0~1_combout\ & ((\displ|Add0~2_combout\))) # (!\displ|Decoder0~1_combout\ & (\displ|s_addrCounters[1][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Decoder0~1_combout\,
	datac => \displ|s_addrCounters[1][1]~q\,
	datad => \displ|Add0~2_combout\,
	combout => \displ|s_addrCounters~0_combout\);

-- Location: FF_X109_Y16_N1
\displ|s_addrCounters[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[1][1]~q\);

-- Location: LCCOMB_X109_Y16_N4
\displ|s_addrCounters~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~10_combout\ = (\displ|Decoder0~3_combout\ & ((\displ|Add0~2_combout\))) # (!\displ|Decoder0~3_combout\ & (\displ|s_addrCounters[3][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Decoder0~3_combout\,
	datac => \displ|s_addrCounters[3][1]~q\,
	datad => \displ|Add0~2_combout\,
	combout => \displ|s_addrCounters~10_combout\);

-- Location: FF_X109_Y16_N5
\displ|s_addrCounters[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[3][1]~q\);

-- Location: LCCOMB_X109_Y16_N6
\displ|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux4~0_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((\displ|s_addrCounters[3][1]~q\))) # (!\SW[1]~input_o\ & (\displ|s_addrCounters[1][1]~q\)))) # (!\SW[0]~input_o\ & (((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[1][1]~q\,
	datab => \displ|s_addrCounters[3][1]~q\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux4~0_combout\);

-- Location: FF_X109_Y16_N13
\displ|s_addrCounters[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|Add0~2_combout\,
	ena => \displ|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[0][1]~q\);

-- Location: LCCOMB_X110_Y16_N22
\displ|s_addrCounters~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~7_combout\ = (\displ|Decoder0~2_combout\ & ((\displ|Add0~2_combout\))) # (!\displ|Decoder0~2_combout\ & (\displ|s_addrCounters[2][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Decoder0~2_combout\,
	datac => \displ|s_addrCounters[2][1]~q\,
	datad => \displ|Add0~2_combout\,
	combout => \displ|s_addrCounters~7_combout\);

-- Location: FF_X110_Y16_N23
\displ|s_addrCounters[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[2][1]~q\);

-- Location: LCCOMB_X109_Y16_N24
\displ|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux4~1_combout\ = (\displ|Mux4~0_combout\ & (((\SW[0]~input_o\) # (\displ|s_addrCounters[2][1]~q\)))) # (!\displ|Mux4~0_combout\ & (\displ|s_addrCounters[0][1]~q\ & (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux4~0_combout\,
	datab => \displ|s_addrCounters[0][1]~q\,
	datac => \SW[0]~input_o\,
	datad => \displ|s_addrCounters[2][1]~q\,
	combout => \displ|Mux4~1_combout\);

-- Location: LCCOMB_X109_Y16_N14
\displ|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Add0~4_combout\ = ((\displ|Mux3~1_combout\ $ (\displ|s_inc~q\ $ (\displ|Add0~3\)))) # (GND)
-- \displ|Add0~5\ = CARRY((\displ|Mux3~1_combout\ & ((!\displ|Add0~3\) # (!\displ|s_inc~q\))) # (!\displ|Mux3~1_combout\ & (!\displ|s_inc~q\ & !\displ|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux3~1_combout\,
	datab => \displ|s_inc~q\,
	datad => VCC,
	cin => \displ|Add0~3\,
	combout => \displ|Add0~4_combout\,
	cout => \displ|Add0~5\);

-- Location: LCCOMB_X108_Y16_N30
\displ|s_addrCounters~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~9_combout\ = (\displ|Decoder0~2_combout\ & (\displ|Add0~4_combout\)) # (!\displ|Decoder0~2_combout\ & ((\displ|s_addrCounters[2][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Add0~4_combout\,
	datac => \displ|s_addrCounters[2][2]~q\,
	datad => \displ|Decoder0~2_combout\,
	combout => \displ|s_addrCounters~9_combout\);

-- Location: FF_X108_Y16_N31
\displ|s_addrCounters[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[2][2]~q\);

-- Location: LCCOMB_X108_Y16_N2
\displ|s_addrCounters~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~5_combout\ = (\displ|Decoder0~1_combout\ & (\displ|Add0~4_combout\)) # (!\displ|Decoder0~1_combout\ & ((\displ|s_addrCounters[1][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Add0~4_combout\,
	datab => \displ|Decoder0~1_combout\,
	datac => \displ|s_addrCounters[1][2]~q\,
	combout => \displ|s_addrCounters~5_combout\);

-- Location: FF_X108_Y16_N3
\displ|s_addrCounters[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[1][2]~q\);

-- Location: LCCOMB_X108_Y16_N16
\displ|s_addrCounters~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~12_combout\ = (\displ|Decoder0~3_combout\ & (\displ|Add0~4_combout\)) # (!\displ|Decoder0~3_combout\ & ((\displ|s_addrCounters[3][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Add0~4_combout\,
	datac => \displ|s_addrCounters[3][2]~q\,
	datad => \displ|Decoder0~3_combout\,
	combout => \displ|s_addrCounters~12_combout\);

-- Location: FF_X108_Y16_N17
\displ|s_addrCounters[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[3][2]~q\);

-- Location: LCCOMB_X108_Y16_N28
\displ|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux3~0_combout\ = (\SW[1]~input_o\ & (((\displ|s_addrCounters[3][2]~q\) # (!\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (\displ|s_addrCounters[1][2]~q\ & ((\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \displ|s_addrCounters[1][2]~q\,
	datac => \displ|s_addrCounters[3][2]~q\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux3~0_combout\);

-- Location: FF_X109_Y16_N15
\displ|s_addrCounters[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|Add0~4_combout\,
	ena => \displ|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[0][2]~q\);

-- Location: LCCOMB_X108_Y16_N6
\displ|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux3~1_combout\ = (\displ|Mux3~0_combout\ & ((\displ|s_addrCounters[2][2]~q\) # ((\SW[0]~input_o\)))) # (!\displ|Mux3~0_combout\ & (((\displ|s_addrCounters[0][2]~q\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[2][2]~q\,
	datab => \displ|Mux3~0_combout\,
	datac => \displ|s_addrCounters[0][2]~q\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux3~1_combout\);

-- Location: LCCOMB_X109_Y16_N16
\displ|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Add0~6_combout\ = (\displ|Mux2~1_combout\ & ((\displ|s_inc~q\ & (!\displ|Add0~5\)) # (!\displ|s_inc~q\ & (\displ|Add0~5\ & VCC)))) # (!\displ|Mux2~1_combout\ & ((\displ|s_inc~q\ & ((\displ|Add0~5\) # (GND))) # (!\displ|s_inc~q\ & 
-- (!\displ|Add0~5\))))
-- \displ|Add0~7\ = CARRY((\displ|Mux2~1_combout\ & (\displ|s_inc~q\ & !\displ|Add0~5\)) # (!\displ|Mux2~1_combout\ & ((\displ|s_inc~q\) # (!\displ|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux2~1_combout\,
	datab => \displ|s_inc~q\,
	datad => VCC,
	cin => \displ|Add0~5\,
	combout => \displ|Add0~6_combout\,
	cout => \displ|Add0~7\);

-- Location: LCCOMB_X110_Y16_N12
\displ|s_addrCounters~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~3_combout\ = (\displ|Decoder0~1_combout\ & (\displ|Add0~6_combout\)) # (!\displ|Decoder0~1_combout\ & ((\displ|s_addrCounters[1][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Add0~6_combout\,
	datac => \displ|s_addrCounters[1][3]~q\,
	datad => \displ|Decoder0~1_combout\,
	combout => \displ|s_addrCounters~3_combout\);

-- Location: FF_X110_Y16_N13
\displ|s_addrCounters[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[1][3]~q\);

-- Location: LCCOMB_X110_Y16_N20
\displ|s_addrCounters~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~14_combout\ = (\displ|Decoder0~3_combout\ & (\displ|Add0~6_combout\)) # (!\displ|Decoder0~3_combout\ & ((\displ|s_addrCounters[3][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Add0~6_combout\,
	datac => \displ|s_addrCounters[3][3]~q\,
	datad => \displ|Decoder0~3_combout\,
	combout => \displ|s_addrCounters~14_combout\);

-- Location: FF_X110_Y16_N21
\displ|s_addrCounters[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[3][3]~q\);

-- Location: LCCOMB_X110_Y16_N14
\displ|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux40~0_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((\displ|s_addrCounters[3][3]~q\))) # (!\SW[1]~input_o\ & (\displ|s_addrCounters[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[1][3]~q\,
	datab => \displ|s_addrCounters[3][3]~q\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux40~0_combout\);

-- Location: FF_X109_Y16_N17
\displ|s_addrCounters[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|Add0~6_combout\,
	ena => \displ|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[0][3]~q\);

-- Location: LCCOMB_X110_Y16_N6
\displ|s_addrCounters~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~11_combout\ = (\displ|Decoder0~2_combout\ & ((\displ|Add0~6_combout\))) # (!\displ|Decoder0~2_combout\ & (\displ|s_addrCounters[2][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[2][3]~q\,
	datac => \displ|Decoder0~2_combout\,
	datad => \displ|Add0~6_combout\,
	combout => \displ|s_addrCounters~11_combout\);

-- Location: FF_X107_Y16_N9
\displ|s_addrCounters[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \displ|s_addrCounters~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[2][3]~q\);

-- Location: LCCOMB_X109_Y15_N28
\displ|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux2~0_combout\ = (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((\displ|s_addrCounters[2][3]~q\))) # (!\SW[1]~input_o\ & (\displ|s_addrCounters[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[0][3]~q\,
	datab => \SW[1]~input_o\,
	datac => \displ|s_addrCounters[2][3]~q\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux2~0_combout\);

-- Location: LCCOMB_X109_Y15_N14
\displ|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux2~1_combout\ = (\displ|Mux40~0_combout\) # (\displ|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Mux40~0_combout\,
	datad => \displ|Mux2~0_combout\,
	combout => \displ|Mux2~1_combout\);

-- Location: LCCOMB_X109_Y16_N18
\displ|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Add0~8_combout\ = ((\displ|Mux1~1_combout\ $ (\displ|s_inc~q\ $ (\displ|Add0~7\)))) # (GND)
-- \displ|Add0~9\ = CARRY((\displ|Mux1~1_combout\ & ((!\displ|Add0~7\) # (!\displ|s_inc~q\))) # (!\displ|Mux1~1_combout\ & (!\displ|s_inc~q\ & !\displ|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux1~1_combout\,
	datab => \displ|s_inc~q\,
	datad => VCC,
	cin => \displ|Add0~7\,
	combout => \displ|Add0~8_combout\,
	cout => \displ|Add0~9\);

-- Location: LCCOMB_X110_Y16_N16
\displ|s_addrCounters~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~15_combout\ = (\displ|Decoder0~3_combout\ & ((\displ|Add0~8_combout\))) # (!\displ|Decoder0~3_combout\ & (\displ|s_addrCounters[3][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Decoder0~3_combout\,
	datac => \displ|s_addrCounters[3][4]~q\,
	datad => \displ|Add0~8_combout\,
	combout => \displ|s_addrCounters~15_combout\);

-- Location: FF_X110_Y16_N17
\displ|s_addrCounters[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[3][4]~q\);

-- Location: LCCOMB_X110_Y16_N24
\displ|s_addrCounters~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~1_combout\ = (\displ|Decoder0~1_combout\ & ((\displ|Add0~8_combout\))) # (!\displ|Decoder0~1_combout\ & (\displ|s_addrCounters[1][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Decoder0~1_combout\,
	datac => \displ|s_addrCounters[1][4]~q\,
	datad => \displ|Add0~8_combout\,
	combout => \displ|s_addrCounters~1_combout\);

-- Location: FF_X110_Y16_N25
\displ|s_addrCounters[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[1][4]~q\);

-- Location: LCCOMB_X110_Y16_N2
\displ|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux39~0_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\displ|s_addrCounters[3][4]~q\)) # (!\SW[1]~input_o\ & ((\displ|s_addrCounters[1][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \displ|s_addrCounters[3][4]~q\,
	datac => \SW[0]~input_o\,
	datad => \displ|s_addrCounters[1][4]~q\,
	combout => \displ|Mux39~0_combout\);

-- Location: LCCOMB_X110_Y16_N18
\displ|s_addrCounters~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~13_combout\ = (\displ|Decoder0~2_combout\ & ((\displ|Add0~8_combout\))) # (!\displ|Decoder0~2_combout\ & (\displ|s_addrCounters[2][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Decoder0~2_combout\,
	datac => \displ|s_addrCounters[2][4]~q\,
	datad => \displ|Add0~8_combout\,
	combout => \displ|s_addrCounters~13_combout\);

-- Location: FF_X110_Y16_N19
\displ|s_addrCounters[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[2][4]~q\);

-- Location: FF_X109_Y16_N19
\displ|s_addrCounters[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|Add0~8_combout\,
	ena => \displ|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[0][4]~q\);

-- Location: LCCOMB_X106_Y15_N26
\displ|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux1~0_combout\ = (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\displ|s_addrCounters[2][4]~q\)) # (!\SW[1]~input_o\ & ((\displ|s_addrCounters[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \displ|s_addrCounters[2][4]~q\,
	datac => \displ|s_addrCounters[0][4]~q\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux1~0_combout\);

-- Location: LCCOMB_X106_Y15_N20
\displ|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux1~1_combout\ = (\displ|Mux39~0_combout\) # (\displ|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux39~0_combout\,
	datac => \displ|Mux1~0_combout\,
	combout => \displ|Mux1~1_combout\);

-- Location: LCCOMB_X109_Y16_N20
\displ|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Add0~10_combout\ = \displ|Mux0~1_combout\ $ (\displ|Add0~9\ $ (!\displ|s_inc~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux0~1_combout\,
	datad => \displ|s_inc~q\,
	cin => \displ|Add0~9\,
	combout => \displ|Add0~10_combout\);

-- Location: LCCOMB_X110_Y16_N26
\displ|s_addrCounters~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~2_combout\ = (\displ|Decoder0~1_combout\ & ((\displ|Add0~10_combout\))) # (!\displ|Decoder0~1_combout\ & (\displ|s_addrCounters[1][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Decoder0~1_combout\,
	datac => \displ|s_addrCounters[1][5]~q\,
	datad => \displ|Add0~10_combout\,
	combout => \displ|s_addrCounters~2_combout\);

-- Location: FF_X110_Y16_N27
\displ|s_addrCounters[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[1][5]~q\);

-- Location: LCCOMB_X107_Y19_N24
\instrution_memory|Mux29~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux29~6_combout\ = (!\displ|s_addrCounters[1][5]~q\ & (!\displ|s_addrCounters[1][1]~q\ & !\displ|s_addrCounters[1][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[1][5]~q\,
	datac => \displ|s_addrCounters[1][1]~q\,
	datad => \displ|s_addrCounters[1][4]~q\,
	combout => \instrution_memory|Mux29~6_combout\);

-- Location: LCCOMB_X108_Y16_N12
\instrution_memory|Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux48~0_combout\ = (\instrution_memory|Mux29~6_combout\ & (\displ|s_addrCounters[1][3]~q\ $ (((\displ|s_addrCounters[1][2]~q\ & !\displ|s_addrCounters[1][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrution_memory|Mux29~6_combout\,
	datab => \displ|s_addrCounters[1][2]~q\,
	datac => \displ|s_addrCounters[1][0]~q\,
	datad => \displ|s_addrCounters[1][3]~q\,
	combout => \instrution_memory|Mux48~0_combout\);

-- Location: LCCOMB_X107_Y16_N20
\displ|Mux37~1GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux37~1GND_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \displ|Mux37~1GND_combout\);

-- Location: LCCOMB_X107_Y16_N8
\displ|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux37~0_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # (\displ|Mux37~1GND_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datad => \displ|Mux37~1GND_combout\,
	combout => \displ|Mux37~0_combout\);

-- Location: LCCOMB_X108_Y16_N14
\displ|Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux37~1_combout\ = (\displ|Mux37~0_combout\ & (((\displ|Mux37~1GND_combout\) # (!\SW[0]~input_o\)))) # (!\displ|Mux37~0_combout\ & (\instrution_memory|Mux48~0_combout\ & ((\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrution_memory|Mux48~0_combout\,
	datab => \displ|Mux37~1GND_combout\,
	datac => \displ|Mux37~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux37~1_combout\);

-- Location: LCCOMB_X107_Y19_N26
\instrution_memory|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux31~0_combout\ = (!\displ|s_addrCounters[1][1]~q\ & (!\displ|s_addrCounters[1][4]~q\ & (!\displ|s_addrCounters[1][5]~q\ & \displ|s_addrCounters[1][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[1][1]~q\,
	datab => \displ|s_addrCounters[1][4]~q\,
	datac => \displ|s_addrCounters[1][5]~q\,
	datad => \displ|s_addrCounters[1][2]~q\,
	combout => \instrution_memory|Mux31~0_combout\);

-- Location: LCCOMB_X106_Y18_N16
\instrution_memory|Mux29~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux29~8_combout\ = (!\displ|s_addrCounters[1][2]~q\ & (\displ|s_addrCounters[1][1]~q\ & (!\displ|s_addrCounters[1][4]~q\ & !\displ|s_addrCounters[1][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[1][2]~q\,
	datab => \displ|s_addrCounters[1][1]~q\,
	datac => \displ|s_addrCounters[1][4]~q\,
	datad => \displ|s_addrCounters[1][5]~q\,
	combout => \instrution_memory|Mux29~8_combout\);

-- Location: LCCOMB_X106_Y18_N2
\instrution_memory|Mux29~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux29~9_combout\ = (\displ|s_addrCounters[1][0]~q\ & ((\instrution_memory|Mux29~8_combout\))) # (!\displ|s_addrCounters[1][0]~q\ & (\instrution_memory|Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrution_memory|Mux31~0_combout\,
	datab => \instrution_memory|Mux29~8_combout\,
	datac => \displ|s_addrCounters[1][0]~q\,
	combout => \instrution_memory|Mux29~9_combout\);

-- Location: LCCOMB_X2_Y36_N10
\debouncer|s_debounceCnt[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|s_debounceCnt[0]~23_combout\ = \debouncer|s_debounceCnt\(0) $ (VCC)
-- \debouncer|s_debounceCnt[0]~24\ = CARRY(\debouncer|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer|s_debounceCnt\(0),
	datad => VCC,
	combout => \debouncer|s_debounceCnt[0]~23_combout\,
	cout => \debouncer|s_debounceCnt[0]~24\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X1_Y36_N30
\debouncer|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|s_dirtyIn~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	combout => \debouncer|s_dirtyIn~0_combout\);

-- Location: FF_X1_Y36_N31
\debouncer|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer|s_dirtyIn~q\);

-- Location: LCCOMB_X2_Y35_N24
\debouncer|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|Equal0~0_combout\ = (!\debouncer|s_debounceCnt\(16) & (!\debouncer|s_debounceCnt\(20) & (!\debouncer|s_debounceCnt\(15) & !\debouncer|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer|s_debounceCnt\(16),
	datab => \debouncer|s_debounceCnt\(20),
	datac => \debouncer|s_debounceCnt\(15),
	datad => \debouncer|s_debounceCnt\(21),
	combout => \debouncer|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y35_N26
\debouncer|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|Equal0~1_combout\ = (!\debouncer|s_debounceCnt\(17) & (\debouncer|Equal0~0_combout\ & (!\debouncer|s_debounceCnt\(13) & !\debouncer|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer|s_debounceCnt\(17),
	datab => \debouncer|Equal0~0_combout\,
	datac => \debouncer|s_debounceCnt\(13),
	datad => \debouncer|s_debounceCnt\(12),
	combout => \debouncer|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y36_N6
\debouncer|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|Equal0~8_combout\ = (\debouncer|s_debounceCnt\(8) & \debouncer|s_debounceCnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer|s_debounceCnt\(8),
	datad => \debouncer|s_debounceCnt\(9),
	combout => \debouncer|Equal0~8_combout\);

-- Location: LCCOMB_X2_Y36_N2
\debouncer|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|Equal0~3_combout\ = (!\debouncer|s_debounceCnt\(0) & (!\debouncer|s_debounceCnt\(3) & (!\debouncer|s_debounceCnt\(2) & !\debouncer|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer|s_debounceCnt\(0),
	datab => \debouncer|s_debounceCnt\(3),
	datac => \debouncer|s_debounceCnt\(2),
	datad => \debouncer|s_debounceCnt\(1),
	combout => \debouncer|Equal0~3_combout\);

-- Location: LCCOMB_X2_Y36_N4
\debouncer|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|Equal0~4_combout\ = (!\debouncer|s_debounceCnt\(5) & (\debouncer|Equal0~3_combout\ & !\debouncer|s_debounceCnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer|s_debounceCnt\(5),
	datac => \debouncer|Equal0~3_combout\,
	datad => \debouncer|s_debounceCnt\(4),
	combout => \debouncer|Equal0~4_combout\);

-- Location: LCCOMB_X2_Y36_N8
\debouncer|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|LessThan0~0_combout\ = ((!\debouncer|s_debounceCnt\(7) & ((\debouncer|Equal0~4_combout\) # (!\debouncer|s_debounceCnt\(6))))) # (!\debouncer|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer|s_debounceCnt\(6),
	datab => \debouncer|Equal0~8_combout\,
	datac => \debouncer|Equal0~4_combout\,
	datad => \debouncer|s_debounceCnt\(7),
	combout => \debouncer|LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y36_N10
\debouncer|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|LessThan0~1_combout\ = (\debouncer|Equal0~1_combout\ & (((!\debouncer|s_debounceCnt\(10) & \debouncer|LessThan0~0_combout\)) # (!\debouncer|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer|s_debounceCnt\(11),
	datab => \debouncer|Equal0~1_combout\,
	datac => \debouncer|s_debounceCnt\(10),
	datad => \debouncer|LessThan0~0_combout\,
	combout => \debouncer|LessThan0~1_combout\);

-- Location: LCCOMB_X2_Y35_N28
\debouncer|s_debounceCnt[1]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|s_debounceCnt[1]~65_combout\ = (\debouncer|s_debounceCnt\(20)) # ((\debouncer|s_debounceCnt\(21)) # ((\debouncer|s_debounceCnt\(19) & \debouncer|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer|s_debounceCnt\(19),
	datab => \debouncer|s_debounceCnt\(20),
	datac => \debouncer|s_debounceCnt\(18),
	datad => \debouncer|s_debounceCnt\(21),
	combout => \debouncer|s_debounceCnt[1]~65_combout\);

-- Location: LCCOMB_X2_Y35_N30
\debouncer|s_debounceCnt[1]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|s_debounceCnt[1]~66_combout\ = (\debouncer|s_debounceCnt[1]~65_combout\ & ((\debouncer|s_debounceCnt\(17)) # ((\debouncer|s_debounceCnt\(14)) # (!\debouncer|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer|s_debounceCnt\(17),
	datab => \debouncer|s_debounceCnt[1]~65_combout\,
	datac => \debouncer|Equal0~0_combout\,
	datad => \debouncer|s_debounceCnt\(14),
	combout => \debouncer|s_debounceCnt[1]~66_combout\);

-- Location: LCCOMB_X1_Y36_N18
\debouncer|s_debounceCnt[1]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|s_debounceCnt[1]~67_combout\ = (\debouncer|LessThan0~1_combout\) # (((!\debouncer|s_debounceCnt\(22)) # (!\debouncer|s_debounceCnt[1]~66_combout\)) # (!\debouncer|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer|LessThan0~1_combout\,
	datab => \debouncer|s_dirtyIn~q\,
	datac => \debouncer|s_debounceCnt[1]~66_combout\,
	datad => \debouncer|s_debounceCnt\(22),
	combout => \debouncer|s_debounceCnt[1]~67_combout\);

-- Location: FF_X2_Y36_N11
\debouncer|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer|s_debounceCnt[0]~23_combout\,
	sclr => \debouncer|ALT_INV_s_dirtyIn~q\,
	ena => \debouncer|s_debounceCnt[1]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer|s_debounceCnt\(0));

-- Location: LCCOMB_X2_Y36_N12
\debouncer|s_debounceCnt[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|s_debounceCnt[1]~25_combout\ = (\debouncer|s_debounceCnt\(1) & (!\debouncer|s_debounceCnt[0]~24\)) # (!\debouncer|s_debounceCnt\(1) & ((\debouncer|s_debounceCnt[0]~24\) # (GND)))
-- \debouncer|s_debounceCnt[1]~26\ = CARRY((!\debouncer|s_debounceCnt[0]~24\) # (!\debouncer|s_debounceCnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer|s_debounceCnt\(1),
	datad => VCC,
	cin => \debouncer|s_debounceCnt[0]~24\,
	combout => \debouncer|s_debounceCnt[1]~25_combout\,
	cout => \debouncer|s_debounceCnt[1]~26\);

-- Location: FF_X2_Y36_N13
\debouncer|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer|s_debounceCnt[1]~25_combout\,
	sclr => \debouncer|ALT_INV_s_dirtyIn~q\,
	ena => \debouncer|s_debounceCnt[1]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer|s_debounceCnt\(1));

-- Location: LCCOMB_X2_Y36_N14
\debouncer|s_debounceCnt[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|s_debounceCnt[2]~27_combout\ = (\debouncer|s_debounceCnt\(2) & (\debouncer|s_debounceCnt[1]~26\ $ (GND))) # (!\debouncer|s_debounceCnt\(2) & (!\debouncer|s_debounceCnt[1]~26\ & VCC))
-- \debouncer|s_debounceCnt[2]~28\ = CARRY((\debouncer|s_debounceCnt\(2) & !\debouncer|s_debounceCnt[1]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer|s_debounceCnt\(2),
	datad => VCC,
	cin => \debouncer|s_debounceCnt[1]~26\,
	combout => \debouncer|s_debounceCnt[2]~27_combout\,
	cout => \debouncer|s_debounceCnt[2]~28\);

-- Location: FF_X2_Y36_N15
\debouncer|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer|s_debounceCnt[2]~27_combout\,
	sclr => \debouncer|ALT_INV_s_dirtyIn~q\,
	ena => \debouncer|s_debounceCnt[1]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer|s_debounceCnt\(2));

-- Location: LCCOMB_X2_Y36_N16
\debouncer|s_debounceCnt[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|s_debounceCnt[3]~29_combout\ = (\debouncer|s_debounceCnt\(3) & (!\debouncer|s_debounceCnt[2]~28\)) # (!\debouncer|s_debounceCnt\(3) & ((\debouncer|s_debounceCnt[2]~28\) # (GND)))
-- \debouncer|s_debounceCnt[3]~30\ = CARRY((!\debouncer|s_debounceCnt[2]~28\) # (!\debouncer|s_debounceCnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer|s_debounceCnt\(3),
	datad => VCC,
	cin => \debouncer|s_debounceCnt[2]~28\,
	combout => \debouncer|s_debounceCnt[3]~29_combout\,
	cout => \debouncer|s_debounceCnt[3]~30\);

-- Location: FF_X2_Y36_N17
\debouncer|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer|s_debounceCnt[3]~29_combout\,
	sclr => \debouncer|ALT_INV_s_dirtyIn~q\,
	ena => \debouncer|s_debounceCnt[1]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer|s_debounceCnt\(3));

-- Location: LCCOMB_X2_Y36_N18
\debouncer|s_debounceCnt[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|s_debounceCnt[4]~31_combout\ = (\debouncer|s_debounceCnt\(4) & (\debouncer|s_debounceCnt[3]~30\ $ (GND))) # (!\debouncer|s_debounceCnt\(4) & (!\debouncer|s_debounceCnt[3]~30\ & VCC))
-- \debouncer|s_debounceCnt[4]~32\ = CARRY((\debouncer|s_debounceCnt\(4) & !\debouncer|s_debounceCnt[3]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer|s_debounceCnt\(4),
	datad => VCC,
	cin => \debouncer|s_debounceCnt[3]~30\,
	combout => \debouncer|s_debounceCnt[4]~31_combout\,
	cout => \debouncer|s_debounceCnt[4]~32\);

-- Location: FF_X2_Y36_N19
\debouncer|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer|s_debounceCnt[4]~31_combout\,
	sclr => \debouncer|ALT_INV_s_dirtyIn~q\,
	ena => \debouncer|s_debounceCnt[1]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer|s_debounceCnt\(4));

-- Location: LCCOMB_X2_Y36_N20
\debouncer|s_debounceCnt[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|s_debounceCnt[5]~33_combout\ = (\debouncer|s_debounceCnt\(5) & (!\debouncer|s_debounceCnt[4]~32\)) # (!\debouncer|s_debounceCnt\(5) & ((\debouncer|s_debounceCnt[4]~32\) # (GND)))
-- \debouncer|s_debounceCnt[5]~34\ = CARRY((!\debouncer|s_debounceCnt[4]~32\) # (!\debouncer|s_debounceCnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer|s_debounceCnt\(5),
	datad => VCC,
	cin => \debouncer|s_debounceCnt[4]~32\,
	combout => \debouncer|s_debounceCnt[5]~33_combout\,
	cout => \debouncer|s_debounceCnt[5]~34\);

-- Location: FF_X2_Y36_N21
\debouncer|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer|s_debounceCnt[5]~33_combout\,
	sclr => \debouncer|ALT_INV_s_dirtyIn~q\,
	ena => \debouncer|s_debounceCnt[1]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer|s_debounceCnt\(5));

-- Location: LCCOMB_X2_Y36_N22
\debouncer|s_debounceCnt[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|s_debounceCnt[6]~35_combout\ = (\debouncer|s_debounceCnt\(6) & (\debouncer|s_debounceCnt[5]~34\ $ (GND))) # (!\debouncer|s_debounceCnt\(6) & (!\debouncer|s_debounceCnt[5]~34\ & VCC))
-- \debouncer|s_debounceCnt[6]~36\ = CARRY((\debouncer|s_debounceCnt\(6) & !\debouncer|s_debounceCnt[5]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer|s_debounceCnt\(6),
	datad => VCC,
	cin => \debouncer|s_debounceCnt[5]~34\,
	combout => \debouncer|s_debounceCnt[6]~35_combout\,
	cout => \debouncer|s_debounceCnt[6]~36\);

-- Location: FF_X2_Y36_N23
\debouncer|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer|s_debounceCnt[6]~35_combout\,
	sclr => \debouncer|ALT_INV_s_dirtyIn~q\,
	ena => \debouncer|s_debounceCnt[1]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer|s_debounceCnt\(6));

-- Location: LCCOMB_X2_Y36_N24
\debouncer|s_debounceCnt[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|s_debounceCnt[7]~37_combout\ = (\debouncer|s_debounceCnt\(7) & (!\debouncer|s_debounceCnt[6]~36\)) # (!\debouncer|s_debounceCnt\(7) & ((\debouncer|s_debounceCnt[6]~36\) # (GND)))
-- \debouncer|s_debounceCnt[7]~38\ = CARRY((!\debouncer|s_debounceCnt[6]~36\) # (!\debouncer|s_debounceCnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer|s_debounceCnt\(7),
	datad => VCC,
	cin => \debouncer|s_debounceCnt[6]~36\,
	combout => \debouncer|s_debounceCnt[7]~37_combout\,
	cout => \debouncer|s_debounceCnt[7]~38\);

-- Location: FF_X2_Y36_N25
\debouncer|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer|s_debounceCnt[7]~37_combout\,
	sclr => \debouncer|ALT_INV_s_dirtyIn~q\,
	ena => \debouncer|s_debounceCnt[1]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer|s_debounceCnt\(7));

-- Location: LCCOMB_X2_Y36_N26
\debouncer|s_debounceCnt[8]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|s_debounceCnt[8]~39_combout\ = (\debouncer|s_debounceCnt\(8) & (\debouncer|s_debounceCnt[7]~38\ $ (GND))) # (!\debouncer|s_debounceCnt\(8) & (!\debouncer|s_debounceCnt[7]~38\ & VCC))
-- \debouncer|s_debounceCnt[8]~40\ = CARRY((\debouncer|s_debounceCnt\(8) & !\debouncer|s_debounceCnt[7]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer|s_debounceCnt\(8),
	datad => VCC,
	cin => \debouncer|s_debounceCnt[7]~38\,
	combout => \debouncer|s_debounceCnt[8]~39_combout\,
	cout => \debouncer|s_debounceCnt[8]~40\);

-- Location: FF_X2_Y36_N27
\debouncer|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer|s_debounceCnt[8]~39_combout\,
	sclr => \debouncer|ALT_INV_s_dirtyIn~q\,
	ena => \debouncer|s_debounceCnt[1]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer|s_debounceCnt\(8));

-- Location: LCCOMB_X2_Y36_N28
\debouncer|s_debounceCnt[9]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|s_debounceCnt[9]~41_combout\ = (\debouncer|s_debounceCnt\(9) & (!\debouncer|s_debounceCnt[8]~40\)) # (!\debouncer|s_debounceCnt\(9) & ((\debouncer|s_debounceCnt[8]~40\) # (GND)))
-- \debouncer|s_debounceCnt[9]~42\ = CARRY((!\debouncer|s_debounceCnt[8]~40\) # (!\debouncer|s_debounceCnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer|s_debounceCnt\(9),
	datad => VCC,
	cin => \debouncer|s_debounceCnt[8]~40\,
	combout => \debouncer|s_debounceCnt[9]~41_combout\,
	cout => \debouncer|s_debounceCnt[9]~42\);

-- Location: FF_X2_Y36_N29
\debouncer|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer|s_debounceCnt[9]~41_combout\,
	sclr => \debouncer|ALT_INV_s_dirtyIn~q\,
	ena => \debouncer|s_debounceCnt[1]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer|s_debounceCnt\(9));

-- Location: LCCOMB_X2_Y36_N30
\debouncer|s_debounceCnt[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|s_debounceCnt[10]~43_combout\ = (\debouncer|s_debounceCnt\(10) & (\debouncer|s_debounceCnt[9]~42\ $ (GND))) # (!\debouncer|s_debounceCnt\(10) & (!\debouncer|s_debounceCnt[9]~42\ & VCC))
-- \debouncer|s_debounceCnt[10]~44\ = CARRY((\debouncer|s_debounceCnt\(10) & !\debouncer|s_debounceCnt[9]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer|s_debounceCnt\(10),
	datad => VCC,
	cin => \debouncer|s_debounceCnt[9]~42\,
	combout => \debouncer|s_debounceCnt[10]~43_combout\,
	cout => \debouncer|s_debounceCnt[10]~44\);

-- Location: FF_X2_Y36_N31
\debouncer|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer|s_debounceCnt[10]~43_combout\,
	sclr => \debouncer|ALT_INV_s_dirtyIn~q\,
	ena => \debouncer|s_debounceCnt[1]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer|s_debounceCnt\(10));

-- Location: LCCOMB_X2_Y35_N0
\debouncer|s_debounceCnt[11]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|s_debounceCnt[11]~45_combout\ = (\debouncer|s_debounceCnt\(11) & (!\debouncer|s_debounceCnt[10]~44\)) # (!\debouncer|s_debounceCnt\(11) & ((\debouncer|s_debounceCnt[10]~44\) # (GND)))
-- \debouncer|s_debounceCnt[11]~46\ = CARRY((!\debouncer|s_debounceCnt[10]~44\) # (!\debouncer|s_debounceCnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer|s_debounceCnt\(11),
	datad => VCC,
	cin => \debouncer|s_debounceCnt[10]~44\,
	combout => \debouncer|s_debounceCnt[11]~45_combout\,
	cout => \debouncer|s_debounceCnt[11]~46\);

-- Location: FF_X2_Y35_N1
\debouncer|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer|s_debounceCnt[11]~45_combout\,
	sclr => \debouncer|ALT_INV_s_dirtyIn~q\,
	ena => \debouncer|s_debounceCnt[1]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer|s_debounceCnt\(11));

-- Location: LCCOMB_X2_Y35_N2
\debouncer|s_debounceCnt[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|s_debounceCnt[12]~47_combout\ = (\debouncer|s_debounceCnt\(12) & (\debouncer|s_debounceCnt[11]~46\ $ (GND))) # (!\debouncer|s_debounceCnt\(12) & (!\debouncer|s_debounceCnt[11]~46\ & VCC))
-- \debouncer|s_debounceCnt[12]~48\ = CARRY((\debouncer|s_debounceCnt\(12) & !\debouncer|s_debounceCnt[11]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer|s_debounceCnt\(12),
	datad => VCC,
	cin => \debouncer|s_debounceCnt[11]~46\,
	combout => \debouncer|s_debounceCnt[12]~47_combout\,
	cout => \debouncer|s_debounceCnt[12]~48\);

-- Location: FF_X2_Y35_N3
\debouncer|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer|s_debounceCnt[12]~47_combout\,
	sclr => \debouncer|ALT_INV_s_dirtyIn~q\,
	ena => \debouncer|s_debounceCnt[1]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer|s_debounceCnt\(12));

-- Location: LCCOMB_X2_Y35_N4
\debouncer|s_debounceCnt[13]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|s_debounceCnt[13]~49_combout\ = (\debouncer|s_debounceCnt\(13) & (!\debouncer|s_debounceCnt[12]~48\)) # (!\debouncer|s_debounceCnt\(13) & ((\debouncer|s_debounceCnt[12]~48\) # (GND)))
-- \debouncer|s_debounceCnt[13]~50\ = CARRY((!\debouncer|s_debounceCnt[12]~48\) # (!\debouncer|s_debounceCnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer|s_debounceCnt\(13),
	datad => VCC,
	cin => \debouncer|s_debounceCnt[12]~48\,
	combout => \debouncer|s_debounceCnt[13]~49_combout\,
	cout => \debouncer|s_debounceCnt[13]~50\);

-- Location: FF_X2_Y35_N5
\debouncer|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer|s_debounceCnt[13]~49_combout\,
	sclr => \debouncer|ALT_INV_s_dirtyIn~q\,
	ena => \debouncer|s_debounceCnt[1]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer|s_debounceCnt\(13));

-- Location: LCCOMB_X2_Y35_N6
\debouncer|s_debounceCnt[14]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|s_debounceCnt[14]~51_combout\ = (\debouncer|s_debounceCnt\(14) & (\debouncer|s_debounceCnt[13]~50\ $ (GND))) # (!\debouncer|s_debounceCnt\(14) & (!\debouncer|s_debounceCnt[13]~50\ & VCC))
-- \debouncer|s_debounceCnt[14]~52\ = CARRY((\debouncer|s_debounceCnt\(14) & !\debouncer|s_debounceCnt[13]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer|s_debounceCnt\(14),
	datad => VCC,
	cin => \debouncer|s_debounceCnt[13]~50\,
	combout => \debouncer|s_debounceCnt[14]~51_combout\,
	cout => \debouncer|s_debounceCnt[14]~52\);

-- Location: FF_X2_Y35_N7
\debouncer|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer|s_debounceCnt[14]~51_combout\,
	sclr => \debouncer|ALT_INV_s_dirtyIn~q\,
	ena => \debouncer|s_debounceCnt[1]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer|s_debounceCnt\(14));

-- Location: LCCOMB_X2_Y35_N8
\debouncer|s_debounceCnt[15]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|s_debounceCnt[15]~53_combout\ = (\debouncer|s_debounceCnt\(15) & (!\debouncer|s_debounceCnt[14]~52\)) # (!\debouncer|s_debounceCnt\(15) & ((\debouncer|s_debounceCnt[14]~52\) # (GND)))
-- \debouncer|s_debounceCnt[15]~54\ = CARRY((!\debouncer|s_debounceCnt[14]~52\) # (!\debouncer|s_debounceCnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer|s_debounceCnt\(15),
	datad => VCC,
	cin => \debouncer|s_debounceCnt[14]~52\,
	combout => \debouncer|s_debounceCnt[15]~53_combout\,
	cout => \debouncer|s_debounceCnt[15]~54\);

-- Location: FF_X2_Y35_N9
\debouncer|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer|s_debounceCnt[15]~53_combout\,
	sclr => \debouncer|ALT_INV_s_dirtyIn~q\,
	ena => \debouncer|s_debounceCnt[1]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer|s_debounceCnt\(15));

-- Location: LCCOMB_X2_Y35_N10
\debouncer|s_debounceCnt[16]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|s_debounceCnt[16]~55_combout\ = (\debouncer|s_debounceCnt\(16) & (\debouncer|s_debounceCnt[15]~54\ $ (GND))) # (!\debouncer|s_debounceCnt\(16) & (!\debouncer|s_debounceCnt[15]~54\ & VCC))
-- \debouncer|s_debounceCnt[16]~56\ = CARRY((\debouncer|s_debounceCnt\(16) & !\debouncer|s_debounceCnt[15]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer|s_debounceCnt\(16),
	datad => VCC,
	cin => \debouncer|s_debounceCnt[15]~54\,
	combout => \debouncer|s_debounceCnt[16]~55_combout\,
	cout => \debouncer|s_debounceCnt[16]~56\);

-- Location: FF_X2_Y35_N11
\debouncer|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer|s_debounceCnt[16]~55_combout\,
	sclr => \debouncer|ALT_INV_s_dirtyIn~q\,
	ena => \debouncer|s_debounceCnt[1]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer|s_debounceCnt\(16));

-- Location: LCCOMB_X2_Y35_N12
\debouncer|s_debounceCnt[17]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|s_debounceCnt[17]~57_combout\ = (\debouncer|s_debounceCnt\(17) & (!\debouncer|s_debounceCnt[16]~56\)) # (!\debouncer|s_debounceCnt\(17) & ((\debouncer|s_debounceCnt[16]~56\) # (GND)))
-- \debouncer|s_debounceCnt[17]~58\ = CARRY((!\debouncer|s_debounceCnt[16]~56\) # (!\debouncer|s_debounceCnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer|s_debounceCnt\(17),
	datad => VCC,
	cin => \debouncer|s_debounceCnt[16]~56\,
	combout => \debouncer|s_debounceCnt[17]~57_combout\,
	cout => \debouncer|s_debounceCnt[17]~58\);

-- Location: FF_X2_Y35_N13
\debouncer|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer|s_debounceCnt[17]~57_combout\,
	sclr => \debouncer|ALT_INV_s_dirtyIn~q\,
	ena => \debouncer|s_debounceCnt[1]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer|s_debounceCnt\(17));

-- Location: LCCOMB_X2_Y35_N14
\debouncer|s_debounceCnt[18]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|s_debounceCnt[18]~59_combout\ = (\debouncer|s_debounceCnt\(18) & (\debouncer|s_debounceCnt[17]~58\ $ (GND))) # (!\debouncer|s_debounceCnt\(18) & (!\debouncer|s_debounceCnt[17]~58\ & VCC))
-- \debouncer|s_debounceCnt[18]~60\ = CARRY((\debouncer|s_debounceCnt\(18) & !\debouncer|s_debounceCnt[17]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer|s_debounceCnt\(18),
	datad => VCC,
	cin => \debouncer|s_debounceCnt[17]~58\,
	combout => \debouncer|s_debounceCnt[18]~59_combout\,
	cout => \debouncer|s_debounceCnt[18]~60\);

-- Location: FF_X2_Y35_N15
\debouncer|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer|s_debounceCnt[18]~59_combout\,
	sclr => \debouncer|ALT_INV_s_dirtyIn~q\,
	ena => \debouncer|s_debounceCnt[1]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer|s_debounceCnt\(18));

-- Location: LCCOMB_X2_Y35_N16
\debouncer|s_debounceCnt[19]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|s_debounceCnt[19]~61_combout\ = (\debouncer|s_debounceCnt\(19) & (!\debouncer|s_debounceCnt[18]~60\)) # (!\debouncer|s_debounceCnt\(19) & ((\debouncer|s_debounceCnt[18]~60\) # (GND)))
-- \debouncer|s_debounceCnt[19]~62\ = CARRY((!\debouncer|s_debounceCnt[18]~60\) # (!\debouncer|s_debounceCnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer|s_debounceCnt\(19),
	datad => VCC,
	cin => \debouncer|s_debounceCnt[18]~60\,
	combout => \debouncer|s_debounceCnt[19]~61_combout\,
	cout => \debouncer|s_debounceCnt[19]~62\);

-- Location: FF_X2_Y35_N17
\debouncer|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer|s_debounceCnt[19]~61_combout\,
	sclr => \debouncer|ALT_INV_s_dirtyIn~q\,
	ena => \debouncer|s_debounceCnt[1]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer|s_debounceCnt\(19));

-- Location: LCCOMB_X2_Y35_N18
\debouncer|s_debounceCnt[20]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|s_debounceCnt[20]~63_combout\ = (\debouncer|s_debounceCnt\(20) & (\debouncer|s_debounceCnt[19]~62\ $ (GND))) # (!\debouncer|s_debounceCnt\(20) & (!\debouncer|s_debounceCnt[19]~62\ & VCC))
-- \debouncer|s_debounceCnt[20]~64\ = CARRY((\debouncer|s_debounceCnt\(20) & !\debouncer|s_debounceCnt[19]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer|s_debounceCnt\(20),
	datad => VCC,
	cin => \debouncer|s_debounceCnt[19]~62\,
	combout => \debouncer|s_debounceCnt[20]~63_combout\,
	cout => \debouncer|s_debounceCnt[20]~64\);

-- Location: FF_X2_Y35_N19
\debouncer|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer|s_debounceCnt[20]~63_combout\,
	sclr => \debouncer|ALT_INV_s_dirtyIn~q\,
	ena => \debouncer|s_debounceCnt[1]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer|s_debounceCnt\(20));

-- Location: LCCOMB_X2_Y35_N20
\debouncer|s_debounceCnt[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|s_debounceCnt[21]~68_combout\ = (\debouncer|s_debounceCnt\(21) & (!\debouncer|s_debounceCnt[20]~64\)) # (!\debouncer|s_debounceCnt\(21) & ((\debouncer|s_debounceCnt[20]~64\) # (GND)))
-- \debouncer|s_debounceCnt[21]~69\ = CARRY((!\debouncer|s_debounceCnt[20]~64\) # (!\debouncer|s_debounceCnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer|s_debounceCnt\(21),
	datad => VCC,
	cin => \debouncer|s_debounceCnt[20]~64\,
	combout => \debouncer|s_debounceCnt[21]~68_combout\,
	cout => \debouncer|s_debounceCnt[21]~69\);

-- Location: FF_X2_Y35_N21
\debouncer|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer|s_debounceCnt[21]~68_combout\,
	sclr => \debouncer|ALT_INV_s_dirtyIn~q\,
	ena => \debouncer|s_debounceCnt[1]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer|s_debounceCnt\(21));

-- Location: LCCOMB_X2_Y35_N22
\debouncer|s_debounceCnt[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|s_debounceCnt[22]~70_combout\ = \debouncer|s_debounceCnt\(22) $ (!\debouncer|s_debounceCnt[21]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer|s_debounceCnt\(22),
	cin => \debouncer|s_debounceCnt[21]~69\,
	combout => \debouncer|s_debounceCnt[22]~70_combout\);

-- Location: FF_X2_Y35_N23
\debouncer|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer|s_debounceCnt[22]~70_combout\,
	sclr => \debouncer|ALT_INV_s_dirtyIn~q\,
	ena => \debouncer|s_debounceCnt[1]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer|s_debounceCnt\(22));

-- Location: LCCOMB_X1_Y36_N12
\debouncer|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|Equal0~5_combout\ = (\debouncer|s_debounceCnt\(11) & (\debouncer|s_debounceCnt\(18) & (!\debouncer|s_debounceCnt\(10) & \debouncer|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer|s_debounceCnt\(11),
	datab => \debouncer|s_debounceCnt\(18),
	datac => \debouncer|s_debounceCnt\(10),
	datad => \debouncer|s_debounceCnt\(14),
	combout => \debouncer|Equal0~5_combout\);

-- Location: LCCOMB_X1_Y36_N6
\debouncer|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|Equal0~6_combout\ = (\debouncer|s_debounceCnt\(22) & (\debouncer|s_debounceCnt\(19) & \debouncer|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer|s_debounceCnt\(22),
	datac => \debouncer|s_debounceCnt\(19),
	datad => \debouncer|Equal0~5_combout\,
	combout => \debouncer|Equal0~6_combout\);

-- Location: LCCOMB_X2_Y36_N0
\debouncer|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|Equal0~2_combout\ = (\debouncer|s_debounceCnt\(8) & (\debouncer|s_debounceCnt\(9) & (\debouncer|s_debounceCnt\(6) & !\debouncer|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer|s_debounceCnt\(8),
	datab => \debouncer|s_debounceCnt\(9),
	datac => \debouncer|s_debounceCnt\(6),
	datad => \debouncer|s_debounceCnt\(7),
	combout => \debouncer|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y36_N14
\debouncer|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer|Equal0~7_combout\ = (\debouncer|Equal0~6_combout\ & (\debouncer|Equal0~1_combout\ & (\debouncer|Equal0~2_combout\ & \debouncer|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer|Equal0~6_combout\,
	datab => \debouncer|Equal0~1_combout\,
	datac => \debouncer|Equal0~2_combout\,
	datad => \debouncer|Equal0~4_combout\,
	combout => \debouncer|Equal0~7_combout\);

-- Location: FF_X1_Y36_N15
\debouncer|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \debouncer|Equal0~7_combout\,
	sclr => \debouncer|ALT_INV_s_dirtyIn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer|s_pulsedOut~q\);

-- Location: CLKCTRL_G2
\debouncer|s_pulsedOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \debouncer|s_pulsedOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \debouncer|s_pulsedOut~clkctrl_outclk\);

-- Location: LCCOMB_X107_Y18_N2
\pcupdate|s_pc[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[2]~30_combout\ = \pcupdate|s_pc\(2) $ (VCC)
-- \pcupdate|s_pc[2]~31\ = CARRY(\pcupdate|s_pc\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pcupdate|s_pc\(2),
	datad => VCC,
	combout => \pcupdate|s_pc[2]~30_combout\,
	cout => \pcupdate|s_pc[2]~31\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: FF_X107_Y18_N3
\pcupdate|s_pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[2]~30_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(2));

-- Location: LCCOMB_X107_Y18_N4
\pcupdate|s_pc[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[3]~32_combout\ = (\pcupdate|s_pc\(3) & (!\pcupdate|s_pc[2]~31\)) # (!\pcupdate|s_pc\(3) & ((\pcupdate|s_pc[2]~31\) # (GND)))
-- \pcupdate|s_pc[3]~33\ = CARRY((!\pcupdate|s_pc[2]~31\) # (!\pcupdate|s_pc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdate|s_pc\(3),
	datad => VCC,
	cin => \pcupdate|s_pc[2]~31\,
	combout => \pcupdate|s_pc[3]~32_combout\,
	cout => \pcupdate|s_pc[3]~33\);

-- Location: FF_X107_Y18_N5
\pcupdate|s_pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[3]~32_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(3));

-- Location: LCCOMB_X106_Y18_N20
\displ|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux34~0_combout\ = (\SW[0]~input_o\ & ((\instrution_memory|Mux29~9_combout\) # ((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (((\pcupdate|s_pc\(3) & !\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \instrution_memory|Mux29~9_combout\,
	datac => \pcupdate|s_pc\(3),
	datad => \SW[1]~input_o\,
	combout => \displ|Mux34~0_combout\);

-- Location: LCCOMB_X110_Y18_N2
\displ|Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux34~1_combout\ = (\displ|Mux34~0_combout\ & (((\displ|Mux37~1GND_combout\) # (!\SW[1]~input_o\)))) # (!\displ|Mux34~0_combout\ & (\displ|Mux37~1GND_combout\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux34~0_combout\,
	datab => \displ|Mux37~1GND_combout\,
	datac => \displ|Mux37~1GND_combout\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux34~1_combout\);

-- Location: LCCOMB_X106_Y18_N6
\instrution_memory|Mux46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux46~3_combout\ = (\displ|s_addrCounters[1][0]~q\ & (\displ|s_addrCounters[1][1]~q\ $ (((\displ|s_addrCounters[1][3]~q\) # (!\displ|s_addrCounters[1][2]~q\))))) # (!\displ|s_addrCounters[1][0]~q\ & ((\displ|s_addrCounters[1][1]~q\ & 
-- (!\displ|s_addrCounters[1][2]~q\)) # (!\displ|s_addrCounters[1][1]~q\ & ((\displ|s_addrCounters[1][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[1][2]~q\,
	datab => \displ|s_addrCounters[1][0]~q\,
	datac => \displ|s_addrCounters[1][3]~q\,
	datad => \displ|s_addrCounters[1][1]~q\,
	combout => \instrution_memory|Mux46~3_combout\);

-- Location: LCCOMB_X110_Y18_N6
\instrution_memory|Mux46~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux46~6_combout\ = (!\displ|s_addrCounters[1][5]~q\ & (\instrution_memory|Mux46~3_combout\ & !\displ|s_addrCounters[1][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[1][5]~q\,
	datac => \instrution_memory|Mux46~3_combout\,
	datad => \displ|s_addrCounters[1][4]~q\,
	combout => \instrution_memory|Mux46~6_combout\);

-- Location: LCCOMB_X110_Y18_N30
\displ|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux35~0_combout\ = (\SW[1]~input_o\ & (((\displ|Mux37~1GND_combout\) # (\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (\pcupdate|s_pc\(2) & ((!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \pcupdate|s_pc\(2),
	datac => \displ|Mux37~1GND_combout\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux35~0_combout\);

-- Location: LCCOMB_X110_Y18_N8
\displ|Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux35~1_combout\ = (\displ|Mux35~0_combout\ & (((\displ|Mux37~1GND_combout\) # (!\SW[0]~input_o\)))) # (!\displ|Mux35~0_combout\ & (\instrution_memory|Mux46~6_combout\ & ((\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrution_memory|Mux46~6_combout\,
	datab => \displ|Mux35~0_combout\,
	datac => \displ|Mux37~1GND_combout\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux35~1_combout\);

-- Location: LCCOMB_X107_Y19_N2
\instrution_memory|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux28~0_combout\ = (!\displ|s_addrCounters[1][5]~q\ & !\displ|s_addrCounters[1][4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \displ|s_addrCounters[1][5]~q\,
	datad => \displ|s_addrCounters[1][4]~q\,
	combout => \instrution_memory|Mux28~0_combout\);

-- Location: LCCOMB_X107_Y19_N16
\instrution_memory|Mux29~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux29~7_combout\ = ((\displ|s_addrCounters[1][1]~q\ & ((\displ|s_addrCounters[1][2]~q\))) # (!\displ|s_addrCounters[1][1]~q\ & (!\displ|s_addrCounters[1][0]~q\ & !\displ|s_addrCounters[1][2]~q\))) # 
-- (!\instrution_memory|Mux28~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[1][1]~q\,
	datab => \instrution_memory|Mux28~0_combout\,
	datac => \displ|s_addrCounters[1][0]~q\,
	datad => \displ|s_addrCounters[1][2]~q\,
	combout => \instrution_memory|Mux29~7_combout\);

-- Location: LCCOMB_X110_Y18_N24
\instrution_memory|Mux47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux47~2_combout\ = (!\instrution_memory|Mux29~7_combout\ & \displ|s_addrCounters[1][3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrution_memory|Mux29~7_combout\,
	datad => \displ|s_addrCounters[1][3]~q\,
	combout => \instrution_memory|Mux47~2_combout\);

-- Location: LCCOMB_X107_Y19_N4
\instrution_memory|Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux47~0_combout\ = \displ|s_addrCounters[1][0]~q\ $ (\displ|s_addrCounters[1][2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \displ|s_addrCounters[1][0]~q\,
	datad => \displ|s_addrCounters[1][2]~q\,
	combout => \instrution_memory|Mux47~0_combout\);

-- Location: LCCOMB_X107_Y19_N30
\instrution_memory|Mux47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux47~1_combout\ = (\displ|s_addrCounters[1][1]~q\ & (\instrution_memory|Mux47~0_combout\ & (\instrution_memory|Mux28~0_combout\ & !\displ|s_addrCounters[1][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[1][1]~q\,
	datab => \instrution_memory|Mux47~0_combout\,
	datac => \instrution_memory|Mux28~0_combout\,
	datad => \displ|s_addrCounters[1][3]~q\,
	combout => \instrution_memory|Mux47~1_combout\);

-- Location: LCCOMB_X110_Y18_N18
\displ|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux36~0_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\instrution_memory|Mux47~2_combout\) # (\instrution_memory|Mux47~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \instrution_memory|Mux47~2_combout\,
	datac => \instrution_memory|Mux47~1_combout\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux36~0_combout\);

-- Location: LCCOMB_X110_Y18_N28
\displ|Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux36~1_combout\ = (\displ|Mux36~0_combout\ & (((\displ|Mux37~1GND_combout\) # (!\SW[1]~input_o\)))) # (!\displ|Mux36~0_combout\ & (\displ|Mux37~1GND_combout\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux36~0_combout\,
	datab => \displ|Mux37~1GND_combout\,
	datac => \displ|Mux37~1GND_combout\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux36~1_combout\);

-- Location: LCCOMB_X110_Y18_N4
\displ|Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux52~0_combout\ = (\displ|Mux34~1_combout\ & (\displ|Mux37~1_combout\ & (\displ|Mux35~1_combout\ $ (\displ|Mux36~1_combout\)))) # (!\displ|Mux34~1_combout\ & (!\displ|Mux36~1_combout\ & (\displ|Mux37~1_combout\ $ (\displ|Mux35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux37~1_combout\,
	datab => \displ|Mux34~1_combout\,
	datac => \displ|Mux35~1_combout\,
	datad => \displ|Mux36~1_combout\,
	combout => \displ|Mux52~0_combout\);

-- Location: LCCOMB_X110_Y18_N22
\displ|Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux51~0_combout\ = (\displ|Mux34~1_combout\ & ((\displ|Mux37~1_combout\ & ((\displ|Mux36~1_combout\))) # (!\displ|Mux37~1_combout\ & (\displ|Mux35~1_combout\)))) # (!\displ|Mux34~1_combout\ & (\displ|Mux35~1_combout\ & (\displ|Mux37~1_combout\ $ 
-- (\displ|Mux36~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux37~1_combout\,
	datab => \displ|Mux34~1_combout\,
	datac => \displ|Mux35~1_combout\,
	datad => \displ|Mux36~1_combout\,
	combout => \displ|Mux51~0_combout\);

-- Location: LCCOMB_X110_Y18_N0
\displ|Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux50~0_combout\ = (\displ|Mux34~1_combout\ & (\displ|Mux35~1_combout\ & ((\displ|Mux36~1_combout\) # (!\displ|Mux37~1_combout\)))) # (!\displ|Mux34~1_combout\ & (!\displ|Mux37~1_combout\ & (!\displ|Mux35~1_combout\ & \displ|Mux36~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux37~1_combout\,
	datab => \displ|Mux34~1_combout\,
	datac => \displ|Mux35~1_combout\,
	datad => \displ|Mux36~1_combout\,
	combout => \displ|Mux50~0_combout\);

-- Location: LCCOMB_X110_Y18_N10
\displ|Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux49~0_combout\ = (\displ|Mux36~1_combout\ & ((\displ|Mux37~1_combout\ & ((\displ|Mux35~1_combout\))) # (!\displ|Mux37~1_combout\ & (\displ|Mux34~1_combout\ & !\displ|Mux35~1_combout\)))) # (!\displ|Mux36~1_combout\ & (!\displ|Mux34~1_combout\ & 
-- (\displ|Mux37~1_combout\ $ (\displ|Mux35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux37~1_combout\,
	datab => \displ|Mux34~1_combout\,
	datac => \displ|Mux35~1_combout\,
	datad => \displ|Mux36~1_combout\,
	combout => \displ|Mux49~0_combout\);

-- Location: LCCOMB_X110_Y18_N12
\displ|Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux48~0_combout\ = (\displ|Mux36~1_combout\ & (\displ|Mux37~1_combout\ & (!\displ|Mux34~1_combout\))) # (!\displ|Mux36~1_combout\ & ((\displ|Mux35~1_combout\ & ((!\displ|Mux34~1_combout\))) # (!\displ|Mux35~1_combout\ & (\displ|Mux37~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux37~1_combout\,
	datab => \displ|Mux34~1_combout\,
	datac => \displ|Mux35~1_combout\,
	datad => \displ|Mux36~1_combout\,
	combout => \displ|Mux48~0_combout\);

-- Location: LCCOMB_X110_Y18_N14
\displ|Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux47~0_combout\ = (\displ|Mux37~1_combout\ & (\displ|Mux34~1_combout\ $ (((\displ|Mux36~1_combout\) # (!\displ|Mux35~1_combout\))))) # (!\displ|Mux37~1_combout\ & (!\displ|Mux34~1_combout\ & (!\displ|Mux35~1_combout\ & \displ|Mux36~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux37~1_combout\,
	datab => \displ|Mux34~1_combout\,
	datac => \displ|Mux35~1_combout\,
	datad => \displ|Mux36~1_combout\,
	combout => \displ|Mux47~0_combout\);

-- Location: LCCOMB_X110_Y18_N16
\displ|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux46~0_combout\ = (\displ|Mux37~1_combout\ & ((\displ|Mux34~1_combout\) # (\displ|Mux35~1_combout\ $ (\displ|Mux36~1_combout\)))) # (!\displ|Mux37~1_combout\ & ((\displ|Mux36~1_combout\) # (\displ|Mux34~1_combout\ $ (\displ|Mux35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux37~1_combout\,
	datab => \displ|Mux34~1_combout\,
	datac => \displ|Mux35~1_combout\,
	datad => \displ|Mux36~1_combout\,
	combout => \displ|Mux46~0_combout\);

-- Location: LCCOMB_X106_Y18_N12
\instrution_memory|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux38~0_combout\ = (\instrution_memory|Mux31~0_combout\ & ((\displ|s_addrCounters[1][3]~q\) # (!\displ|s_addrCounters[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrution_memory|Mux31~0_combout\,
	datab => \displ|s_addrCounters[1][0]~q\,
	datac => \displ|s_addrCounters[1][3]~q\,
	combout => \instrution_memory|Mux38~0_combout\);

-- Location: LCCOMB_X107_Y18_N6
\pcupdate|s_pc[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[4]~34_combout\ = (\pcupdate|s_pc\(4) & (\pcupdate|s_pc[3]~33\ $ (GND))) # (!\pcupdate|s_pc\(4) & (!\pcupdate|s_pc[3]~33\ & VCC))
-- \pcupdate|s_pc[4]~35\ = CARRY((\pcupdate|s_pc\(4) & !\pcupdate|s_pc[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(4),
	datad => VCC,
	cin => \pcupdate|s_pc[3]~33\,
	combout => \pcupdate|s_pc[4]~34_combout\,
	cout => \pcupdate|s_pc[4]~35\);

-- Location: FF_X107_Y18_N7
\pcupdate|s_pc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[4]~34_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(4));

-- Location: LCCOMB_X107_Y18_N8
\pcupdate|s_pc[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[5]~36_combout\ = (\pcupdate|s_pc\(5) & (!\pcupdate|s_pc[4]~35\)) # (!\pcupdate|s_pc\(5) & ((\pcupdate|s_pc[4]~35\) # (GND)))
-- \pcupdate|s_pc[5]~37\ = CARRY((!\pcupdate|s_pc[4]~35\) # (!\pcupdate|s_pc\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdate|s_pc\(5),
	datad => VCC,
	cin => \pcupdate|s_pc[4]~35\,
	combout => \pcupdate|s_pc[5]~36_combout\,
	cout => \pcupdate|s_pc[5]~37\);

-- Location: FF_X107_Y18_N9
\pcupdate|s_pc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[5]~36_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(5));

-- Location: LCCOMB_X107_Y18_N10
\pcupdate|s_pc[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[6]~38_combout\ = (\pcupdate|s_pc\(6) & (\pcupdate|s_pc[5]~37\ $ (GND))) # (!\pcupdate|s_pc\(6) & (!\pcupdate|s_pc[5]~37\ & VCC))
-- \pcupdate|s_pc[6]~39\ = CARRY((\pcupdate|s_pc\(6) & !\pcupdate|s_pc[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(6),
	datad => VCC,
	cin => \pcupdate|s_pc[5]~37\,
	combout => \pcupdate|s_pc[6]~38_combout\,
	cout => \pcupdate|s_pc[6]~39\);

-- Location: FF_X107_Y18_N11
\pcupdate|s_pc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[6]~38_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(6));

-- Location: LCCOMB_X107_Y18_N12
\pcupdate|s_pc[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[7]~40_combout\ = (\pcupdate|s_pc\(7) & (!\pcupdate|s_pc[6]~39\)) # (!\pcupdate|s_pc\(7) & ((\pcupdate|s_pc[6]~39\) # (GND)))
-- \pcupdate|s_pc[7]~41\ = CARRY((!\pcupdate|s_pc[6]~39\) # (!\pcupdate|s_pc\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(7),
	datad => VCC,
	cin => \pcupdate|s_pc[6]~39\,
	combout => \pcupdate|s_pc[7]~40_combout\,
	cout => \pcupdate|s_pc[7]~41\);

-- Location: FF_X107_Y18_N13
\pcupdate|s_pc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[7]~40_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(7));

-- Location: LCCOMB_X107_Y18_N0
\displ|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux30~0_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\instrution_memory|Mux38~0_combout\)) # (!\SW[0]~input_o\ & ((\pcupdate|s_pc\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrution_memory|Mux38~0_combout\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \pcupdate|s_pc\(7),
	combout => \displ|Mux30~0_combout\);

-- Location: LCCOMB_X108_Y19_N12
\displ|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux30~1_combout\ = (\displ|Mux30~0_combout\ & (((\displ|Mux37~1GND_combout\) # (!\SW[1]~input_o\)))) # (!\displ|Mux30~0_combout\ & (\displ|Mux37~1GND_combout\ & (\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux37~1GND_combout\,
	datab => \displ|Mux30~0_combout\,
	datac => \SW[1]~input_o\,
	datad => \displ|Mux37~1GND_combout\,
	combout => \displ|Mux30~1_combout\);

-- Location: LCCOMB_X106_Y18_N30
\displ|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux31~0_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\displ|Mux37~1GND_combout\)) # (!\SW[1]~input_o\ & ((\pcupdate|s_pc\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \displ|Mux37~1GND_combout\,
	datac => \pcupdate|s_pc\(6),
	datad => \SW[1]~input_o\,
	combout => \displ|Mux31~0_combout\);

-- Location: LCCOMB_X106_Y18_N0
\displ|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux31~1_combout\ = (\displ|Mux31~0_combout\ & (((\displ|Mux37~1GND_combout\) # (!\SW[0]~input_o\)))) # (!\displ|Mux31~0_combout\ & (\instrution_memory|Mux38~0_combout\ & ((\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrution_memory|Mux38~0_combout\,
	datab => \displ|Mux37~1GND_combout\,
	datac => \displ|Mux31~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux31~1_combout\);

-- Location: LCCOMB_X106_Y18_N8
\displ|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux33~0_combout\ = (\SW[1]~input_o\ & (((\displ|Mux37~1GND_combout\) # (\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (\pcupdate|s_pc\(4) & ((!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(4),
	datab => \SW[1]~input_o\,
	datac => \displ|Mux37~1GND_combout\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux33~0_combout\);

-- Location: LCCOMB_X106_Y18_N14
\instrution_memory|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux44~0_combout\ = (\displ|s_addrCounters[1][0]~q\ & (((!\displ|s_addrCounters[1][3]~q\ & \instrution_memory|Mux29~8_combout\)))) # (!\displ|s_addrCounters[1][0]~q\ & (\instrution_memory|Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrution_memory|Mux31~0_combout\,
	datab => \displ|s_addrCounters[1][0]~q\,
	datac => \displ|s_addrCounters[1][3]~q\,
	datad => \instrution_memory|Mux29~8_combout\,
	combout => \instrution_memory|Mux44~0_combout\);

-- Location: LCCOMB_X106_Y18_N10
\displ|Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux33~1_combout\ = (\displ|Mux33~0_combout\ & (((\displ|Mux37~1GND_combout\) # (!\SW[0]~input_o\)))) # (!\displ|Mux33~0_combout\ & (\instrution_memory|Mux44~0_combout\ & ((\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux33~0_combout\,
	datab => \instrution_memory|Mux44~0_combout\,
	datac => \displ|Mux37~1GND_combout\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux33~1_combout\);

-- Location: LCCOMB_X107_Y19_N20
\instrution_memory|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux43~0_combout\ = ((\displ|s_addrCounters[1][2]~q\ & (\displ|s_addrCounters[1][1]~q\ & \displ|s_addrCounters[1][3]~q\)) # (!\displ|s_addrCounters[1][2]~q\ & ((!\displ|s_addrCounters[1][3]~q\)))) # (!\instrution_memory|Mux28~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[1][2]~q\,
	datab => \instrution_memory|Mux28~0_combout\,
	datac => \displ|s_addrCounters[1][1]~q\,
	datad => \displ|s_addrCounters[1][3]~q\,
	combout => \instrution_memory|Mux43~0_combout\);

-- Location: LCCOMB_X108_Y19_N8
\displ|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux32~0_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((!\instrution_memory|Mux43~0_combout\))) # (!\SW[0]~input_o\ & (\pcupdate|s_pc\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(5),
	datab => \instrution_memory|Mux43~0_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux32~0_combout\);

-- Location: LCCOMB_X108_Y19_N18
\displ|Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux32~1_combout\ = (\SW[1]~input_o\ & ((\displ|Mux32~0_combout\ & ((\displ|Mux37~1GND_combout\))) # (!\displ|Mux32~0_combout\ & (\displ|Mux37~1GND_combout\)))) # (!\SW[1]~input_o\ & (((\displ|Mux32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux37~1GND_combout\,
	datab => \displ|Mux37~1GND_combout\,
	datac => \SW[1]~input_o\,
	datad => \displ|Mux32~0_combout\,
	combout => \displ|Mux32~1_combout\);

-- Location: LCCOMB_X108_Y19_N22
\displ|Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux59~0_combout\ = (\displ|Mux30~1_combout\ & (\displ|Mux33~1_combout\ & (\displ|Mux31~1_combout\ $ (\displ|Mux32~1_combout\)))) # (!\displ|Mux30~1_combout\ & (!\displ|Mux32~1_combout\ & (\displ|Mux31~1_combout\ $ (\displ|Mux33~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux30~1_combout\,
	datab => \displ|Mux31~1_combout\,
	datac => \displ|Mux33~1_combout\,
	datad => \displ|Mux32~1_combout\,
	combout => \displ|Mux59~0_combout\);

-- Location: LCCOMB_X108_Y19_N24
\displ|Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux58~0_combout\ = (\displ|Mux30~1_combout\ & ((\displ|Mux33~1_combout\ & ((\displ|Mux32~1_combout\))) # (!\displ|Mux33~1_combout\ & (\displ|Mux31~1_combout\)))) # (!\displ|Mux30~1_combout\ & (\displ|Mux31~1_combout\ & (\displ|Mux33~1_combout\ $ 
-- (\displ|Mux32~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux30~1_combout\,
	datab => \displ|Mux31~1_combout\,
	datac => \displ|Mux33~1_combout\,
	datad => \displ|Mux32~1_combout\,
	combout => \displ|Mux58~0_combout\);

-- Location: LCCOMB_X108_Y19_N10
\displ|Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux57~0_combout\ = (\displ|Mux30~1_combout\ & (\displ|Mux31~1_combout\ & ((\displ|Mux32~1_combout\) # (!\displ|Mux33~1_combout\)))) # (!\displ|Mux30~1_combout\ & (!\displ|Mux31~1_combout\ & (!\displ|Mux33~1_combout\ & \displ|Mux32~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux30~1_combout\,
	datab => \displ|Mux31~1_combout\,
	datac => \displ|Mux33~1_combout\,
	datad => \displ|Mux32~1_combout\,
	combout => \displ|Mux57~0_combout\);

-- Location: LCCOMB_X108_Y19_N20
\displ|Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux56~0_combout\ = (\displ|Mux32~1_combout\ & ((\displ|Mux31~1_combout\ & ((\displ|Mux33~1_combout\))) # (!\displ|Mux31~1_combout\ & (\displ|Mux30~1_combout\ & !\displ|Mux33~1_combout\)))) # (!\displ|Mux32~1_combout\ & (!\displ|Mux30~1_combout\ & 
-- (\displ|Mux31~1_combout\ $ (\displ|Mux33~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux30~1_combout\,
	datab => \displ|Mux31~1_combout\,
	datac => \displ|Mux33~1_combout\,
	datad => \displ|Mux32~1_combout\,
	combout => \displ|Mux56~0_combout\);

-- Location: LCCOMB_X108_Y19_N30
\displ|Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux55~0_combout\ = (\displ|Mux32~1_combout\ & (!\displ|Mux30~1_combout\ & ((\displ|Mux33~1_combout\)))) # (!\displ|Mux32~1_combout\ & ((\displ|Mux31~1_combout\ & (!\displ|Mux30~1_combout\)) # (!\displ|Mux31~1_combout\ & 
-- ((\displ|Mux33~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux30~1_combout\,
	datab => \displ|Mux31~1_combout\,
	datac => \displ|Mux33~1_combout\,
	datad => \displ|Mux32~1_combout\,
	combout => \displ|Mux55~0_combout\);

-- Location: LCCOMB_X108_Y19_N0
\displ|Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux54~0_combout\ = (\displ|Mux31~1_combout\ & (\displ|Mux33~1_combout\ & (\displ|Mux30~1_combout\ $ (\displ|Mux32~1_combout\)))) # (!\displ|Mux31~1_combout\ & (!\displ|Mux30~1_combout\ & ((\displ|Mux33~1_combout\) # (\displ|Mux32~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux30~1_combout\,
	datab => \displ|Mux31~1_combout\,
	datac => \displ|Mux33~1_combout\,
	datad => \displ|Mux32~1_combout\,
	combout => \displ|Mux54~0_combout\);

-- Location: LCCOMB_X108_Y19_N26
\displ|Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux53~0_combout\ = (\displ|Mux33~1_combout\ & ((\displ|Mux30~1_combout\) # (\displ|Mux31~1_combout\ $ (\displ|Mux32~1_combout\)))) # (!\displ|Mux33~1_combout\ & ((\displ|Mux32~1_combout\) # (\displ|Mux30~1_combout\ $ (\displ|Mux31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux30~1_combout\,
	datab => \displ|Mux31~1_combout\,
	datac => \displ|Mux33~1_combout\,
	datad => \displ|Mux32~1_combout\,
	combout => \displ|Mux53~0_combout\);

-- Location: LCCOMB_X107_Y18_N14
\pcupdate|s_pc[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[8]~42_combout\ = (\pcupdate|s_pc\(8) & (\pcupdate|s_pc[7]~41\ $ (GND))) # (!\pcupdate|s_pc\(8) & (!\pcupdate|s_pc[7]~41\ & VCC))
-- \pcupdate|s_pc[8]~43\ = CARRY((\pcupdate|s_pc\(8) & !\pcupdate|s_pc[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdate|s_pc\(8),
	datad => VCC,
	cin => \pcupdate|s_pc[7]~41\,
	combout => \pcupdate|s_pc[8]~42_combout\,
	cout => \pcupdate|s_pc[8]~43\);

-- Location: FF_X107_Y18_N15
\pcupdate|s_pc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[8]~42_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(8));

-- Location: LCCOMB_X107_Y18_N16
\pcupdate|s_pc[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[9]~44_combout\ = (\pcupdate|s_pc\(9) & (!\pcupdate|s_pc[8]~43\)) # (!\pcupdate|s_pc\(9) & ((\pcupdate|s_pc[8]~43\) # (GND)))
-- \pcupdate|s_pc[9]~45\ = CARRY((!\pcupdate|s_pc[8]~43\) # (!\pcupdate|s_pc\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdate|s_pc\(9),
	datad => VCC,
	cin => \pcupdate|s_pc[8]~43\,
	combout => \pcupdate|s_pc[9]~44_combout\,
	cout => \pcupdate|s_pc[9]~45\);

-- Location: FF_X107_Y18_N17
\pcupdate|s_pc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[9]~44_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(9));

-- Location: LCCOMB_X111_Y18_N28
\displ|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux28~0_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\instrution_memory|Mux38~0_combout\)) # (!\SW[0]~input_o\ & ((\pcupdate|s_pc\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrution_memory|Mux38~0_combout\,
	datab => \pcupdate|s_pc\(9),
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux28~0_combout\);

-- Location: LCCOMB_X111_Y18_N6
\displ|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux28~1_combout\ = (\displ|Mux28~0_combout\ & ((\displ|Mux37~1GND_combout\) # ((!\SW[1]~input_o\)))) # (!\displ|Mux28~0_combout\ & (((\SW[1]~input_o\ & \displ|Mux37~1GND_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux37~1GND_combout\,
	datab => \displ|Mux28~0_combout\,
	datac => \SW[1]~input_o\,
	datad => \displ|Mux37~1GND_combout\,
	combout => \displ|Mux28~1_combout\);

-- Location: LCCOMB_X108_Y18_N8
\instrution_memory|Mux42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux42~3_combout\ = (\displ|s_addrCounters[1][2]~q\ & ((\displ|s_addrCounters[1][3]~q\ & ((!\displ|s_addrCounters[1][1]~q\))) # (!\displ|s_addrCounters[1][3]~q\ & (!\displ|s_addrCounters[1][0]~q\)))) # (!\displ|s_addrCounters[1][2]~q\ & 
-- (!\displ|s_addrCounters[1][0]~q\ & ((\displ|s_addrCounters[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[1][0]~q\,
	datab => \displ|s_addrCounters[1][1]~q\,
	datac => \displ|s_addrCounters[1][2]~q\,
	datad => \displ|s_addrCounters[1][3]~q\,
	combout => \instrution_memory|Mux42~3_combout\);

-- Location: LCCOMB_X108_Y18_N10
\instrution_memory|Mux42~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux42~6_combout\ = (!\displ|s_addrCounters[1][5]~q\ & (\instrution_memory|Mux42~3_combout\ & !\displ|s_addrCounters[1][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[1][5]~q\,
	datab => \instrution_memory|Mux42~3_combout\,
	datac => \displ|s_addrCounters[1][4]~q\,
	combout => \instrution_memory|Mux42~6_combout\);

-- Location: LCCOMB_X107_Y18_N18
\pcupdate|s_pc[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[10]~46_combout\ = (\pcupdate|s_pc\(10) & (\pcupdate|s_pc[9]~45\ $ (GND))) # (!\pcupdate|s_pc\(10) & (!\pcupdate|s_pc[9]~45\ & VCC))
-- \pcupdate|s_pc[10]~47\ = CARRY((\pcupdate|s_pc\(10) & !\pcupdate|s_pc[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdate|s_pc\(10),
	datad => VCC,
	cin => \pcupdate|s_pc[9]~45\,
	combout => \pcupdate|s_pc[10]~46_combout\,
	cout => \pcupdate|s_pc[10]~47\);

-- Location: FF_X107_Y18_N19
\pcupdate|s_pc[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[10]~46_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(10));

-- Location: LCCOMB_X107_Y18_N20
\pcupdate|s_pc[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[11]~48_combout\ = (\pcupdate|s_pc\(11) & (!\pcupdate|s_pc[10]~47\)) # (!\pcupdate|s_pc\(11) & ((\pcupdate|s_pc[10]~47\) # (GND)))
-- \pcupdate|s_pc[11]~49\ = CARRY((!\pcupdate|s_pc[10]~47\) # (!\pcupdate|s_pc\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdate|s_pc\(11),
	datad => VCC,
	cin => \pcupdate|s_pc[10]~47\,
	combout => \pcupdate|s_pc[11]~48_combout\,
	cout => \pcupdate|s_pc[11]~49\);

-- Location: FF_X107_Y18_N21
\pcupdate|s_pc[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[11]~48_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(11));

-- Location: LCCOMB_X108_Y18_N24
\displ|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux26~0_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\instrution_memory|Mux42~6_combout\)) # (!\SW[0]~input_o\ & ((\pcupdate|s_pc\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrution_memory|Mux42~6_combout\,
	datab => \SW[1]~input_o\,
	datac => \pcupdate|s_pc\(11),
	datad => \SW[0]~input_o\,
	combout => \displ|Mux26~0_combout\);

-- Location: LCCOMB_X111_Y18_N20
\displ|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux26~1_combout\ = (\SW[1]~input_o\ & ((\displ|Mux26~0_combout\ & (\displ|Mux37~1GND_combout\)) # (!\displ|Mux26~0_combout\ & ((\displ|Mux37~1GND_combout\))))) # (!\SW[1]~input_o\ & (((\displ|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux37~1GND_combout\,
	datab => \SW[1]~input_o\,
	datac => \displ|Mux26~0_combout\,
	datad => \displ|Mux37~1GND_combout\,
	combout => \displ|Mux26~1_combout\);

-- Location: LCCOMB_X111_Y18_N8
\displ|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux27~0_combout\ = (\SW[1]~input_o\ & ((\displ|Mux37~1GND_combout\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\pcupdate|s_pc\(10) & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux37~1GND_combout\,
	datab => \SW[1]~input_o\,
	datac => \pcupdate|s_pc\(10),
	datad => \SW[0]~input_o\,
	combout => \displ|Mux27~0_combout\);

-- Location: LCCOMB_X111_Y18_N26
\displ|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux27~1_combout\ = (\displ|Mux27~0_combout\ & ((\displ|Mux37~1GND_combout\) # ((!\SW[0]~input_o\)))) # (!\displ|Mux27~0_combout\ & (((\instrution_memory|Mux38~0_combout\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux37~1GND_combout\,
	datab => \displ|Mux27~0_combout\,
	datac => \instrution_memory|Mux38~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux27~1_combout\);

-- Location: LCCOMB_X111_Y18_N24
\displ|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux29~0_combout\ = (\SW[1]~input_o\ & ((\displ|Mux37~1GND_combout\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\pcupdate|s_pc\(8) & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux37~1GND_combout\,
	datab => \SW[1]~input_o\,
	datac => \pcupdate|s_pc\(8),
	datad => \SW[0]~input_o\,
	combout => \displ|Mux29~0_combout\);

-- Location: LCCOMB_X111_Y18_N18
\displ|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux29~1_combout\ = (\displ|Mux29~0_combout\ & ((\displ|Mux37~1GND_combout\) # ((!\SW[0]~input_o\)))) # (!\displ|Mux29~0_combout\ & (((\instrution_memory|Mux38~0_combout\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux37~1GND_combout\,
	datab => \displ|Mux29~0_combout\,
	datac => \instrution_memory|Mux38~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux29~1_combout\);

-- Location: LCCOMB_X111_Y18_N30
\displ|Mux66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux66~0_combout\ = (\displ|Mux26~1_combout\ & (\displ|Mux29~1_combout\ & (\displ|Mux28~1_combout\ $ (\displ|Mux27~1_combout\)))) # (!\displ|Mux26~1_combout\ & (!\displ|Mux28~1_combout\ & (\displ|Mux27~1_combout\ $ (\displ|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux28~1_combout\,
	datab => \displ|Mux26~1_combout\,
	datac => \displ|Mux27~1_combout\,
	datad => \displ|Mux29~1_combout\,
	combout => \displ|Mux66~0_combout\);

-- Location: LCCOMB_X111_Y18_N16
\displ|Mux65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux65~0_combout\ = (\displ|Mux28~1_combout\ & ((\displ|Mux29~1_combout\ & (\displ|Mux26~1_combout\)) # (!\displ|Mux29~1_combout\ & ((\displ|Mux27~1_combout\))))) # (!\displ|Mux28~1_combout\ & (\displ|Mux27~1_combout\ & (\displ|Mux26~1_combout\ $ 
-- (\displ|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux28~1_combout\,
	datab => \displ|Mux26~1_combout\,
	datac => \displ|Mux27~1_combout\,
	datad => \displ|Mux29~1_combout\,
	combout => \displ|Mux65~0_combout\);

-- Location: LCCOMB_X111_Y18_N2
\displ|Mux64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux64~0_combout\ = (\displ|Mux26~1_combout\ & (\displ|Mux27~1_combout\ & ((\displ|Mux28~1_combout\) # (!\displ|Mux29~1_combout\)))) # (!\displ|Mux26~1_combout\ & (\displ|Mux28~1_combout\ & (!\displ|Mux27~1_combout\ & !\displ|Mux29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux28~1_combout\,
	datab => \displ|Mux26~1_combout\,
	datac => \displ|Mux27~1_combout\,
	datad => \displ|Mux29~1_combout\,
	combout => \displ|Mux64~0_combout\);

-- Location: LCCOMB_X111_Y18_N4
\displ|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux63~0_combout\ = (\displ|Mux28~1_combout\ & ((\displ|Mux27~1_combout\ & ((\displ|Mux29~1_combout\))) # (!\displ|Mux27~1_combout\ & (\displ|Mux26~1_combout\ & !\displ|Mux29~1_combout\)))) # (!\displ|Mux28~1_combout\ & (!\displ|Mux26~1_combout\ & 
-- (\displ|Mux27~1_combout\ $ (\displ|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux28~1_combout\,
	datab => \displ|Mux26~1_combout\,
	datac => \displ|Mux27~1_combout\,
	datad => \displ|Mux29~1_combout\,
	combout => \displ|Mux63~0_combout\);

-- Location: LCCOMB_X111_Y18_N14
\displ|Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux62~0_combout\ = (\displ|Mux28~1_combout\ & (!\displ|Mux26~1_combout\ & ((\displ|Mux29~1_combout\)))) # (!\displ|Mux28~1_combout\ & ((\displ|Mux27~1_combout\ & (!\displ|Mux26~1_combout\)) # (!\displ|Mux27~1_combout\ & 
-- ((\displ|Mux29~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux28~1_combout\,
	datab => \displ|Mux26~1_combout\,
	datac => \displ|Mux27~1_combout\,
	datad => \displ|Mux29~1_combout\,
	combout => \displ|Mux62~0_combout\);

-- Location: LCCOMB_X111_Y18_N0
\displ|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux61~0_combout\ = (\displ|Mux28~1_combout\ & (!\displ|Mux26~1_combout\ & ((\displ|Mux29~1_combout\) # (!\displ|Mux27~1_combout\)))) # (!\displ|Mux28~1_combout\ & (\displ|Mux29~1_combout\ & (\displ|Mux26~1_combout\ $ (!\displ|Mux27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux28~1_combout\,
	datab => \displ|Mux26~1_combout\,
	datac => \displ|Mux27~1_combout\,
	datad => \displ|Mux29~1_combout\,
	combout => \displ|Mux61~0_combout\);

-- Location: LCCOMB_X111_Y18_N10
\displ|Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux60~0_combout\ = (\displ|Mux29~1_combout\ & ((\displ|Mux26~1_combout\) # (\displ|Mux28~1_combout\ $ (\displ|Mux27~1_combout\)))) # (!\displ|Mux29~1_combout\ & ((\displ|Mux28~1_combout\) # (\displ|Mux26~1_combout\ $ (\displ|Mux27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux28~1_combout\,
	datab => \displ|Mux26~1_combout\,
	datac => \displ|Mux27~1_combout\,
	datad => \displ|Mux29~1_combout\,
	combout => \displ|Mux60~0_combout\);

-- Location: LCCOMB_X107_Y18_N22
\pcupdate|s_pc[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[12]~50_combout\ = (\pcupdate|s_pc\(12) & (\pcupdate|s_pc[11]~49\ $ (GND))) # (!\pcupdate|s_pc\(12) & (!\pcupdate|s_pc[11]~49\ & VCC))
-- \pcupdate|s_pc[12]~51\ = CARRY((\pcupdate|s_pc\(12) & !\pcupdate|s_pc[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(12),
	datad => VCC,
	cin => \pcupdate|s_pc[11]~49\,
	combout => \pcupdate|s_pc[12]~50_combout\,
	cout => \pcupdate|s_pc[12]~51\);

-- Location: FF_X107_Y18_N23
\pcupdate|s_pc[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[12]~50_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(12));

-- Location: LCCOMB_X107_Y18_N24
\pcupdate|s_pc[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[13]~52_combout\ = (\pcupdate|s_pc\(13) & (!\pcupdate|s_pc[12]~51\)) # (!\pcupdate|s_pc\(13) & ((\pcupdate|s_pc[12]~51\) # (GND)))
-- \pcupdate|s_pc[13]~53\ = CARRY((!\pcupdate|s_pc[12]~51\) # (!\pcupdate|s_pc\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdate|s_pc\(13),
	datad => VCC,
	cin => \pcupdate|s_pc[12]~51\,
	combout => \pcupdate|s_pc[13]~52_combout\,
	cout => \pcupdate|s_pc[13]~53\);

-- Location: FF_X107_Y18_N25
\pcupdate|s_pc[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[13]~52_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(13));

-- Location: LCCOMB_X108_Y18_N20
\instrution_memory|Mux40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux40~3_combout\ = (\displ|s_addrCounters[1][3]~q\ & (!\displ|s_addrCounters[1][1]~q\ & ((\displ|s_addrCounters[1][2]~q\) # (!\displ|s_addrCounters[1][0]~q\)))) # (!\displ|s_addrCounters[1][3]~q\ & (((\displ|s_addrCounters[1][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[1][0]~q\,
	datab => \displ|s_addrCounters[1][1]~q\,
	datac => \displ|s_addrCounters[1][2]~q\,
	datad => \displ|s_addrCounters[1][3]~q\,
	combout => \instrution_memory|Mux40~3_combout\);

-- Location: LCCOMB_X108_Y18_N22
\instrution_memory|Mux40~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux40~6_combout\ = (!\displ|s_addrCounters[1][5]~q\ & (!\displ|s_addrCounters[1][4]~q\ & \instrution_memory|Mux40~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[1][5]~q\,
	datac => \displ|s_addrCounters[1][4]~q\,
	datad => \instrution_memory|Mux40~3_combout\,
	combout => \instrution_memory|Mux40~6_combout\);

-- Location: LCCOMB_X108_Y18_N30
\displ|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux24~0_combout\ = (\SW[0]~input_o\ & (((\instrution_memory|Mux40~6_combout\) # (\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (\pcupdate|s_pc\(13) & ((!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \pcupdate|s_pc\(13),
	datac => \instrution_memory|Mux40~6_combout\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux24~0_combout\);

-- Location: LCCOMB_X108_Y18_N0
\displ|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux24~1_combout\ = (\SW[1]~input_o\ & ((\displ|Mux24~0_combout\ & (\displ|Mux37~1GND_combout\)) # (!\displ|Mux24~0_combout\ & ((\displ|Mux37~1GND_combout\))))) # (!\SW[1]~input_o\ & (((\displ|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux37~1GND_combout\,
	datab => \SW[1]~input_o\,
	datac => \displ|Mux24~0_combout\,
	datad => \displ|Mux37~1GND_combout\,
	combout => \displ|Mux24~1_combout\);

-- Location: LCCOMB_X107_Y19_N8
\instrution_memory|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux39~0_combout\ = (\displ|s_addrCounters[1][3]~q\ & (((\instrution_memory|Mux29~7_combout\)))) # (!\displ|s_addrCounters[1][3]~q\ & (((\displ|s_addrCounters[1][0]~q\)) # (!\instrution_memory|Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrution_memory|Mux31~0_combout\,
	datab => \instrution_memory|Mux29~7_combout\,
	datac => \displ|s_addrCounters[1][0]~q\,
	datad => \displ|s_addrCounters[1][3]~q\,
	combout => \instrution_memory|Mux39~0_combout\);

-- Location: LCCOMB_X107_Y18_N26
\pcupdate|s_pc[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[14]~54_combout\ = (\pcupdate|s_pc\(14) & (\pcupdate|s_pc[13]~53\ $ (GND))) # (!\pcupdate|s_pc\(14) & (!\pcupdate|s_pc[13]~53\ & VCC))
-- \pcupdate|s_pc[14]~55\ = CARRY((\pcupdate|s_pc\(14) & !\pcupdate|s_pc[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(14),
	datad => VCC,
	cin => \pcupdate|s_pc[13]~53\,
	combout => \pcupdate|s_pc[14]~54_combout\,
	cout => \pcupdate|s_pc[14]~55\);

-- Location: FF_X107_Y18_N27
\pcupdate|s_pc[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[14]~54_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(14));

-- Location: LCCOMB_X107_Y16_N18
\displ|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux23~0_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\) # (\displ|Mux37~1GND_combout\)))) # (!\SW[1]~input_o\ & (\pcupdate|s_pc\(14) & (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(14),
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \displ|Mux37~1GND_combout\,
	combout => \displ|Mux23~0_combout\);

-- Location: LCCOMB_X107_Y16_N4
\displ|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux23~1_combout\ = (\displ|Mux23~0_combout\ & (((\displ|Mux37~1GND_combout\) # (!\SW[0]~input_o\)))) # (!\displ|Mux23~0_combout\ & (!\instrution_memory|Mux39~0_combout\ & (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrution_memory|Mux39~0_combout\,
	datab => \displ|Mux23~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \displ|Mux37~1GND_combout\,
	combout => \displ|Mux23~1_combout\);

-- Location: LCCOMB_X108_Y18_N18
\displ|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux25~0_combout\ = (\SW[1]~input_o\ & ((\displ|Mux37~1GND_combout\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\pcupdate|s_pc\(12) & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux37~1GND_combout\,
	datab => \SW[1]~input_o\,
	datac => \pcupdate|s_pc\(12),
	datad => \SW[0]~input_o\,
	combout => \displ|Mux25~0_combout\);

-- Location: LCCOMB_X108_Y18_N12
\instrution_memory|Mux41~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux41~3_combout\ = (\displ|s_addrCounters[1][2]~q\ & (\displ|s_addrCounters[1][1]~q\ $ (((\displ|s_addrCounters[1][3]~q\) # (!\displ|s_addrCounters[1][0]~q\))))) # (!\displ|s_addrCounters[1][2]~q\ & (\displ|s_addrCounters[1][3]~q\ & 
-- (\displ|s_addrCounters[1][0]~q\ $ (!\displ|s_addrCounters[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[1][0]~q\,
	datab => \displ|s_addrCounters[1][1]~q\,
	datac => \displ|s_addrCounters[1][2]~q\,
	datad => \displ|s_addrCounters[1][3]~q\,
	combout => \instrution_memory|Mux41~3_combout\);

-- Location: LCCOMB_X108_Y18_N14
\instrution_memory|Mux41~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux41~6_combout\ = (!\displ|s_addrCounters[1][5]~q\ & (!\displ|s_addrCounters[1][4]~q\ & \instrution_memory|Mux41~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[1][5]~q\,
	datac => \displ|s_addrCounters[1][4]~q\,
	datad => \instrution_memory|Mux41~3_combout\,
	combout => \instrution_memory|Mux41~6_combout\);

-- Location: LCCOMB_X108_Y18_N28
\displ|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux25~1_combout\ = (\displ|Mux25~0_combout\ & ((\displ|Mux37~1GND_combout\) # ((!\SW[0]~input_o\)))) # (!\displ|Mux25~0_combout\ & (((\instrution_memory|Mux41~6_combout\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux37~1GND_combout\,
	datab => \displ|Mux25~0_combout\,
	datac => \instrution_memory|Mux41~6_combout\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux25~1_combout\);

-- Location: LCCOMB_X107_Y18_N28
\pcupdate|s_pc[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[15]~56_combout\ = (\pcupdate|s_pc\(15) & (!\pcupdate|s_pc[14]~55\)) # (!\pcupdate|s_pc\(15) & ((\pcupdate|s_pc[14]~55\) # (GND)))
-- \pcupdate|s_pc[15]~57\ = CARRY((!\pcupdate|s_pc[14]~55\) # (!\pcupdate|s_pc\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdate|s_pc\(15),
	datad => VCC,
	cin => \pcupdate|s_pc[14]~55\,
	combout => \pcupdate|s_pc[15]~56_combout\,
	cout => \pcupdate|s_pc[15]~57\);

-- Location: FF_X107_Y18_N29
\pcupdate|s_pc[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[15]~56_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(15));

-- Location: LCCOMB_X111_Y18_N12
\displ|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux22~0_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\instrution_memory|Mux38~0_combout\)) # (!\SW[0]~input_o\ & ((\pcupdate|s_pc\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrution_memory|Mux38~0_combout\,
	datab => \pcupdate|s_pc\(15),
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux22~0_combout\);

-- Location: LCCOMB_X110_Y18_N26
\displ|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux22~1_combout\ = (\displ|Mux22~0_combout\ & ((\displ|Mux37~1GND_combout\) # ((!\SW[1]~input_o\)))) # (!\displ|Mux22~0_combout\ & (((\displ|Mux37~1GND_combout\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux37~1GND_combout\,
	datab => \displ|Mux37~1GND_combout\,
	datac => \displ|Mux22~0_combout\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux22~1_combout\);

-- Location: LCCOMB_X109_Y14_N16
\displ|Mux73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux73~0_combout\ = (\displ|Mux23~1_combout\ & (!\displ|Mux24~1_combout\ & (\displ|Mux25~1_combout\ $ (!\displ|Mux22~1_combout\)))) # (!\displ|Mux23~1_combout\ & (\displ|Mux25~1_combout\ & (\displ|Mux24~1_combout\ $ (!\displ|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux24~1_combout\,
	datab => \displ|Mux23~1_combout\,
	datac => \displ|Mux25~1_combout\,
	datad => \displ|Mux22~1_combout\,
	combout => \displ|Mux73~0_combout\);

-- Location: LCCOMB_X109_Y14_N2
\displ|Mux72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux72~0_combout\ = (\displ|Mux24~1_combout\ & ((\displ|Mux25~1_combout\ & ((\displ|Mux22~1_combout\))) # (!\displ|Mux25~1_combout\ & (\displ|Mux23~1_combout\)))) # (!\displ|Mux24~1_combout\ & (\displ|Mux23~1_combout\ & (\displ|Mux25~1_combout\ $ 
-- (\displ|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux24~1_combout\,
	datab => \displ|Mux23~1_combout\,
	datac => \displ|Mux25~1_combout\,
	datad => \displ|Mux22~1_combout\,
	combout => \displ|Mux72~0_combout\);

-- Location: LCCOMB_X109_Y14_N4
\displ|Mux71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux71~0_combout\ = (\displ|Mux23~1_combout\ & (\displ|Mux22~1_combout\ & ((\displ|Mux24~1_combout\) # (!\displ|Mux25~1_combout\)))) # (!\displ|Mux23~1_combout\ & (\displ|Mux24~1_combout\ & (!\displ|Mux25~1_combout\ & !\displ|Mux22~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux24~1_combout\,
	datab => \displ|Mux23~1_combout\,
	datac => \displ|Mux25~1_combout\,
	datad => \displ|Mux22~1_combout\,
	combout => \displ|Mux71~0_combout\);

-- Location: LCCOMB_X109_Y14_N14
\displ|Mux70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux70~0_combout\ = (\displ|Mux24~1_combout\ & ((\displ|Mux23~1_combout\ & (\displ|Mux25~1_combout\)) # (!\displ|Mux23~1_combout\ & (!\displ|Mux25~1_combout\ & \displ|Mux22~1_combout\)))) # (!\displ|Mux24~1_combout\ & (!\displ|Mux22~1_combout\ & 
-- (\displ|Mux23~1_combout\ $ (\displ|Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux24~1_combout\,
	datab => \displ|Mux23~1_combout\,
	datac => \displ|Mux25~1_combout\,
	datad => \displ|Mux22~1_combout\,
	combout => \displ|Mux70~0_combout\);

-- Location: LCCOMB_X109_Y14_N8
\displ|Mux69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux69~0_combout\ = (\displ|Mux24~1_combout\ & (((\displ|Mux25~1_combout\ & !\displ|Mux22~1_combout\)))) # (!\displ|Mux24~1_combout\ & ((\displ|Mux23~1_combout\ & ((!\displ|Mux22~1_combout\))) # (!\displ|Mux23~1_combout\ & 
-- (\displ|Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux24~1_combout\,
	datab => \displ|Mux23~1_combout\,
	datac => \displ|Mux25~1_combout\,
	datad => \displ|Mux22~1_combout\,
	combout => \displ|Mux69~0_combout\);

-- Location: LCCOMB_X109_Y14_N10
\displ|Mux68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux68~0_combout\ = (\displ|Mux24~1_combout\ & (!\displ|Mux22~1_combout\ & ((\displ|Mux25~1_combout\) # (!\displ|Mux23~1_combout\)))) # (!\displ|Mux24~1_combout\ & (\displ|Mux25~1_combout\ & (\displ|Mux23~1_combout\ $ (!\displ|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux24~1_combout\,
	datab => \displ|Mux23~1_combout\,
	datac => \displ|Mux25~1_combout\,
	datad => \displ|Mux22~1_combout\,
	combout => \displ|Mux68~0_combout\);

-- Location: LCCOMB_X109_Y14_N12
\displ|Mux67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux67~0_combout\ = (\displ|Mux25~1_combout\ & ((\displ|Mux22~1_combout\) # (\displ|Mux24~1_combout\ $ (\displ|Mux23~1_combout\)))) # (!\displ|Mux25~1_combout\ & ((\displ|Mux24~1_combout\) # (\displ|Mux23~1_combout\ $ (\displ|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux24~1_combout\,
	datab => \displ|Mux23~1_combout\,
	datac => \displ|Mux25~1_combout\,
	datad => \displ|Mux22~1_combout\,
	combout => \displ|Mux67~0_combout\);

-- Location: LCCOMB_X108_Y15_N10
\displ|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Decoder0~0_combout\ = (!\SW[1]~input_o\ & !\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|Decoder0~0_combout\);

-- Location: LCCOMB_X107_Y18_N30
\pcupdate|s_pc[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[16]~58_combout\ = (\pcupdate|s_pc\(16) & (\pcupdate|s_pc[15]~57\ $ (GND))) # (!\pcupdate|s_pc\(16) & (!\pcupdate|s_pc[15]~57\ & VCC))
-- \pcupdate|s_pc[16]~59\ = CARRY((\pcupdate|s_pc\(16) & !\pcupdate|s_pc[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(16),
	datad => VCC,
	cin => \pcupdate|s_pc[15]~57\,
	combout => \pcupdate|s_pc[16]~58_combout\,
	cout => \pcupdate|s_pc[16]~59\);

-- Location: FF_X107_Y18_N31
\pcupdate|s_pc[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[16]~58_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(16));

-- Location: LCCOMB_X107_Y17_N0
\pcupdate|s_pc[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[17]~60_combout\ = (\pcupdate|s_pc\(17) & (!\pcupdate|s_pc[16]~59\)) # (!\pcupdate|s_pc\(17) & ((\pcupdate|s_pc[16]~59\) # (GND)))
-- \pcupdate|s_pc[17]~61\ = CARRY((!\pcupdate|s_pc[16]~59\) # (!\pcupdate|s_pc\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdate|s_pc\(17),
	datad => VCC,
	cin => \pcupdate|s_pc[16]~59\,
	combout => \pcupdate|s_pc[17]~60_combout\,
	cout => \pcupdate|s_pc[17]~61\);

-- Location: FF_X107_Y17_N1
\pcupdate|s_pc[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[17]~60_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(17));

-- Location: LCCOMB_X108_Y18_N16
\instrution_memory|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux29~3_combout\ = (\displ|s_addrCounters[1][2]~q\ & (((!\displ|s_addrCounters[1][0]~q\ & !\displ|s_addrCounters[1][1]~q\)) # (!\displ|s_addrCounters[1][3]~q\))) # (!\displ|s_addrCounters[1][2]~q\ & ((\displ|s_addrCounters[1][3]~q\) # 
-- ((\displ|s_addrCounters[1][0]~q\ & \displ|s_addrCounters[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[1][0]~q\,
	datab => \displ|s_addrCounters[1][1]~q\,
	datac => \displ|s_addrCounters[1][2]~q\,
	datad => \displ|s_addrCounters[1][3]~q\,
	combout => \instrution_memory|Mux29~3_combout\);

-- Location: LCCOMB_X108_Y18_N26
\instrution_memory|Mux29~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux29~13_combout\ = (!\displ|s_addrCounters[1][5]~q\ & (!\displ|s_addrCounters[1][4]~q\ & \instrution_memory|Mux29~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[1][5]~q\,
	datac => \displ|s_addrCounters[1][4]~q\,
	datad => \instrution_memory|Mux29~3_combout\,
	combout => \instrution_memory|Mux29~13_combout\);

-- Location: LCCOMB_X108_Y18_N4
\displ|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux20~0_combout\ = (\SW[0]~input_o\ & (((\instrution_memory|Mux29~13_combout\) # (\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (\pcupdate|s_pc\(17) & ((!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \pcupdate|s_pc\(17),
	datac => \instrution_memory|Mux29~13_combout\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux20~0_combout\);

-- Location: LCCOMB_X108_Y18_N6
\displ|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux20~1_combout\ = (\SW[1]~input_o\ & ((\displ|Mux20~0_combout\ & (\displ|Mux37~1GND_combout\)) # (!\displ|Mux20~0_combout\ & ((\displ|Mux37~1GND_combout\))))) # (!\SW[1]~input_o\ & (((\displ|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux37~1GND_combout\,
	datab => \SW[1]~input_o\,
	datac => \displ|Mux20~0_combout\,
	datad => \displ|Mux37~1GND_combout\,
	combout => \displ|Mux20~1_combout\);

-- Location: LCCOMB_X107_Y19_N10
\instrution_memory|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux37~0_combout\ = (!\displ|s_addrCounters[1][2]~q\ & (\displ|s_addrCounters[1][0]~q\ & (\displ|s_addrCounters[1][1]~q\ & !\displ|s_addrCounters[1][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[1][2]~q\,
	datab => \displ|s_addrCounters[1][0]~q\,
	datac => \displ|s_addrCounters[1][1]~q\,
	datad => \displ|s_addrCounters[1][3]~q\,
	combout => \instrution_memory|Mux37~0_combout\);

-- Location: LCCOMB_X107_Y19_N28
\instrution_memory|Mux29~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux29~10_combout\ = (\displ|s_addrCounters[1][2]~q\ & ((\displ|s_addrCounters[1][0]~q\) # (\displ|s_addrCounters[1][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_addrCounters[1][0]~q\,
	datac => \displ|s_addrCounters[1][1]~q\,
	datad => \displ|s_addrCounters[1][2]~q\,
	combout => \instrution_memory|Mux29~10_combout\);

-- Location: LCCOMB_X107_Y19_N14
\instrution_memory|Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux37~1_combout\ = (\instrution_memory|Mux37~0_combout\) # (((\instrution_memory|Mux29~10_combout\ & \displ|s_addrCounters[1][3]~q\)) # (!\instrution_memory|Mux28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrution_memory|Mux37~0_combout\,
	datab => \instrution_memory|Mux29~10_combout\,
	datac => \instrution_memory|Mux28~0_combout\,
	datad => \displ|s_addrCounters[1][3]~q\,
	combout => \instrution_memory|Mux37~1_combout\);

-- Location: LCCOMB_X108_Y18_N2
\displ|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux21~0_combout\ = (\SW[1]~input_o\ & ((\displ|Mux37~1GND_combout\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\pcupdate|s_pc\(16) & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux37~1GND_combout\,
	datab => \SW[1]~input_o\,
	datac => \pcupdate|s_pc\(16),
	datad => \SW[0]~input_o\,
	combout => \displ|Mux21~0_combout\);

-- Location: LCCOMB_X108_Y19_N28
\displ|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux21~1_combout\ = (\displ|Mux21~0_combout\ & (((\displ|Mux37~1GND_combout\) # (!\SW[0]~input_o\)))) # (!\displ|Mux21~0_combout\ & (!\instrution_memory|Mux37~1_combout\ & ((\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrution_memory|Mux37~1_combout\,
	datab => \displ|Mux21~0_combout\,
	datac => \displ|Mux37~1GND_combout\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux21~1_combout\);

-- Location: LCCOMB_X107_Y17_N2
\pcupdate|s_pc[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[18]~62_combout\ = (\pcupdate|s_pc\(18) & (\pcupdate|s_pc[17]~61\ $ (GND))) # (!\pcupdate|s_pc\(18) & (!\pcupdate|s_pc[17]~61\ & VCC))
-- \pcupdate|s_pc[18]~63\ = CARRY((\pcupdate|s_pc\(18) & !\pcupdate|s_pc[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdate|s_pc\(18),
	datad => VCC,
	cin => \pcupdate|s_pc[17]~61\,
	combout => \pcupdate|s_pc[18]~62_combout\,
	cout => \pcupdate|s_pc[18]~63\);

-- Location: FF_X107_Y17_N3
\pcupdate|s_pc[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[18]~62_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(18));

-- Location: LCCOMB_X107_Y16_N6
\displ|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux19~0_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\) # (\displ|Mux37~1GND_combout\)))) # (!\SW[1]~input_o\ & (\pcupdate|s_pc\(18) & (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(18),
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \displ|Mux37~1GND_combout\,
	combout => \displ|Mux19~0_combout\);

-- Location: LCCOMB_X108_Y16_N0
\instrution_memory|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux31~2_combout\ = (\instrution_memory|Mux29~6_combout\ & (\displ|s_addrCounters[1][2]~q\ & (\displ|s_addrCounters[1][0]~q\ & \displ|s_addrCounters[1][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrution_memory|Mux29~6_combout\,
	datab => \displ|s_addrCounters[1][2]~q\,
	datac => \displ|s_addrCounters[1][0]~q\,
	datad => \displ|s_addrCounters[1][3]~q\,
	combout => \instrution_memory|Mux31~2_combout\);

-- Location: LCCOMB_X108_Y16_N18
\displ|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux19~1_combout\ = (\SW[0]~input_o\ & ((\displ|Mux19~0_combout\ & (\displ|Mux37~1GND_combout\)) # (!\displ|Mux19~0_combout\ & ((\instrution_memory|Mux31~2_combout\))))) # (!\SW[0]~input_o\ & (((\displ|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \displ|Mux37~1GND_combout\,
	datac => \displ|Mux19~0_combout\,
	datad => \instrution_memory|Mux31~2_combout\,
	combout => \displ|Mux19~1_combout\);

-- Location: LCCOMB_X107_Y17_N4
\pcupdate|s_pc[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[19]~64_combout\ = (\pcupdate|s_pc\(19) & (!\pcupdate|s_pc[18]~63\)) # (!\pcupdate|s_pc\(19) & ((\pcupdate|s_pc[18]~63\) # (GND)))
-- \pcupdate|s_pc[19]~65\ = CARRY((!\pcupdate|s_pc[18]~63\) # (!\pcupdate|s_pc\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdate|s_pc\(19),
	datad => VCC,
	cin => \pcupdate|s_pc[18]~63\,
	combout => \pcupdate|s_pc[19]~64_combout\,
	cout => \pcupdate|s_pc[19]~65\);

-- Location: FF_X107_Y17_N5
\pcupdate|s_pc[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[19]~64_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(19));

-- Location: LCCOMB_X107_Y19_N22
\instrution_memory|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux31~1_combout\ = (\displ|s_addrCounters[1][2]~q\ & (\instrution_memory|Mux28~0_combout\ & (!\displ|s_addrCounters[1][1]~q\ & \displ|s_addrCounters[1][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[1][2]~q\,
	datab => \instrution_memory|Mux28~0_combout\,
	datac => \displ|s_addrCounters[1][1]~q\,
	datad => \displ|s_addrCounters[1][3]~q\,
	combout => \instrution_memory|Mux31~1_combout\);

-- Location: LCCOMB_X108_Y19_N6
\displ|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux18~0_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\) # (\instrution_memory|Mux31~1_combout\)))) # (!\SW[0]~input_o\ & (\pcupdate|s_pc\(19) & (!\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \pcupdate|s_pc\(19),
	datac => \SW[1]~input_o\,
	datad => \instrution_memory|Mux31~1_combout\,
	combout => \displ|Mux18~0_combout\);

-- Location: LCCOMB_X108_Y19_N16
\displ|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux18~1_combout\ = (\SW[1]~input_o\ & ((\displ|Mux18~0_combout\ & ((\displ|Mux37~1GND_combout\))) # (!\displ|Mux18~0_combout\ & (\displ|Mux37~1GND_combout\)))) # (!\SW[1]~input_o\ & (((\displ|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux37~1GND_combout\,
	datab => \SW[1]~input_o\,
	datac => \displ|Mux37~1GND_combout\,
	datad => \displ|Mux18~0_combout\,
	combout => \displ|Mux18~1_combout\);

-- Location: LCCOMB_X108_Y15_N0
\displ|Mux80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux80~0_combout\ = (\displ|Mux19~1_combout\ & (!\displ|Mux20~1_combout\ & (\displ|Mux21~1_combout\ $ (!\displ|Mux18~1_combout\)))) # (!\displ|Mux19~1_combout\ & (\displ|Mux21~1_combout\ & (\displ|Mux20~1_combout\ $ (!\displ|Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux20~1_combout\,
	datab => \displ|Mux21~1_combout\,
	datac => \displ|Mux19~1_combout\,
	datad => \displ|Mux18~1_combout\,
	combout => \displ|Mux80~0_combout\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X108_Y16_N24
\displ|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux43~0_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\displ|s_addrCounters[3][0]~q\)) # (!\SW[0]~input_o\ & ((\displ|s_addrCounters[2][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \displ|s_addrCounters[3][0]~q\,
	datac => \displ|s_addrCounters[2][2]~q\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux43~0_combout\);

-- Location: LCCOMB_X108_Y16_N26
\displ|Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux43~1_combout\ = (\displ|Mux43~0_combout\) # ((!\SW[1]~input_o\ & (\displ|s_addrCounters[1][0]~q\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \displ|Mux43~0_combout\,
	datac => \displ|s_addrCounters[1][0]~q\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux43~1_combout\);

-- Location: LCCOMB_X109_Y15_N10
\displ|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux42~0_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\displ|s_addrCounters[3][1]~q\))) # (!\SW[0]~input_o\ & (\displ|s_addrCounters[2][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[2][3]~q\,
	datab => \SW[1]~input_o\,
	datac => \displ|s_addrCounters[3][1]~q\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux42~0_combout\);

-- Location: LCCOMB_X109_Y15_N20
\displ|Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux42~1_combout\ = (\displ|Mux42~0_combout\) # ((!\SW[1]~input_o\ & (\displ|s_addrCounters[1][1]~q\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux42~0_combout\,
	datab => \SW[1]~input_o\,
	datac => \displ|s_addrCounters[1][1]~q\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux42~1_combout\);

-- Location: LCCOMB_X109_Y15_N8
\displ|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux45~0_combout\ = (\SW[1]~input_o\ & (\displ|s_addrCounters[2][0]~q\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \displ|s_addrCounters[2][0]~q\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux45~0_combout\);

-- Location: LCCOMB_X110_Y16_N0
\displ|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux44~0_combout\ = (\SW[1]~input_o\ & (!\SW[0]~input_o\ & \displ|s_addrCounters[2][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \displ|s_addrCounters[2][1]~q\,
	combout => \displ|Mux44~0_combout\);

-- Location: LCCOMB_X109_Y15_N22
\displ|Mux122~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux122~0_combout\ = (\displ|Mux43~1_combout\ & (!\displ|Mux44~0_combout\ & (\displ|Mux42~1_combout\ $ (!\displ|Mux45~0_combout\)))) # (!\displ|Mux43~1_combout\ & (\displ|Mux45~0_combout\ & (\displ|Mux42~1_combout\ $ (!\displ|Mux44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux43~1_combout\,
	datab => \displ|Mux42~1_combout\,
	datac => \displ|Mux45~0_combout\,
	datad => \displ|Mux44~0_combout\,
	combout => \displ|Mux122~0_combout\);

-- Location: LCCOMB_X108_Y15_N20
\displ|disp4[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp4[0]~0_combout\ = (\SW[2]~input_o\ & ((\displ|Decoder0~0_combout\) # ((\displ|Mux122~0_combout\)))) # (!\SW[2]~input_o\ & (((\displ|Mux80~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Decoder0~0_combout\,
	datab => \displ|Mux80~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \displ|Mux122~0_combout\,
	combout => \displ|disp4[0]~0_combout\);

-- Location: LCCOMB_X108_Y15_N6
\displ|Mux79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux79~0_combout\ = (\displ|Mux20~1_combout\ & ((\displ|Mux21~1_combout\ & ((\displ|Mux18~1_combout\))) # (!\displ|Mux21~1_combout\ & (\displ|Mux19~1_combout\)))) # (!\displ|Mux20~1_combout\ & (\displ|Mux19~1_combout\ & (\displ|Mux21~1_combout\ $ 
-- (\displ|Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux20~1_combout\,
	datab => \displ|Mux21~1_combout\,
	datac => \displ|Mux19~1_combout\,
	datad => \displ|Mux18~1_combout\,
	combout => \displ|Mux79~0_combout\);

-- Location: LCCOMB_X109_Y15_N24
\displ|Mux121~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux121~0_combout\ = (\displ|Mux42~1_combout\ & ((\displ|Mux45~0_combout\ & ((\displ|Mux44~0_combout\))) # (!\displ|Mux45~0_combout\ & (\displ|Mux43~1_combout\)))) # (!\displ|Mux42~1_combout\ & (\displ|Mux43~1_combout\ & (\displ|Mux45~0_combout\ $ 
-- (\displ|Mux44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux43~1_combout\,
	datab => \displ|Mux42~1_combout\,
	datac => \displ|Mux45~0_combout\,
	datad => \displ|Mux44~0_combout\,
	combout => \displ|Mux121~0_combout\);

-- Location: LCCOMB_X108_Y15_N8
\displ|disp4[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp4[1]~1_combout\ = (\SW[2]~input_o\ & (((\displ|Mux121~0_combout\) # (\displ|Decoder0~0_combout\)))) # (!\SW[2]~input_o\ & (\displ|Mux79~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux79~0_combout\,
	datab => \displ|Mux121~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \displ|Decoder0~0_combout\,
	combout => \displ|disp4[1]~1_combout\);

-- Location: LCCOMB_X108_Y15_N18
\displ|Mux78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux78~0_combout\ = (\displ|Mux19~1_combout\ & (\displ|Mux18~1_combout\ & ((\displ|Mux20~1_combout\) # (!\displ|Mux21~1_combout\)))) # (!\displ|Mux19~1_combout\ & (\displ|Mux20~1_combout\ & (!\displ|Mux21~1_combout\ & !\displ|Mux18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux20~1_combout\,
	datab => \displ|Mux21~1_combout\,
	datac => \displ|Mux19~1_combout\,
	datad => \displ|Mux18~1_combout\,
	combout => \displ|Mux78~0_combout\);

-- Location: LCCOMB_X109_Y15_N18
\displ|Mux120~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux120~0_combout\ = (\displ|Mux43~1_combout\ & (\displ|Mux42~1_combout\ & ((\displ|Mux44~0_combout\) # (!\displ|Mux45~0_combout\)))) # (!\displ|Mux43~1_combout\ & (!\displ|Mux42~1_combout\ & (!\displ|Mux45~0_combout\ & \displ|Mux44~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux43~1_combout\,
	datab => \displ|Mux42~1_combout\,
	datac => \displ|Mux45~0_combout\,
	datad => \displ|Mux44~0_combout\,
	combout => \displ|Mux120~0_combout\);

-- Location: LCCOMB_X108_Y15_N28
\displ|disp4[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp4[2]~2_combout\ = (\SW[2]~input_o\ & ((\displ|Decoder0~0_combout\) # ((\displ|Mux120~0_combout\)))) # (!\SW[2]~input_o\ & (((\displ|Mux78~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Decoder0~0_combout\,
	datab => \displ|Mux78~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \displ|Mux120~0_combout\,
	combout => \displ|disp4[2]~2_combout\);

-- Location: LCCOMB_X108_Y15_N30
\displ|Mux77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux77~0_combout\ = (\displ|Mux20~1_combout\ & ((\displ|Mux21~1_combout\ & (\displ|Mux19~1_combout\)) # (!\displ|Mux21~1_combout\ & (!\displ|Mux19~1_combout\ & \displ|Mux18~1_combout\)))) # (!\displ|Mux20~1_combout\ & (!\displ|Mux18~1_combout\ & 
-- (\displ|Mux21~1_combout\ $ (\displ|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux20~1_combout\,
	datab => \displ|Mux21~1_combout\,
	datac => \displ|Mux19~1_combout\,
	datad => \displ|Mux18~1_combout\,
	combout => \displ|Mux77~0_combout\);

-- Location: LCCOMB_X109_Y15_N12
\displ|Mux119~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux119~0_combout\ = (\displ|Mux44~0_combout\ & ((\displ|Mux43~1_combout\ & ((\displ|Mux45~0_combout\))) # (!\displ|Mux43~1_combout\ & (\displ|Mux42~1_combout\ & !\displ|Mux45~0_combout\)))) # (!\displ|Mux44~0_combout\ & (!\displ|Mux42~1_combout\ & 
-- (\displ|Mux43~1_combout\ $ (\displ|Mux45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux43~1_combout\,
	datab => \displ|Mux42~1_combout\,
	datac => \displ|Mux45~0_combout\,
	datad => \displ|Mux44~0_combout\,
	combout => \displ|Mux119~0_combout\);

-- Location: LCCOMB_X108_Y15_N24
\displ|disp4[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp4[3]~3_combout\ = (\SW[2]~input_o\ & (((\displ|Mux119~0_combout\) # (\displ|Decoder0~0_combout\)))) # (!\SW[2]~input_o\ & (\displ|Mux77~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux77~0_combout\,
	datab => \displ|Mux119~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \displ|Decoder0~0_combout\,
	combout => \displ|disp4[3]~3_combout\);

-- Location: LCCOMB_X109_Y15_N30
\displ|Mux118~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux118~0_combout\ = (\displ|Mux44~0_combout\ & (((!\displ|Mux42~1_combout\ & \displ|Mux45~0_combout\)))) # (!\displ|Mux44~0_combout\ & ((\displ|Mux43~1_combout\ & (!\displ|Mux42~1_combout\)) # (!\displ|Mux43~1_combout\ & 
-- ((\displ|Mux45~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux43~1_combout\,
	datab => \displ|Mux42~1_combout\,
	datac => \displ|Mux45~0_combout\,
	datad => \displ|Mux44~0_combout\,
	combout => \displ|Mux118~0_combout\);

-- Location: LCCOMB_X108_Y15_N2
\displ|Mux76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux76~0_combout\ = (\displ|Mux20~1_combout\ & (\displ|Mux21~1_combout\ & ((!\displ|Mux18~1_combout\)))) # (!\displ|Mux20~1_combout\ & ((\displ|Mux19~1_combout\ & ((!\displ|Mux18~1_combout\))) # (!\displ|Mux19~1_combout\ & 
-- (\displ|Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux20~1_combout\,
	datab => \displ|Mux21~1_combout\,
	datac => \displ|Mux19~1_combout\,
	datad => \displ|Mux18~1_combout\,
	combout => \displ|Mux76~0_combout\);

-- Location: LCCOMB_X108_Y15_N12
\displ|disp4[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp4[4]~4_combout\ = (\SW[2]~input_o\ & ((\displ|Mux118~0_combout\) # ((\displ|Decoder0~0_combout\)))) # (!\SW[2]~input_o\ & (((\displ|Mux76~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux118~0_combout\,
	datab => \displ|Mux76~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \displ|Decoder0~0_combout\,
	combout => \displ|disp4[4]~4_combout\);

-- Location: LCCOMB_X108_Y15_N22
\displ|Mux75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux75~0_combout\ = (\displ|Mux20~1_combout\ & (!\displ|Mux18~1_combout\ & ((\displ|Mux21~1_combout\) # (!\displ|Mux19~1_combout\)))) # (!\displ|Mux20~1_combout\ & (\displ|Mux21~1_combout\ & (\displ|Mux19~1_combout\ $ (!\displ|Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux20~1_combout\,
	datab => \displ|Mux21~1_combout\,
	datac => \displ|Mux19~1_combout\,
	datad => \displ|Mux18~1_combout\,
	combout => \displ|Mux75~0_combout\);

-- Location: LCCOMB_X109_Y15_N16
\displ|Mux117~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux117~0_combout\ = (\displ|Mux43~1_combout\ & (\displ|Mux45~0_combout\ & (\displ|Mux42~1_combout\ $ (\displ|Mux44~0_combout\)))) # (!\displ|Mux43~1_combout\ & (!\displ|Mux42~1_combout\ & ((\displ|Mux45~0_combout\) # (\displ|Mux44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux43~1_combout\,
	datab => \displ|Mux42~1_combout\,
	datac => \displ|Mux45~0_combout\,
	datad => \displ|Mux44~0_combout\,
	combout => \displ|Mux117~0_combout\);

-- Location: LCCOMB_X108_Y15_N16
\displ|disp4[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp4[5]~5_combout\ = (\SW[2]~input_o\ & (((\displ|Mux117~0_combout\) # (\displ|Decoder0~0_combout\)))) # (!\SW[2]~input_o\ & (\displ|Mux75~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux75~0_combout\,
	datab => \displ|Mux117~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \displ|Decoder0~0_combout\,
	combout => \displ|disp4[5]~5_combout\);

-- Location: LCCOMB_X108_Y15_N26
\displ|Mux74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux74~0_combout\ = (\displ|Mux21~1_combout\ & ((\displ|Mux18~1_combout\) # (\displ|Mux20~1_combout\ $ (\displ|Mux19~1_combout\)))) # (!\displ|Mux21~1_combout\ & ((\displ|Mux20~1_combout\) # (\displ|Mux19~1_combout\ $ (\displ|Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux20~1_combout\,
	datab => \displ|Mux21~1_combout\,
	datac => \displ|Mux19~1_combout\,
	datad => \displ|Mux18~1_combout\,
	combout => \displ|Mux74~0_combout\);

-- Location: LCCOMB_X109_Y15_N26
\displ|Mux116~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux116~0_combout\ = (\displ|Mux45~0_combout\ & ((\displ|Mux42~1_combout\) # (\displ|Mux43~1_combout\ $ (\displ|Mux44~0_combout\)))) # (!\displ|Mux45~0_combout\ & ((\displ|Mux44~0_combout\) # (\displ|Mux43~1_combout\ $ (\displ|Mux42~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux43~1_combout\,
	datab => \displ|Mux42~1_combout\,
	datac => \displ|Mux45~0_combout\,
	datad => \displ|Mux44~0_combout\,
	combout => \displ|Mux116~0_combout\);

-- Location: LCCOMB_X108_Y15_N4
\displ|disp4[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp4[6]~6_combout\ = (\SW[2]~input_o\ & (((!\displ|Mux116~0_combout\ & !\displ|Decoder0~0_combout\)))) # (!\SW[2]~input_o\ & (!\displ|Mux74~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux74~0_combout\,
	datab => \displ|Mux116~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \displ|Decoder0~0_combout\,
	combout => \displ|disp4[6]~6_combout\);

-- Location: LCCOMB_X106_Y15_N8
\displ|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux41~0_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\displ|s_addrCounters[3][2]~q\))) # (!\SW[0]~input_o\ & (\displ|s_addrCounters[2][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \displ|s_addrCounters[2][4]~q\,
	datac => \displ|s_addrCounters[3][2]~q\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux41~0_combout\);

-- Location: LCCOMB_X106_Y15_N18
\displ|Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux41~1_combout\ = (\displ|Mux41~0_combout\) # ((\SW[0]~input_o\ & (\displ|s_addrCounters[1][2]~q\ & !\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \displ|Mux41~0_combout\,
	datac => \displ|s_addrCounters[1][2]~q\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux41~1_combout\);

-- Location: LCCOMB_X106_Y15_N28
\displ|Mux115~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux115~0_combout\ = (\displ|Mux39~0_combout\ & (!\displ|Mux40~0_combout\ & (\displ|Mux41~1_combout\ $ (!\displ|Mux38~0_combout\)))) # (!\displ|Mux39~0_combout\ & (\displ|Mux41~1_combout\ & (\displ|Mux38~0_combout\ $ (!\displ|Mux40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux39~0_combout\,
	datab => \displ|Mux41~1_combout\,
	datac => \displ|Mux38~0_combout\,
	datad => \displ|Mux40~0_combout\,
	combout => \displ|Mux115~0_combout\);

-- Location: LCCOMB_X107_Y17_N6
\pcupdate|s_pc[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[20]~66_combout\ = (\pcupdate|s_pc\(20) & (\pcupdate|s_pc[19]~65\ $ (GND))) # (!\pcupdate|s_pc\(20) & (!\pcupdate|s_pc[19]~65\ & VCC))
-- \pcupdate|s_pc[20]~67\ = CARRY((\pcupdate|s_pc\(20) & !\pcupdate|s_pc[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(20),
	datad => VCC,
	cin => \pcupdate|s_pc[19]~65\,
	combout => \pcupdate|s_pc[20]~66_combout\,
	cout => \pcupdate|s_pc[20]~67\);

-- Location: FF_X107_Y17_N7
\pcupdate|s_pc[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[20]~66_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(20));

-- Location: LCCOMB_X106_Y17_N24
\displ|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux17~0_combout\ = (\SW[1]~input_o\ & ((\displ|Mux37~1GND_combout\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((!\SW[0]~input_o\ & \pcupdate|s_pc\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux37~1GND_combout\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \pcupdate|s_pc\(20),
	combout => \displ|Mux17~0_combout\);

-- Location: LCCOMB_X106_Y17_N26
\displ|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux17~1_combout\ = (\displ|Mux17~0_combout\ & ((\displ|Mux37~1GND_combout\) # (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Mux17~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \displ|Mux37~1GND_combout\,
	combout => \displ|Mux17~1_combout\);

-- Location: LCCOMB_X107_Y19_N12
\instrution_memory|Mux33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux33~2_combout\ = (\displ|s_addrCounters[1][4]~q\) # ((\displ|s_addrCounters[1][5]~q\) # (\instrution_memory|Mux29~10_combout\ $ (!\displ|s_addrCounters[1][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrution_memory|Mux29~10_combout\,
	datab => \displ|s_addrCounters[1][4]~q\,
	datac => \displ|s_addrCounters[1][5]~q\,
	datad => \displ|s_addrCounters[1][3]~q\,
	combout => \instrution_memory|Mux33~2_combout\);

-- Location: LCCOMB_X107_Y17_N8
\pcupdate|s_pc[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[21]~68_combout\ = (\pcupdate|s_pc\(21) & (!\pcupdate|s_pc[20]~67\)) # (!\pcupdate|s_pc\(21) & ((\pcupdate|s_pc[20]~67\) # (GND)))
-- \pcupdate|s_pc[21]~69\ = CARRY((!\pcupdate|s_pc[20]~67\) # (!\pcupdate|s_pc\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdate|s_pc\(21),
	datad => VCC,
	cin => \pcupdate|s_pc[20]~67\,
	combout => \pcupdate|s_pc[21]~68_combout\,
	cout => \pcupdate|s_pc[21]~69\);

-- Location: FF_X107_Y17_N9
\pcupdate|s_pc[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[21]~68_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(21));

-- Location: LCCOMB_X107_Y17_N10
\pcupdate|s_pc[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[22]~70_combout\ = (\pcupdate|s_pc\(22) & (\pcupdate|s_pc[21]~69\ $ (GND))) # (!\pcupdate|s_pc\(22) & (!\pcupdate|s_pc[21]~69\ & VCC))
-- \pcupdate|s_pc[22]~71\ = CARRY((\pcupdate|s_pc\(22) & !\pcupdate|s_pc[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(22),
	datad => VCC,
	cin => \pcupdate|s_pc[21]~69\,
	combout => \pcupdate|s_pc[22]~70_combout\,
	cout => \pcupdate|s_pc[22]~71\);

-- Location: FF_X107_Y17_N11
\pcupdate|s_pc[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[22]~70_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(22));

-- Location: LCCOMB_X106_Y17_N20
\displ|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux15~0_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\displ|Mux37~1GND_combout\)) # (!\SW[1]~input_o\ & ((\pcupdate|s_pc\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux37~1GND_combout\,
	datab => \pcupdate|s_pc\(22),
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux15~0_combout\);

-- Location: LCCOMB_X106_Y17_N22
\displ|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux15~1_combout\ = (\displ|Mux15~0_combout\ & (((\displ|Mux37~1GND_combout\) # (!\SW[0]~input_o\)))) # (!\displ|Mux15~0_combout\ & (!\instrution_memory|Mux33~2_combout\ & (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrution_memory|Mux33~2_combout\,
	datab => \displ|Mux15~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \displ|Mux37~1GND_combout\,
	combout => \displ|Mux15~1_combout\);

-- Location: LCCOMB_X107_Y17_N12
\pcupdate|s_pc[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[23]~72_combout\ = (\pcupdate|s_pc\(23) & (!\pcupdate|s_pc[22]~71\)) # (!\pcupdate|s_pc\(23) & ((\pcupdate|s_pc[22]~71\) # (GND)))
-- \pcupdate|s_pc[23]~73\ = CARRY((!\pcupdate|s_pc[22]~71\) # (!\pcupdate|s_pc\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(23),
	datad => VCC,
	cin => \pcupdate|s_pc[22]~71\,
	combout => \pcupdate|s_pc[23]~72_combout\,
	cout => \pcupdate|s_pc[23]~73\);

-- Location: FF_X107_Y17_N13
\pcupdate|s_pc[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[23]~72_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(23));

-- Location: LCCOMB_X108_Y16_N22
\instrution_memory|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux32~0_combout\ = (\instrution_memory|Mux29~6_combout\ & (\displ|s_addrCounters[1][2]~q\ & (!\displ|s_addrCounters[1][0]~q\ & \displ|s_addrCounters[1][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrution_memory|Mux29~6_combout\,
	datab => \displ|s_addrCounters[1][2]~q\,
	datac => \displ|s_addrCounters[1][0]~q\,
	datad => \displ|s_addrCounters[1][3]~q\,
	combout => \instrution_memory|Mux32~0_combout\);

-- Location: LCCOMB_X107_Y16_N12
\displ|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux14~0_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\instrution_memory|Mux32~0_combout\))) # (!\SW[0]~input_o\ & (\pcupdate|s_pc\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(23),
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \instrution_memory|Mux32~0_combout\,
	combout => \displ|Mux14~0_combout\);

-- Location: LCCOMB_X107_Y16_N30
\displ|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux14~1_combout\ = (\displ|Mux14~0_combout\ & ((\displ|Mux37~1GND_combout\) # ((!\SW[1]~input_o\)))) # (!\displ|Mux14~0_combout\ & (((\SW[1]~input_o\ & \displ|Mux37~1GND_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux14~0_combout\,
	datab => \displ|Mux37~1GND_combout\,
	datac => \SW[1]~input_o\,
	datad => \displ|Mux37~1GND_combout\,
	combout => \displ|Mux14~1_combout\);

-- Location: LCCOMB_X108_Y16_N4
\instrution_memory|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux34~0_combout\ = (\instrution_memory|Mux29~6_combout\ & ((\displ|s_addrCounters[1][2]~q\ & ((\displ|s_addrCounters[1][3]~q\))) # (!\displ|s_addrCounters[1][2]~q\ & (\displ|s_addrCounters[1][0]~q\ & !\displ|s_addrCounters[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrution_memory|Mux29~6_combout\,
	datab => \displ|s_addrCounters[1][2]~q\,
	datac => \displ|s_addrCounters[1][0]~q\,
	datad => \displ|s_addrCounters[1][3]~q\,
	combout => \instrution_memory|Mux34~0_combout\);

-- Location: LCCOMB_X107_Y16_N16
\displ|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux16~0_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\instrution_memory|Mux34~0_combout\)) # (!\SW[0]~input_o\ & ((\pcupdate|s_pc\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrution_memory|Mux34~0_combout\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \pcupdate|s_pc\(21),
	combout => \displ|Mux16~0_combout\);

-- Location: LCCOMB_X107_Y16_N26
\displ|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux16~1_combout\ = (\displ|Mux16~0_combout\ & (((\displ|Mux37~1GND_combout\) # (!\SW[1]~input_o\)))) # (!\displ|Mux16~0_combout\ & (\displ|Mux37~1GND_combout\ & (\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux16~0_combout\,
	datab => \displ|Mux37~1GND_combout\,
	datac => \SW[1]~input_o\,
	datad => \displ|Mux37~1GND_combout\,
	combout => \displ|Mux16~1_combout\);

-- Location: LCCOMB_X106_Y14_N24
\displ|Mux87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux87~0_combout\ = (\displ|Mux15~1_combout\ & (!\displ|Mux16~1_combout\ & (\displ|Mux17~1_combout\ $ (!\displ|Mux14~1_combout\)))) # (!\displ|Mux15~1_combout\ & (\displ|Mux17~1_combout\ & (\displ|Mux14~1_combout\ $ (!\displ|Mux16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux17~1_combout\,
	datab => \displ|Mux15~1_combout\,
	datac => \displ|Mux14~1_combout\,
	datad => \displ|Mux16~1_combout\,
	combout => \displ|Mux87~0_combout\);

-- Location: LCCOMB_X106_Y14_N2
\displ|disp5[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp5[0]~0_combout\ = (\SW[2]~input_o\ & ((\displ|Decoder0~0_combout\) # ((\displ|Mux115~0_combout\)))) # (!\SW[2]~input_o\ & (((\displ|Mux87~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Decoder0~0_combout\,
	datab => \displ|Mux115~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \displ|Mux87~0_combout\,
	combout => \displ|disp5[0]~0_combout\);

-- Location: LCCOMB_X106_Y14_N20
\displ|Mux86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux86~0_combout\ = (\displ|Mux14~1_combout\ & ((\displ|Mux17~1_combout\ & ((\displ|Mux16~1_combout\))) # (!\displ|Mux17~1_combout\ & (\displ|Mux15~1_combout\)))) # (!\displ|Mux14~1_combout\ & (\displ|Mux15~1_combout\ & (\displ|Mux17~1_combout\ $ 
-- (\displ|Mux16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux17~1_combout\,
	datab => \displ|Mux15~1_combout\,
	datac => \displ|Mux14~1_combout\,
	datad => \displ|Mux16~1_combout\,
	combout => \displ|Mux86~0_combout\);

-- Location: LCCOMB_X106_Y15_N30
\displ|Mux114~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux114~0_combout\ = (\displ|Mux38~0_combout\ & ((\displ|Mux41~1_combout\ & ((\displ|Mux40~0_combout\))) # (!\displ|Mux41~1_combout\ & (\displ|Mux39~0_combout\)))) # (!\displ|Mux38~0_combout\ & (\displ|Mux39~0_combout\ & (\displ|Mux41~1_combout\ $ 
-- (\displ|Mux40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux39~0_combout\,
	datab => \displ|Mux41~1_combout\,
	datac => \displ|Mux38~0_combout\,
	datad => \displ|Mux40~0_combout\,
	combout => \displ|Mux114~0_combout\);

-- Location: LCCOMB_X106_Y14_N14
\displ|disp5[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp5[1]~1_combout\ = (\SW[2]~input_o\ & ((\displ|Decoder0~0_combout\) # ((\displ|Mux114~0_combout\)))) # (!\SW[2]~input_o\ & (((\displ|Mux86~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Decoder0~0_combout\,
	datab => \displ|Mux86~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \displ|Mux114~0_combout\,
	combout => \displ|disp5[1]~1_combout\);

-- Location: LCCOMB_X106_Y15_N16
\displ|Mux113~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux113~0_combout\ = (\displ|Mux39~0_combout\ & (\displ|Mux38~0_combout\ & ((\displ|Mux40~0_combout\) # (!\displ|Mux41~1_combout\)))) # (!\displ|Mux39~0_combout\ & (!\displ|Mux41~1_combout\ & (!\displ|Mux38~0_combout\ & \displ|Mux40~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux39~0_combout\,
	datab => \displ|Mux41~1_combout\,
	datac => \displ|Mux38~0_combout\,
	datad => \displ|Mux40~0_combout\,
	combout => \displ|Mux113~0_combout\);

-- Location: LCCOMB_X106_Y14_N16
\displ|Mux85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux85~0_combout\ = (\displ|Mux15~1_combout\ & (\displ|Mux14~1_combout\ & ((\displ|Mux16~1_combout\) # (!\displ|Mux17~1_combout\)))) # (!\displ|Mux15~1_combout\ & (!\displ|Mux17~1_combout\ & (!\displ|Mux14~1_combout\ & \displ|Mux16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux17~1_combout\,
	datab => \displ|Mux15~1_combout\,
	datac => \displ|Mux14~1_combout\,
	datad => \displ|Mux16~1_combout\,
	combout => \displ|Mux85~0_combout\);

-- Location: LCCOMB_X106_Y14_N18
\displ|disp5[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp5[2]~2_combout\ = (\SW[2]~input_o\ & ((\displ|Decoder0~0_combout\) # ((\displ|Mux113~0_combout\)))) # (!\SW[2]~input_o\ & (((\displ|Mux85~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Decoder0~0_combout\,
	datab => \displ|Mux113~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \displ|Mux85~0_combout\,
	combout => \displ|disp5[2]~2_combout\);

-- Location: LCCOMB_X106_Y14_N28
\displ|Mux84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux84~0_combout\ = (\displ|Mux16~1_combout\ & ((\displ|Mux17~1_combout\ & (\displ|Mux15~1_combout\)) # (!\displ|Mux17~1_combout\ & (!\displ|Mux15~1_combout\ & \displ|Mux14~1_combout\)))) # (!\displ|Mux16~1_combout\ & (!\displ|Mux14~1_combout\ & 
-- (\displ|Mux17~1_combout\ $ (\displ|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux17~1_combout\,
	datab => \displ|Mux15~1_combout\,
	datac => \displ|Mux14~1_combout\,
	datad => \displ|Mux16~1_combout\,
	combout => \displ|Mux84~0_combout\);

-- Location: LCCOMB_X106_Y15_N10
\displ|Mux112~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux112~0_combout\ = (\displ|Mux40~0_combout\ & ((\displ|Mux39~0_combout\ & (\displ|Mux41~1_combout\)) # (!\displ|Mux39~0_combout\ & (!\displ|Mux41~1_combout\ & \displ|Mux38~0_combout\)))) # (!\displ|Mux40~0_combout\ & (!\displ|Mux38~0_combout\ & 
-- (\displ|Mux39~0_combout\ $ (\displ|Mux41~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux39~0_combout\,
	datab => \displ|Mux41~1_combout\,
	datac => \displ|Mux38~0_combout\,
	datad => \displ|Mux40~0_combout\,
	combout => \displ|Mux112~0_combout\);

-- Location: LCCOMB_X106_Y14_N30
\displ|disp5[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp5[3]~3_combout\ = (\SW[2]~input_o\ & ((\displ|Decoder0~0_combout\) # ((\displ|Mux112~0_combout\)))) # (!\SW[2]~input_o\ & (((\displ|Mux84~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Decoder0~0_combout\,
	datab => \displ|Mux84~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \displ|Mux112~0_combout\,
	combout => \displ|disp5[3]~3_combout\);

-- Location: LCCOMB_X106_Y15_N12
\displ|Mux111~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux111~0_combout\ = (\displ|Mux40~0_combout\ & (((\displ|Mux41~1_combout\ & !\displ|Mux38~0_combout\)))) # (!\displ|Mux40~0_combout\ & ((\displ|Mux39~0_combout\ & ((!\displ|Mux38~0_combout\))) # (!\displ|Mux39~0_combout\ & 
-- (\displ|Mux41~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux39~0_combout\,
	datab => \displ|Mux41~1_combout\,
	datac => \displ|Mux38~0_combout\,
	datad => \displ|Mux40~0_combout\,
	combout => \displ|Mux111~0_combout\);

-- Location: LCCOMB_X106_Y14_N8
\displ|Mux83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux83~0_combout\ = (\displ|Mux16~1_combout\ & (\displ|Mux17~1_combout\ & ((!\displ|Mux14~1_combout\)))) # (!\displ|Mux16~1_combout\ & ((\displ|Mux15~1_combout\ & ((!\displ|Mux14~1_combout\))) # (!\displ|Mux15~1_combout\ & 
-- (\displ|Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux17~1_combout\,
	datab => \displ|Mux15~1_combout\,
	datac => \displ|Mux14~1_combout\,
	datad => \displ|Mux16~1_combout\,
	combout => \displ|Mux83~0_combout\);

-- Location: LCCOMB_X106_Y14_N26
\displ|disp5[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp5[4]~4_combout\ = (\SW[2]~input_o\ & ((\displ|Mux111~0_combout\) # ((\displ|Decoder0~0_combout\)))) # (!\SW[2]~input_o\ & (((\displ|Mux83~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux111~0_combout\,
	datab => \SW[2]~input_o\,
	datac => \displ|Decoder0~0_combout\,
	datad => \displ|Mux83~0_combout\,
	combout => \displ|disp5[4]~4_combout\);

-- Location: LCCOMB_X106_Y14_N12
\displ|Mux82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux82~0_combout\ = (\displ|Mux17~1_combout\ & (\displ|Mux14~1_combout\ $ (((\displ|Mux16~1_combout\) # (!\displ|Mux15~1_combout\))))) # (!\displ|Mux17~1_combout\ & (!\displ|Mux15~1_combout\ & (!\displ|Mux14~1_combout\ & \displ|Mux16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux17~1_combout\,
	datab => \displ|Mux15~1_combout\,
	datac => \displ|Mux14~1_combout\,
	datad => \displ|Mux16~1_combout\,
	combout => \displ|Mux82~0_combout\);

-- Location: LCCOMB_X106_Y15_N22
\displ|Mux110~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux110~0_combout\ = (\displ|Mux39~0_combout\ & (\displ|Mux41~1_combout\ & (\displ|Mux38~0_combout\ $ (\displ|Mux40~0_combout\)))) # (!\displ|Mux39~0_combout\ & (!\displ|Mux38~0_combout\ & ((\displ|Mux41~1_combout\) # (\displ|Mux40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux39~0_combout\,
	datab => \displ|Mux41~1_combout\,
	datac => \displ|Mux38~0_combout\,
	datad => \displ|Mux40~0_combout\,
	combout => \displ|Mux110~0_combout\);

-- Location: LCCOMB_X106_Y14_N6
\displ|disp5[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp5[5]~5_combout\ = (\SW[2]~input_o\ & (((\displ|Decoder0~0_combout\) # (\displ|Mux110~0_combout\)))) # (!\SW[2]~input_o\ & (\displ|Mux82~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux82~0_combout\,
	datab => \SW[2]~input_o\,
	datac => \displ|Decoder0~0_combout\,
	datad => \displ|Mux110~0_combout\,
	combout => \displ|disp5[5]~5_combout\);

-- Location: LCCOMB_X106_Y14_N0
\displ|Mux81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux81~0_combout\ = (\displ|Mux17~1_combout\ & ((\displ|Mux14~1_combout\) # (\displ|Mux15~1_combout\ $ (\displ|Mux16~1_combout\)))) # (!\displ|Mux17~1_combout\ & ((\displ|Mux16~1_combout\) # (\displ|Mux15~1_combout\ $ (\displ|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux17~1_combout\,
	datab => \displ|Mux15~1_combout\,
	datac => \displ|Mux14~1_combout\,
	datad => \displ|Mux16~1_combout\,
	combout => \displ|Mux81~0_combout\);

-- Location: LCCOMB_X106_Y15_N24
\displ|Mux109~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux109~0_combout\ = (\displ|Mux41~1_combout\ & ((\displ|Mux38~0_combout\) # (\displ|Mux39~0_combout\ $ (\displ|Mux40~0_combout\)))) # (!\displ|Mux41~1_combout\ & ((\displ|Mux40~0_combout\) # (\displ|Mux39~0_combout\ $ (\displ|Mux38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux39~0_combout\,
	datab => \displ|Mux41~1_combout\,
	datac => \displ|Mux38~0_combout\,
	datad => \displ|Mux40~0_combout\,
	combout => \displ|Mux109~0_combout\);

-- Location: LCCOMB_X106_Y14_N10
\displ|disp5[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp5[6]~6_combout\ = (\SW[2]~input_o\ & (!\displ|Decoder0~0_combout\ & ((!\displ|Mux109~0_combout\)))) # (!\SW[2]~input_o\ & (((!\displ|Mux81~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Decoder0~0_combout\,
	datab => \displ|Mux81~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \displ|Mux109~0_combout\,
	combout => \displ|disp5[6]~6_combout\);

-- Location: LCCOMB_X107_Y17_N14
\pcupdate|s_pc[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[24]~74_combout\ = (\pcupdate|s_pc\(24) & (\pcupdate|s_pc[23]~73\ $ (GND))) # (!\pcupdate|s_pc\(24) & (!\pcupdate|s_pc[23]~73\ & VCC))
-- \pcupdate|s_pc[24]~75\ = CARRY((\pcupdate|s_pc\(24) & !\pcupdate|s_pc[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdate|s_pc\(24),
	datad => VCC,
	cin => \pcupdate|s_pc[23]~73\,
	combout => \pcupdate|s_pc[24]~74_combout\,
	cout => \pcupdate|s_pc[24]~75\);

-- Location: FF_X107_Y17_N15
\pcupdate|s_pc[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[24]~74_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(24));

-- Location: LCCOMB_X106_Y17_N0
\displ|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux13~0_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\displ|Mux37~1GND_combout\)) # (!\SW[1]~input_o\ & ((\pcupdate|s_pc\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux37~1GND_combout\,
	datab => \pcupdate|s_pc\(24),
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux13~0_combout\);

-- Location: LCCOMB_X106_Y17_N10
\displ|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux13~1_combout\ = (\displ|Mux13~0_combout\ & ((\displ|Mux37~1GND_combout\) # ((!\SW[0]~input_o\)))) # (!\displ|Mux13~0_combout\ & (((\SW[0]~input_o\ & \instrution_memory|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux37~1GND_combout\,
	datab => \displ|Mux13~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \instrution_memory|Mux31~2_combout\,
	combout => \displ|Mux13~1_combout\);

-- Location: LCCOMB_X106_Y18_N28
\instrution_memory|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux28~1_combout\ = (\instrution_memory|Mux28~0_combout\ & (!\displ|s_addrCounters[1][0]~q\ & (!\displ|s_addrCounters[1][3]~q\ & !\displ|s_addrCounters[1][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrution_memory|Mux28~0_combout\,
	datab => \displ|s_addrCounters[1][0]~q\,
	datac => \displ|s_addrCounters[1][3]~q\,
	datad => \displ|s_addrCounters[1][2]~q\,
	combout => \instrution_memory|Mux28~1_combout\);

-- Location: LCCOMB_X107_Y17_N16
\pcupdate|s_pc[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[25]~76_combout\ = (\pcupdate|s_pc\(25) & (!\pcupdate|s_pc[24]~75\)) # (!\pcupdate|s_pc\(25) & ((\pcupdate|s_pc[24]~75\) # (GND)))
-- \pcupdate|s_pc[25]~77\ = CARRY((!\pcupdate|s_pc[24]~75\) # (!\pcupdate|s_pc\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdate|s_pc\(25),
	datad => VCC,
	cin => \pcupdate|s_pc[24]~75\,
	combout => \pcupdate|s_pc[25]~76_combout\,
	cout => \pcupdate|s_pc[25]~77\);

-- Location: FF_X107_Y17_N17
\pcupdate|s_pc[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[25]~76_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(25));

-- Location: LCCOMB_X107_Y17_N18
\pcupdate|s_pc[26]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[26]~78_combout\ = (\pcupdate|s_pc\(26) & (\pcupdate|s_pc[25]~77\ $ (GND))) # (!\pcupdate|s_pc\(26) & (!\pcupdate|s_pc[25]~77\ & VCC))
-- \pcupdate|s_pc[26]~79\ = CARRY((\pcupdate|s_pc\(26) & !\pcupdate|s_pc[25]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdate|s_pc\(26),
	datad => VCC,
	cin => \pcupdate|s_pc[25]~77\,
	combout => \pcupdate|s_pc[26]~78_combout\,
	cout => \pcupdate|s_pc[26]~79\);

-- Location: FF_X107_Y17_N19
\pcupdate|s_pc[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[26]~78_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(26));

-- Location: LCCOMB_X106_Y17_N6
\displ|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux11~0_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\displ|Mux37~1GND_combout\)) # (!\SW[1]~input_o\ & ((\pcupdate|s_pc\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux37~1GND_combout\,
	datab => \pcupdate|s_pc\(26),
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux11~0_combout\);

-- Location: LCCOMB_X106_Y18_N22
\displ|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux11~1_combout\ = (\SW[0]~input_o\ & ((\displ|Mux11~0_combout\ & ((\displ|Mux37~1GND_combout\))) # (!\displ|Mux11~0_combout\ & (\instrution_memory|Mux28~1_combout\)))) # (!\SW[0]~input_o\ & (((\displ|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \instrution_memory|Mux28~1_combout\,
	datac => \displ|Mux37~1GND_combout\,
	datad => \displ|Mux11~0_combout\,
	combout => \displ|Mux11~1_combout\);

-- Location: LCCOMB_X106_Y18_N24
\instrution_memory|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux30~0_combout\ = (\instrution_memory|Mux28~1_combout\) # ((\displ|s_addrCounters[1][3]~q\ & \instrution_memory|Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instrution_memory|Mux28~1_combout\,
	datac => \displ|s_addrCounters[1][3]~q\,
	datad => \instrution_memory|Mux31~0_combout\,
	combout => \instrution_memory|Mux30~0_combout\);

-- Location: LCCOMB_X107_Y17_N20
\pcupdate|s_pc[27]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[27]~80_combout\ = (\pcupdate|s_pc\(27) & (!\pcupdate|s_pc[26]~79\)) # (!\pcupdate|s_pc\(27) & ((\pcupdate|s_pc[26]~79\) # (GND)))
-- \pcupdate|s_pc[27]~81\ = CARRY((!\pcupdate|s_pc[26]~79\) # (!\pcupdate|s_pc\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdate|s_pc\(27),
	datad => VCC,
	cin => \pcupdate|s_pc[26]~79\,
	combout => \pcupdate|s_pc[27]~80_combout\,
	cout => \pcupdate|s_pc[27]~81\);

-- Location: FF_X107_Y17_N21
\pcupdate|s_pc[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[27]~80_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(27));

-- Location: LCCOMB_X106_Y18_N26
\displ|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux10~0_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\instrution_memory|Mux30~0_combout\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & ((\pcupdate|s_pc\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \instrution_memory|Mux30~0_combout\,
	datad => \pcupdate|s_pc\(27),
	combout => \displ|Mux10~0_combout\);

-- Location: LCCOMB_X105_Y18_N8
\displ|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux10~1_combout\ = (\displ|Mux10~0_combout\ & (((\displ|Mux37~1GND_combout\) # (!\SW[1]~input_o\)))) # (!\displ|Mux10~0_combout\ & (\displ|Mux37~1GND_combout\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux10~0_combout\,
	datab => \displ|Mux37~1GND_combout\,
	datac => \displ|Mux37~1GND_combout\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux10~1_combout\);

-- Location: LCCOMB_X106_Y17_N4
\displ|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux12~0_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\))) # (!\SW[0]~input_o\ & (\pcupdate|s_pc\(25) & !\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pcupdate|s_pc\(25),
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux12~0_combout\);

-- Location: LCCOMB_X106_Y18_N18
\displ|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux12~1_combout\ = (\displ|Mux12~0_combout\ & (((\displ|Mux37~1GND_combout\) # (!\SW[1]~input_o\)))) # (!\displ|Mux12~0_combout\ & (\displ|Mux37~1GND_combout\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux12~0_combout\,
	datab => \displ|Mux37~1GND_combout\,
	datac => \displ|Mux37~1GND_combout\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux12~1_combout\);

-- Location: LCCOMB_X105_Y18_N2
\displ|Mux94~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux94~0_combout\ = (\displ|Mux11~1_combout\ & (!\displ|Mux12~1_combout\ & (\displ|Mux13~1_combout\ $ (!\displ|Mux10~1_combout\)))) # (!\displ|Mux11~1_combout\ & (\displ|Mux13~1_combout\ & (\displ|Mux10~1_combout\ $ (!\displ|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux13~1_combout\,
	datab => \displ|Mux11~1_combout\,
	datac => \displ|Mux10~1_combout\,
	datad => \displ|Mux12~1_combout\,
	combout => \displ|Mux94~0_combout\);

-- Location: LCCOMB_X105_Y18_N4
\displ|disp6[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp6[0]~0_combout\ = (\SW[2]~input_o\ & (\SW[0]~input_o\ & ((\SW[1]~input_o\)))) # (!\SW[2]~input_o\ & (((\displ|Mux94~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \displ|Mux94~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|disp6[0]~0_combout\);

-- Location: LCCOMB_X105_Y18_N30
\displ|Mux93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux93~0_combout\ = (\displ|Mux10~1_combout\ & ((\displ|Mux13~1_combout\ & ((\displ|Mux12~1_combout\))) # (!\displ|Mux13~1_combout\ & (\displ|Mux11~1_combout\)))) # (!\displ|Mux10~1_combout\ & (\displ|Mux11~1_combout\ & (\displ|Mux13~1_combout\ $ 
-- (\displ|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux13~1_combout\,
	datab => \displ|Mux11~1_combout\,
	datac => \displ|Mux10~1_combout\,
	datad => \displ|Mux12~1_combout\,
	combout => \displ|Mux93~0_combout\);

-- Location: LCCOMB_X105_Y18_N16
\displ|disp6[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp6[1]~1_combout\ = (\SW[2]~input_o\ & ((\SW[1]~input_o\ $ (\SW[0]~input_o\)))) # (!\SW[2]~input_o\ & (\displ|Mux93~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux93~0_combout\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|disp6[1]~1_combout\);

-- Location: LCCOMB_X105_Y18_N10
\displ|Mux92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux92~0_combout\ = (\displ|Mux11~1_combout\ & (\displ|Mux10~1_combout\ & ((\displ|Mux12~1_combout\) # (!\displ|Mux13~1_combout\)))) # (!\displ|Mux11~1_combout\ & (!\displ|Mux13~1_combout\ & (!\displ|Mux10~1_combout\ & \displ|Mux12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux13~1_combout\,
	datab => \displ|Mux11~1_combout\,
	datac => \displ|Mux10~1_combout\,
	datad => \displ|Mux12~1_combout\,
	combout => \displ|Mux92~0_combout\);

-- Location: LCCOMB_X105_Y18_N28
\displ|disp6[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp6[2]~2_combout\ = (\SW[2]~input_o\ & (((!\SW[0]~input_o\) # (!\SW[1]~input_o\)))) # (!\SW[2]~input_o\ & (\displ|Mux92~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux92~0_combout\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|disp6[2]~2_combout\);

-- Location: LCCOMB_X105_Y18_N6
\displ|Mux91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux91~0_combout\ = (\displ|Mux12~1_combout\ & ((\displ|Mux13~1_combout\ & (\displ|Mux11~1_combout\)) # (!\displ|Mux13~1_combout\ & (!\displ|Mux11~1_combout\ & \displ|Mux10~1_combout\)))) # (!\displ|Mux12~1_combout\ & (!\displ|Mux10~1_combout\ & 
-- (\displ|Mux13~1_combout\ $ (\displ|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux13~1_combout\,
	datab => \displ|Mux11~1_combout\,
	datac => \displ|Mux10~1_combout\,
	datad => \displ|Mux12~1_combout\,
	combout => \displ|Mux91~0_combout\);

-- Location: LCCOMB_X105_Y18_N0
\displ|disp6[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp6[3]~3_combout\ = (\SW[2]~input_o\ & ((!\SW[0]~input_o\))) # (!\SW[2]~input_o\ & (\displ|Mux91~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux91~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|disp6[3]~3_combout\);

-- Location: LCCOMB_X105_Y18_N18
\displ|Mux90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux90~0_combout\ = (\displ|Mux12~1_combout\ & (\displ|Mux13~1_combout\ & ((!\displ|Mux10~1_combout\)))) # (!\displ|Mux12~1_combout\ & ((\displ|Mux11~1_combout\ & ((!\displ|Mux10~1_combout\))) # (!\displ|Mux11~1_combout\ & 
-- (\displ|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux13~1_combout\,
	datab => \displ|Mux11~1_combout\,
	datac => \displ|Mux10~1_combout\,
	datad => \displ|Mux12~1_combout\,
	combout => \displ|Mux90~0_combout\);

-- Location: LCCOMB_X74_Y4_N8
\displ|disp6[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp6[4]~4_combout\ = (!\SW[2]~input_o\ & \displ|Mux90~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \displ|Mux90~0_combout\,
	combout => \displ|disp6[4]~4_combout\);

-- Location: LCCOMB_X105_Y18_N20
\displ|Mux89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux89~0_combout\ = (\displ|Mux13~1_combout\ & (\displ|Mux10~1_combout\ $ (((\displ|Mux12~1_combout\) # (!\displ|Mux11~1_combout\))))) # (!\displ|Mux13~1_combout\ & (!\displ|Mux11~1_combout\ & (!\displ|Mux10~1_combout\ & \displ|Mux12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux13~1_combout\,
	datab => \displ|Mux11~1_combout\,
	datac => \displ|Mux10~1_combout\,
	datad => \displ|Mux12~1_combout\,
	combout => \displ|Mux89~0_combout\);

-- Location: LCCOMB_X105_Y18_N22
\displ|disp6[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp6[5]~5_combout\ = (\SW[2]~input_o\ & (\SW[0]~input_o\ & ((\SW[1]~input_o\)))) # (!\SW[2]~input_o\ & (((\displ|Mux89~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \displ|Mux89~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|disp6[5]~5_combout\);

-- Location: LCCOMB_X105_Y18_N24
\displ|Mux88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux88~0_combout\ = (\displ|Mux13~1_combout\ & ((\displ|Mux10~1_combout\) # (\displ|Mux11~1_combout\ $ (\displ|Mux12~1_combout\)))) # (!\displ|Mux13~1_combout\ & ((\displ|Mux12~1_combout\) # (\displ|Mux11~1_combout\ $ (\displ|Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux13~1_combout\,
	datab => \displ|Mux11~1_combout\,
	datac => \displ|Mux10~1_combout\,
	datad => \displ|Mux12~1_combout\,
	combout => \displ|Mux88~0_combout\);

-- Location: LCCOMB_X105_Y18_N26
\displ|disp6[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp6[6]~6_combout\ = (\SW[2]~input_o\ & (\SW[0]~input_o\ & ((!\SW[1]~input_o\)))) # (!\SW[2]~input_o\ & (((!\displ|Mux88~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \displ|Mux88~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|disp6[6]~6_combout\);

-- Location: LCCOMB_X107_Y17_N22
\pcupdate|s_pc[28]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[28]~82_combout\ = (\pcupdate|s_pc\(28) & (\pcupdate|s_pc[27]~81\ $ (GND))) # (!\pcupdate|s_pc\(28) & (!\pcupdate|s_pc[27]~81\ & VCC))
-- \pcupdate|s_pc[28]~83\ = CARRY((\pcupdate|s_pc\(28) & !\pcupdate|s_pc[27]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(28),
	datad => VCC,
	cin => \pcupdate|s_pc[27]~81\,
	combout => \pcupdate|s_pc[28]~82_combout\,
	cout => \pcupdate|s_pc[28]~83\);

-- Location: FF_X107_Y17_N23
\pcupdate|s_pc[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[28]~82_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(28));

-- Location: LCCOMB_X107_Y17_N24
\pcupdate|s_pc[29]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[29]~84_combout\ = (\pcupdate|s_pc\(29) & (!\pcupdate|s_pc[28]~83\)) # (!\pcupdate|s_pc\(29) & ((\pcupdate|s_pc[28]~83\) # (GND)))
-- \pcupdate|s_pc[29]~85\ = CARRY((!\pcupdate|s_pc[28]~83\) # (!\pcupdate|s_pc\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdate|s_pc\(29),
	datad => VCC,
	cin => \pcupdate|s_pc[28]~83\,
	combout => \pcupdate|s_pc[29]~84_combout\,
	cout => \pcupdate|s_pc[29]~85\);

-- Location: FF_X107_Y17_N25
\pcupdate|s_pc[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[29]~84_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(29));

-- Location: LCCOMB_X107_Y17_N26
\pcupdate|s_pc[30]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[30]~86_combout\ = (\pcupdate|s_pc\(30) & (\pcupdate|s_pc[29]~85\ $ (GND))) # (!\pcupdate|s_pc\(30) & (!\pcupdate|s_pc[29]~85\ & VCC))
-- \pcupdate|s_pc[30]~87\ = CARRY((\pcupdate|s_pc\(30) & !\pcupdate|s_pc[29]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(30),
	datad => VCC,
	cin => \pcupdate|s_pc[29]~85\,
	combout => \pcupdate|s_pc[30]~86_combout\,
	cout => \pcupdate|s_pc[30]~87\);

-- Location: FF_X107_Y17_N27
\pcupdate|s_pc[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[30]~86_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(30));

-- Location: LCCOMB_X107_Y16_N0
\displ|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux7~0_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\) # (\displ|Mux37~1GND_combout\)))) # (!\SW[1]~input_o\ & (\pcupdate|s_pc\(30) & (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(30),
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \displ|Mux37~1GND_combout\,
	combout => \displ|Mux7~0_combout\);

-- Location: LCCOMB_X107_Y16_N2
\displ|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux7~1_combout\ = (\displ|Mux7~0_combout\ & ((\displ|Mux37~1GND_combout\) # (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Mux7~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \displ|Mux37~1GND_combout\,
	combout => \displ|Mux7~1_combout\);

-- Location: LCCOMB_X107_Y17_N28
\pcupdate|s_pc[31]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[31]~88_combout\ = \pcupdate|s_pc[30]~87\ $ (\pcupdate|s_pc\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pcupdate|s_pc\(31),
	cin => \pcupdate|s_pc[30]~87\,
	combout => \pcupdate|s_pc[31]~88_combout\);

-- Location: FF_X107_Y17_N29
\pcupdate|s_pc[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debouncer|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc[31]~88_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(31));

-- Location: LCCOMB_X106_Y18_N4
\displ|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux6~0_combout\ = (\SW[0]~input_o\ & ((\instrution_memory|Mux28~1_combout\) # ((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (((\pcupdate|s_pc\(31) & !\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \instrution_memory|Mux28~1_combout\,
	datac => \pcupdate|s_pc\(31),
	datad => \SW[1]~input_o\,
	combout => \displ|Mux6~0_combout\);

-- Location: LCCOMB_X105_Y18_N12
\displ|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux6~1_combout\ = (\displ|Mux6~0_combout\ & ((\displ|Mux37~1GND_combout\) # ((!\SW[1]~input_o\)))) # (!\displ|Mux6~0_combout\ & (((\displ|Mux37~1GND_combout\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux6~0_combout\,
	datab => \displ|Mux37~1GND_combout\,
	datac => \displ|Mux37~1GND_combout\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux6~1_combout\);

-- Location: LCCOMB_X107_Y16_N24
\displ|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux9~0_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\) # (\displ|Mux37~1GND_combout\)))) # (!\SW[1]~input_o\ & (\pcupdate|s_pc\(28) & (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(28),
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \displ|Mux37~1GND_combout\,
	combout => \displ|Mux9~0_combout\);

-- Location: LCCOMB_X107_Y16_N10
\displ|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux9~1_combout\ = (\displ|Mux9~0_combout\ & ((\displ|Mux37~1GND_combout\) # (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Mux9~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \displ|Mux37~1GND_combout\,
	combout => \displ|Mux9~1_combout\);

-- Location: LCCOMB_X107_Y19_N0
\instrution_memory|Mux29~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux29~11_combout\ = \displ|s_addrCounters[1][2]~q\ $ (((\displ|s_addrCounters[1][0]~q\) # (\displ|s_addrCounters[1][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_addrCounters[1][0]~q\,
	datac => \displ|s_addrCounters[1][1]~q\,
	datad => \displ|s_addrCounters[1][2]~q\,
	combout => \instrution_memory|Mux29~11_combout\);

-- Location: LCCOMB_X107_Y19_N18
\instrution_memory|Mux29~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \instrution_memory|Mux29~12_combout\ = (\displ|s_addrCounters[1][3]~q\ & (\instrution_memory|Mux31~0_combout\)) # (!\displ|s_addrCounters[1][3]~q\ & (((\instrution_memory|Mux29~11_combout\ & \instrution_memory|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrution_memory|Mux31~0_combout\,
	datab => \instrution_memory|Mux29~11_combout\,
	datac => \instrution_memory|Mux28~0_combout\,
	datad => \displ|s_addrCounters[1][3]~q\,
	combout => \instrution_memory|Mux29~12_combout\);

-- Location: LCCOMB_X107_Y16_N28
\displ|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux8~0_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\instrution_memory|Mux29~12_combout\)) # (!\SW[0]~input_o\ & ((\pcupdate|s_pc\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrution_memory|Mux29~12_combout\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \pcupdate|s_pc\(29),
	combout => \displ|Mux8~0_combout\);

-- Location: LCCOMB_X107_Y16_N14
\displ|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux8~1_combout\ = (\displ|Mux8~0_combout\ & (((\displ|Mux37~1GND_combout\) # (!\SW[1]~input_o\)))) # (!\displ|Mux8~0_combout\ & (\displ|Mux37~1GND_combout\ & (\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux8~0_combout\,
	datab => \displ|Mux37~1GND_combout\,
	datac => \SW[1]~input_o\,
	datad => \displ|Mux37~1GND_combout\,
	combout => \displ|Mux8~1_combout\);

-- Location: LCCOMB_X74_Y4_N10
\displ|Mux101~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux101~0_combout\ = (\displ|Mux7~1_combout\ & (!\displ|Mux8~1_combout\ & (\displ|Mux6~1_combout\ $ (!\displ|Mux9~1_combout\)))) # (!\displ|Mux7~1_combout\ & (\displ|Mux9~1_combout\ & (\displ|Mux6~1_combout\ $ (!\displ|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux7~1_combout\,
	datab => \displ|Mux6~1_combout\,
	datac => \displ|Mux9~1_combout\,
	datad => \displ|Mux8~1_combout\,
	combout => \displ|Mux101~0_combout\);

-- Location: LCCOMB_X74_Y4_N28
\displ|disp7[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp7[0]~0_combout\ = (!\SW[2]~input_o\ & \displ|Mux101~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \displ|Mux101~0_combout\,
	combout => \displ|disp7[0]~0_combout\);

-- Location: LCCOMB_X74_Y4_N6
\displ|Mux100~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux100~0_combout\ = (\displ|Mux6~1_combout\ & ((\displ|Mux9~1_combout\ & ((\displ|Mux8~1_combout\))) # (!\displ|Mux9~1_combout\ & (\displ|Mux7~1_combout\)))) # (!\displ|Mux6~1_combout\ & (\displ|Mux7~1_combout\ & (\displ|Mux9~1_combout\ $ 
-- (\displ|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux7~1_combout\,
	datab => \displ|Mux6~1_combout\,
	datac => \displ|Mux9~1_combout\,
	datad => \displ|Mux8~1_combout\,
	combout => \displ|Mux100~0_combout\);

-- Location: LCCOMB_X74_Y4_N0
\displ|disp7[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp7[1]~1_combout\ = (\SW[2]~input_o\) # (\displ|Mux100~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \displ|Mux100~0_combout\,
	combout => \displ|disp7[1]~1_combout\);

-- Location: LCCOMB_X74_Y4_N26
\displ|Mux99~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux99~0_combout\ = (\displ|Mux7~1_combout\ & (\displ|Mux6~1_combout\ & ((\displ|Mux8~1_combout\) # (!\displ|Mux9~1_combout\)))) # (!\displ|Mux7~1_combout\ & (!\displ|Mux6~1_combout\ & (!\displ|Mux9~1_combout\ & \displ|Mux8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux7~1_combout\,
	datab => \displ|Mux6~1_combout\,
	datac => \displ|Mux9~1_combout\,
	datad => \displ|Mux8~1_combout\,
	combout => \displ|Mux99~0_combout\);

-- Location: LCCOMB_X74_Y4_N20
\displ|disp7[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp7[2]~2_combout\ = (\displ|Mux99~0_combout\) # (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux99~0_combout\,
	datac => \SW[2]~input_o\,
	combout => \displ|disp7[2]~2_combout\);

-- Location: LCCOMB_X74_Y4_N30
\displ|Mux98~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux98~0_combout\ = (\displ|Mux8~1_combout\ & ((\displ|Mux7~1_combout\ & ((\displ|Mux9~1_combout\))) # (!\displ|Mux7~1_combout\ & (\displ|Mux6~1_combout\ & !\displ|Mux9~1_combout\)))) # (!\displ|Mux8~1_combout\ & (!\displ|Mux6~1_combout\ & 
-- (\displ|Mux7~1_combout\ $ (\displ|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux7~1_combout\,
	datab => \displ|Mux6~1_combout\,
	datac => \displ|Mux9~1_combout\,
	datad => \displ|Mux8~1_combout\,
	combout => \displ|Mux98~0_combout\);

-- Location: LCCOMB_X74_Y4_N16
\displ|disp7[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp7[3]~3_combout\ = (\displ|Mux98~0_combout\ & !\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux98~0_combout\,
	datac => \SW[2]~input_o\,
	combout => \displ|disp7[3]~3_combout\);

-- Location: LCCOMB_X74_Y4_N2
\displ|Mux97~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux97~0_combout\ = (\displ|Mux8~1_combout\ & (((!\displ|Mux6~1_combout\ & \displ|Mux9~1_combout\)))) # (!\displ|Mux8~1_combout\ & ((\displ|Mux7~1_combout\ & (!\displ|Mux6~1_combout\)) # (!\displ|Mux7~1_combout\ & ((\displ|Mux9~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux7~1_combout\,
	datab => \displ|Mux6~1_combout\,
	datac => \displ|Mux9~1_combout\,
	datad => \displ|Mux8~1_combout\,
	combout => \displ|Mux97~0_combout\);

-- Location: LCCOMB_X74_Y4_N4
\displ|disp7[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp7[4]~4_combout\ = (\SW[2]~input_o\) # (\displ|Mux97~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \displ|Mux97~0_combout\,
	combout => \displ|disp7[4]~4_combout\);

-- Location: LCCOMB_X74_Y4_N22
\displ|Mux96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux96~0_combout\ = (\displ|Mux7~1_combout\ & (\displ|Mux9~1_combout\ & (\displ|Mux6~1_combout\ $ (\displ|Mux8~1_combout\)))) # (!\displ|Mux7~1_combout\ & (!\displ|Mux6~1_combout\ & ((\displ|Mux9~1_combout\) # (\displ|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux7~1_combout\,
	datab => \displ|Mux6~1_combout\,
	datac => \displ|Mux9~1_combout\,
	datad => \displ|Mux8~1_combout\,
	combout => \displ|Mux96~0_combout\);

-- Location: LCCOMB_X74_Y4_N24
\displ|disp7[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp7[5]~5_combout\ = (\displ|Mux96~0_combout\) # (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux96~0_combout\,
	datac => \SW[2]~input_o\,
	combout => \displ|disp7[5]~5_combout\);

-- Location: LCCOMB_X74_Y4_N18
\displ|Mux95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux95~0_combout\ = (\displ|Mux9~1_combout\ & ((\displ|Mux6~1_combout\) # (\displ|Mux7~1_combout\ $ (\displ|Mux8~1_combout\)))) # (!\displ|Mux9~1_combout\ & ((\displ|Mux8~1_combout\) # (\displ|Mux7~1_combout\ $ (\displ|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux7~1_combout\,
	datab => \displ|Mux6~1_combout\,
	datac => \displ|Mux9~1_combout\,
	datad => \displ|Mux8~1_combout\,
	combout => \displ|Mux95~0_combout\);

-- Location: LCCOMB_X74_Y4_N12
\displ|disp7[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp7[6]~6_combout\ = (\SW[2]~input_o\) # (\displ|Mux95~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \displ|Mux95~0_combout\,
	combout => \displ|disp7[6]~6_combout\);

-- Location: LCCOMB_X110_Y18_N20
\instrution_memory|Mux47~3\ : cycloneive_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instrution_memory|Mux29~7_combout\,
	datac => \instrution_memory|Mux47~1_combout\,
	datad => \displ|s_addrCounters[1][3]~q\,
	combout => \instrution_memory|Mux47~3_combout\);

-- Location: LCCOMB_X112_Y54_N0
\~GND\ : cycloneive_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

-- Location: LCCOMB_X106_Y16_N0
\instrution_memory|Mux33~2_wirecell\ : cycloneive_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instrution_memory|Mux33~2_combout\,
	combout => \instrution_memory|Mux33~2_wirecell_combout\);

-- Location: LCCOMB_X108_Y19_N2
\instrution_memory|Mux37~1_wirecell\ : cycloneive_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrution_memory|Mux37~1_combout\,
	combout => \instrution_memory|Mux37~1_wirecell_combout\);

-- Location: LCCOMB_X107_Y19_N6
\instrution_memory|Mux39~0_wirecell\ : cycloneive_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instrution_memory|Mux39~0_combout\,
	combout => \instrution_memory|Mux39~0_wirecell_combout\);

-- Location: LCCOMB_X108_Y19_N4
\instrution_memory|Mux43~0_wirecell\ : cycloneive_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instrution_memory|Mux43~0_combout\,
	combout => \instrution_memory|Mux43~0_wirecell_combout\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_5__gl_output\ <= \displ|s_addrCounters[3][5]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_5__gl_output\ <= \displ|s_addrCounters[1][5]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_4__gl_output\ <= \displ|s_addrCounters[3][4]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_4__gl_output\ <= \displ|s_addrCounters[2][4]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_4__gl_output\ <= \displ|s_addrCounters[1][4]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_3__gl_output\ <= \displ|s_addrCounters[3][3]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_3__gl_output\ <= \displ|s_addrCounters[2][3]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_3__gl_output\ <= \displ|s_addrCounters[1][3]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_2__gl_output\ <= \displ|s_addrCounters[3][2]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_2__gl_output\ <= \displ|s_addrCounters[2][2]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_2__gl_output\ <= \displ|s_addrCounters[1][2]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_1__gl_output\ <= \displ|s_addrCounters[3][1]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_1__gl_output\ <= \displ|s_addrCounters[2][1]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_1__gl_output\ <= \displ|s_addrCounters[1][1]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_0__gl_output\ <= \displ|s_addrCounters[3][0]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_0__gl_output\ <= \displ|s_addrCounters[2][0]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_0__gl_output\ <= \displ|s_addrCounters[1][0]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_31__gl_output\ <= \instrution_memory|Mux28~1_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_31__gl_output\ <= \pcupdate|s_pc\(31);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_30__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_30__gl_output\ <= \pcupdate|s_pc\(30);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_29__gl_output\ <= \instrution_memory|Mux29~12_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_29__gl_output\ <= \pcupdate|s_pc\(29);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_28__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_28__gl_output\ <= \pcupdate|s_pc\(28);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_27__gl_output\ <= \instrution_memory|Mux30~0_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_27__gl_output\ <= \pcupdate|s_pc\(27);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_26__gl_output\ <= \instrution_memory|Mux28~1_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_26__gl_output\ <= \pcupdate|s_pc\(26);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_25__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_25__gl_output\ <= \pcupdate|s_pc\(25);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_24__gl_output\ <= \instrution_memory|Mux31~2_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_24__gl_output\ <= \pcupdate|s_pc\(24);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_23__gl_output\ <= \instrution_memory|Mux32~0_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_23__gl_output\ <= \pcupdate|s_pc\(23);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_22__gl_output\ <= \instrution_memory|Mux33~2_wirecell_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_22__gl_output\ <= \pcupdate|s_pc\(22);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_21__gl_output\ <= \instrution_memory|Mux34~0_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_21__gl_output\ <= \pcupdate|s_pc\(21);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_20__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_20__gl_output\ <= \pcupdate|s_pc\(20);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_19__gl_output\ <= \instrution_memory|Mux31~1_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_19__gl_output\ <= \pcupdate|s_pc\(19);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_18__gl_output\ <= \instrution_memory|Mux31~2_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_18__gl_output\ <= \pcupdate|s_pc\(18);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_17__gl_output\ <= \instrution_memory|Mux29~13_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_17__gl_output\ <= \pcupdate|s_pc\(17);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_16__gl_output\ <= \instrution_memory|Mux37~1_wirecell_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_16__gl_output\ <= \pcupdate|s_pc\(16);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_15__gl_output\ <= \instrution_memory|Mux38~0_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_15__gl_output\ <= \pcupdate|s_pc\(15);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_14__gl_output\ <= \instrution_memory|Mux39~0_wirecell_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_14__gl_output\ <= \pcupdate|s_pc\(14);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_13__gl_output\ <= \instrution_memory|Mux40~6_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_13__gl_output\ <= \pcupdate|s_pc\(13);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_12__gl_output\ <= \instrution_memory|Mux41~6_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_12__gl_output\ <= \pcupdate|s_pc\(12);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_11__gl_output\ <= \instrution_memory|Mux42~6_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_11__gl_output\ <= \pcupdate|s_pc\(11);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_10__gl_output\ <= \instrution_memory|Mux38~0_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_10__gl_output\ <= \pcupdate|s_pc\(10);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_9__gl_output\ <= \instrution_memory|Mux38~0_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_9__gl_output\ <= \pcupdate|s_pc\(9);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_8__gl_output\ <= \instrution_memory|Mux38~0_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_8__gl_output\ <= \pcupdate|s_pc\(8);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_7__gl_output\ <= \instrution_memory|Mux38~0_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_7__gl_output\ <= \pcupdate|s_pc\(7);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_6__gl_output\ <= \instrution_memory|Mux38~0_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_6__gl_output\ <= \pcupdate|s_pc\(6);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_5__gl_output\ <= \instrution_memory|Mux43~0_wirecell_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_5__gl_output\ <= \pcupdate|s_pc\(5);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_4__gl_output\ <= \instrution_memory|Mux44~0_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_4__gl_output\ <= \pcupdate|s_pc\(4);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_3__gl_output\ <= \instrution_memory|Mux29~9_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_3__gl_output\ <= \pcupdate|s_pc\(3);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_2__gl_output\ <= \instrution_memory|Mux46~6_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_2__gl_output\ <= \pcupdate|s_pc\(2);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_1__gl_output\ <= \instrution_memory|Mux47~3_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_1__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_0__gl_output\ <= \instrution_memory|Mux48~0_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_0__gl_output\ <= \~GND~combout\;
END structure;


