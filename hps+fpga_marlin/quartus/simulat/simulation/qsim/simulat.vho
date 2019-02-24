-- Copyright (C) 2018  Intel Corporation. All rights reserved.
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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "02/15/2019 17:36:59"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	clk_gen IS
    PORT (
	clk : IN std_logic;
	reduction : IN std_logic_vector(31 DOWNTO 0);
	count : IN std_logic_vector(30 DOWNTO 0);
	reset : IN std_logic;
	clk_out : OUT std_logic;
	finish : OUT std_logic
	);
END clk_gen;

-- Design Ports Information
-- clk_out	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- finish	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[30]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[31]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[24]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[25]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[26]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[27]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[28]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[29]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[18]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[19]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[20]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[21]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[22]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[23]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[12]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[13]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[14]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[15]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[16]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[17]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[4]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[5]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[6]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[7]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[8]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[9]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[10]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reduction[11]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[29]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[30]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[23]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[24]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[25]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[26]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[27]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[28]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[17]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[18]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[19]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[20]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[21]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[22]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[11]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[12]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[13]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[14]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[15]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[16]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[0]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[4]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[5]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[6]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[7]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[8]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[9]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[10]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF clk_gen IS
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
SIGNAL ww_reduction : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_count : std_logic_vector(30 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk_out : std_logic;
SIGNAL ww_finish : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \count[11]~input_o\ : std_logic;
SIGNAL \count[10]~input_o\ : std_logic;
SIGNAL \count[9]~input_o\ : std_logic;
SIGNAL \count[8]~input_o\ : std_logic;
SIGNAL \count[7]~input_o\ : std_logic;
SIGNAL \count[6]~input_o\ : std_logic;
SIGNAL \count[5]~input_o\ : std_logic;
SIGNAL \count[4]~input_o\ : std_logic;
SIGNAL \count[3]~input_o\ : std_logic;
SIGNAL \count[2]~input_o\ : std_logic;
SIGNAL \count[1]~input_o\ : std_logic;
SIGNAL \count[0]~input_o\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \n[12]~feeder_combout\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \n[11]~feeder_combout\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \n[10]~feeder_combout\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \n[9]~feeder_combout\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \n[8]~feeder_combout\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \n[7]~feeder_combout\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \n[6]~feeder_combout\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \n[5]~feeder_combout\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \n[4]~feeder_combout\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \n[3]~feeder_combout\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \n[2]~feeder_combout\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \n[1]~feeder_combout\ : std_logic;
SIGNAL \Add3~81_sumout\ : std_logic;
SIGNAL \reduction[31]~input_o\ : std_logic;
SIGNAL \reduction[30]~input_o\ : std_logic;
SIGNAL \reduction[29]~input_o\ : std_logic;
SIGNAL \reduction[28]~input_o\ : std_logic;
SIGNAL \reduction[27]~input_o\ : std_logic;
SIGNAL \reduction[26]~input_o\ : std_logic;
SIGNAL \reduction[25]~input_o\ : std_logic;
SIGNAL \reduction[24]~input_o\ : std_logic;
SIGNAL \reduction[23]~input_o\ : std_logic;
SIGNAL \reduction[22]~input_o\ : std_logic;
SIGNAL \reduction[21]~input_o\ : std_logic;
SIGNAL \reduction[20]~input_o\ : std_logic;
SIGNAL \reduction[19]~input_o\ : std_logic;
SIGNAL \reduction[18]~input_o\ : std_logic;
SIGNAL \reduction[17]~input_o\ : std_logic;
SIGNAL \reduction[16]~input_o\ : std_logic;
SIGNAL \reduction[15]~input_o\ : std_logic;
SIGNAL \reduction[14]~input_o\ : std_logic;
SIGNAL \reduction[13]~input_o\ : std_logic;
SIGNAL \reduction[12]~input_o\ : std_logic;
SIGNAL \reduction[11]~input_o\ : std_logic;
SIGNAL \reduction[10]~input_o\ : std_logic;
SIGNAL \reduction[9]~input_o\ : std_logic;
SIGNAL \reduction[8]~input_o\ : std_logic;
SIGNAL \reduction[7]~input_o\ : std_logic;
SIGNAL \reduction[6]~input_o\ : std_logic;
SIGNAL \reduction[5]~input_o\ : std_logic;
SIGNAL \reduction[4]~input_o\ : std_logic;
SIGNAL \reduction[3]~input_o\ : std_logic;
SIGNAL \reduction[2]~input_o\ : std_logic;
SIGNAL \reduction[1]~input_o\ : std_logic;
SIGNAL \reduction[0]~input_o\ : std_logic;
SIGNAL \Add2~94\ : std_logic;
SIGNAL \Add2~90\ : std_logic;
SIGNAL \Add2~86\ : std_logic;
SIGNAL \Add2~82\ : std_logic;
SIGNAL \Add2~98\ : std_logic;
SIGNAL \Add2~102\ : std_logic;
SIGNAL \Add2~106\ : std_logic;
SIGNAL \Add2~110\ : std_logic;
SIGNAL \Add2~114\ : std_logic;
SIGNAL \Add2~118\ : std_logic;
SIGNAL \Add2~122\ : std_logic;
SIGNAL \Add2~126\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~66\ : std_logic;
SIGNAL \Add2~70\ : std_logic;
SIGNAL \Add2~74\ : std_logic;
SIGNAL \Add2~78\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \m[31]~feeder_combout\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \m[30]~feeder_combout\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \m[29]~feeder_combout\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \m[28]~feeder_combout\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \m[27]~feeder_combout\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \m[26]~feeder_combout\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \m[25]~feeder_combout\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \m[24]~feeder_combout\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \m[23]~feeder_combout\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \m[22]~feeder_combout\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \m[21]~feeder_combout\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \m[20]~feeder_combout\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \m[19]~feeder_combout\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \m[18]~feeder_combout\ : std_logic;
SIGNAL \Add2~77_sumout\ : std_logic;
SIGNAL \m[17]~feeder_combout\ : std_logic;
SIGNAL \Add2~73_sumout\ : std_logic;
SIGNAL \m[16]~feeder_combout\ : std_logic;
SIGNAL \Add2~69_sumout\ : std_logic;
SIGNAL \m[15]~feeder_combout\ : std_logic;
SIGNAL \Add2~65_sumout\ : std_logic;
SIGNAL \m[14]~feeder_combout\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \m[13]~feeder_combout\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \m[12]~feeder_combout\ : std_logic;
SIGNAL \Add2~125_sumout\ : std_logic;
SIGNAL \m[11]~feeder_combout\ : std_logic;
SIGNAL \Add2~121_sumout\ : std_logic;
SIGNAL \m[10]~feeder_combout\ : std_logic;
SIGNAL \Add2~117_sumout\ : std_logic;
SIGNAL \m[9]~feeder_combout\ : std_logic;
SIGNAL \Add2~113_sumout\ : std_logic;
SIGNAL \m[8]~feeder_combout\ : std_logic;
SIGNAL \Add2~109_sumout\ : std_logic;
SIGNAL \m[7]~feeder_combout\ : std_logic;
SIGNAL \Add2~105_sumout\ : std_logic;
SIGNAL \m[6]~feeder_combout\ : std_logic;
SIGNAL \Add2~101_sumout\ : std_logic;
SIGNAL \m[5]~feeder_combout\ : std_logic;
SIGNAL \Add2~97_sumout\ : std_logic;
SIGNAL \m[4]~feeder_combout\ : std_logic;
SIGNAL \Add2~81_sumout\ : std_logic;
SIGNAL \m[3]~feeder_combout\ : std_logic;
SIGNAL \Add2~85_sumout\ : std_logic;
SIGNAL \m[2]~feeder_combout\ : std_logic;
SIGNAL \Add2~89_sumout\ : std_logic;
SIGNAL \m[1]~feeder_combout\ : std_logic;
SIGNAL \Add2~93_sumout\ : std_logic;
SIGNAL \m[0]~feeder_combout\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \fin~0_combout\ : std_logic;
SIGNAL \delay[0]~4_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \delay[2]~2_combout\ : std_logic;
SIGNAL \delay~1_combout\ : std_logic;
SIGNAL \delay~0_combout\ : std_logic;
SIGNAL \delay[4]~DUPLICATE_q\ : std_logic;
SIGNAL \delay~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \fin~q\ : std_logic;
SIGNAL \m[1]~0_combout\ : std_logic;
SIGNAL \m[3]~1_combout\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~117_sumout\ : std_logic;
SIGNAL \Add1~118\ : std_logic;
SIGNAL \Add1~121_sumout\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~125_sumout\ : std_logic;
SIGNAL \Add1~126\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \n~1_combout\ : std_logic;
SIGNAL \m[3]~2_combout\ : std_logic;
SIGNAL \Add3~82\ : std_logic;
SIGNAL \Add3~85_sumout\ : std_logic;
SIGNAL \n[1]~0_combout\ : std_logic;
SIGNAL \Add3~86\ : std_logic;
SIGNAL \Add3~89_sumout\ : std_logic;
SIGNAL \Add3~90\ : std_logic;
SIGNAL \Add3~93_sumout\ : std_logic;
SIGNAL \Add3~94\ : std_logic;
SIGNAL \Add3~97_sumout\ : std_logic;
SIGNAL \Add3~98\ : std_logic;
SIGNAL \Add3~101_sumout\ : std_logic;
SIGNAL \Add3~102\ : std_logic;
SIGNAL \Add3~105_sumout\ : std_logic;
SIGNAL \Add3~106\ : std_logic;
SIGNAL \Add3~109_sumout\ : std_logic;
SIGNAL \Add3~110\ : std_logic;
SIGNAL \Add3~113_sumout\ : std_logic;
SIGNAL \Add3~114\ : std_logic;
SIGNAL \Add3~117_sumout\ : std_logic;
SIGNAL \Add3~118\ : std_logic;
SIGNAL \Add3~121_sumout\ : std_logic;
SIGNAL \Add3~122\ : std_logic;
SIGNAL \Add3~125_sumout\ : std_logic;
SIGNAL \Add3~126\ : std_logic;
SIGNAL \Add3~57_sumout\ : std_logic;
SIGNAL \count[14]~input_o\ : std_logic;
SIGNAL \count[13]~input_o\ : std_logic;
SIGNAL \count[12]~input_o\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \n[15]~feeder_combout\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \n[14]~feeder_combout\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \n[13]~feeder_combout\ : std_logic;
SIGNAL \Add3~58\ : std_logic;
SIGNAL \Add3~61_sumout\ : std_logic;
SIGNAL \Add3~62\ : std_logic;
SIGNAL \Add3~65_sumout\ : std_logic;
SIGNAL \Add3~66\ : std_logic;
SIGNAL \Add3~69_sumout\ : std_logic;
SIGNAL \count[16]~input_o\ : std_logic;
SIGNAL \count[15]~input_o\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \n[17]~feeder_combout\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \n[16]~feeder_combout\ : std_logic;
SIGNAL \Add3~70\ : std_logic;
SIGNAL \Add3~73_sumout\ : std_logic;
SIGNAL \Add3~74\ : std_logic;
SIGNAL \Add3~77_sumout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \count[20]~input_o\ : std_logic;
SIGNAL \count[19]~input_o\ : std_logic;
SIGNAL \count[18]~input_o\ : std_logic;
SIGNAL \count[17]~input_o\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \n[21]~feeder_combout\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \n[20]~feeder_combout\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \n[19]~feeder_combout\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \n[18]~feeder_combout\ : std_logic;
SIGNAL \Add3~78\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~41_sumout\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~45_sumout\ : std_logic;
SIGNAL \count[21]~input_o\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \n[22]~feeder_combout\ : std_logic;
SIGNAL \Add3~46\ : std_logic;
SIGNAL \Add3~49_sumout\ : std_logic;
SIGNAL \count[22]~input_o\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \n[23]~feeder_combout\ : std_logic;
SIGNAL \Add3~50\ : std_logic;
SIGNAL \Add3~53_sumout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \count[29]~input_o\ : std_logic;
SIGNAL \count[28]~input_o\ : std_logic;
SIGNAL \count[27]~input_o\ : std_logic;
SIGNAL \count[26]~input_o\ : std_logic;
SIGNAL \count[25]~input_o\ : std_logic;
SIGNAL \count[24]~input_o\ : std_logic;
SIGNAL \count[23]~input_o\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \n[30]~feeder_combout\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \n[29]~feeder_combout\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \n[28]~feeder_combout\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \n[27]~feeder_combout\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \n[26]~feeder_combout\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \n[25]~feeder_combout\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \n[24]~feeder_combout\ : std_logic;
SIGNAL \Add3~54\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \count[30]~input_o\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \n[31]~feeder_combout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \signal~0_combout\ : std_logic;
SIGNAL \signal~q\ : std_logic;
SIGNAL m : std_logic_vector(31 DOWNTO 0);
SIGNAL n : std_logic_vector(31 DOWNTO 0);
SIGNAL delay : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_delay[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_count[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_Add4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL ALT_INV_delay : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_fin~q\ : std_logic;
SIGNAL \ALT_INV_signal~q\ : std_logic;
SIGNAL \ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL ALT_INV_n : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_m : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reduction <= reduction;
ww_count <= count;
ww_reset <= reset;
clk_out <= ww_clk_out;
finish <= ww_finish;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_delay[4]~DUPLICATE_q\ <= NOT \delay[4]~DUPLICATE_q\;
\ALT_INV_count[10]~input_o\ <= NOT \count[10]~input_o\;
\ALT_INV_count[9]~input_o\ <= NOT \count[9]~input_o\;
\ALT_INV_count[8]~input_o\ <= NOT \count[8]~input_o\;
\ALT_INV_count[7]~input_o\ <= NOT \count[7]~input_o\;
\ALT_INV_count[6]~input_o\ <= NOT \count[6]~input_o\;
\ALT_INV_count[5]~input_o\ <= NOT \count[5]~input_o\;
\ALT_INV_count[4]~input_o\ <= NOT \count[4]~input_o\;
\ALT_INV_count[3]~input_o\ <= NOT \count[3]~input_o\;
\ALT_INV_count[2]~input_o\ <= NOT \count[2]~input_o\;
\ALT_INV_count[1]~input_o\ <= NOT \count[1]~input_o\;
\ALT_INV_count[0]~input_o\ <= NOT \count[0]~input_o\;
\ALT_INV_count[16]~input_o\ <= NOT \count[16]~input_o\;
\ALT_INV_count[15]~input_o\ <= NOT \count[15]~input_o\;
\ALT_INV_count[14]~input_o\ <= NOT \count[14]~input_o\;
\ALT_INV_count[13]~input_o\ <= NOT \count[13]~input_o\;
\ALT_INV_count[12]~input_o\ <= NOT \count[12]~input_o\;
\ALT_INV_count[11]~input_o\ <= NOT \count[11]~input_o\;
\ALT_INV_count[22]~input_o\ <= NOT \count[22]~input_o\;
\ALT_INV_count[21]~input_o\ <= NOT \count[21]~input_o\;
\ALT_INV_count[20]~input_o\ <= NOT \count[20]~input_o\;
\ALT_INV_count[19]~input_o\ <= NOT \count[19]~input_o\;
\ALT_INV_count[18]~input_o\ <= NOT \count[18]~input_o\;
\ALT_INV_count[17]~input_o\ <= NOT \count[17]~input_o\;
\ALT_INV_count[28]~input_o\ <= NOT \count[28]~input_o\;
\ALT_INV_count[27]~input_o\ <= NOT \count[27]~input_o\;
\ALT_INV_count[26]~input_o\ <= NOT \count[26]~input_o\;
\ALT_INV_count[25]~input_o\ <= NOT \count[25]~input_o\;
\ALT_INV_count[24]~input_o\ <= NOT \count[24]~input_o\;
\ALT_INV_count[23]~input_o\ <= NOT \count[23]~input_o\;
\ALT_INV_count[30]~input_o\ <= NOT \count[30]~input_o\;
\ALT_INV_count[29]~input_o\ <= NOT \count[29]~input_o\;
\ALT_INV_reduction[11]~input_o\ <= NOT \reduction[11]~input_o\;
\ALT_INV_reduction[10]~input_o\ <= NOT \reduction[10]~input_o\;
\ALT_INV_reduction[9]~input_o\ <= NOT \reduction[9]~input_o\;
\ALT_INV_reduction[8]~input_o\ <= NOT \reduction[8]~input_o\;
\ALT_INV_reduction[7]~input_o\ <= NOT \reduction[7]~input_o\;
\ALT_INV_reduction[6]~input_o\ <= NOT \reduction[6]~input_o\;
\ALT_INV_reduction[5]~input_o\ <= NOT \reduction[5]~input_o\;
\ALT_INV_reduction[4]~input_o\ <= NOT \reduction[4]~input_o\;
\ALT_INV_reduction[0]~input_o\ <= NOT \reduction[0]~input_o\;
\ALT_INV_reduction[1]~input_o\ <= NOT \reduction[1]~input_o\;
\ALT_INV_reduction[2]~input_o\ <= NOT \reduction[2]~input_o\;
\ALT_INV_reduction[3]~input_o\ <= NOT \reduction[3]~input_o\;
\ALT_INV_reduction[17]~input_o\ <= NOT \reduction[17]~input_o\;
\ALT_INV_reduction[16]~input_o\ <= NOT \reduction[16]~input_o\;
\ALT_INV_reduction[15]~input_o\ <= NOT \reduction[15]~input_o\;
\ALT_INV_reduction[14]~input_o\ <= NOT \reduction[14]~input_o\;
\ALT_INV_reduction[13]~input_o\ <= NOT \reduction[13]~input_o\;
\ALT_INV_reduction[12]~input_o\ <= NOT \reduction[12]~input_o\;
\ALT_INV_reduction[23]~input_o\ <= NOT \reduction[23]~input_o\;
\ALT_INV_reduction[22]~input_o\ <= NOT \reduction[22]~input_o\;
\ALT_INV_reduction[21]~input_o\ <= NOT \reduction[21]~input_o\;
\ALT_INV_reduction[20]~input_o\ <= NOT \reduction[20]~input_o\;
\ALT_INV_reduction[19]~input_o\ <= NOT \reduction[19]~input_o\;
\ALT_INV_reduction[18]~input_o\ <= NOT \reduction[18]~input_o\;
\ALT_INV_reduction[29]~input_o\ <= NOT \reduction[29]~input_o\;
\ALT_INV_reduction[28]~input_o\ <= NOT \reduction[28]~input_o\;
\ALT_INV_reduction[27]~input_o\ <= NOT \reduction[27]~input_o\;
\ALT_INV_reduction[26]~input_o\ <= NOT \reduction[26]~input_o\;
\ALT_INV_reduction[25]~input_o\ <= NOT \reduction[25]~input_o\;
\ALT_INV_reduction[24]~input_o\ <= NOT \reduction[24]~input_o\;
\ALT_INV_reduction[31]~input_o\ <= NOT \reduction[31]~input_o\;
\ALT_INV_reduction[30]~input_o\ <= NOT \reduction[30]~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_Add4~0_combout\ <= NOT \Add4~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_delay(0) <= NOT delay(0);
ALT_INV_delay(1) <= NOT delay(1);
ALT_INV_delay(2) <= NOT delay(2);
ALT_INV_delay(3) <= NOT delay(3);
ALT_INV_delay(4) <= NOT delay(4);
\ALT_INV_Equal1~6_combout\ <= NOT \Equal1~6_combout\;
\ALT_INV_Equal1~5_combout\ <= NOT \Equal1~5_combout\;
\ALT_INV_Equal1~4_combout\ <= NOT \Equal1~4_combout\;
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Equal2~6_combout\ <= NOT \Equal2~6_combout\;
\ALT_INV_Equal2~5_combout\ <= NOT \Equal2~5_combout\;
\ALT_INV_Equal2~4_combout\ <= NOT \Equal2~4_combout\;
\ALT_INV_Equal2~3_combout\ <= NOT \Equal2~3_combout\;
\ALT_INV_Equal2~2_combout\ <= NOT \Equal2~2_combout\;
\ALT_INV_Equal2~1_combout\ <= NOT \Equal2~1_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_fin~q\ <= NOT \fin~q\;
\ALT_INV_signal~q\ <= NOT \signal~q\;
\ALT_INV_Add0~121_sumout\ <= NOT \Add0~121_sumout\;
\ALT_INV_Add0~117_sumout\ <= NOT \Add0~117_sumout\;
\ALT_INV_Add0~113_sumout\ <= NOT \Add0~113_sumout\;
\ALT_INV_Add0~109_sumout\ <= NOT \Add0~109_sumout\;
\ALT_INV_Add0~105_sumout\ <= NOT \Add0~105_sumout\;
\ALT_INV_Add0~101_sumout\ <= NOT \Add0~101_sumout\;
\ALT_INV_Add0~97_sumout\ <= NOT \Add0~97_sumout\;
\ALT_INV_Add0~93_sumout\ <= NOT \Add0~93_sumout\;
\ALT_INV_Add0~89_sumout\ <= NOT \Add0~89_sumout\;
\ALT_INV_Add0~85_sumout\ <= NOT \Add0~85_sumout\;
\ALT_INV_Add0~81_sumout\ <= NOT \Add0~81_sumout\;
\ALT_INV_Add3~81_sumout\ <= NOT \Add3~81_sumout\;
\ALT_INV_Add0~77_sumout\ <= NOT \Add0~77_sumout\;
\ALT_INV_Add0~73_sumout\ <= NOT \Add0~73_sumout\;
\ALT_INV_Add0~69_sumout\ <= NOT \Add0~69_sumout\;
\ALT_INV_Add0~65_sumout\ <= NOT \Add0~65_sumout\;
\ALT_INV_Add0~61_sumout\ <= NOT \Add0~61_sumout\;
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_Add2~125_sumout\ <= NOT \Add2~125_sumout\;
\ALT_INV_Add2~121_sumout\ <= NOT \Add2~121_sumout\;
\ALT_INV_Add2~117_sumout\ <= NOT \Add2~117_sumout\;
\ALT_INV_Add2~113_sumout\ <= NOT \Add2~113_sumout\;
\ALT_INV_Add2~109_sumout\ <= NOT \Add2~109_sumout\;
\ALT_INV_Add2~105_sumout\ <= NOT \Add2~105_sumout\;
\ALT_INV_Add2~101_sumout\ <= NOT \Add2~101_sumout\;
\ALT_INV_Add2~97_sumout\ <= NOT \Add2~97_sumout\;
\ALT_INV_Add2~93_sumout\ <= NOT \Add2~93_sumout\;
\ALT_INV_Add2~89_sumout\ <= NOT \Add2~89_sumout\;
\ALT_INV_Add2~85_sumout\ <= NOT \Add2~85_sumout\;
\ALT_INV_Add2~81_sumout\ <= NOT \Add2~81_sumout\;
\ALT_INV_Add2~77_sumout\ <= NOT \Add2~77_sumout\;
\ALT_INV_Add2~73_sumout\ <= NOT \Add2~73_sumout\;
\ALT_INV_Add2~69_sumout\ <= NOT \Add2~69_sumout\;
\ALT_INV_Add2~65_sumout\ <= NOT \Add2~65_sumout\;
\ALT_INV_Add2~61_sumout\ <= NOT \Add2~61_sumout\;
\ALT_INV_Add2~57_sumout\ <= NOT \Add2~57_sumout\;
\ALT_INV_Add2~53_sumout\ <= NOT \Add2~53_sumout\;
\ALT_INV_Add2~49_sumout\ <= NOT \Add2~49_sumout\;
\ALT_INV_Add2~45_sumout\ <= NOT \Add2~45_sumout\;
\ALT_INV_Add2~41_sumout\ <= NOT \Add2~41_sumout\;
\ALT_INV_Add2~37_sumout\ <= NOT \Add2~37_sumout\;
\ALT_INV_Add2~33_sumout\ <= NOT \Add2~33_sumout\;
\ALT_INV_Add2~29_sumout\ <= NOT \Add2~29_sumout\;
\ALT_INV_Add2~25_sumout\ <= NOT \Add2~25_sumout\;
\ALT_INV_Add2~21_sumout\ <= NOT \Add2~21_sumout\;
\ALT_INV_Add2~17_sumout\ <= NOT \Add2~17_sumout\;
\ALT_INV_Add2~13_sumout\ <= NOT \Add2~13_sumout\;
\ALT_INV_Add2~9_sumout\ <= NOT \Add2~9_sumout\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;
ALT_INV_n(11) <= NOT n(11);
ALT_INV_n(10) <= NOT n(10);
ALT_INV_n(9) <= NOT n(9);
ALT_INV_n(8) <= NOT n(8);
ALT_INV_n(7) <= NOT n(7);
ALT_INV_n(6) <= NOT n(6);
ALT_INV_n(5) <= NOT n(5);
ALT_INV_n(4) <= NOT n(4);
ALT_INV_n(3) <= NOT n(3);
ALT_INV_n(2) <= NOT n(2);
ALT_INV_n(1) <= NOT n(1);
ALT_INV_n(0) <= NOT n(0);
ALT_INV_n(17) <= NOT n(17);
ALT_INV_n(16) <= NOT n(16);
ALT_INV_n(15) <= NOT n(15);
ALT_INV_n(14) <= NOT n(14);
ALT_INV_n(13) <= NOT n(13);
ALT_INV_n(12) <= NOT n(12);
ALT_INV_n(23) <= NOT n(23);
ALT_INV_n(22) <= NOT n(22);
ALT_INV_n(21) <= NOT n(21);
ALT_INV_n(20) <= NOT n(20);
ALT_INV_n(19) <= NOT n(19);
ALT_INV_n(18) <= NOT n(18);
ALT_INV_n(29) <= NOT n(29);
ALT_INV_n(28) <= NOT n(28);
ALT_INV_n(27) <= NOT n(27);
ALT_INV_n(26) <= NOT n(26);
ALT_INV_n(25) <= NOT n(25);
ALT_INV_n(24) <= NOT n(24);
ALT_INV_n(31) <= NOT n(31);
ALT_INV_n(30) <= NOT n(30);
ALT_INV_m(11) <= NOT m(11);
ALT_INV_m(10) <= NOT m(10);
ALT_INV_m(9) <= NOT m(9);
ALT_INV_m(8) <= NOT m(8);
ALT_INV_m(7) <= NOT m(7);
ALT_INV_m(6) <= NOT m(6);
ALT_INV_m(5) <= NOT m(5);
ALT_INV_m(4) <= NOT m(4);
ALT_INV_m(0) <= NOT m(0);
ALT_INV_m(1) <= NOT m(1);
ALT_INV_m(2) <= NOT m(2);
ALT_INV_m(3) <= NOT m(3);
ALT_INV_m(17) <= NOT m(17);
ALT_INV_m(16) <= NOT m(16);
ALT_INV_m(15) <= NOT m(15);
ALT_INV_m(14) <= NOT m(14);
ALT_INV_m(13) <= NOT m(13);
ALT_INV_m(12) <= NOT m(12);
ALT_INV_m(23) <= NOT m(23);
ALT_INV_m(22) <= NOT m(22);
ALT_INV_m(21) <= NOT m(21);
ALT_INV_m(20) <= NOT m(20);
ALT_INV_m(19) <= NOT m(19);
ALT_INV_m(18) <= NOT m(18);
ALT_INV_m(29) <= NOT m(29);
ALT_INV_m(28) <= NOT m(28);
ALT_INV_m(27) <= NOT m(27);
ALT_INV_m(26) <= NOT m(26);
ALT_INV_m(25) <= NOT m(25);
ALT_INV_m(24) <= NOT m(24);
ALT_INV_m(31) <= NOT m(31);
ALT_INV_m(30) <= NOT m(30);

-- Location: IOOBUF_X56_Y0_N2
\clk_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \signal~q\,
	devoe => ww_devoe,
	o => ww_clk_out);

-- Location: IOOBUF_X26_Y0_N76
\finish~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_fin~q\,
	devoe => ww_devoe,
	o => ww_finish);

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X8_Y0_N18
\count[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(11),
	o => \count[11]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\count[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(10),
	o => \count[10]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\count[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(9),
	o => \count[9]~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\count[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(8),
	o => \count[8]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\count[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(7),
	o => \count[7]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\count[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(6),
	o => \count[6]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\count[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(5),
	o => \count[5]~input_o\);

-- Location: IOIBUF_X2_Y0_N75
\count[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(4),
	o => \count[4]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\count[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(3),
	o => \count[3]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\count[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(2),
	o => \count[2]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\count[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(1),
	o => \count[1]~input_o\);

-- Location: IOIBUF_X6_Y0_N35
\count[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(0),
	o => \count[0]~input_o\);

-- Location: LABCELL_X19_Y3_N0
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( \count[0]~input_o\ ) + ( VCC ) + ( !VCC ))
-- \Add0~82\ = CARRY(( \count[0]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_count[0]~input_o\,
	cin => GND,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: LABCELL_X19_Y3_N3
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( \count[1]~input_o\ ) + ( VCC ) + ( \Add0~82\ ))
-- \Add0~86\ = CARRY(( \count[1]~input_o\ ) + ( VCC ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[1]~input_o\,
	cin => \Add0~82\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: LABCELL_X19_Y3_N6
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( \count[2]~input_o\ ) + ( VCC ) + ( \Add0~86\ ))
-- \Add0~90\ = CARRY(( \count[2]~input_o\ ) + ( VCC ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_count[2]~input_o\,
	cin => \Add0~86\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: LABCELL_X19_Y3_N9
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( \count[3]~input_o\ ) + ( VCC ) + ( \Add0~90\ ))
-- \Add0~94\ = CARRY(( \count[3]~input_o\ ) + ( VCC ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[3]~input_o\,
	cin => \Add0~90\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: LABCELL_X19_Y3_N12
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( \count[4]~input_o\ ) + ( VCC ) + ( \Add0~94\ ))
-- \Add0~98\ = CARRY(( \count[4]~input_o\ ) + ( VCC ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_count[4]~input_o\,
	cin => \Add0~94\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: LABCELL_X19_Y3_N15
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( \count[5]~input_o\ ) + ( VCC ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( \count[5]~input_o\ ) + ( VCC ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[5]~input_o\,
	cin => \Add0~98\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: LABCELL_X19_Y3_N18
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( \count[6]~input_o\ ) + ( VCC ) + ( \Add0~102\ ))
-- \Add0~106\ = CARRY(( \count[6]~input_o\ ) + ( VCC ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_count[6]~input_o\,
	cin => \Add0~102\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: LABCELL_X19_Y3_N21
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( \count[7]~input_o\ ) + ( VCC ) + ( \Add0~106\ ))
-- \Add0~110\ = CARRY(( \count[7]~input_o\ ) + ( VCC ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_count[7]~input_o\,
	cin => \Add0~106\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: LABCELL_X19_Y3_N24
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( \count[8]~input_o\ ) + ( VCC ) + ( \Add0~110\ ))
-- \Add0~114\ = CARRY(( \count[8]~input_o\ ) + ( VCC ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_count[8]~input_o\,
	cin => \Add0~110\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: LABCELL_X19_Y3_N27
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( \count[9]~input_o\ ) + ( VCC ) + ( \Add0~114\ ))
-- \Add0~118\ = CARRY(( \count[9]~input_o\ ) + ( VCC ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_count[9]~input_o\,
	cin => \Add0~114\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: LABCELL_X19_Y3_N30
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( \count[10]~input_o\ ) + ( VCC ) + ( \Add0~118\ ))
-- \Add0~122\ = CARRY(( \count[10]~input_o\ ) + ( VCC ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_count[10]~input_o\,
	cin => \Add0~118\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: LABCELL_X19_Y3_N33
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \count[11]~input_o\ ) + ( VCC ) + ( \Add0~122\ ))
-- \Add0~58\ = CARRY(( \count[11]~input_o\ ) + ( VCC ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[11]~input_o\,
	cin => \Add0~122\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: LABCELL_X23_Y3_N0
\n[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[12]~feeder_combout\ = \Add0~57_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~57_sumout\,
	combout => \n[12]~feeder_combout\);

-- Location: LABCELL_X23_Y3_N12
\n[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[11]~feeder_combout\ = ( \Add0~121_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~121_sumout\,
	combout => \n[11]~feeder_combout\);

-- Location: LABCELL_X23_Y3_N27
\n[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[10]~feeder_combout\ = \Add0~117_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~117_sumout\,
	combout => \n[10]~feeder_combout\);

-- Location: LABCELL_X23_Y3_N24
\n[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[9]~feeder_combout\ = \Add0~113_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~113_sumout\,
	combout => \n[9]~feeder_combout\);

-- Location: LABCELL_X23_Y3_N3
\n[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[8]~feeder_combout\ = \Add0~109_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~109_sumout\,
	combout => \n[8]~feeder_combout\);

-- Location: LABCELL_X23_Y3_N36
\n[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[7]~feeder_combout\ = \Add0~105_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~105_sumout\,
	combout => \n[7]~feeder_combout\);

-- Location: LABCELL_X23_Y3_N57
\n[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[6]~feeder_combout\ = \Add0~101_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~101_sumout\,
	combout => \n[6]~feeder_combout\);

-- Location: LABCELL_X23_Y3_N54
\n[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[5]~feeder_combout\ = \Add0~97_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~97_sumout\,
	combout => \n[5]~feeder_combout\);

-- Location: LABCELL_X23_Y3_N18
\n[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[4]~feeder_combout\ = \Add0~93_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~93_sumout\,
	combout => \n[4]~feeder_combout\);

-- Location: LABCELL_X23_Y4_N0
\n[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[3]~feeder_combout\ = \Add0~89_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~89_sumout\,
	combout => \n[3]~feeder_combout\);

-- Location: LABCELL_X23_Y4_N21
\n[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[2]~feeder_combout\ = ( \Add0~85_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~85_sumout\,
	combout => \n[2]~feeder_combout\);

-- Location: LABCELL_X23_Y4_N24
\n[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[1]~feeder_combout\ = ( \Add0~81_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~81_sumout\,
	combout => \n[1]~feeder_combout\);

-- Location: LABCELL_X22_Y4_N0
\Add3~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~81_sumout\ = SUM(( n(0) ) + ( VCC ) + ( !VCC ))
-- \Add3~82\ = CARRY(( n(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(0),
	cin => GND,
	sumout => \Add3~81_sumout\,
	cout => \Add3~82\);

-- Location: IOIBUF_X36_Y0_N18
\reduction[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(31),
	o => \reduction[31]~input_o\);

-- Location: IOIBUF_X32_Y0_N35
\reduction[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(30),
	o => \reduction[30]~input_o\);

-- Location: IOIBUF_X32_Y0_N52
\reduction[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(29),
	o => \reduction[29]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\reduction[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(28),
	o => \reduction[28]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\reduction[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(27),
	o => \reduction[27]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\reduction[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(26),
	o => \reduction[26]~input_o\);

-- Location: IOIBUF_X34_Y0_N58
\reduction[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(25),
	o => \reduction[25]~input_o\);

-- Location: IOIBUF_X32_Y0_N18
\reduction[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(24),
	o => \reduction[24]~input_o\);

-- Location: IOIBUF_X34_Y0_N75
\reduction[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(23),
	o => \reduction[23]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\reduction[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(22),
	o => \reduction[22]~input_o\);

-- Location: IOIBUF_X34_Y0_N92
\reduction[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(21),
	o => \reduction[21]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\reduction[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(20),
	o => \reduction[20]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\reduction[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(19),
	o => \reduction[19]~input_o\);

-- Location: IOIBUF_X58_Y0_N75
\reduction[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(18),
	o => \reduction[18]~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\reduction[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(17),
	o => \reduction[17]~input_o\);

-- Location: IOIBUF_X40_Y0_N35
\reduction[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(16),
	o => \reduction[16]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\reduction[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(15),
	o => \reduction[15]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\reduction[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(14),
	o => \reduction[14]~input_o\);

-- Location: IOIBUF_X50_Y0_N41
\reduction[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(13),
	o => \reduction[13]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\reduction[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(12),
	o => \reduction[12]~input_o\);

-- Location: IOIBUF_X58_Y0_N41
\reduction[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(11),
	o => \reduction[11]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\reduction[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(10),
	o => \reduction[10]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\reduction[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(9),
	o => \reduction[9]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\reduction[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(8),
	o => \reduction[8]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\reduction[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(7),
	o => \reduction[7]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\reduction[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(6),
	o => \reduction[6]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\reduction[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(5),
	o => \reduction[5]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\reduction[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(4),
	o => \reduction[4]~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\reduction[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(3),
	o => \reduction[3]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\reduction[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(2),
	o => \reduction[2]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\reduction[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(1),
	o => \reduction[1]~input_o\);

-- Location: IOIBUF_X38_Y0_N35
\reduction[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(0),
	o => \reduction[0]~input_o\);

-- Location: LABCELL_X30_Y3_N0
\Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~93_sumout\ = SUM(( \reduction[0]~input_o\ ) + ( VCC ) + ( !VCC ))
-- \Add2~94\ = CARRY(( \reduction[0]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reduction[0]~input_o\,
	cin => GND,
	sumout => \Add2~93_sumout\,
	cout => \Add2~94\);

-- Location: LABCELL_X30_Y3_N3
\Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~89_sumout\ = SUM(( \reduction[1]~input_o\ ) + ( VCC ) + ( \Add2~94\ ))
-- \Add2~90\ = CARRY(( \reduction[1]~input_o\ ) + ( VCC ) + ( \Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reduction[1]~input_o\,
	cin => \Add2~94\,
	sumout => \Add2~89_sumout\,
	cout => \Add2~90\);

-- Location: LABCELL_X30_Y3_N6
\Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~85_sumout\ = SUM(( \reduction[2]~input_o\ ) + ( VCC ) + ( \Add2~90\ ))
-- \Add2~86\ = CARRY(( \reduction[2]~input_o\ ) + ( VCC ) + ( \Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reduction[2]~input_o\,
	cin => \Add2~90\,
	sumout => \Add2~85_sumout\,
	cout => \Add2~86\);

-- Location: LABCELL_X30_Y3_N9
\Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~81_sumout\ = SUM(( \reduction[3]~input_o\ ) + ( VCC ) + ( \Add2~86\ ))
-- \Add2~82\ = CARRY(( \reduction[3]~input_o\ ) + ( VCC ) + ( \Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reduction[3]~input_o\,
	cin => \Add2~86\,
	sumout => \Add2~81_sumout\,
	cout => \Add2~82\);

-- Location: LABCELL_X30_Y3_N12
\Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~97_sumout\ = SUM(( \reduction[4]~input_o\ ) + ( VCC ) + ( \Add2~82\ ))
-- \Add2~98\ = CARRY(( \reduction[4]~input_o\ ) + ( VCC ) + ( \Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reduction[4]~input_o\,
	cin => \Add2~82\,
	sumout => \Add2~97_sumout\,
	cout => \Add2~98\);

-- Location: LABCELL_X30_Y3_N15
\Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~101_sumout\ = SUM(( \reduction[5]~input_o\ ) + ( VCC ) + ( \Add2~98\ ))
-- \Add2~102\ = CARRY(( \reduction[5]~input_o\ ) + ( VCC ) + ( \Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reduction[5]~input_o\,
	cin => \Add2~98\,
	sumout => \Add2~101_sumout\,
	cout => \Add2~102\);

-- Location: LABCELL_X30_Y3_N18
\Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~105_sumout\ = SUM(( \reduction[6]~input_o\ ) + ( VCC ) + ( \Add2~102\ ))
-- \Add2~106\ = CARRY(( \reduction[6]~input_o\ ) + ( VCC ) + ( \Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reduction[6]~input_o\,
	cin => \Add2~102\,
	sumout => \Add2~105_sumout\,
	cout => \Add2~106\);

-- Location: LABCELL_X30_Y3_N21
\Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~109_sumout\ = SUM(( \reduction[7]~input_o\ ) + ( VCC ) + ( \Add2~106\ ))
-- \Add2~110\ = CARRY(( \reduction[7]~input_o\ ) + ( VCC ) + ( \Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reduction[7]~input_o\,
	cin => \Add2~106\,
	sumout => \Add2~109_sumout\,
	cout => \Add2~110\);

-- Location: LABCELL_X30_Y3_N24
\Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~113_sumout\ = SUM(( \reduction[8]~input_o\ ) + ( VCC ) + ( \Add2~110\ ))
-- \Add2~114\ = CARRY(( \reduction[8]~input_o\ ) + ( VCC ) + ( \Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reduction[8]~input_o\,
	cin => \Add2~110\,
	sumout => \Add2~113_sumout\,
	cout => \Add2~114\);

-- Location: LABCELL_X30_Y3_N27
\Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~117_sumout\ = SUM(( \reduction[9]~input_o\ ) + ( VCC ) + ( \Add2~114\ ))
-- \Add2~118\ = CARRY(( \reduction[9]~input_o\ ) + ( VCC ) + ( \Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reduction[9]~input_o\,
	cin => \Add2~114\,
	sumout => \Add2~117_sumout\,
	cout => \Add2~118\);

-- Location: LABCELL_X30_Y3_N30
\Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~121_sumout\ = SUM(( \reduction[10]~input_o\ ) + ( VCC ) + ( \Add2~118\ ))
-- \Add2~122\ = CARRY(( \reduction[10]~input_o\ ) + ( VCC ) + ( \Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reduction[10]~input_o\,
	cin => \Add2~118\,
	sumout => \Add2~121_sumout\,
	cout => \Add2~122\);

-- Location: LABCELL_X30_Y3_N33
\Add2~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~125_sumout\ = SUM(( \reduction[11]~input_o\ ) + ( VCC ) + ( \Add2~122\ ))
-- \Add2~126\ = CARRY(( \reduction[11]~input_o\ ) + ( VCC ) + ( \Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reduction[11]~input_o\,
	cin => \Add2~122\,
	sumout => \Add2~125_sumout\,
	cout => \Add2~126\);

-- Location: LABCELL_X30_Y3_N36
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( \reduction[12]~input_o\ ) + ( VCC ) + ( \Add2~126\ ))
-- \Add2~58\ = CARRY(( \reduction[12]~input_o\ ) + ( VCC ) + ( \Add2~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reduction[12]~input_o\,
	cin => \Add2~126\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

-- Location: LABCELL_X30_Y3_N39
\Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( \reduction[13]~input_o\ ) + ( VCC ) + ( \Add2~58\ ))
-- \Add2~62\ = CARRY(( \reduction[13]~input_o\ ) + ( VCC ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reduction[13]~input_o\,
	cin => \Add2~58\,
	sumout => \Add2~61_sumout\,
	cout => \Add2~62\);

-- Location: LABCELL_X30_Y3_N42
\Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~65_sumout\ = SUM(( \reduction[14]~input_o\ ) + ( VCC ) + ( \Add2~62\ ))
-- \Add2~66\ = CARRY(( \reduction[14]~input_o\ ) + ( VCC ) + ( \Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reduction[14]~input_o\,
	cin => \Add2~62\,
	sumout => \Add2~65_sumout\,
	cout => \Add2~66\);

-- Location: LABCELL_X30_Y3_N45
\Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~69_sumout\ = SUM(( \reduction[15]~input_o\ ) + ( VCC ) + ( \Add2~66\ ))
-- \Add2~70\ = CARRY(( \reduction[15]~input_o\ ) + ( VCC ) + ( \Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reduction[15]~input_o\,
	cin => \Add2~66\,
	sumout => \Add2~69_sumout\,
	cout => \Add2~70\);

-- Location: LABCELL_X30_Y3_N48
\Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~73_sumout\ = SUM(( \reduction[16]~input_o\ ) + ( VCC ) + ( \Add2~70\ ))
-- \Add2~74\ = CARRY(( \reduction[16]~input_o\ ) + ( VCC ) + ( \Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reduction[16]~input_o\,
	cin => \Add2~70\,
	sumout => \Add2~73_sumout\,
	cout => \Add2~74\);

-- Location: LABCELL_X30_Y3_N51
\Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~77_sumout\ = SUM(( \reduction[17]~input_o\ ) + ( VCC ) + ( \Add2~74\ ))
-- \Add2~78\ = CARRY(( \reduction[17]~input_o\ ) + ( VCC ) + ( \Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reduction[17]~input_o\,
	cin => \Add2~74\,
	sumout => \Add2~77_sumout\,
	cout => \Add2~78\);

-- Location: LABCELL_X30_Y3_N54
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( \reduction[18]~input_o\ ) + ( VCC ) + ( \Add2~78\ ))
-- \Add2~34\ = CARRY(( \reduction[18]~input_o\ ) + ( VCC ) + ( \Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reduction[18]~input_o\,
	cin => \Add2~78\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: LABCELL_X30_Y3_N57
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( \reduction[19]~input_o\ ) + ( VCC ) + ( \Add2~34\ ))
-- \Add2~38\ = CARRY(( \reduction[19]~input_o\ ) + ( VCC ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reduction[19]~input_o\,
	cin => \Add2~34\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: LABCELL_X30_Y2_N0
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( \reduction[20]~input_o\ ) + ( VCC ) + ( \Add2~38\ ))
-- \Add2~42\ = CARRY(( \reduction[20]~input_o\ ) + ( VCC ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reduction[20]~input_o\,
	cin => \Add2~38\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: LABCELL_X30_Y2_N3
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( \reduction[21]~input_o\ ) + ( VCC ) + ( \Add2~42\ ))
-- \Add2~46\ = CARRY(( \reduction[21]~input_o\ ) + ( VCC ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reduction[21]~input_o\,
	cin => \Add2~42\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: LABCELL_X30_Y2_N6
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( \reduction[22]~input_o\ ) + ( VCC ) + ( \Add2~46\ ))
-- \Add2~50\ = CARRY(( \reduction[22]~input_o\ ) + ( VCC ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reduction[22]~input_o\,
	cin => \Add2~46\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: LABCELL_X30_Y2_N9
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( \reduction[23]~input_o\ ) + ( VCC ) + ( \Add2~50\ ))
-- \Add2~54\ = CARRY(( \reduction[23]~input_o\ ) + ( VCC ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reduction[23]~input_o\,
	cin => \Add2~50\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

-- Location: LABCELL_X30_Y2_N12
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( \reduction[24]~input_o\ ) + ( VCC ) + ( \Add2~54\ ))
-- \Add2~10\ = CARRY(( \reduction[24]~input_o\ ) + ( VCC ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reduction[24]~input_o\,
	cin => \Add2~54\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: LABCELL_X30_Y2_N15
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( \reduction[25]~input_o\ ) + ( VCC ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( \reduction[25]~input_o\ ) + ( VCC ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reduction[25]~input_o\,
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: LABCELL_X30_Y2_N18
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( \reduction[26]~input_o\ ) + ( VCC ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( \reduction[26]~input_o\ ) + ( VCC ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reduction[26]~input_o\,
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: LABCELL_X30_Y2_N21
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( \reduction[27]~input_o\ ) + ( VCC ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( \reduction[27]~input_o\ ) + ( VCC ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reduction[27]~input_o\,
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: LABCELL_X30_Y2_N24
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( \reduction[28]~input_o\ ) + ( VCC ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( \reduction[28]~input_o\ ) + ( VCC ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reduction[28]~input_o\,
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: LABCELL_X30_Y2_N27
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( \reduction[29]~input_o\ ) + ( VCC ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( \reduction[29]~input_o\ ) + ( VCC ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reduction[29]~input_o\,
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: LABCELL_X30_Y2_N30
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( \reduction[30]~input_o\ ) + ( VCC ) + ( \Add2~30\ ))
-- \Add2~2\ = CARRY(( \reduction[30]~input_o\ ) + ( VCC ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reduction[30]~input_o\,
	cin => \Add2~30\,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: LABCELL_X30_Y2_N33
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( \reduction[31]~input_o\ ) + ( VCC ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reduction[31]~input_o\,
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\);

-- Location: MLABCELL_X25_Y3_N48
\m[31]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[31]~feeder_combout\ = \Add2~5_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~5_sumout\,
	combout => \m[31]~feeder_combout\);

-- Location: MLABCELL_X25_Y3_N51
\m[30]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[30]~feeder_combout\ = \Add2~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~1_sumout\,
	combout => \m[30]~feeder_combout\);

-- Location: MLABCELL_X25_Y3_N42
\m[29]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[29]~feeder_combout\ = ( \Add2~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~29_sumout\,
	combout => \m[29]~feeder_combout\);

-- Location: LABCELL_X24_Y4_N0
\m[28]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[28]~feeder_combout\ = \Add2~25_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~25_sumout\,
	combout => \m[28]~feeder_combout\);

-- Location: LABCELL_X24_Y4_N51
\m[27]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[27]~feeder_combout\ = \Add2~21_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~21_sumout\,
	combout => \m[27]~feeder_combout\);

-- Location: LABCELL_X24_Y4_N36
\m[26]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[26]~feeder_combout\ = \Add2~17_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add2~17_sumout\,
	combout => \m[26]~feeder_combout\);

-- Location: LABCELL_X24_Y4_N57
\m[25]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[25]~feeder_combout\ = ( \Add2~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~13_sumout\,
	combout => \m[25]~feeder_combout\);

-- Location: LABCELL_X24_Y4_N48
\m[24]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[24]~feeder_combout\ = \Add2~9_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add2~9_sumout\,
	combout => \m[24]~feeder_combout\);

-- Location: MLABCELL_X25_Y3_N39
\m[23]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[23]~feeder_combout\ = ( \Add2~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~53_sumout\,
	combout => \m[23]~feeder_combout\);

-- Location: MLABCELL_X25_Y3_N54
\m[22]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[22]~feeder_combout\ = ( \Add2~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~49_sumout\,
	combout => \m[22]~feeder_combout\);

-- Location: MLABCELL_X25_Y3_N36
\m[21]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[21]~feeder_combout\ = \Add2~45_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~45_sumout\,
	combout => \m[21]~feeder_combout\);

-- Location: LABCELL_X24_Y4_N21
\m[20]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[20]~feeder_combout\ = \Add2~41_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~41_sumout\,
	combout => \m[20]~feeder_combout\);

-- Location: LABCELL_X24_Y4_N12
\m[19]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[19]~feeder_combout\ = \Add2~37_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~37_sumout\,
	combout => \m[19]~feeder_combout\);

-- Location: LABCELL_X24_Y4_N15
\m[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[18]~feeder_combout\ = ( \Add2~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~33_sumout\,
	combout => \m[18]~feeder_combout\);

-- Location: MLABCELL_X25_Y3_N57
\m[17]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[17]~feeder_combout\ = \Add2~77_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~77_sumout\,
	combout => \m[17]~feeder_combout\);

-- Location: LABCELL_X24_Y4_N27
\m[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[16]~feeder_combout\ = \Add2~73_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~73_sumout\,
	combout => \m[16]~feeder_combout\);

-- Location: LABCELL_X24_Y3_N54
\m[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[15]~feeder_combout\ = \Add2~69_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add2~69_sumout\,
	combout => \m[15]~feeder_combout\);

-- Location: LABCELL_X24_Y3_N30
\m[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[14]~feeder_combout\ = \Add2~65_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~65_sumout\,
	combout => \m[14]~feeder_combout\);

-- Location: LABCELL_X24_Y3_N39
\m[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[13]~feeder_combout\ = ( \Add2~61_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~61_sumout\,
	combout => \m[13]~feeder_combout\);

-- Location: LABCELL_X24_Y3_N6
\m[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[12]~feeder_combout\ = \Add2~57_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~57_sumout\,
	combout => \m[12]~feeder_combout\);

-- Location: LABCELL_X24_Y3_N57
\m[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[11]~feeder_combout\ = \Add2~125_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~125_sumout\,
	combout => \m[11]~feeder_combout\);

-- Location: LABCELL_X24_Y4_N39
\m[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[10]~feeder_combout\ = \Add2~121_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~121_sumout\,
	combout => \m[10]~feeder_combout\);

-- Location: LABCELL_X24_Y3_N9
\m[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[9]~feeder_combout\ = ( \Add2~117_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~117_sumout\,
	combout => \m[9]~feeder_combout\);

-- Location: LABCELL_X24_Y3_N15
\m[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[8]~feeder_combout\ = \Add2~113_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~113_sumout\,
	combout => \m[8]~feeder_combout\);

-- Location: LABCELL_X24_Y3_N33
\m[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[7]~feeder_combout\ = \Add2~109_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~109_sumout\,
	combout => \m[7]~feeder_combout\);

-- Location: LABCELL_X24_Y3_N21
\m[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[6]~feeder_combout\ = \Add2~105_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~105_sumout\,
	combout => \m[6]~feeder_combout\);

-- Location: LABCELL_X24_Y4_N3
\m[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[5]~feeder_combout\ = \Add2~101_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~101_sumout\,
	combout => \m[5]~feeder_combout\);

-- Location: LABCELL_X24_Y3_N36
\m[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[4]~feeder_combout\ = \Add2~97_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~97_sumout\,
	combout => \m[4]~feeder_combout\);

-- Location: LABCELL_X24_Y4_N18
\m[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[3]~feeder_combout\ = \Add2~81_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~81_sumout\,
	combout => \m[3]~feeder_combout\);

-- Location: LABCELL_X24_Y4_N24
\m[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[2]~feeder_combout\ = ( \Add2~85_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~85_sumout\,
	combout => \m[2]~feeder_combout\);

-- Location: LABCELL_X24_Y4_N45
\m[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[1]~feeder_combout\ = ( \Add2~89_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~89_sumout\,
	combout => \m[1]~feeder_combout\);

-- Location: LABCELL_X24_Y4_N54
\m[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[0]~feeder_combout\ = \Add2~93_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add2~93_sumout\,
	combout => \m[0]~feeder_combout\);

-- Location: MLABCELL_X25_Y4_N0
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( m(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~94\ = CARRY(( m(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(0),
	cin => GND,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

-- Location: IOIBUF_X28_Y0_N35
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X23_Y4_N54
\fin~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fin~0_combout\ = (\reset~input_o\ & ((!\Equal1~6_combout\) # (!\fin~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100010001100110010001000110011001000100011001100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datab => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_fin~q\,
	combout => \fin~0_combout\);

-- Location: LABCELL_X23_Y4_N42
\delay[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[0]~4_combout\ = ( !delay(0) & ( \Equal0~0_combout\ & ( (\fin~q\ & (\reset~input_o\ & \Equal1~6_combout\)) ) ) ) # ( !delay(0) & ( !\Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000001000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fin~q\,
	datab => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_Equal1~6_combout\,
	datae => ALT_INV_delay(0),
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \delay[0]~4_combout\);

-- Location: FF_X23_Y4_N44
\delay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \delay[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(0));

-- Location: LABCELL_X23_Y4_N15
\Add4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = ( delay(2) & ( (!delay(0) & !delay(1)) ) ) # ( !delay(2) & ( (delay(1)) # (delay(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(0),
	datad => ALT_INV_delay(1),
	dataf => ALT_INV_delay(2),
	combout => \Add4~0_combout\);

-- Location: LABCELL_X23_Y4_N12
\delay[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[2]~2_combout\ = ( \Equal0~0_combout\ & ( (\Equal1~6_combout\ & (!\Add4~0_combout\ & (\fin~q\ & \reset~input_o\))) ) ) # ( !\Equal0~0_combout\ & ( !\Add4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datab => \ALT_INV_Add4~0_combout\,
	datac => \ALT_INV_fin~q\,
	datad => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \delay[2]~2_combout\);

-- Location: FF_X23_Y4_N14
\delay[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \delay[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(2));

-- Location: LABCELL_X23_Y4_N33
\delay~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay~1_combout\ = ( delay(1) & ( delay(3) ) ) # ( !delay(1) & ( (!delay(0) & ((!delay(2) & (\delay[4]~DUPLICATE_q\ & !delay(3))) # (delay(2) & ((delay(3)))))) # (delay(0) & (((delay(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000111111010000000011111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_delay[4]~DUPLICATE_q\,
	datab => ALT_INV_delay(0),
	datac => ALT_INV_delay(2),
	datad => ALT_INV_delay(3),
	dataf => ALT_INV_delay(1),
	combout => \delay~1_combout\);

-- Location: FF_X23_Y4_N35
\delay[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \delay~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(3));

-- Location: FF_X23_Y4_N52
\delay[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \delay~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(4));

-- Location: LABCELL_X23_Y4_N51
\delay~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay~0_combout\ = ( delay(4) & ( delay(1) ) ) # ( delay(4) & ( !delay(1) & ( ((delay(3)) # (delay(2))) # (delay(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_delay(0),
	datac => ALT_INV_delay(2),
	datad => ALT_INV_delay(3),
	datae => ALT_INV_delay(4),
	dataf => ALT_INV_delay(1),
	combout => \delay~0_combout\);

-- Location: FF_X23_Y4_N53
\delay[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \delay~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay[4]~DUPLICATE_q\);

-- Location: LABCELL_X23_Y4_N30
\delay~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay~3_combout\ = ( delay(2) & ( !delay(0) $ (delay(1)) ) ) # ( !delay(2) & ( (!delay(0) & (!delay(1) & ((delay(3)) # (\delay[4]~DUPLICATE_q\)))) # (delay(0) & (((delay(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000110011010011000011001111001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_delay[4]~DUPLICATE_q\,
	datab => ALT_INV_delay(0),
	datac => ALT_INV_delay(3),
	datad => ALT_INV_delay(1),
	dataf => ALT_INV_delay(2),
	combout => \delay~3_combout\);

-- Location: FF_X23_Y4_N31
\delay[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \delay~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(1));

-- Location: LABCELL_X23_Y4_N39
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !delay(4) & ( !delay(3) & ( (!delay(1) & (!delay(0) & !delay(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay(1),
	datab => ALT_INV_delay(0),
	datac => ALT_INV_delay(2),
	datae => ALT_INV_delay(4),
	dataf => ALT_INV_delay(3),
	combout => \Equal0~0_combout\);

-- Location: FF_X23_Y4_N56
fin : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \fin~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fin~q\);

-- Location: LABCELL_X24_Y3_N12
\m[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[1]~0_combout\ = ( !\Equal2~6_combout\ & ( \fin~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_fin~q\,
	dataf => \ALT_INV_Equal2~6_combout\,
	combout => \m[1]~0_combout\);

-- Location: LABCELL_X24_Y3_N18
\m[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[3]~1_combout\ = ( \Equal1~6_combout\ & ( (\reset~input_o\ & (!\fin~q\ & \Equal0~0_combout\)) ) ) # ( !\Equal1~6_combout\ & ( (\reset~input_o\ & \Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_fin~q\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \m[3]~1_combout\);

-- Location: FF_X24_Y4_N56
\m[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[0]~feeder_combout\,
	asdata => \Add1~93_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(0));

-- Location: MLABCELL_X25_Y4_N3
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( m(1) ) + ( VCC ) + ( \Add1~94\ ))
-- \Add1~90\ = CARRY(( m(1) ) + ( VCC ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(1),
	cin => \Add1~94\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\);

-- Location: FF_X24_Y4_N47
\m[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[1]~feeder_combout\,
	asdata => \Add1~89_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(1));

-- Location: MLABCELL_X25_Y4_N6
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( m(2) ) + ( VCC ) + ( \Add1~90\ ))
-- \Add1~86\ = CARRY(( m(2) ) + ( VCC ) + ( \Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(2),
	cin => \Add1~90\,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\);

-- Location: FF_X24_Y4_N26
\m[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[2]~feeder_combout\,
	asdata => \Add1~85_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(2));

-- Location: MLABCELL_X25_Y4_N9
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( m(3) ) + ( VCC ) + ( \Add1~86\ ))
-- \Add1~82\ = CARRY(( m(3) ) + ( VCC ) + ( \Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(3),
	cin => \Add1~86\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: FF_X24_Y4_N20
\m[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[3]~feeder_combout\,
	asdata => \Add1~81_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(3));

-- Location: MLABCELL_X25_Y4_N12
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( m(4) ) + ( VCC ) + ( \Add1~82\ ))
-- \Add1~98\ = CARRY(( m(4) ) + ( VCC ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(4),
	cin => \Add1~82\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

-- Location: FF_X24_Y3_N38
\m[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[4]~feeder_combout\,
	asdata => \Add1~97_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(4));

-- Location: MLABCELL_X25_Y4_N15
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( m(5) ) + ( VCC ) + ( \Add1~98\ ))
-- \Add1~102\ = CARRY(( m(5) ) + ( VCC ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_m(5),
	cin => \Add1~98\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

-- Location: FF_X24_Y4_N5
\m[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[5]~feeder_combout\,
	asdata => \Add1~101_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(5));

-- Location: MLABCELL_X25_Y4_N18
\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( m(6) ) + ( VCC ) + ( \Add1~102\ ))
-- \Add1~106\ = CARRY(( m(6) ) + ( VCC ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(6),
	cin => \Add1~102\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\);

-- Location: FF_X24_Y3_N23
\m[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[6]~feeder_combout\,
	asdata => \Add1~105_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(6));

-- Location: MLABCELL_X25_Y4_N21
\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( m(7) ) + ( VCC ) + ( \Add1~106\ ))
-- \Add1~110\ = CARRY(( m(7) ) + ( VCC ) + ( \Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_m(7),
	cin => \Add1~106\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\);

-- Location: FF_X24_Y3_N35
\m[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[7]~feeder_combout\,
	asdata => \Add1~109_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(7));

-- Location: MLABCELL_X25_Y4_N24
\Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( m(8) ) + ( VCC ) + ( \Add1~110\ ))
-- \Add1~114\ = CARRY(( m(8) ) + ( VCC ) + ( \Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(8),
	cin => \Add1~110\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\);

-- Location: FF_X24_Y3_N17
\m[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[8]~feeder_combout\,
	asdata => \Add1~113_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(8));

-- Location: MLABCELL_X25_Y4_N27
\Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~117_sumout\ = SUM(( m(9) ) + ( VCC ) + ( \Add1~114\ ))
-- \Add1~118\ = CARRY(( m(9) ) + ( VCC ) + ( \Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_m(9),
	cin => \Add1~114\,
	sumout => \Add1~117_sumout\,
	cout => \Add1~118\);

-- Location: FF_X24_Y3_N11
\m[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[9]~feeder_combout\,
	asdata => \Add1~117_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(9));

-- Location: MLABCELL_X25_Y4_N30
\Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~121_sumout\ = SUM(( m(10) ) + ( VCC ) + ( \Add1~118\ ))
-- \Add1~122\ = CARRY(( m(10) ) + ( VCC ) + ( \Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_m(10),
	cin => \Add1~118\,
	sumout => \Add1~121_sumout\,
	cout => \Add1~122\);

-- Location: FF_X24_Y4_N41
\m[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[10]~feeder_combout\,
	asdata => \Add1~121_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(10));

-- Location: MLABCELL_X25_Y4_N33
\Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~125_sumout\ = SUM(( m(11) ) + ( VCC ) + ( \Add1~122\ ))
-- \Add1~126\ = CARRY(( m(11) ) + ( VCC ) + ( \Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(11),
	cin => \Add1~122\,
	sumout => \Add1~125_sumout\,
	cout => \Add1~126\);

-- Location: FF_X24_Y3_N59
\m[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[11]~feeder_combout\,
	asdata => \Add1~125_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(11));

-- Location: MLABCELL_X25_Y4_N36
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( m(12) ) + ( VCC ) + ( \Add1~126\ ))
-- \Add1~58\ = CARRY(( m(12) ) + ( VCC ) + ( \Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_m(12),
	cin => \Add1~126\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X24_Y3_N8
\m[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[12]~feeder_combout\,
	asdata => \Add1~57_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(12));

-- Location: MLABCELL_X25_Y4_N39
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( m(13) ) + ( VCC ) + ( \Add1~58\ ))
-- \Add1~62\ = CARRY(( m(13) ) + ( VCC ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(13),
	cin => \Add1~58\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: FF_X24_Y3_N41
\m[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[13]~feeder_combout\,
	asdata => \Add1~61_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(13));

-- Location: MLABCELL_X25_Y4_N42
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( m(14) ) + ( VCC ) + ( \Add1~62\ ))
-- \Add1~66\ = CARRY(( m(14) ) + ( VCC ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_m(14),
	cin => \Add1~62\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: FF_X24_Y3_N32
\m[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[14]~feeder_combout\,
	asdata => \Add1~65_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(14));

-- Location: MLABCELL_X25_Y4_N45
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( m(15) ) + ( VCC ) + ( \Add1~66\ ))
-- \Add1~70\ = CARRY(( m(15) ) + ( VCC ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_m(15),
	cin => \Add1~66\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: FF_X24_Y3_N56
\m[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[15]~feeder_combout\,
	asdata => \Add1~69_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(15));

-- Location: MLABCELL_X25_Y4_N48
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( m(16) ) + ( VCC ) + ( \Add1~70\ ))
-- \Add1~74\ = CARRY(( m(16) ) + ( VCC ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(16),
	cin => \Add1~70\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: FF_X24_Y4_N29
\m[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[16]~feeder_combout\,
	asdata => \Add1~73_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(16));

-- Location: MLABCELL_X25_Y4_N51
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( m(17) ) + ( VCC ) + ( \Add1~74\ ))
-- \Add1~78\ = CARRY(( m(17) ) + ( VCC ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(17),
	cin => \Add1~74\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: FF_X25_Y3_N59
\m[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[17]~feeder_combout\,
	asdata => \Add1~77_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(17));

-- Location: MLABCELL_X25_Y4_N54
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( m(18) ) + ( VCC ) + ( \Add1~78\ ))
-- \Add1~34\ = CARRY(( m(18) ) + ( VCC ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(18),
	cin => \Add1~78\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X24_Y4_N17
\m[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[18]~feeder_combout\,
	asdata => \Add1~33_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(18));

-- Location: MLABCELL_X25_Y4_N57
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( m(19) ) + ( VCC ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( m(19) ) + ( VCC ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_m(19),
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X24_Y4_N14
\m[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[19]~feeder_combout\,
	asdata => \Add1~37_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(19));

-- Location: MLABCELL_X25_Y3_N0
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( m(20) ) + ( VCC ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( m(20) ) + ( VCC ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(20),
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X24_Y4_N23
\m[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[20]~feeder_combout\,
	asdata => \Add1~41_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(20));

-- Location: MLABCELL_X25_Y3_N3
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( m(21) ) + ( VCC ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( m(21) ) + ( VCC ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(21),
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X25_Y3_N38
\m[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[21]~feeder_combout\,
	asdata => \Add1~45_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(21));

-- Location: MLABCELL_X25_Y3_N6
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( m(22) ) + ( VCC ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( m(22) ) + ( VCC ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_m(22),
	cin => \Add1~46\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X25_Y3_N56
\m[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[22]~feeder_combout\,
	asdata => \Add1~49_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(22));

-- Location: MLABCELL_X25_Y3_N9
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( m(23) ) + ( VCC ) + ( \Add1~50\ ))
-- \Add1~54\ = CARRY(( m(23) ) + ( VCC ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_m(23),
	cin => \Add1~50\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X25_Y3_N41
\m[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[23]~feeder_combout\,
	asdata => \Add1~53_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(23));

-- Location: MLABCELL_X25_Y3_N12
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( m(24) ) + ( VCC ) + ( \Add1~54\ ))
-- \Add1~10\ = CARRY(( m(24) ) + ( VCC ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_m(24),
	cin => \Add1~54\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X24_Y4_N50
\m[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[24]~feeder_combout\,
	asdata => \Add1~9_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(24));

-- Location: MLABCELL_X25_Y3_N15
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( m(25) ) + ( VCC ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( m(25) ) + ( VCC ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_m(25),
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X24_Y4_N59
\m[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[25]~feeder_combout\,
	asdata => \Add1~13_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(25));

-- Location: MLABCELL_X25_Y3_N18
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( m(26) ) + ( VCC ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( m(26) ) + ( VCC ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(26),
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X24_Y4_N38
\m[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[26]~feeder_combout\,
	asdata => \Add1~17_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(26));

-- Location: MLABCELL_X25_Y3_N21
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( m(27) ) + ( VCC ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( m(27) ) + ( VCC ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(27),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X24_Y4_N53
\m[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[27]~feeder_combout\,
	asdata => \Add1~21_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(27));

-- Location: MLABCELL_X25_Y3_N24
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( m(28) ) + ( VCC ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( m(28) ) + ( VCC ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_m(28),
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X24_Y4_N2
\m[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[28]~feeder_combout\,
	asdata => \Add1~25_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(28));

-- Location: MLABCELL_X25_Y3_N27
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( m(29) ) + ( VCC ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( m(29) ) + ( VCC ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_m(29),
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X25_Y3_N44
\m[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[29]~feeder_combout\,
	asdata => \Add1~29_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(29));

-- Location: MLABCELL_X25_Y3_N30
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( m(30) ) + ( VCC ) + ( \Add1~30\ ))
-- \Add1~2\ = CARRY(( m(30) ) + ( VCC ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_m(30),
	cin => \Add1~30\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X25_Y3_N53
\m[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[30]~feeder_combout\,
	asdata => \Add1~1_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(30));

-- Location: MLABCELL_X25_Y3_N33
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( m(31) ) + ( VCC ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_m(31),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\);

-- Location: FF_X25_Y3_N50
\m[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m[31]~feeder_combout\,
	asdata => \Add1~5_sumout\,
	sload => \m[1]~0_combout\,
	ena => \m[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(31));

-- Location: MLABCELL_X25_Y3_N45
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( !m(30) & ( !m(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_m(31),
	dataf => ALT_INV_m(30),
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X24_Y3_N48
\Equal2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = ( !m(11) & ( !m(10) & ( (!m(7) & (!m(9) & (!m(6) & !m(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_m(7),
	datab => ALT_INV_m(9),
	datac => ALT_INV_m(6),
	datad => ALT_INV_m(8),
	datae => ALT_INV_m(11),
	dataf => ALT_INV_m(10),
	combout => \Equal2~5_combout\);

-- Location: LABCELL_X24_Y3_N0
\Equal2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = ( !m(17) & ( !m(16) & ( (!m(15) & (!m(13) & (!m(12) & !m(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_m(15),
	datab => ALT_INV_m(13),
	datac => ALT_INV_m(12),
	datad => ALT_INV_m(14),
	datae => ALT_INV_m(17),
	dataf => ALT_INV_m(16),
	combout => \Equal2~3_combout\);

-- Location: LABCELL_X24_Y3_N42
\Equal2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = ( !m(3) & ( !m(2) & ( (!m(4) & (!m(0) & (!m(1) & !m(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_m(4),
	datab => ALT_INV_m(0),
	datac => ALT_INV_m(1),
	datad => ALT_INV_m(5),
	datae => ALT_INV_m(3),
	dataf => ALT_INV_m(2),
	combout => \Equal2~4_combout\);

-- Location: LABCELL_X24_Y4_N6
\Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = ( !m(28) & ( !m(29) & ( (!m(24) & (!m(26) & (!m(27) & !m(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_m(24),
	datab => ALT_INV_m(26),
	datac => ALT_INV_m(27),
	datad => ALT_INV_m(25),
	datae => ALT_INV_m(28),
	dataf => ALT_INV_m(29),
	combout => \Equal2~1_combout\);

-- Location: LABCELL_X24_Y4_N30
\Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = ( !m(21) & ( !m(23) & ( (!m(20) & (!m(19) & (!m(22) & !m(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_m(20),
	datab => ALT_INV_m(19),
	datac => ALT_INV_m(22),
	datad => ALT_INV_m(18),
	datae => ALT_INV_m(21),
	dataf => ALT_INV_m(23),
	combout => \Equal2~2_combout\);

-- Location: LABCELL_X24_Y3_N24
\Equal2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = ( \Equal2~1_combout\ & ( \Equal2~2_combout\ & ( (\Equal2~0_combout\ & (\Equal2~5_combout\ & (\Equal2~3_combout\ & \Equal2~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_Equal2~5_combout\,
	datac => \ALT_INV_Equal2~3_combout\,
	datad => \ALT_INV_Equal2~4_combout\,
	datae => \ALT_INV_Equal2~1_combout\,
	dataf => \ALT_INV_Equal2~2_combout\,
	combout => \Equal2~6_combout\);

-- Location: MLABCELL_X21_Y4_N24
\n~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \n~1_combout\ = ( n(0) & ( \Equal2~6_combout\ & ( (!\Equal1~6_combout\ & \Add3~81_sumout\) ) ) ) # ( !n(0) & ( \Equal2~6_combout\ & ( (!\Equal1~6_combout\ & \Add3~81_sumout\) ) ) ) # ( n(0) & ( !\Equal2~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datac => \ALT_INV_Add3~81_sumout\,
	datae => ALT_INV_n(0),
	dataf => \ALT_INV_Equal2~6_combout\,
	combout => \n~1_combout\);

-- Location: LABCELL_X23_Y4_N6
\m[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[3]~2_combout\ = ( \reset~input_o\ & ( !\delay[4]~DUPLICATE_q\ & ( (!delay(1) & (!delay(0) & (!delay(3) & !delay(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay(1),
	datab => ALT_INV_delay(0),
	datac => ALT_INV_delay(3),
	datad => ALT_INV_delay(2),
	datae => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_delay[4]~DUPLICATE_q\,
	combout => \m[3]~2_combout\);

-- Location: FF_X21_Y4_N26
\n[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n~1_combout\,
	asdata => VCC,
	sload => \ALT_INV_fin~q\,
	ena => \m[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(0));

-- Location: LABCELL_X22_Y4_N3
\Add3~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~85_sumout\ = SUM(( n(1) ) + ( VCC ) + ( \Add3~82\ ))
-- \Add3~86\ = CARRY(( n(1) ) + ( VCC ) + ( \Add3~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_n(1),
	cin => \Add3~82\,
	sumout => \Add3~85_sumout\,
	cout => \Add3~86\);

-- Location: LABCELL_X23_Y3_N45
\n[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[1]~0_combout\ = ( \Equal2~6_combout\ & ( (\reset~input_o\ & (\Equal0~0_combout\ & ((!\fin~q\) # (!\Equal1~6_combout\)))) ) ) # ( !\Equal2~6_combout\ & ( (!\fin~q\ & (\reset~input_o\ & \Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000011100000000000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fin~q\,
	datab => \ALT_INV_Equal1~6_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal2~6_combout\,
	combout => \n[1]~0_combout\);

-- Location: FF_X23_Y4_N26
\n[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[1]~feeder_combout\,
	asdata => \Add3~85_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(1));

-- Location: LABCELL_X22_Y4_N6
\Add3~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~89_sumout\ = SUM(( n(2) ) + ( VCC ) + ( \Add3~86\ ))
-- \Add3~90\ = CARRY(( n(2) ) + ( VCC ) + ( \Add3~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(2),
	cin => \Add3~86\,
	sumout => \Add3~89_sumout\,
	cout => \Add3~90\);

-- Location: FF_X23_Y4_N23
\n[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[2]~feeder_combout\,
	asdata => \Add3~89_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(2));

-- Location: LABCELL_X22_Y4_N9
\Add3~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~93_sumout\ = SUM(( n(3) ) + ( VCC ) + ( \Add3~90\ ))
-- \Add3~94\ = CARRY(( n(3) ) + ( VCC ) + ( \Add3~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(3),
	cin => \Add3~90\,
	sumout => \Add3~93_sumout\,
	cout => \Add3~94\);

-- Location: FF_X23_Y4_N2
\n[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[3]~feeder_combout\,
	asdata => \Add3~93_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(3));

-- Location: LABCELL_X22_Y4_N12
\Add3~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~97_sumout\ = SUM(( n(4) ) + ( VCC ) + ( \Add3~94\ ))
-- \Add3~98\ = CARRY(( n(4) ) + ( VCC ) + ( \Add3~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(4),
	cin => \Add3~94\,
	sumout => \Add3~97_sumout\,
	cout => \Add3~98\);

-- Location: FF_X23_Y3_N20
\n[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[4]~feeder_combout\,
	asdata => \Add3~97_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(4));

-- Location: LABCELL_X22_Y4_N15
\Add3~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~101_sumout\ = SUM(( n(5) ) + ( VCC ) + ( \Add3~98\ ))
-- \Add3~102\ = CARRY(( n(5) ) + ( VCC ) + ( \Add3~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(5),
	cin => \Add3~98\,
	sumout => \Add3~101_sumout\,
	cout => \Add3~102\);

-- Location: FF_X23_Y3_N56
\n[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[5]~feeder_combout\,
	asdata => \Add3~101_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(5));

-- Location: LABCELL_X22_Y4_N18
\Add3~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~105_sumout\ = SUM(( n(6) ) + ( VCC ) + ( \Add3~102\ ))
-- \Add3~106\ = CARRY(( n(6) ) + ( VCC ) + ( \Add3~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(6),
	cin => \Add3~102\,
	sumout => \Add3~105_sumout\,
	cout => \Add3~106\);

-- Location: FF_X23_Y3_N59
\n[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[6]~feeder_combout\,
	asdata => \Add3~105_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(6));

-- Location: LABCELL_X22_Y4_N21
\Add3~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~109_sumout\ = SUM(( n(7) ) + ( VCC ) + ( \Add3~106\ ))
-- \Add3~110\ = CARRY(( n(7) ) + ( VCC ) + ( \Add3~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_n(7),
	cin => \Add3~106\,
	sumout => \Add3~109_sumout\,
	cout => \Add3~110\);

-- Location: FF_X23_Y3_N38
\n[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[7]~feeder_combout\,
	asdata => \Add3~109_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(7));

-- Location: LABCELL_X22_Y4_N24
\Add3~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~113_sumout\ = SUM(( n(8) ) + ( VCC ) + ( \Add3~110\ ))
-- \Add3~114\ = CARRY(( n(8) ) + ( VCC ) + ( \Add3~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_n(8),
	cin => \Add3~110\,
	sumout => \Add3~113_sumout\,
	cout => \Add3~114\);

-- Location: FF_X23_Y3_N5
\n[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[8]~feeder_combout\,
	asdata => \Add3~113_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(8));

-- Location: LABCELL_X22_Y4_N27
\Add3~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~117_sumout\ = SUM(( n(9) ) + ( VCC ) + ( \Add3~114\ ))
-- \Add3~118\ = CARRY(( n(9) ) + ( VCC ) + ( \Add3~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(9),
	cin => \Add3~114\,
	sumout => \Add3~117_sumout\,
	cout => \Add3~118\);

-- Location: FF_X23_Y3_N26
\n[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[9]~feeder_combout\,
	asdata => \Add3~117_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(9));

-- Location: LABCELL_X22_Y4_N30
\Add3~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~121_sumout\ = SUM(( n(10) ) + ( VCC ) + ( \Add3~118\ ))
-- \Add3~122\ = CARRY(( n(10) ) + ( VCC ) + ( \Add3~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_n(10),
	cin => \Add3~118\,
	sumout => \Add3~121_sumout\,
	cout => \Add3~122\);

-- Location: FF_X23_Y3_N29
\n[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[10]~feeder_combout\,
	asdata => \Add3~121_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(10));

-- Location: LABCELL_X22_Y4_N33
\Add3~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~125_sumout\ = SUM(( n(11) ) + ( VCC ) + ( \Add3~122\ ))
-- \Add3~126\ = CARRY(( n(11) ) + ( VCC ) + ( \Add3~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_n(11),
	cin => \Add3~122\,
	sumout => \Add3~125_sumout\,
	cout => \Add3~126\);

-- Location: FF_X23_Y3_N14
\n[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[11]~feeder_combout\,
	asdata => \Add3~125_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(11));

-- Location: LABCELL_X22_Y4_N36
\Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~57_sumout\ = SUM(( n(12) ) + ( VCC ) + ( \Add3~126\ ))
-- \Add3~58\ = CARRY(( n(12) ) + ( VCC ) + ( \Add3~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(12),
	cin => \Add3~126\,
	sumout => \Add3~57_sumout\,
	cout => \Add3~58\);

-- Location: FF_X23_Y3_N2
\n[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[12]~feeder_combout\,
	asdata => \Add3~57_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(12));

-- Location: IOIBUF_X4_Y0_N1
\count[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(14),
	o => \count[14]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\count[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(13),
	o => \count[13]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\count[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(12),
	o => \count[12]~input_o\);

-- Location: LABCELL_X19_Y3_N36
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \count[12]~input_o\ ) + ( VCC ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( \count[12]~input_o\ ) + ( VCC ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_count[12]~input_o\,
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: LABCELL_X19_Y3_N39
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( \count[13]~input_o\ ) + ( VCC ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( \count[13]~input_o\ ) + ( VCC ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_count[13]~input_o\,
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: LABCELL_X19_Y3_N42
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( \count[14]~input_o\ ) + ( VCC ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( \count[14]~input_o\ ) + ( VCC ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_count[14]~input_o\,
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: LABCELL_X23_Y3_N39
\n[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[15]~feeder_combout\ = ( \Add0~69_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~69_sumout\,
	combout => \n[15]~feeder_combout\);

-- Location: LABCELL_X23_Y3_N42
\n[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[14]~feeder_combout\ = ( \Add0~65_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~65_sumout\,
	combout => \n[14]~feeder_combout\);

-- Location: LABCELL_X23_Y3_N51
\n[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[13]~feeder_combout\ = \Add0~61_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~61_sumout\,
	combout => \n[13]~feeder_combout\);

-- Location: LABCELL_X22_Y4_N39
\Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~61_sumout\ = SUM(( n(13) ) + ( VCC ) + ( \Add3~58\ ))
-- \Add3~62\ = CARRY(( n(13) ) + ( VCC ) + ( \Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_n(13),
	cin => \Add3~58\,
	sumout => \Add3~61_sumout\,
	cout => \Add3~62\);

-- Location: FF_X23_Y3_N53
\n[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[13]~feeder_combout\,
	asdata => \Add3~61_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(13));

-- Location: LABCELL_X22_Y4_N42
\Add3~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~65_sumout\ = SUM(( n(14) ) + ( VCC ) + ( \Add3~62\ ))
-- \Add3~66\ = CARRY(( n(14) ) + ( VCC ) + ( \Add3~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(14),
	cin => \Add3~62\,
	sumout => \Add3~65_sumout\,
	cout => \Add3~66\);

-- Location: FF_X23_Y3_N44
\n[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[14]~feeder_combout\,
	asdata => \Add3~65_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(14));

-- Location: LABCELL_X22_Y4_N45
\Add3~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~69_sumout\ = SUM(( n(15) ) + ( VCC ) + ( \Add3~66\ ))
-- \Add3~70\ = CARRY(( n(15) ) + ( VCC ) + ( \Add3~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(15),
	cin => \Add3~66\,
	sumout => \Add3~69_sumout\,
	cout => \Add3~70\);

-- Location: FF_X23_Y3_N41
\n[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[15]~feeder_combout\,
	asdata => \Add3~69_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(15));

-- Location: IOIBUF_X6_Y0_N18
\count[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(16),
	o => \count[16]~input_o\);

-- Location: IOIBUF_X8_Y0_N52
\count[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(15),
	o => \count[15]~input_o\);

-- Location: LABCELL_X19_Y3_N45
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( \count[15]~input_o\ ) + ( VCC ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( \count[15]~input_o\ ) + ( VCC ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[15]~input_o\,
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: LABCELL_X19_Y3_N48
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( \count[16]~input_o\ ) + ( VCC ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( \count[16]~input_o\ ) + ( VCC ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_count[16]~input_o\,
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: LABCELL_X23_Y3_N21
\n[17]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[17]~feeder_combout\ = ( \Add0~77_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~77_sumout\,
	combout => \n[17]~feeder_combout\);

-- Location: LABCELL_X23_Y3_N48
\n[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[16]~feeder_combout\ = \Add0~73_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~73_sumout\,
	combout => \n[16]~feeder_combout\);

-- Location: LABCELL_X22_Y4_N48
\Add3~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~73_sumout\ = SUM(( n(16) ) + ( VCC ) + ( \Add3~70\ ))
-- \Add3~74\ = CARRY(( n(16) ) + ( VCC ) + ( \Add3~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(16),
	cin => \Add3~70\,
	sumout => \Add3~73_sumout\,
	cout => \Add3~74\);

-- Location: FF_X23_Y3_N50
\n[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[16]~feeder_combout\,
	asdata => \Add3~73_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(16));

-- Location: LABCELL_X22_Y4_N51
\Add3~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~77_sumout\ = SUM(( n(17) ) + ( VCC ) + ( \Add3~74\ ))
-- \Add3~78\ = CARRY(( n(17) ) + ( VCC ) + ( \Add3~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_n(17),
	cin => \Add3~74\,
	sumout => \Add3~77_sumout\,
	cout => \Add3~78\);

-- Location: FF_X23_Y3_N23
\n[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[17]~feeder_combout\,
	asdata => \Add3~77_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(17));

-- Location: LABCELL_X23_Y3_N6
\Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( !n(17) & ( !n(16) & ( (!n(12) & (!n(15) & (!n(13) & !n(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_n(12),
	datab => ALT_INV_n(15),
	datac => ALT_INV_n(13),
	datad => ALT_INV_n(14),
	datae => ALT_INV_n(17),
	dataf => ALT_INV_n(16),
	combout => \Equal1~3_combout\);

-- Location: IOIBUF_X30_Y0_N35
\count[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(20),
	o => \count[20]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\count[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(19),
	o => \count[19]~input_o\);

-- Location: IOIBUF_X2_Y0_N92
\count[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(18),
	o => \count[18]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\count[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(17),
	o => \count[17]~input_o\);

-- Location: LABCELL_X19_Y3_N51
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \count[17]~input_o\ ) + ( VCC ) + ( \Add0~78\ ))
-- \Add0~34\ = CARRY(( \count[17]~input_o\ ) + ( VCC ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[17]~input_o\,
	cin => \Add0~78\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: LABCELL_X19_Y3_N54
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \count[18]~input_o\ ) + ( VCC ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( \count[18]~input_o\ ) + ( VCC ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_count[18]~input_o\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: LABCELL_X19_Y3_N57
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \count[19]~input_o\ ) + ( VCC ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( \count[19]~input_o\ ) + ( VCC ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[19]~input_o\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: LABCELL_X19_Y2_N0
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \count[20]~input_o\ ) + ( VCC ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( \count[20]~input_o\ ) + ( VCC ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_count[20]~input_o\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: MLABCELL_X21_Y3_N48
\n[21]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[21]~feeder_combout\ = ( \Add0~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~45_sumout\,
	combout => \n[21]~feeder_combout\);

-- Location: MLABCELL_X21_Y3_N30
\n[20]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[20]~feeder_combout\ = ( \Add0~41_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~41_sumout\,
	combout => \n[20]~feeder_combout\);

-- Location: MLABCELL_X21_Y3_N12
\n[19]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[19]~feeder_combout\ = \Add0~37_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~37_sumout\,
	combout => \n[19]~feeder_combout\);

-- Location: MLABCELL_X21_Y3_N3
\n[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[18]~feeder_combout\ = ( \Add0~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~33_sumout\,
	combout => \n[18]~feeder_combout\);

-- Location: LABCELL_X22_Y4_N54
\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( n(18) ) + ( VCC ) + ( \Add3~78\ ))
-- \Add3~34\ = CARRY(( n(18) ) + ( VCC ) + ( \Add3~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(18),
	cin => \Add3~78\,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\);

-- Location: FF_X21_Y3_N5
\n[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[18]~feeder_combout\,
	asdata => \Add3~33_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(18));

-- Location: LABCELL_X22_Y4_N57
\Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( n(19) ) + ( VCC ) + ( \Add3~34\ ))
-- \Add3~38\ = CARRY(( n(19) ) + ( VCC ) + ( \Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(19),
	cin => \Add3~34\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\);

-- Location: FF_X21_Y3_N14
\n[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[19]~feeder_combout\,
	asdata => \Add3~37_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(19));

-- Location: LABCELL_X22_Y3_N0
\Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~41_sumout\ = SUM(( n(20) ) + ( VCC ) + ( \Add3~38\ ))
-- \Add3~42\ = CARRY(( n(20) ) + ( VCC ) + ( \Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_n(20),
	cin => \Add3~38\,
	sumout => \Add3~41_sumout\,
	cout => \Add3~42\);

-- Location: FF_X21_Y3_N32
\n[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[20]~feeder_combout\,
	asdata => \Add3~41_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(20));

-- Location: LABCELL_X22_Y3_N3
\Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~45_sumout\ = SUM(( n(21) ) + ( VCC ) + ( \Add3~42\ ))
-- \Add3~46\ = CARRY(( n(21) ) + ( VCC ) + ( \Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(21),
	cin => \Add3~42\,
	sumout => \Add3~45_sumout\,
	cout => \Add3~46\);

-- Location: FF_X21_Y3_N50
\n[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[21]~feeder_combout\,
	asdata => \Add3~45_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(21));

-- Location: IOIBUF_X28_Y0_N52
\count[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(21),
	o => \count[21]~input_o\);

-- Location: LABCELL_X19_Y2_N3
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \count[21]~input_o\ ) + ( VCC ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( \count[21]~input_o\ ) + ( VCC ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_count[21]~input_o\,
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: MLABCELL_X21_Y3_N51
\n[22]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[22]~feeder_combout\ = ( \Add0~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~49_sumout\,
	combout => \n[22]~feeder_combout\);

-- Location: LABCELL_X22_Y3_N6
\Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~49_sumout\ = SUM(( n(22) ) + ( VCC ) + ( \Add3~46\ ))
-- \Add3~50\ = CARRY(( n(22) ) + ( VCC ) + ( \Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_n(22),
	cin => \Add3~46\,
	sumout => \Add3~49_sumout\,
	cout => \Add3~50\);

-- Location: FF_X21_Y3_N53
\n[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[22]~feeder_combout\,
	asdata => \Add3~49_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(22));

-- Location: IOIBUF_X26_Y0_N41
\count[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(22),
	o => \count[22]~input_o\);

-- Location: LABCELL_X19_Y2_N6
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \count[22]~input_o\ ) + ( VCC ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( \count[22]~input_o\ ) + ( VCC ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_count[22]~input_o\,
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: MLABCELL_X21_Y3_N33
\n[23]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[23]~feeder_combout\ = \Add0~53_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~53_sumout\,
	combout => \n[23]~feeder_combout\);

-- Location: LABCELL_X22_Y3_N9
\Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~53_sumout\ = SUM(( n(23) ) + ( VCC ) + ( \Add3~50\ ))
-- \Add3~54\ = CARRY(( n(23) ) + ( VCC ) + ( \Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(23),
	cin => \Add3~50\,
	sumout => \Add3~53_sumout\,
	cout => \Add3~54\);

-- Location: FF_X21_Y3_N35
\n[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[23]~feeder_combout\,
	asdata => \Add3~53_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(23));

-- Location: MLABCELL_X21_Y3_N42
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( !n(18) & ( !n(23) & ( (!n(21) & (!n(20) & (!n(22) & !n(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_n(21),
	datab => ALT_INV_n(20),
	datac => ALT_INV_n(22),
	datad => ALT_INV_n(19),
	datae => ALT_INV_n(18),
	dataf => ALT_INV_n(23),
	combout => \Equal1~2_combout\);

-- Location: LABCELL_X22_Y3_N48
\Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = ( !n(0) & ( !n(1) & ( (!n(2) & (!n(4) & (!n(3) & !n(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_n(2),
	datab => ALT_INV_n(4),
	datac => ALT_INV_n(3),
	datad => ALT_INV_n(5),
	datae => ALT_INV_n(0),
	dataf => ALT_INV_n(1),
	combout => \Equal1~4_combout\);

-- Location: IOIBUF_X26_Y0_N92
\count[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(29),
	o => \count[29]~input_o\);

-- Location: IOIBUF_X28_Y0_N18
\count[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(28),
	o => \count[28]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\count[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(27),
	o => \count[27]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\count[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(26),
	o => \count[26]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\count[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(25),
	o => \count[25]~input_o\);

-- Location: IOIBUF_X26_Y0_N58
\count[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(24),
	o => \count[24]~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\count[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(23),
	o => \count[23]~input_o\);

-- Location: LABCELL_X19_Y2_N9
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \count[23]~input_o\ ) + ( VCC ) + ( \Add0~54\ ))
-- \Add0~10\ = CARRY(( \count[23]~input_o\ ) + ( VCC ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[23]~input_o\,
	cin => \Add0~54\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X19_Y2_N12
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \count[24]~input_o\ ) + ( VCC ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \count[24]~input_o\ ) + ( VCC ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_count[24]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X19_Y2_N15
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \count[25]~input_o\ ) + ( VCC ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \count[25]~input_o\ ) + ( VCC ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[25]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X19_Y2_N18
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \count[26]~input_o\ ) + ( VCC ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \count[26]~input_o\ ) + ( VCC ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_count[26]~input_o\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: LABCELL_X19_Y2_N21
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \count[27]~input_o\ ) + ( VCC ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \count[27]~input_o\ ) + ( VCC ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[27]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: LABCELL_X19_Y2_N24
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \count[28]~input_o\ ) + ( VCC ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \count[28]~input_o\ ) + ( VCC ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_count[28]~input_o\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: LABCELL_X19_Y2_N27
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \count[29]~input_o\ ) + ( VCC ) + ( \Add0~30\ ))
-- \Add0~2\ = CARRY(( \count[29]~input_o\ ) + ( VCC ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[29]~input_o\,
	cin => \Add0~30\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X22_Y3_N36
\n[30]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[30]~feeder_combout\ = ( \Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \n[30]~feeder_combout\);

-- Location: MLABCELL_X21_Y3_N18
\n[29]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[29]~feeder_combout\ = ( \Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~29_sumout\,
	combout => \n[29]~feeder_combout\);

-- Location: MLABCELL_X21_Y3_N15
\n[28]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[28]~feeder_combout\ = \Add0~25_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~25_sumout\,
	combout => \n[28]~feeder_combout\);

-- Location: MLABCELL_X21_Y3_N6
\n[27]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[27]~feeder_combout\ = \Add0~21_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~21_sumout\,
	combout => \n[27]~feeder_combout\);

-- Location: MLABCELL_X21_Y3_N27
\n[26]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[26]~feeder_combout\ = \Add0~17_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~17_sumout\,
	combout => \n[26]~feeder_combout\);

-- Location: MLABCELL_X21_Y3_N54
\n[25]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[25]~feeder_combout\ = ( \Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~13_sumout\,
	combout => \n[25]~feeder_combout\);

-- Location: MLABCELL_X21_Y3_N39
\n[24]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[24]~feeder_combout\ = ( \Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~9_sumout\,
	combout => \n[24]~feeder_combout\);

-- Location: LABCELL_X22_Y3_N12
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( n(24) ) + ( VCC ) + ( \Add3~54\ ))
-- \Add3~10\ = CARRY(( n(24) ) + ( VCC ) + ( \Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(24),
	cin => \Add3~54\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: FF_X21_Y3_N41
\n[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[24]~feeder_combout\,
	asdata => \Add3~9_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(24));

-- Location: LABCELL_X22_Y3_N15
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( n(25) ) + ( VCC ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( n(25) ) + ( VCC ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(25),
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: FF_X21_Y3_N56
\n[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[25]~feeder_combout\,
	asdata => \Add3~13_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(25));

-- Location: LABCELL_X22_Y3_N18
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( n(26) ) + ( VCC ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( n(26) ) + ( VCC ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_n(26),
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: FF_X21_Y3_N29
\n[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[26]~feeder_combout\,
	asdata => \Add3~17_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(26));

-- Location: LABCELL_X22_Y3_N21
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( n(27) ) + ( VCC ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( n(27) ) + ( VCC ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(27),
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: FF_X21_Y3_N8
\n[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[27]~feeder_combout\,
	asdata => \Add3~21_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(27));

-- Location: LABCELL_X22_Y3_N24
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( n(28) ) + ( VCC ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( n(28) ) + ( VCC ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_n(28),
	cin => \Add3~22\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: FF_X21_Y3_N17
\n[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[28]~feeder_combout\,
	asdata => \Add3~25_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(28));

-- Location: LABCELL_X22_Y3_N27
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( n(29) ) + ( VCC ) + ( \Add3~26\ ))
-- \Add3~30\ = CARRY(( n(29) ) + ( VCC ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_n(29),
	cin => \Add3~26\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: FF_X21_Y3_N20
\n[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[29]~feeder_combout\,
	asdata => \Add3~29_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(29));

-- Location: LABCELL_X22_Y3_N30
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( n(30) ) + ( VCC ) + ( \Add3~30\ ))
-- \Add3~2\ = CARRY(( n(30) ) + ( VCC ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_n(30),
	cin => \Add3~30\,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

-- Location: FF_X22_Y3_N38
\n[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[30]~feeder_combout\,
	asdata => \Add3~1_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(30));

-- Location: IOIBUF_X8_Y0_N35
\count[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(30),
	o => \count[30]~input_o\);

-- Location: LABCELL_X19_Y2_N30
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \count[30]~input_o\ ) + ( VCC ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_count[30]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\);

-- Location: LABCELL_X23_Y3_N15
\n[31]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[31]~feeder_combout\ = \Add0~5_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~5_sumout\,
	combout => \n[31]~feeder_combout\);

-- Location: LABCELL_X22_Y3_N33
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( n(31) ) + ( VCC ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(31),
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\);

-- Location: FF_X23_Y3_N17
\n[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n[31]~feeder_combout\,
	asdata => \Add3~5_sumout\,
	sload => \fin~q\,
	ena => \n[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(31));

-- Location: LABCELL_X22_Y3_N39
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!n(30) & !n(31))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_n(30),
	datad => ALT_INV_n(31),
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X22_Y3_N54
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !n(26) & ( !n(29) & ( (!n(27) & (!n(24) & (!n(25) & !n(28)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_n(27),
	datab => ALT_INV_n(24),
	datac => ALT_INV_n(25),
	datad => ALT_INV_n(28),
	datae => ALT_INV_n(26),
	dataf => ALT_INV_n(29),
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X23_Y3_N30
\Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = ( !n(8) & ( !n(11) & ( (!n(10) & (!n(6) & (!n(7) & !n(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_n(10),
	datab => ALT_INV_n(6),
	datac => ALT_INV_n(7),
	datad => ALT_INV_n(9),
	datae => ALT_INV_n(8),
	dataf => ALT_INV_n(11),
	combout => \Equal1~5_combout\);

-- Location: LABCELL_X22_Y3_N42
\Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = ( \Equal1~1_combout\ & ( \Equal1~5_combout\ & ( (\Equal1~3_combout\ & (\Equal1~2_combout\ & (\Equal1~4_combout\ & \Equal1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~3_combout\,
	datab => \ALT_INV_Equal1~2_combout\,
	datac => \ALT_INV_Equal1~4_combout\,
	datad => \ALT_INV_Equal1~0_combout\,
	datae => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \Equal1~6_combout\);

-- Location: LABCELL_X23_Y4_N57
\signal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \signal~0_combout\ = ( \fin~q\ & ( (!\Equal1~6_combout\ & (\reset~input_o\ & (!\Equal2~6_combout\ $ (!\signal~q\)))) ) ) # ( !\fin~q\ & ( \reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000010001000000000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datab => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_Equal2~6_combout\,
	datad => \ALT_INV_signal~q\,
	dataf => \ALT_INV_fin~q\,
	combout => \signal~0_combout\);

-- Location: FF_X23_Y4_N58
\signal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \signal~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \signal~q\);

-- Location: MLABCELL_X25_Y8_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


