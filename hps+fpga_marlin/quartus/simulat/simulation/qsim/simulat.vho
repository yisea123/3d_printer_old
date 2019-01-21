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

-- DATE "01/21/2019 21:09:09"

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
SIGNAL \clk_out~output_o\ : std_logic;
SIGNAL \finish~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
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
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~118\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~126\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Add1~125_sumout\ : std_logic;
SIGNAL \Add1~121_sumout\ : std_logic;
SIGNAL \Add1~117_sumout\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \m[7]~0_combout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \reduction[31]~input_o\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \n~1_combout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~89_sumout\ : std_logic;
SIGNAL \count[0]~input_o\ : std_logic;
SIGNAL \n[15]~0_combout\ : std_logic;
SIGNAL \Add2~90\ : std_logic;
SIGNAL \Add2~93_sumout\ : std_logic;
SIGNAL \count[1]~input_o\ : std_logic;
SIGNAL \Add2~94\ : std_logic;
SIGNAL \Add2~97_sumout\ : std_logic;
SIGNAL \count[2]~input_o\ : std_logic;
SIGNAL \Add2~98\ : std_logic;
SIGNAL \Add2~101_sumout\ : std_logic;
SIGNAL \count[3]~input_o\ : std_logic;
SIGNAL \Add2~102\ : std_logic;
SIGNAL \Add2~105_sumout\ : std_logic;
SIGNAL \count[4]~input_o\ : std_logic;
SIGNAL \Add2~106\ : std_logic;
SIGNAL \Add2~109_sumout\ : std_logic;
SIGNAL \count[5]~input_o\ : std_logic;
SIGNAL \Add2~110\ : std_logic;
SIGNAL \Add2~113_sumout\ : std_logic;
SIGNAL \count[6]~input_o\ : std_logic;
SIGNAL \Add2~114\ : std_logic;
SIGNAL \Add2~117_sumout\ : std_logic;
SIGNAL \count[7]~input_o\ : std_logic;
SIGNAL \Add2~118\ : std_logic;
SIGNAL \Add2~121_sumout\ : std_logic;
SIGNAL \count[8]~input_o\ : std_logic;
SIGNAL \Add2~122\ : std_logic;
SIGNAL \Add2~125_sumout\ : std_logic;
SIGNAL \count[9]~input_o\ : std_logic;
SIGNAL \Add2~126\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \count[10]~input_o\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \count[11]~input_o\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~65_sumout\ : std_logic;
SIGNAL \count[12]~input_o\ : std_logic;
SIGNAL \Add2~66\ : std_logic;
SIGNAL \Add2~69_sumout\ : std_logic;
SIGNAL \count[13]~input_o\ : std_logic;
SIGNAL \Add2~70\ : std_logic;
SIGNAL \Add2~81_sumout\ : std_logic;
SIGNAL \count[14]~input_o\ : std_logic;
SIGNAL \Add2~82\ : std_logic;
SIGNAL \Add2~77_sumout\ : std_logic;
SIGNAL \count[15]~input_o\ : std_logic;
SIGNAL \Add2~78\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \count[16]~input_o\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \count[17]~input_o\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \count[18]~input_o\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \count[19]~input_o\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \count[20]~input_o\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \count[21]~input_o\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \count[22]~input_o\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \count[23]~input_o\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \count[24]~input_o\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \count[25]~input_o\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \count[26]~input_o\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \count[27]~input_o\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \count[28]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~85_sumout\ : std_logic;
SIGNAL \count[29]~input_o\ : std_logic;
SIGNAL \Add2~86\ : std_logic;
SIGNAL \Add2~73_sumout\ : std_logic;
SIGNAL \count[30]~input_o\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \fin~0_combout\ : std_logic;
SIGNAL \fin~q\ : std_logic;
SIGNAL \signal~0_combout\ : std_logic;
SIGNAL \signal~q\ : std_logic;
SIGNAL m : std_logic_vector(31 DOWNTO 0);
SIGNAL n : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_m : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_reduction[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_reduction[7]~input_o\ : std_logic;
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
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_fin~q\ : std_logic;
SIGNAL \ALT_INV_signal~q\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL ALT_INV_n : std_logic_vector(31 DOWNTO 0);

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
ALT_INV_m(4) <= NOT m(4);
ALT_INV_m(5) <= NOT m(5);
ALT_INV_m(6) <= NOT m(6);
ALT_INV_m(7) <= NOT m(7);
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
\ALT_INV_reduction[11]~input_o\ <= NOT \reduction[11]~input_o\;
\ALT_INV_reduction[10]~input_o\ <= NOT \reduction[10]~input_o\;
\ALT_INV_reduction[9]~input_o\ <= NOT \reduction[9]~input_o\;
\ALT_INV_reduction[8]~input_o\ <= NOT \reduction[8]~input_o\;
\ALT_INV_reduction[0]~input_o\ <= NOT \reduction[0]~input_o\;
\ALT_INV_reduction[1]~input_o\ <= NOT \reduction[1]~input_o\;
\ALT_INV_reduction[2]~input_o\ <= NOT \reduction[2]~input_o\;
\ALT_INV_reduction[3]~input_o\ <= NOT \reduction[3]~input_o\;
\ALT_INV_reduction[4]~input_o\ <= NOT \reduction[4]~input_o\;
\ALT_INV_reduction[5]~input_o\ <= NOT \reduction[5]~input_o\;
\ALT_INV_reduction[6]~input_o\ <= NOT \reduction[6]~input_o\;
\ALT_INV_reduction[7]~input_o\ <= NOT \reduction[7]~input_o\;
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
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Equal1~6_combout\ <= NOT \Equal1~6_combout\;
\ALT_INV_Equal1~5_combout\ <= NOT \Equal1~5_combout\;
\ALT_INV_Equal1~4_combout\ <= NOT \Equal1~4_combout\;
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_fin~q\ <= NOT \fin~q\;
\ALT_INV_signal~q\ <= NOT \signal~q\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
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
ALT_INV_n(30) <= NOT n(30);
ALT_INV_n(15) <= NOT n(15);
ALT_INV_n(16) <= NOT n(16);
ALT_INV_n(31) <= NOT n(31);
ALT_INV_n(14) <= NOT n(14);
ALT_INV_n(13) <= NOT n(13);
ALT_INV_n(12) <= NOT n(12);
ALT_INV_n(11) <= NOT n(11);
ALT_INV_n(22) <= NOT n(22);
ALT_INV_n(21) <= NOT n(21);
ALT_INV_n(20) <= NOT n(20);
ALT_INV_n(19) <= NOT n(19);
ALT_INV_n(18) <= NOT n(18);
ALT_INV_n(17) <= NOT n(17);
ALT_INV_n(28) <= NOT n(28);
ALT_INV_n(27) <= NOT n(27);
ALT_INV_n(26) <= NOT n(26);
ALT_INV_n(25) <= NOT n(25);
ALT_INV_n(24) <= NOT n(24);
ALT_INV_n(23) <= NOT n(23);
ALT_INV_n(0) <= NOT n(0);
ALT_INV_n(29) <= NOT n(29);
ALT_INV_m(11) <= NOT m(11);
ALT_INV_m(10) <= NOT m(10);
ALT_INV_m(9) <= NOT m(9);
ALT_INV_m(8) <= NOT m(8);
ALT_INV_m(0) <= NOT m(0);
ALT_INV_m(1) <= NOT m(1);
ALT_INV_m(2) <= NOT m(2);
ALT_INV_m(3) <= NOT m(3);

\clk_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_signal~q\,
	devoe => ww_devoe,
	o => \clk_out~output_o\);

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
	o => \finish~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\reduction[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(30),
	o => \reduction[30]~input_o\);

\reduction[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(29),
	o => \reduction[29]~input_o\);

\reduction[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(28),
	o => \reduction[28]~input_o\);

\reduction[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(27),
	o => \reduction[27]~input_o\);

\reduction[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(26),
	o => \reduction[26]~input_o\);

\reduction[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(25),
	o => \reduction[25]~input_o\);

\reduction[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(24),
	o => \reduction[24]~input_o\);

\reduction[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(23),
	o => \reduction[23]~input_o\);

\reduction[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(22),
	o => \reduction[22]~input_o\);

\reduction[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(21),
	o => \reduction[21]~input_o\);

\reduction[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(20),
	o => \reduction[20]~input_o\);

\reduction[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(19),
	o => \reduction[19]~input_o\);

\reduction[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(18),
	o => \reduction[18]~input_o\);

\reduction[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(17),
	o => \reduction[17]~input_o\);

\reduction[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(16),
	o => \reduction[16]~input_o\);

\reduction[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(15),
	o => \reduction[15]~input_o\);

\reduction[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(14),
	o => \reduction[14]~input_o\);

\reduction[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(13),
	o => \reduction[13]~input_o\);

\reduction[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(12),
	o => \reduction[12]~input_o\);

\reduction[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(11),
	o => \reduction[11]~input_o\);

\reduction[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(10),
	o => \reduction[10]~input_o\);

\reduction[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(9),
	o => \reduction[9]~input_o\);

\reduction[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(8),
	o => \reduction[8]~input_o\);

\reduction[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(7),
	o => \reduction[7]~input_o\);

\reduction[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(6),
	o => \reduction[6]~input_o\);

\reduction[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(5),
	o => \reduction[5]~input_o\);

\reduction[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(4),
	o => \reduction[4]~input_o\);

\reduction[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(3),
	o => \reduction[3]~input_o\);

\reduction[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(2),
	o => \reduction[2]~input_o\);

\reduction[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(1),
	o => \reduction[1]~input_o\);

\reduction[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(0),
	o => \reduction[0]~input_o\);

\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( \reduction[0]~input_o\ ) + ( VCC ) + ( !VCC ))
-- \Add1~110\ = CARRY(( \reduction[0]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[0]~input_o\,
	cin => GND,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\);

\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( \reduction[1]~input_o\ ) + ( VCC ) + ( \Add1~110\ ))
-- \Add1~106\ = CARRY(( \reduction[1]~input_o\ ) + ( VCC ) + ( \Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[1]~input_o\,
	cin => \Add1~110\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\);

\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( \reduction[2]~input_o\ ) + ( VCC ) + ( \Add1~106\ ))
-- \Add1~102\ = CARRY(( \reduction[2]~input_o\ ) + ( VCC ) + ( \Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[2]~input_o\,
	cin => \Add1~106\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( \reduction[3]~input_o\ ) + ( VCC ) + ( \Add1~102\ ))
-- \Add1~98\ = CARRY(( \reduction[3]~input_o\ ) + ( VCC ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[3]~input_o\,
	cin => \Add1~102\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( \reduction[4]~input_o\ ) + ( VCC ) + ( \Add1~98\ ))
-- \Add1~94\ = CARRY(( \reduction[4]~input_o\ ) + ( VCC ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[4]~input_o\,
	cin => \Add1~98\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( \reduction[5]~input_o\ ) + ( VCC ) + ( \Add1~94\ ))
-- \Add1~90\ = CARRY(( \reduction[5]~input_o\ ) + ( VCC ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[5]~input_o\,
	cin => \Add1~94\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\);

\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( \reduction[6]~input_o\ ) + ( VCC ) + ( \Add1~90\ ))
-- \Add1~86\ = CARRY(( \reduction[6]~input_o\ ) + ( VCC ) + ( \Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[6]~input_o\,
	cin => \Add1~90\,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\);

\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( \reduction[7]~input_o\ ) + ( VCC ) + ( \Add1~86\ ))
-- \Add1~82\ = CARRY(( \reduction[7]~input_o\ ) + ( VCC ) + ( \Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[7]~input_o\,
	cin => \Add1~86\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

\Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( \reduction[8]~input_o\ ) + ( VCC ) + ( \Add1~82\ ))
-- \Add1~114\ = CARRY(( \reduction[8]~input_o\ ) + ( VCC ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[8]~input_o\,
	cin => \Add1~82\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\);

\Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~117_sumout\ = SUM(( \reduction[9]~input_o\ ) + ( VCC ) + ( \Add1~114\ ))
-- \Add1~118\ = CARRY(( \reduction[9]~input_o\ ) + ( VCC ) + ( \Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[9]~input_o\,
	cin => \Add1~114\,
	sumout => \Add1~117_sumout\,
	cout => \Add1~118\);

\Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~121_sumout\ = SUM(( \reduction[10]~input_o\ ) + ( VCC ) + ( \Add1~118\ ))
-- \Add1~122\ = CARRY(( \reduction[10]~input_o\ ) + ( VCC ) + ( \Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[10]~input_o\,
	cin => \Add1~118\,
	sumout => \Add1~121_sumout\,
	cout => \Add1~122\);

\Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~125_sumout\ = SUM(( \reduction[11]~input_o\ ) + ( VCC ) + ( \Add1~122\ ))
-- \Add1~126\ = CARRY(( \reduction[11]~input_o\ ) + ( VCC ) + ( \Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[11]~input_o\,
	cin => \Add1~122\,
	sumout => \Add1~125_sumout\,
	cout => \Add1~126\);

\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( \reduction[12]~input_o\ ) + ( VCC ) + ( \Add1~126\ ))
-- \Add1~58\ = CARRY(( \reduction[12]~input_o\ ) + ( VCC ) + ( \Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[12]~input_o\,
	cin => \Add1~126\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( \reduction[13]~input_o\ ) + ( VCC ) + ( \Add1~58\ ))
-- \Add1~62\ = CARRY(( \reduction[13]~input_o\ ) + ( VCC ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[13]~input_o\,
	cin => \Add1~58\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( \reduction[14]~input_o\ ) + ( VCC ) + ( \Add1~62\ ))
-- \Add1~66\ = CARRY(( \reduction[14]~input_o\ ) + ( VCC ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[14]~input_o\,
	cin => \Add1~62\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( \reduction[15]~input_o\ ) + ( VCC ) + ( \Add1~66\ ))
-- \Add1~70\ = CARRY(( \reduction[15]~input_o\ ) + ( VCC ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[15]~input_o\,
	cin => \Add1~66\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( \reduction[16]~input_o\ ) + ( VCC ) + ( \Add1~70\ ))
-- \Add1~74\ = CARRY(( \reduction[16]~input_o\ ) + ( VCC ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[16]~input_o\,
	cin => \Add1~70\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( \reduction[17]~input_o\ ) + ( VCC ) + ( \Add1~74\ ))
-- \Add1~78\ = CARRY(( \reduction[17]~input_o\ ) + ( VCC ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[17]~input_o\,
	cin => \Add1~74\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( \reduction[18]~input_o\ ) + ( VCC ) + ( \Add1~78\ ))
-- \Add1~34\ = CARRY(( \reduction[18]~input_o\ ) + ( VCC ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[18]~input_o\,
	cin => \Add1~78\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( \reduction[19]~input_o\ ) + ( VCC ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( \reduction[19]~input_o\ ) + ( VCC ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[19]~input_o\,
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( \reduction[20]~input_o\ ) + ( VCC ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( \reduction[20]~input_o\ ) + ( VCC ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[20]~input_o\,
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( \reduction[21]~input_o\ ) + ( VCC ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( \reduction[21]~input_o\ ) + ( VCC ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[21]~input_o\,
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( \reduction[22]~input_o\ ) + ( VCC ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( \reduction[22]~input_o\ ) + ( VCC ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[22]~input_o\,
	cin => \Add1~46\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( \reduction[23]~input_o\ ) + ( VCC ) + ( \Add1~50\ ))
-- \Add1~54\ = CARRY(( \reduction[23]~input_o\ ) + ( VCC ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[23]~input_o\,
	cin => \Add1~50\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( \reduction[24]~input_o\ ) + ( VCC ) + ( \Add1~54\ ))
-- \Add1~10\ = CARRY(( \reduction[24]~input_o\ ) + ( VCC ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[24]~input_o\,
	cin => \Add1~54\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( \reduction[25]~input_o\ ) + ( VCC ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( \reduction[25]~input_o\ ) + ( VCC ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[25]~input_o\,
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( \reduction[26]~input_o\ ) + ( VCC ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( \reduction[26]~input_o\ ) + ( VCC ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[26]~input_o\,
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( \reduction[27]~input_o\ ) + ( VCC ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( \reduction[27]~input_o\ ) + ( VCC ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[27]~input_o\,
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( \reduction[28]~input_o\ ) + ( VCC ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( \reduction[28]~input_o\ ) + ( VCC ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[28]~input_o\,
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( \reduction[29]~input_o\ ) + ( VCC ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( \reduction[29]~input_o\ ) + ( VCC ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[29]~input_o\,
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( \reduction[30]~input_o\ ) + ( VCC ) + ( \Add1~30\ ))
-- \Add1~2\ = CARRY(( \reduction[30]~input_o\ ) + ( VCC ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[30]~input_o\,
	cin => \Add1~30\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( m(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~110\ = CARRY(( m(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(0),
	cin => GND,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\m[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m[7]~0_combout\ = (\fin~q\ & (!\Equal0~6_combout\ & \reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fin~q\,
	datab => \ALT_INV_Equal0~6_combout\,
	datac => \ALT_INV_reset~input_o\,
	combout => \m[7]~0_combout\);

\m[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~109_sumout\,
	asdata => \Add0~109_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(0));

\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( m(1) ) + ( VCC ) + ( \Add0~110\ ))
-- \Add0~106\ = CARRY(( m(1) ) + ( VCC ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(1),
	cin => \Add0~110\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

\m[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~105_sumout\,
	asdata => \Add0~105_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(1));

\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( m(2) ) + ( VCC ) + ( \Add0~106\ ))
-- \Add0~102\ = CARRY(( m(2) ) + ( VCC ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(2),
	cin => \Add0~106\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

\m[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~101_sumout\,
	asdata => \Add0~101_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(2));

\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( m(3) ) + ( VCC ) + ( \Add0~102\ ))
-- \Add0~98\ = CARRY(( m(3) ) + ( VCC ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(3),
	cin => \Add0~102\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

\m[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~97_sumout\,
	asdata => \Add0~97_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(3));

\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( m(4) ) + ( VCC ) + ( \Add0~98\ ))
-- \Add0~94\ = CARRY(( m(4) ) + ( VCC ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(4),
	cin => \Add0~98\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

\m[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~93_sumout\,
	asdata => \Add0~93_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(4));

\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( m(5) ) + ( VCC ) + ( \Add0~94\ ))
-- \Add0~90\ = CARRY(( m(5) ) + ( VCC ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(5),
	cin => \Add0~94\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

\m[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~89_sumout\,
	asdata => \Add0~89_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(5));

\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( m(6) ) + ( VCC ) + ( \Add0~90\ ))
-- \Add0~86\ = CARRY(( m(6) ) + ( VCC ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(6),
	cin => \Add0~90\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

\m[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~85_sumout\,
	asdata => \Add0~85_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(6));

\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( m(7) ) + ( VCC ) + ( \Add0~86\ ))
-- \Add0~82\ = CARRY(( m(7) ) + ( VCC ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(7),
	cin => \Add0~86\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

\m[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~81_sumout\,
	asdata => \Add0~81_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(7));

\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( m(8) ) + ( VCC ) + ( \Add0~82\ ))
-- \Add0~114\ = CARRY(( m(8) ) + ( VCC ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(8),
	cin => \Add0~82\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

\m[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~113_sumout\,
	asdata => \Add0~113_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(8));

\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( m(9) ) + ( VCC ) + ( \Add0~114\ ))
-- \Add0~118\ = CARRY(( m(9) ) + ( VCC ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(9),
	cin => \Add0~114\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

\m[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~117_sumout\,
	asdata => \Add0~117_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(9));

\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( m(10) ) + ( VCC ) + ( \Add0~118\ ))
-- \Add0~122\ = CARRY(( m(10) ) + ( VCC ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(10),
	cin => \Add0~118\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

\m[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~121_sumout\,
	asdata => \Add0~121_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(10));

\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( m(11) ) + ( VCC ) + ( \Add0~122\ ))
-- \Add0~126\ = CARRY(( m(11) ) + ( VCC ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(11),
	cin => \Add0~122\,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

\m[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~125_sumout\,
	asdata => \Add0~125_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(11));

\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( m(12) ) + ( VCC ) + ( \Add0~126\ ))
-- \Add0~58\ = CARRY(( m(12) ) + ( VCC ) + ( \Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(12),
	cin => \Add0~126\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

\m[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~57_sumout\,
	asdata => \Add0~57_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(12));

\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( m(13) ) + ( VCC ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( m(13) ) + ( VCC ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(13),
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

\m[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~61_sumout\,
	asdata => \Add0~61_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(13));

\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( m(14) ) + ( VCC ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( m(14) ) + ( VCC ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(14),
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

\m[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~65_sumout\,
	asdata => \Add0~65_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(14));

\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( m(15) ) + ( VCC ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( m(15) ) + ( VCC ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(15),
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

\m[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~69_sumout\,
	asdata => \Add0~69_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(15));

\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( m(16) ) + ( VCC ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( m(16) ) + ( VCC ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(16),
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

\m[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~73_sumout\,
	asdata => \Add0~73_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(16));

\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( m(17) ) + ( VCC ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( m(17) ) + ( VCC ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(17),
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

\m[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~77_sumout\,
	asdata => \Add0~77_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(17));

\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( m(18) ) + ( VCC ) + ( \Add0~78\ ))
-- \Add0~34\ = CARRY(( m(18) ) + ( VCC ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(18),
	cin => \Add0~78\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

\m[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~33_sumout\,
	asdata => \Add0~33_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(18));

\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( m(19) ) + ( VCC ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( m(19) ) + ( VCC ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(19),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

\m[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~37_sumout\,
	asdata => \Add0~37_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(19));

\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( m(20) ) + ( VCC ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( m(20) ) + ( VCC ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(20),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

\m[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~41_sumout\,
	asdata => \Add0~41_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(20));

\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( m(21) ) + ( VCC ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( m(21) ) + ( VCC ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(21),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

\m[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~45_sumout\,
	asdata => \Add0~45_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(21));

\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( m(22) ) + ( VCC ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( m(22) ) + ( VCC ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(22),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

\m[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~49_sumout\,
	asdata => \Add0~49_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(22));

\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( m(23) ) + ( VCC ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( m(23) ) + ( VCC ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(23),
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

\m[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~53_sumout\,
	asdata => \Add0~53_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(23));

\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( m(24) ) + ( VCC ) + ( \Add0~54\ ))
-- \Add0~10\ = CARRY(( m(24) ) + ( VCC ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(24),
	cin => \Add0~54\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

\m[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~9_sumout\,
	asdata => \Add0~9_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(24));

\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( m(25) ) + ( VCC ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( m(25) ) + ( VCC ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(25),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

\m[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~13_sumout\,
	asdata => \Add0~13_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(25));

\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( m(26) ) + ( VCC ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( m(26) ) + ( VCC ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(26),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

\m[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~17_sumout\,
	asdata => \Add0~17_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(26));

\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( m(27) ) + ( VCC ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( m(27) ) + ( VCC ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(27),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

\m[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~21_sumout\,
	asdata => \Add0~21_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(27));

\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( m(28) ) + ( VCC ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( m(28) ) + ( VCC ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(28),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

\m[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~25_sumout\,
	asdata => \Add0~25_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(28));

\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( m(29) ) + ( VCC ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( m(29) ) + ( VCC ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(29),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

\m[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~29_sumout\,
	asdata => \Add0~29_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(29));

\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( m(30) ) + ( VCC ) + ( \Add0~30\ ))
-- \Add0~2\ = CARRY(( m(30) ) + ( VCC ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(30),
	cin => \Add0~30\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

\m[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~1_sumout\,
	asdata => \Add0~1_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(30));

\reduction[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reduction(31),
	o => \reduction[31]~input_o\);

\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( \reduction[31]~input_o\ ) + ( VCC ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reduction[31]~input_o\,
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\);

\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( m(31) ) + ( VCC ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m(31),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\);

\m[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~5_sumout\,
	asdata => \Add0~5_sumout\,
	sload => \Equal1~6_combout\,
	ena => \m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m(31));

\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!m(30) & !m(31))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_m(30),
	datab => ALT_INV_m(31),
	combout => \Equal1~0_combout\);

\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !m(28) & ( !m(29) & ( (!m(24) & (!m(25) & (!m(26) & !m(27)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_m(24),
	datab => ALT_INV_m(25),
	datac => ALT_INV_m(26),
	datad => ALT_INV_m(27),
	datae => ALT_INV_m(28),
	dataf => ALT_INV_m(29),
	combout => \Equal1~1_combout\);

\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( !m(22) & ( !m(23) & ( (!m(18) & (!m(19) & (!m(20) & !m(21)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_m(18),
	datab => ALT_INV_m(19),
	datac => ALT_INV_m(20),
	datad => ALT_INV_m(21),
	datae => ALT_INV_m(22),
	dataf => ALT_INV_m(23),
	combout => \Equal1~2_combout\);

\Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( !m(16) & ( !m(17) & ( (!m(12) & (!m(13) & (!m(14) & !m(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_m(12),
	datab => ALT_INV_m(13),
	datac => ALT_INV_m(14),
	datad => ALT_INV_m(15),
	datae => ALT_INV_m(16),
	dataf => ALT_INV_m(17),
	combout => \Equal1~3_combout\);

\Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = ( !m(3) & ( !m(2) & ( (!m(7) & (!m(6) & (!m(5) & !m(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_m(7),
	datab => ALT_INV_m(6),
	datac => ALT_INV_m(5),
	datad => ALT_INV_m(4),
	datae => ALT_INV_m(3),
	dataf => ALT_INV_m(2),
	combout => \Equal1~4_combout\);

\Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = ( !m(10) & ( !m(11) & ( (!m(1) & (!m(0) & (!m(8) & !m(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_m(1),
	datab => ALT_INV_m(0),
	datac => ALT_INV_m(8),
	datad => ALT_INV_m(9),
	datae => ALT_INV_m(10),
	dataf => ALT_INV_m(11),
	combout => \Equal1~5_combout\);

\Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = ( \Equal1~4_combout\ & ( \Equal1~5_combout\ & ( (!\Equal1~0_combout\) # ((!\Equal1~1_combout\) # ((!\Equal1~2_combout\) # (!\Equal1~3_combout\))) ) ) ) # ( !\Equal1~4_combout\ & ( \Equal1~5_combout\ ) ) # ( \Equal1~4_combout\ & ( 
-- !\Equal1~5_combout\ ) ) # ( !\Equal1~4_combout\ & ( !\Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Equal1~2_combout\,
	datad => \ALT_INV_Equal1~3_combout\,
	datae => \ALT_INV_Equal1~4_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \Equal1~6_combout\);

\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( n(0) ) + ( VCC ) + ( !VCC ))
-- \Add2~6\ = CARRY(( n(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(0),
	cin => GND,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

\n~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \n~1_combout\ = (!\Equal1~6_combout\ & (((!\Equal0~6_combout\ & \Add2~5_sumout\)))) # (\Equal1~6_combout\ & (n(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111010001000100011101000100010001110100010001000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_n(0),
	datab => \ALT_INV_Equal1~6_combout\,
	datac => \ALT_INV_Equal0~6_combout\,
	datad => \ALT_INV_Add2~5_sumout\,
	combout => \n~1_combout\);

\n[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \n~1_combout\,
	asdata => VCC,
	sload => \ALT_INV_fin~q\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(0));

\Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~89_sumout\ = SUM(( n(1) ) + ( VCC ) + ( \Add2~6\ ))
-- \Add2~90\ = CARRY(( n(1) ) + ( VCC ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(1),
	cin => \Add2~6\,
	sumout => \Add2~89_sumout\,
	cout => \Add2~90\);

\count[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(0),
	o => \count[0]~input_o\);

\n[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \n[15]~0_combout\ = (\reset~input_o\ & ((!\fin~q\) # ((!\Equal1~6_combout\ & !\Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101010000000001110101000000000111010100000000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fin~q\,
	datab => \ALT_INV_Equal1~6_combout\,
	datac => \ALT_INV_Equal0~6_combout\,
	datad => \ALT_INV_reset~input_o\,
	combout => \n[15]~0_combout\);

\n[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~89_sumout\,
	asdata => \count[0]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(1));

\Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~93_sumout\ = SUM(( n(2) ) + ( VCC ) + ( \Add2~90\ ))
-- \Add2~94\ = CARRY(( n(2) ) + ( VCC ) + ( \Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(2),
	cin => \Add2~90\,
	sumout => \Add2~93_sumout\,
	cout => \Add2~94\);

\count[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(1),
	o => \count[1]~input_o\);

\n[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~93_sumout\,
	asdata => \count[1]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(2));

\Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~97_sumout\ = SUM(( n(3) ) + ( VCC ) + ( \Add2~94\ ))
-- \Add2~98\ = CARRY(( n(3) ) + ( VCC ) + ( \Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(3),
	cin => \Add2~94\,
	sumout => \Add2~97_sumout\,
	cout => \Add2~98\);

\count[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(2),
	o => \count[2]~input_o\);

\n[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~97_sumout\,
	asdata => \count[2]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(3));

\Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~101_sumout\ = SUM(( n(4) ) + ( VCC ) + ( \Add2~98\ ))
-- \Add2~102\ = CARRY(( n(4) ) + ( VCC ) + ( \Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(4),
	cin => \Add2~98\,
	sumout => \Add2~101_sumout\,
	cout => \Add2~102\);

\count[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(3),
	o => \count[3]~input_o\);

\n[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~101_sumout\,
	asdata => \count[3]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(4));

\Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~105_sumout\ = SUM(( n(5) ) + ( VCC ) + ( \Add2~102\ ))
-- \Add2~106\ = CARRY(( n(5) ) + ( VCC ) + ( \Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(5),
	cin => \Add2~102\,
	sumout => \Add2~105_sumout\,
	cout => \Add2~106\);

\count[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(4),
	o => \count[4]~input_o\);

\n[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~105_sumout\,
	asdata => \count[4]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(5));

\Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~109_sumout\ = SUM(( n(6) ) + ( VCC ) + ( \Add2~106\ ))
-- \Add2~110\ = CARRY(( n(6) ) + ( VCC ) + ( \Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(6),
	cin => \Add2~106\,
	sumout => \Add2~109_sumout\,
	cout => \Add2~110\);

\count[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(5),
	o => \count[5]~input_o\);

\n[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~109_sumout\,
	asdata => \count[5]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(6));

\Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~113_sumout\ = SUM(( n(7) ) + ( VCC ) + ( \Add2~110\ ))
-- \Add2~114\ = CARRY(( n(7) ) + ( VCC ) + ( \Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(7),
	cin => \Add2~110\,
	sumout => \Add2~113_sumout\,
	cout => \Add2~114\);

\count[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(6),
	o => \count[6]~input_o\);

\n[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~113_sumout\,
	asdata => \count[6]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(7));

\Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~117_sumout\ = SUM(( n(8) ) + ( VCC ) + ( \Add2~114\ ))
-- \Add2~118\ = CARRY(( n(8) ) + ( VCC ) + ( \Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(8),
	cin => \Add2~114\,
	sumout => \Add2~117_sumout\,
	cout => \Add2~118\);

\count[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(7),
	o => \count[7]~input_o\);

\n[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~117_sumout\,
	asdata => \count[7]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(8));

\Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~121_sumout\ = SUM(( n(9) ) + ( VCC ) + ( \Add2~118\ ))
-- \Add2~122\ = CARRY(( n(9) ) + ( VCC ) + ( \Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(9),
	cin => \Add2~118\,
	sumout => \Add2~121_sumout\,
	cout => \Add2~122\);

\count[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(8),
	o => \count[8]~input_o\);

\n[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~121_sumout\,
	asdata => \count[8]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(9));

\Add2~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~125_sumout\ = SUM(( n(10) ) + ( VCC ) + ( \Add2~122\ ))
-- \Add2~126\ = CARRY(( n(10) ) + ( VCC ) + ( \Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(10),
	cin => \Add2~122\,
	sumout => \Add2~125_sumout\,
	cout => \Add2~126\);

\count[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(9),
	o => \count[9]~input_o\);

\n[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~125_sumout\,
	asdata => \count[9]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(10));

\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( n(11) ) + ( VCC ) + ( \Add2~126\ ))
-- \Add2~58\ = CARRY(( n(11) ) + ( VCC ) + ( \Add2~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(11),
	cin => \Add2~126\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

\count[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(10),
	o => \count[10]~input_o\);

\n[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~57_sumout\,
	asdata => \count[10]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(11));

\Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( n(12) ) + ( VCC ) + ( \Add2~58\ ))
-- \Add2~62\ = CARRY(( n(12) ) + ( VCC ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(12),
	cin => \Add2~58\,
	sumout => \Add2~61_sumout\,
	cout => \Add2~62\);

\count[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(11),
	o => \count[11]~input_o\);

\n[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~61_sumout\,
	asdata => \count[11]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(12));

\Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~65_sumout\ = SUM(( n(13) ) + ( VCC ) + ( \Add2~62\ ))
-- \Add2~66\ = CARRY(( n(13) ) + ( VCC ) + ( \Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(13),
	cin => \Add2~62\,
	sumout => \Add2~65_sumout\,
	cout => \Add2~66\);

\count[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(12),
	o => \count[12]~input_o\);

\n[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~65_sumout\,
	asdata => \count[12]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(13));

\Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~69_sumout\ = SUM(( n(14) ) + ( VCC ) + ( \Add2~66\ ))
-- \Add2~70\ = CARRY(( n(14) ) + ( VCC ) + ( \Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(14),
	cin => \Add2~66\,
	sumout => \Add2~69_sumout\,
	cout => \Add2~70\);

\count[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(13),
	o => \count[13]~input_o\);

\n[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~69_sumout\,
	asdata => \count[13]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(14));

\Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~81_sumout\ = SUM(( n(15) ) + ( VCC ) + ( \Add2~70\ ))
-- \Add2~82\ = CARRY(( n(15) ) + ( VCC ) + ( \Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(15),
	cin => \Add2~70\,
	sumout => \Add2~81_sumout\,
	cout => \Add2~82\);

\count[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(14),
	o => \count[14]~input_o\);

\n[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~81_sumout\,
	asdata => \count[14]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(15));

\Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~77_sumout\ = SUM(( n(16) ) + ( VCC ) + ( \Add2~82\ ))
-- \Add2~78\ = CARRY(( n(16) ) + ( VCC ) + ( \Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(16),
	cin => \Add2~82\,
	sumout => \Add2~77_sumout\,
	cout => \Add2~78\);

\count[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(15),
	o => \count[15]~input_o\);

\n[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~77_sumout\,
	asdata => \count[15]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(16));

\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( n(17) ) + ( VCC ) + ( \Add2~78\ ))
-- \Add2~34\ = CARRY(( n(17) ) + ( VCC ) + ( \Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(17),
	cin => \Add2~78\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

\count[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(16),
	o => \count[16]~input_o\);

\n[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~33_sumout\,
	asdata => \count[16]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(17));

\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( n(18) ) + ( VCC ) + ( \Add2~34\ ))
-- \Add2~38\ = CARRY(( n(18) ) + ( VCC ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(18),
	cin => \Add2~34\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

\count[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(17),
	o => \count[17]~input_o\);

\n[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~37_sumout\,
	asdata => \count[17]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(18));

\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( n(19) ) + ( VCC ) + ( \Add2~38\ ))
-- \Add2~42\ = CARRY(( n(19) ) + ( VCC ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(19),
	cin => \Add2~38\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

\count[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(18),
	o => \count[18]~input_o\);

\n[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~41_sumout\,
	asdata => \count[18]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(19));

\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( n(20) ) + ( VCC ) + ( \Add2~42\ ))
-- \Add2~46\ = CARRY(( n(20) ) + ( VCC ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(20),
	cin => \Add2~42\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

\count[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(19),
	o => \count[19]~input_o\);

\n[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~45_sumout\,
	asdata => \count[19]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(20));

\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( n(21) ) + ( VCC ) + ( \Add2~46\ ))
-- \Add2~50\ = CARRY(( n(21) ) + ( VCC ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(21),
	cin => \Add2~46\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

\count[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(20),
	o => \count[20]~input_o\);

\n[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~49_sumout\,
	asdata => \count[20]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(21));

\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( n(22) ) + ( VCC ) + ( \Add2~50\ ))
-- \Add2~54\ = CARRY(( n(22) ) + ( VCC ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(22),
	cin => \Add2~50\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

\count[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(21),
	o => \count[21]~input_o\);

\n[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~53_sumout\,
	asdata => \count[21]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(22));

\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( n(23) ) + ( VCC ) + ( \Add2~54\ ))
-- \Add2~10\ = CARRY(( n(23) ) + ( VCC ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(23),
	cin => \Add2~54\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

\count[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(22),
	o => \count[22]~input_o\);

\n[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~9_sumout\,
	asdata => \count[22]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(23));

\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( n(24) ) + ( VCC ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( n(24) ) + ( VCC ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(24),
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

\count[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(23),
	o => \count[23]~input_o\);

\n[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~13_sumout\,
	asdata => \count[23]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(24));

\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( n(25) ) + ( VCC ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( n(25) ) + ( VCC ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(25),
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

\count[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(24),
	o => \count[24]~input_o\);

\n[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~17_sumout\,
	asdata => \count[24]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(25));

\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( n(26) ) + ( VCC ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( n(26) ) + ( VCC ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(26),
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

\count[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(25),
	o => \count[25]~input_o\);

\n[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~21_sumout\,
	asdata => \count[25]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(26));

\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( n(27) ) + ( VCC ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( n(27) ) + ( VCC ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(27),
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

\count[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(26),
	o => \count[26]~input_o\);

\n[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~25_sumout\,
	asdata => \count[26]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(27));

\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( n(28) ) + ( VCC ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( n(28) ) + ( VCC ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(28),
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

\count[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(27),
	o => \count[27]~input_o\);

\n[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~29_sumout\,
	asdata => \count[27]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(28));

\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( n(29) ) + ( VCC ) + ( \Add2~30\ ))
-- \Add2~2\ = CARRY(( n(29) ) + ( VCC ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(29),
	cin => \Add2~30\,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

\count[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(28),
	o => \count[28]~input_o\);

\n[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~1_sumout\,
	asdata => \count[28]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(29));

\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!n(29) & !n(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_n(29),
	datab => ALT_INV_n(0),
	combout => \Equal0~0_combout\);

\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !n(27) & ( !n(28) & ( (!n(23) & (!n(24) & (!n(25) & !n(26)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_n(23),
	datab => ALT_INV_n(24),
	datac => ALT_INV_n(25),
	datad => ALT_INV_n(26),
	datae => ALT_INV_n(27),
	dataf => ALT_INV_n(28),
	combout => \Equal0~1_combout\);

\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !n(21) & ( !n(22) & ( (!n(17) & (!n(18) & (!n(19) & !n(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_n(17),
	datab => ALT_INV_n(18),
	datac => ALT_INV_n(19),
	datad => ALT_INV_n(20),
	datae => ALT_INV_n(21),
	dataf => ALT_INV_n(22),
	combout => \Equal0~2_combout\);

\Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~85_sumout\ = SUM(( n(30) ) + ( VCC ) + ( \Add2~2\ ))
-- \Add2~86\ = CARRY(( n(30) ) + ( VCC ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(30),
	cin => \Add2~2\,
	sumout => \Add2~85_sumout\,
	cout => \Add2~86\);

\count[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(29),
	o => \count[29]~input_o\);

\n[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~85_sumout\,
	asdata => \count[29]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(30));

\Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~73_sumout\ = SUM(( n(31) ) + ( VCC ) + ( \Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_n(31),
	cin => \Add2~86\,
	sumout => \Add2~73_sumout\);

\count[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(30),
	o => \count[30]~input_o\);

\n[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add2~73_sumout\,
	asdata => \count[30]~input_o\,
	sload => \ALT_INV_fin~q\,
	ena => \n[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(31));

\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !n(31) & ( !n(16) & ( (!n(11) & (!n(12) & (!n(13) & !n(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_n(11),
	datab => ALT_INV_n(12),
	datac => ALT_INV_n(13),
	datad => ALT_INV_n(14),
	datae => ALT_INV_n(31),
	dataf => ALT_INV_n(16),
	combout => \Equal0~3_combout\);

\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !n(3) & ( !n(4) & ( (!n(15) & (!n(30) & (!n(1) & !n(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_n(15),
	datab => ALT_INV_n(30),
	datac => ALT_INV_n(1),
	datad => ALT_INV_n(2),
	datae => ALT_INV_n(3),
	dataf => ALT_INV_n(4),
	combout => \Equal0~4_combout\);

\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !n(9) & ( !n(10) & ( (!n(5) & (!n(6) & (!n(7) & !n(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_n(5),
	datab => ALT_INV_n(6),
	datac => ALT_INV_n(7),
	datad => ALT_INV_n(8),
	datae => ALT_INV_n(9),
	dataf => ALT_INV_n(10),
	combout => \Equal0~5_combout\);

\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~4_combout\ & ( \Equal0~5_combout\ & ( (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_Equal0~3_combout\,
	datae => \ALT_INV_Equal0~4_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \Equal0~6_combout\);

\fin~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fin~0_combout\ = (!\fin~q\) # (!\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fin~q\,
	datab => \ALT_INV_Equal0~6_combout\,
	combout => \fin~0_combout\);

fin : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \fin~0_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fin~q\);

\signal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \signal~0_combout\ = (\fin~q\ & ((!\signal~q\ $ (\Equal1~6_combout\)) # (\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100110011001000010011001100100001001100110010000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal~q\,
	datab => \ALT_INV_fin~q\,
	datac => \ALT_INV_Equal1~6_combout\,
	datad => \ALT_INV_Equal0~6_combout\,
	combout => \signal~0_combout\);

\signal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \signal~0_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \signal~q\);

ww_clk_out <= \clk_out~output_o\;

ww_finish <= \finish~output_o\;
END structure;


