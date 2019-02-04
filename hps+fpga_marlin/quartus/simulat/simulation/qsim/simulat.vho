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

-- DATE "01/22/2019 22:06:20"

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

ENTITY 	driver_stepper IS
    PORT (
	FPGA_CLK1_50 : IN std_logic;
	stepper_1_step_out : IN std_logic_vector(31 DOWNTO 0);
	stepper_1_speed : IN std_logic_vector(31 DOWNTO 0);
	stepper_1_step_in : OUT std_logic_vector(31 DOWNTO 0);
	flags1 : OUT std_logic_vector(2 DOWNTO 0);
	reset_step1 : OUT std_logic_vector(1 DOWNTO 0);
	fin : OUT std_logic_vector(4 DOWNTO 0);
	step_signal : OUT std_logic
	);
END driver_stepper;

ARCHITECTURE structure OF driver_stepper IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_FPGA_CLK1_50 : std_logic;
SIGNAL ww_stepper_1_step_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_stepper_1_speed : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_stepper_1_step_in : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_flags1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_reset_step1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_fin : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_step_signal : std_logic;
SIGNAL \stepper_1_step_in[0]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[1]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[2]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[3]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[4]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[5]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[6]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[7]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[8]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[9]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[10]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[11]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[12]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[13]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[14]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[15]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[16]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[17]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[18]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[19]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[20]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[21]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[22]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[23]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[24]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[25]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[26]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[27]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[28]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[29]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[30]~output_o\ : std_logic;
SIGNAL \stepper_1_step_in[31]~output_o\ : std_logic;
SIGNAL \flags1[0]~output_o\ : std_logic;
SIGNAL \flags1[1]~output_o\ : std_logic;
SIGNAL \flags1[2]~output_o\ : std_logic;
SIGNAL \reset_step1[0]~output_o\ : std_logic;
SIGNAL \reset_step1[1]~output_o\ : std_logic;
SIGNAL \fin[0]~output_o\ : std_logic;
SIGNAL \fin[1]~output_o\ : std_logic;
SIGNAL \fin[2]~output_o\ : std_logic;
SIGNAL \fin[3]~output_o\ : std_logic;
SIGNAL \fin[4]~output_o\ : std_logic;
SIGNAL \step_signal~output_o\ : std_logic;
SIGNAL \FPGA_CLK1_50~input_o\ : std_logic;
SIGNAL \stepper_1_step_out[0]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[30]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[29]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[28]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[27]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[26]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[25]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[24]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[23]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[22]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[21]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[20]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[19]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[18]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[17]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[16]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[15]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[14]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[13]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[12]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[11]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[10]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[9]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[8]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[7]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[6]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[5]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[4]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[3]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[2]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[1]~input_o\ : std_logic;
SIGNAL \stepper_1_speed[0]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add1~110\ : std_logic;
SIGNAL \clk_gen1|Add1~106\ : std_logic;
SIGNAL \clk_gen1|Add1~102\ : std_logic;
SIGNAL \clk_gen1|Add1~98\ : std_logic;
SIGNAL \clk_gen1|Add1~94\ : std_logic;
SIGNAL \clk_gen1|Add1~90\ : std_logic;
SIGNAL \clk_gen1|Add1~86\ : std_logic;
SIGNAL \clk_gen1|Add1~82\ : std_logic;
SIGNAL \clk_gen1|Add1~114\ : std_logic;
SIGNAL \clk_gen1|Add1~118\ : std_logic;
SIGNAL \clk_gen1|Add1~122\ : std_logic;
SIGNAL \clk_gen1|Add1~126\ : std_logic;
SIGNAL \clk_gen1|Add1~58\ : std_logic;
SIGNAL \clk_gen1|Add1~62\ : std_logic;
SIGNAL \clk_gen1|Add1~66\ : std_logic;
SIGNAL \clk_gen1|Add1~70\ : std_logic;
SIGNAL \clk_gen1|Add1~74\ : std_logic;
SIGNAL \clk_gen1|Add1~78\ : std_logic;
SIGNAL \clk_gen1|Add1~34\ : std_logic;
SIGNAL \clk_gen1|Add1~38\ : std_logic;
SIGNAL \clk_gen1|Add1~42\ : std_logic;
SIGNAL \clk_gen1|Add1~46\ : std_logic;
SIGNAL \clk_gen1|Add1~50\ : std_logic;
SIGNAL \clk_gen1|Add1~54\ : std_logic;
SIGNAL \clk_gen1|Add1~10\ : std_logic;
SIGNAL \clk_gen1|Add1~14\ : std_logic;
SIGNAL \clk_gen1|Add1~18\ : std_logic;
SIGNAL \clk_gen1|Add1~22\ : std_logic;
SIGNAL \clk_gen1|Add1~26\ : std_logic;
SIGNAL \clk_gen1|Add1~30\ : std_logic;
SIGNAL \clk_gen1|Add1~1_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~29_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~25_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~21_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~17_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~13_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~9_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~53_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~49_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~45_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~41_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~37_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~33_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~77_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~73_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~69_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~65_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~61_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~57_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~125_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~121_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~117_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~113_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~81_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~85_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~89_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~93_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~97_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~101_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~105_sumout\ : std_logic;
SIGNAL \clk_gen1|Add1~109_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~109_sumout\ : std_logic;
SIGNAL \clk_gen1|m[7]~0_combout\ : std_logic;
SIGNAL \clk_gen1|Add0~110\ : std_logic;
SIGNAL \clk_gen1|Add0~105_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~106\ : std_logic;
SIGNAL \clk_gen1|Add0~101_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~102\ : std_logic;
SIGNAL \clk_gen1|Add0~97_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~98\ : std_logic;
SIGNAL \clk_gen1|Add0~93_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~94\ : std_logic;
SIGNAL \clk_gen1|Add0~89_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~90\ : std_logic;
SIGNAL \clk_gen1|Add0~85_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~86\ : std_logic;
SIGNAL \clk_gen1|Add0~81_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~82\ : std_logic;
SIGNAL \clk_gen1|Add0~113_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~114\ : std_logic;
SIGNAL \clk_gen1|Add0~117_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~118\ : std_logic;
SIGNAL \clk_gen1|Add0~121_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~122\ : std_logic;
SIGNAL \clk_gen1|Add0~125_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~126\ : std_logic;
SIGNAL \clk_gen1|Add0~57_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~58\ : std_logic;
SIGNAL \clk_gen1|Add0~61_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~62\ : std_logic;
SIGNAL \clk_gen1|Add0~65_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~66\ : std_logic;
SIGNAL \clk_gen1|Add0~69_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~70\ : std_logic;
SIGNAL \clk_gen1|Add0~73_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~74\ : std_logic;
SIGNAL \clk_gen1|Add0~77_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~78\ : std_logic;
SIGNAL \clk_gen1|Add0~33_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~34\ : std_logic;
SIGNAL \clk_gen1|Add0~37_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~38\ : std_logic;
SIGNAL \clk_gen1|Add0~41_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~42\ : std_logic;
SIGNAL \clk_gen1|Add0~45_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~46\ : std_logic;
SIGNAL \clk_gen1|Add0~49_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~50\ : std_logic;
SIGNAL \clk_gen1|Add0~53_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~54\ : std_logic;
SIGNAL \clk_gen1|Add0~9_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~10\ : std_logic;
SIGNAL \clk_gen1|Add0~13_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~14\ : std_logic;
SIGNAL \clk_gen1|Add0~17_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~18\ : std_logic;
SIGNAL \clk_gen1|Add0~21_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~22\ : std_logic;
SIGNAL \clk_gen1|Add0~25_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~26\ : std_logic;
SIGNAL \clk_gen1|Add0~29_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~30\ : std_logic;
SIGNAL \clk_gen1|Add0~1_sumout\ : std_logic;
SIGNAL \stepper_1_speed[31]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add1~2\ : std_logic;
SIGNAL \clk_gen1|Add1~5_sumout\ : std_logic;
SIGNAL \clk_gen1|Add0~2\ : std_logic;
SIGNAL \clk_gen1|Add0~5_sumout\ : std_logic;
SIGNAL \clk_gen1|Equal1~0_combout\ : std_logic;
SIGNAL \clk_gen1|Equal1~1_combout\ : std_logic;
SIGNAL \clk_gen1|Equal1~2_combout\ : std_logic;
SIGNAL \clk_gen1|Equal1~3_combout\ : std_logic;
SIGNAL \clk_gen1|Equal1~4_combout\ : std_logic;
SIGNAL \clk_gen1|Equal1~5_combout\ : std_logic;
SIGNAL \clk_gen1|Equal1~6_combout\ : std_logic;
SIGNAL \clk_gen1|Add2~5_sumout\ : std_logic;
SIGNAL \clk_gen1|n~1_combout\ : std_logic;
SIGNAL \clk_gen1|Add2~6\ : std_logic;
SIGNAL \clk_gen1|Add2~89_sumout\ : std_logic;
SIGNAL \clk_gen1|n[31]~0_combout\ : std_logic;
SIGNAL \clk_gen1|Add2~90\ : std_logic;
SIGNAL \clk_gen1|Add2~93_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[1]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add2~94\ : std_logic;
SIGNAL \clk_gen1|Add2~97_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[2]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add2~98\ : std_logic;
SIGNAL \clk_gen1|Add2~101_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[3]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add2~102\ : std_logic;
SIGNAL \clk_gen1|Add2~105_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[4]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add2~106\ : std_logic;
SIGNAL \clk_gen1|Add2~109_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[5]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add2~110\ : std_logic;
SIGNAL \clk_gen1|Add2~113_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[6]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add2~114\ : std_logic;
SIGNAL \clk_gen1|Add2~117_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[7]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add2~118\ : std_logic;
SIGNAL \clk_gen1|Add2~121_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[8]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add2~122\ : std_logic;
SIGNAL \clk_gen1|Add2~125_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[9]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add2~126\ : std_logic;
SIGNAL \clk_gen1|Add2~57_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[10]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add2~58\ : std_logic;
SIGNAL \clk_gen1|Add2~61_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[11]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add2~62\ : std_logic;
SIGNAL \clk_gen1|Add2~65_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[12]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add2~66\ : std_logic;
SIGNAL \clk_gen1|Add2~69_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[13]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add2~70\ : std_logic;
SIGNAL \clk_gen1|Add2~37_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[14]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add2~38\ : std_logic;
SIGNAL \clk_gen1|Add2~85_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[15]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add2~86\ : std_logic;
SIGNAL \clk_gen1|Add2~73_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[16]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add2~74\ : std_logic;
SIGNAL \clk_gen1|Add2~77_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[17]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add2~78\ : std_logic;
SIGNAL \clk_gen1|Add2~33_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[18]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add2~34\ : std_logic;
SIGNAL \clk_gen1|Add2~41_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[19]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add2~42\ : std_logic;
SIGNAL \clk_gen1|Add2~45_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[20]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add2~46\ : std_logic;
SIGNAL \clk_gen1|Add2~49_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[21]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add2~50\ : std_logic;
SIGNAL \clk_gen1|Add2~53_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[22]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add2~54\ : std_logic;
SIGNAL \clk_gen1|Add2~9_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[23]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add2~10\ : std_logic;
SIGNAL \clk_gen1|Add2~13_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[24]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add2~14\ : std_logic;
SIGNAL \clk_gen1|Add2~17_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[25]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add2~18\ : std_logic;
SIGNAL \clk_gen1|Add2~21_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[26]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add2~22\ : std_logic;
SIGNAL \clk_gen1|Add2~25_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[27]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add2~26\ : std_logic;
SIGNAL \clk_gen1|Add2~29_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[28]~input_o\ : std_logic;
SIGNAL \clk_gen1|Add2~30\ : std_logic;
SIGNAL \clk_gen1|Add2~1_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[29]~input_o\ : std_logic;
SIGNAL \clk_gen1|Equal0~0_combout\ : std_logic;
SIGNAL \clk_gen1|Equal0~1_combout\ : std_logic;
SIGNAL \clk_gen1|Equal0~2_combout\ : std_logic;
SIGNAL \clk_gen1|Equal0~3_combout\ : std_logic;
SIGNAL \clk_gen1|Add2~2\ : std_logic;
SIGNAL \clk_gen1|Add2~81_sumout\ : std_logic;
SIGNAL \stepper_1_step_out[30]~input_o\ : std_logic;
SIGNAL \clk_gen1|Equal0~4_combout\ : std_logic;
SIGNAL \clk_gen1|Equal0~5_combout\ : std_logic;
SIGNAL \clk_gen1|Equal0~6_combout\ : std_logic;
SIGNAL \clk_gen1|fin~0_combout\ : std_logic;
SIGNAL \clk_gen1|fin~q\ : std_logic;
SIGNAL \stepper_1_step_out[31]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \flags[1]~0_combout\ : std_logic;
SIGNAL \stepper_step~0_combout\ : std_logic;
SIGNAL \stepper_step[0][0]~q\ : std_logic;
SIGNAL \stepper_step[0][1]~q\ : std_logic;
SIGNAL \stepper_step[0][2]~q\ : std_logic;
SIGNAL \stepper_step[0][3]~q\ : std_logic;
SIGNAL \stepper_step[0][4]~q\ : std_logic;
SIGNAL \stepper_step[0][5]~q\ : std_logic;
SIGNAL \stepper_step[0][6]~q\ : std_logic;
SIGNAL \stepper_step[0][7]~q\ : std_logic;
SIGNAL \stepper_step[0][8]~q\ : std_logic;
SIGNAL \stepper_step[0][9]~q\ : std_logic;
SIGNAL \stepper_step[0][10]~q\ : std_logic;
SIGNAL \stepper_step[0][11]~q\ : std_logic;
SIGNAL \stepper_step[0][12]~q\ : std_logic;
SIGNAL \stepper_step[0][13]~q\ : std_logic;
SIGNAL \stepper_step[0][14]~q\ : std_logic;
SIGNAL \stepper_step[0][15]~q\ : std_logic;
SIGNAL \stepper_step[0][16]~q\ : std_logic;
SIGNAL \stepper_step[0][17]~q\ : std_logic;
SIGNAL \stepper_step[0][18]~q\ : std_logic;
SIGNAL \stepper_step[0][19]~q\ : std_logic;
SIGNAL \stepper_step[0][20]~q\ : std_logic;
SIGNAL \stepper_step[0][21]~q\ : std_logic;
SIGNAL \stepper_step[0][22]~q\ : std_logic;
SIGNAL \stepper_step[0][23]~q\ : std_logic;
SIGNAL \stepper_step[0][24]~q\ : std_logic;
SIGNAL \stepper_step[0][25]~q\ : std_logic;
SIGNAL \stepper_step[0][26]~q\ : std_logic;
SIGNAL \stepper_step[0][27]~q\ : std_logic;
SIGNAL \stepper_step[0][28]~q\ : std_logic;
SIGNAL \stepper_step[0][29]~q\ : std_logic;
SIGNAL \stepper_step[0][30]~q\ : std_logic;
SIGNAL \stepper_step[0][31]~q\ : std_logic;
SIGNAL \clk_gen1|signal~0_combout\ : std_logic;
SIGNAL \clk_gen1|signal~q\ : std_logic;
SIGNAL flags : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk_gen1|n\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk_gen1|m\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk_gen1|ALT_INV_n\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk_gen1|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \clk_gen1|ALT_INV_m\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk_gen1|ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \clk_gen1|ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \clk_gen1|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \clk_gen1|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \clk_gen1|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \clk_gen1|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \clk_gen1|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \clk_gen1|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \clk_gen1|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \clk_gen1|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \clk_gen1|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \clk_gen1|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \clk_gen1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \clk_gen1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \clk_gen1|ALT_INV_signal~q\ : std_logic;
SIGNAL \clk_gen1|ALT_INV_fin~q\ : std_logic;
SIGNAL ALT_INV_flags : std_logic_vector(1 DOWNTO 1);
SIGNAL \ALT_INV_stepper_1_speed[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_speed[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_stepper_1_step_out[0]~input_o\ : std_logic;

BEGIN

ww_FPGA_CLK1_50 <= FPGA_CLK1_50;
ww_stepper_1_step_out <= stepper_1_step_out;
ww_stepper_1_speed <= stepper_1_speed;
stepper_1_step_in <= ww_stepper_1_step_in;
flags1 <= ww_flags1;
reset_step1 <= ww_reset_step1;
fin <= ww_fin;
step_signal <= ww_step_signal;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\clk_gen1|ALT_INV_n\(10) <= NOT \clk_gen1|n\(10);
\clk_gen1|ALT_INV_n\(9) <= NOT \clk_gen1|n\(9);
\clk_gen1|ALT_INV_n\(8) <= NOT \clk_gen1|n\(8);
\clk_gen1|ALT_INV_n\(7) <= NOT \clk_gen1|n\(7);
\clk_gen1|ALT_INV_n\(6) <= NOT \clk_gen1|n\(6);
\clk_gen1|ALT_INV_n\(5) <= NOT \clk_gen1|n\(5);
\clk_gen1|ALT_INV_n\(4) <= NOT \clk_gen1|n\(4);
\clk_gen1|ALT_INV_n\(3) <= NOT \clk_gen1|n\(3);
\clk_gen1|ALT_INV_n\(2) <= NOT \clk_gen1|n\(2);
\clk_gen1|ALT_INV_n\(1) <= NOT \clk_gen1|n\(1);
\clk_gen1|ALT_INV_n\(16) <= NOT \clk_gen1|n\(16);
\clk_gen1|ALT_INV_n\(31) <= NOT \clk_gen1|n\(31);
\clk_gen1|ALT_INV_n\(18) <= NOT \clk_gen1|n\(18);
\clk_gen1|ALT_INV_n\(17) <= NOT \clk_gen1|n\(17);
\clk_gen1|ALT_INV_n\(14) <= NOT \clk_gen1|n\(14);
\clk_gen1|ALT_INV_n\(13) <= NOT \clk_gen1|n\(13);
\clk_gen1|ALT_INV_n\(12) <= NOT \clk_gen1|n\(12);
\clk_gen1|ALT_INV_n\(11) <= NOT \clk_gen1|n\(11);
\clk_gen1|ALT_INV_n\(23) <= NOT \clk_gen1|n\(23);
\clk_gen1|ALT_INV_n\(22) <= NOT \clk_gen1|n\(22);
\clk_gen1|ALT_INV_n\(21) <= NOT \clk_gen1|n\(21);
\clk_gen1|ALT_INV_n\(20) <= NOT \clk_gen1|n\(20);
\clk_gen1|ALT_INV_n\(15) <= NOT \clk_gen1|n\(15);
\clk_gen1|ALT_INV_n\(19) <= NOT \clk_gen1|n\(19);
\clk_gen1|ALT_INV_n\(29) <= NOT \clk_gen1|n\(29);
\clk_gen1|ALT_INV_n\(28) <= NOT \clk_gen1|n\(28);
\clk_gen1|ALT_INV_n\(27) <= NOT \clk_gen1|n\(27);
\clk_gen1|ALT_INV_n\(26) <= NOT \clk_gen1|n\(26);
\clk_gen1|ALT_INV_n\(25) <= NOT \clk_gen1|n\(25);
\clk_gen1|ALT_INV_n\(24) <= NOT \clk_gen1|n\(24);
\clk_gen1|ALT_INV_n\(0) <= NOT \clk_gen1|n\(0);
\clk_gen1|ALT_INV_n\(30) <= NOT \clk_gen1|n\(30);
\clk_gen1|ALT_INV_Add2~5_sumout\ <= NOT \clk_gen1|Add2~5_sumout\;
\clk_gen1|ALT_INV_m\(11) <= NOT \clk_gen1|m\(11);
\clk_gen1|ALT_INV_m\(10) <= NOT \clk_gen1|m\(10);
\clk_gen1|ALT_INV_m\(9) <= NOT \clk_gen1|m\(9);
\clk_gen1|ALT_INV_m\(8) <= NOT \clk_gen1|m\(8);
\clk_gen1|ALT_INV_m\(0) <= NOT \clk_gen1|m\(0);
\clk_gen1|ALT_INV_m\(1) <= NOT \clk_gen1|m\(1);
\clk_gen1|ALT_INV_m\(2) <= NOT \clk_gen1|m\(2);
\clk_gen1|ALT_INV_m\(3) <= NOT \clk_gen1|m\(3);
\clk_gen1|ALT_INV_m\(4) <= NOT \clk_gen1|m\(4);
\clk_gen1|ALT_INV_m\(5) <= NOT \clk_gen1|m\(5);
\clk_gen1|ALT_INV_m\(6) <= NOT \clk_gen1|m\(6);
\clk_gen1|ALT_INV_m\(7) <= NOT \clk_gen1|m\(7);
\clk_gen1|ALT_INV_m\(17) <= NOT \clk_gen1|m\(17);
\clk_gen1|ALT_INV_m\(16) <= NOT \clk_gen1|m\(16);
\clk_gen1|ALT_INV_m\(15) <= NOT \clk_gen1|m\(15);
\clk_gen1|ALT_INV_m\(14) <= NOT \clk_gen1|m\(14);
\clk_gen1|ALT_INV_m\(13) <= NOT \clk_gen1|m\(13);
\clk_gen1|ALT_INV_m\(12) <= NOT \clk_gen1|m\(12);
\clk_gen1|ALT_INV_m\(23) <= NOT \clk_gen1|m\(23);
\clk_gen1|ALT_INV_m\(22) <= NOT \clk_gen1|m\(22);
\clk_gen1|ALT_INV_m\(21) <= NOT \clk_gen1|m\(21);
\clk_gen1|ALT_INV_m\(20) <= NOT \clk_gen1|m\(20);
\clk_gen1|ALT_INV_m\(19) <= NOT \clk_gen1|m\(19);
\clk_gen1|ALT_INV_m\(18) <= NOT \clk_gen1|m\(18);
\clk_gen1|ALT_INV_m\(29) <= NOT \clk_gen1|m\(29);
\clk_gen1|ALT_INV_m\(28) <= NOT \clk_gen1|m\(28);
\clk_gen1|ALT_INV_m\(27) <= NOT \clk_gen1|m\(27);
\clk_gen1|ALT_INV_m\(26) <= NOT \clk_gen1|m\(26);
\clk_gen1|ALT_INV_m\(25) <= NOT \clk_gen1|m\(25);
\clk_gen1|ALT_INV_m\(24) <= NOT \clk_gen1|m\(24);
\clk_gen1|ALT_INV_m\(31) <= NOT \clk_gen1|m\(31);
\clk_gen1|ALT_INV_m\(30) <= NOT \clk_gen1|m\(30);
\clk_gen1|ALT_INV_Equal1~6_combout\ <= NOT \clk_gen1|Equal1~6_combout\;
\clk_gen1|ALT_INV_Equal1~5_combout\ <= NOT \clk_gen1|Equal1~5_combout\;
\clk_gen1|ALT_INV_Equal1~4_combout\ <= NOT \clk_gen1|Equal1~4_combout\;
\clk_gen1|ALT_INV_Equal1~3_combout\ <= NOT \clk_gen1|Equal1~3_combout\;
\clk_gen1|ALT_INV_Equal1~2_combout\ <= NOT \clk_gen1|Equal1~2_combout\;
\clk_gen1|ALT_INV_Equal1~1_combout\ <= NOT \clk_gen1|Equal1~1_combout\;
\clk_gen1|ALT_INV_Equal1~0_combout\ <= NOT \clk_gen1|Equal1~0_combout\;
\clk_gen1|ALT_INV_Equal0~6_combout\ <= NOT \clk_gen1|Equal0~6_combout\;
\clk_gen1|ALT_INV_Equal0~5_combout\ <= NOT \clk_gen1|Equal0~5_combout\;
\clk_gen1|ALT_INV_Equal0~4_combout\ <= NOT \clk_gen1|Equal0~4_combout\;
\clk_gen1|ALT_INV_Equal0~3_combout\ <= NOT \clk_gen1|Equal0~3_combout\;
\clk_gen1|ALT_INV_Equal0~2_combout\ <= NOT \clk_gen1|Equal0~2_combout\;
\clk_gen1|ALT_INV_Equal0~1_combout\ <= NOT \clk_gen1|Equal0~1_combout\;
\clk_gen1|ALT_INV_Equal0~0_combout\ <= NOT \clk_gen1|Equal0~0_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\clk_gen1|ALT_INV_signal~q\ <= NOT \clk_gen1|signal~q\;
\clk_gen1|ALT_INV_fin~q\ <= NOT \clk_gen1|fin~q\;
ALT_INV_flags(1) <= NOT flags(1);
\ALT_INV_stepper_1_speed[11]~input_o\ <= NOT \stepper_1_speed[11]~input_o\;
\ALT_INV_stepper_1_speed[10]~input_o\ <= NOT \stepper_1_speed[10]~input_o\;
\ALT_INV_stepper_1_speed[9]~input_o\ <= NOT \stepper_1_speed[9]~input_o\;
\ALT_INV_stepper_1_speed[8]~input_o\ <= NOT \stepper_1_speed[8]~input_o\;
\ALT_INV_stepper_1_speed[0]~input_o\ <= NOT \stepper_1_speed[0]~input_o\;
\ALT_INV_stepper_1_speed[1]~input_o\ <= NOT \stepper_1_speed[1]~input_o\;
\ALT_INV_stepper_1_speed[2]~input_o\ <= NOT \stepper_1_speed[2]~input_o\;
\ALT_INV_stepper_1_speed[3]~input_o\ <= NOT \stepper_1_speed[3]~input_o\;
\ALT_INV_stepper_1_speed[4]~input_o\ <= NOT \stepper_1_speed[4]~input_o\;
\ALT_INV_stepper_1_speed[5]~input_o\ <= NOT \stepper_1_speed[5]~input_o\;
\ALT_INV_stepper_1_speed[6]~input_o\ <= NOT \stepper_1_speed[6]~input_o\;
\ALT_INV_stepper_1_speed[7]~input_o\ <= NOT \stepper_1_speed[7]~input_o\;
\ALT_INV_stepper_1_speed[17]~input_o\ <= NOT \stepper_1_speed[17]~input_o\;
\ALT_INV_stepper_1_speed[16]~input_o\ <= NOT \stepper_1_speed[16]~input_o\;
\ALT_INV_stepper_1_speed[15]~input_o\ <= NOT \stepper_1_speed[15]~input_o\;
\ALT_INV_stepper_1_speed[14]~input_o\ <= NOT \stepper_1_speed[14]~input_o\;
\ALT_INV_stepper_1_speed[13]~input_o\ <= NOT \stepper_1_speed[13]~input_o\;
\ALT_INV_stepper_1_speed[12]~input_o\ <= NOT \stepper_1_speed[12]~input_o\;
\ALT_INV_stepper_1_speed[23]~input_o\ <= NOT \stepper_1_speed[23]~input_o\;
\ALT_INV_stepper_1_speed[22]~input_o\ <= NOT \stepper_1_speed[22]~input_o\;
\ALT_INV_stepper_1_speed[21]~input_o\ <= NOT \stepper_1_speed[21]~input_o\;
\ALT_INV_stepper_1_speed[20]~input_o\ <= NOT \stepper_1_speed[20]~input_o\;
\ALT_INV_stepper_1_speed[19]~input_o\ <= NOT \stepper_1_speed[19]~input_o\;
\ALT_INV_stepper_1_speed[18]~input_o\ <= NOT \stepper_1_speed[18]~input_o\;
\ALT_INV_stepper_1_speed[29]~input_o\ <= NOT \stepper_1_speed[29]~input_o\;
\ALT_INV_stepper_1_speed[28]~input_o\ <= NOT \stepper_1_speed[28]~input_o\;
\ALT_INV_stepper_1_speed[27]~input_o\ <= NOT \stepper_1_speed[27]~input_o\;
\ALT_INV_stepper_1_speed[26]~input_o\ <= NOT \stepper_1_speed[26]~input_o\;
\ALT_INV_stepper_1_speed[25]~input_o\ <= NOT \stepper_1_speed[25]~input_o\;
\ALT_INV_stepper_1_speed[24]~input_o\ <= NOT \stepper_1_speed[24]~input_o\;
\ALT_INV_stepper_1_speed[31]~input_o\ <= NOT \stepper_1_speed[31]~input_o\;
\ALT_INV_stepper_1_speed[30]~input_o\ <= NOT \stepper_1_speed[30]~input_o\;
\ALT_INV_stepper_1_step_out[31]~input_o\ <= NOT \stepper_1_step_out[31]~input_o\;
\ALT_INV_stepper_1_step_out[30]~input_o\ <= NOT \stepper_1_step_out[30]~input_o\;
\ALT_INV_stepper_1_step_out[29]~input_o\ <= NOT \stepper_1_step_out[29]~input_o\;
\ALT_INV_stepper_1_step_out[28]~input_o\ <= NOT \stepper_1_step_out[28]~input_o\;
\ALT_INV_stepper_1_step_out[27]~input_o\ <= NOT \stepper_1_step_out[27]~input_o\;
\ALT_INV_stepper_1_step_out[26]~input_o\ <= NOT \stepper_1_step_out[26]~input_o\;
\ALT_INV_stepper_1_step_out[25]~input_o\ <= NOT \stepper_1_step_out[25]~input_o\;
\ALT_INV_stepper_1_step_out[24]~input_o\ <= NOT \stepper_1_step_out[24]~input_o\;
\ALT_INV_stepper_1_step_out[23]~input_o\ <= NOT \stepper_1_step_out[23]~input_o\;
\ALT_INV_stepper_1_step_out[22]~input_o\ <= NOT \stepper_1_step_out[22]~input_o\;
\ALT_INV_stepper_1_step_out[21]~input_o\ <= NOT \stepper_1_step_out[21]~input_o\;
\ALT_INV_stepper_1_step_out[20]~input_o\ <= NOT \stepper_1_step_out[20]~input_o\;
\ALT_INV_stepper_1_step_out[19]~input_o\ <= NOT \stepper_1_step_out[19]~input_o\;
\ALT_INV_stepper_1_step_out[18]~input_o\ <= NOT \stepper_1_step_out[18]~input_o\;
\ALT_INV_stepper_1_step_out[17]~input_o\ <= NOT \stepper_1_step_out[17]~input_o\;
\ALT_INV_stepper_1_step_out[16]~input_o\ <= NOT \stepper_1_step_out[16]~input_o\;
\ALT_INV_stepper_1_step_out[15]~input_o\ <= NOT \stepper_1_step_out[15]~input_o\;
\ALT_INV_stepper_1_step_out[14]~input_o\ <= NOT \stepper_1_step_out[14]~input_o\;
\ALT_INV_stepper_1_step_out[13]~input_o\ <= NOT \stepper_1_step_out[13]~input_o\;
\ALT_INV_stepper_1_step_out[12]~input_o\ <= NOT \stepper_1_step_out[12]~input_o\;
\ALT_INV_stepper_1_step_out[11]~input_o\ <= NOT \stepper_1_step_out[11]~input_o\;
\ALT_INV_stepper_1_step_out[10]~input_o\ <= NOT \stepper_1_step_out[10]~input_o\;
\ALT_INV_stepper_1_step_out[9]~input_o\ <= NOT \stepper_1_step_out[9]~input_o\;
\ALT_INV_stepper_1_step_out[8]~input_o\ <= NOT \stepper_1_step_out[8]~input_o\;
\ALT_INV_stepper_1_step_out[7]~input_o\ <= NOT \stepper_1_step_out[7]~input_o\;
\ALT_INV_stepper_1_step_out[6]~input_o\ <= NOT \stepper_1_step_out[6]~input_o\;
\ALT_INV_stepper_1_step_out[5]~input_o\ <= NOT \stepper_1_step_out[5]~input_o\;
\ALT_INV_stepper_1_step_out[4]~input_o\ <= NOT \stepper_1_step_out[4]~input_o\;
\ALT_INV_stepper_1_step_out[3]~input_o\ <= NOT \stepper_1_step_out[3]~input_o\;
\ALT_INV_stepper_1_step_out[2]~input_o\ <= NOT \stepper_1_step_out[2]~input_o\;
\ALT_INV_stepper_1_step_out[1]~input_o\ <= NOT \stepper_1_step_out[1]~input_o\;
\ALT_INV_stepper_1_step_out[0]~input_o\ <= NOT \stepper_1_step_out[0]~input_o\;

\stepper_1_step_in[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][0]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[0]~output_o\);

\stepper_1_step_in[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][1]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[1]~output_o\);

\stepper_1_step_in[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][2]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[2]~output_o\);

\stepper_1_step_in[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][3]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[3]~output_o\);

\stepper_1_step_in[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][4]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[4]~output_o\);

\stepper_1_step_in[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][5]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[5]~output_o\);

\stepper_1_step_in[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][6]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[6]~output_o\);

\stepper_1_step_in[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][7]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[7]~output_o\);

\stepper_1_step_in[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][8]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[8]~output_o\);

\stepper_1_step_in[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][9]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[9]~output_o\);

\stepper_1_step_in[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][10]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[10]~output_o\);

\stepper_1_step_in[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][11]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[11]~output_o\);

\stepper_1_step_in[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][12]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[12]~output_o\);

\stepper_1_step_in[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][13]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[13]~output_o\);

\stepper_1_step_in[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][14]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[14]~output_o\);

\stepper_1_step_in[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][15]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[15]~output_o\);

\stepper_1_step_in[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][16]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[16]~output_o\);

\stepper_1_step_in[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][17]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[17]~output_o\);

\stepper_1_step_in[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][18]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[18]~output_o\);

\stepper_1_step_in[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][19]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[19]~output_o\);

\stepper_1_step_in[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][20]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[20]~output_o\);

\stepper_1_step_in[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][21]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[21]~output_o\);

\stepper_1_step_in[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][22]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[22]~output_o\);

\stepper_1_step_in[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][23]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[23]~output_o\);

\stepper_1_step_in[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][24]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[24]~output_o\);

\stepper_1_step_in[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][25]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[25]~output_o\);

\stepper_1_step_in[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][26]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[26]~output_o\);

\stepper_1_step_in[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][27]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[27]~output_o\);

\stepper_1_step_in[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][28]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[28]~output_o\);

\stepper_1_step_in[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][29]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[29]~output_o\);

\stepper_1_step_in[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][30]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[30]~output_o\);

\stepper_1_step_in[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stepper_step[0][31]~q\,
	devoe => ww_devoe,
	o => \stepper_1_step_in[31]~output_o\);

\flags1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \flags1[0]~output_o\);

\flags1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => flags(1),
	devoe => ww_devoe,
	o => \flags1[1]~output_o\);

\flags1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \flags1[2]~output_o\);

\reset_step1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => flags(1),
	devoe => ww_devoe,
	o => \reset_step1[0]~output_o\);

\reset_step1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reset_step1[1]~output_o\);

\fin[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_gen1|ALT_INV_fin~q\,
	devoe => ww_devoe,
	o => \fin[0]~output_o\);

\fin[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fin[1]~output_o\);

\fin[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fin[2]~output_o\);

\fin[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fin[3]~output_o\);

\fin[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fin[4]~output_o\);

\step_signal~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_gen1|ALT_INV_signal~q\,
	devoe => ww_devoe,
	o => \step_signal~output_o\);

\FPGA_CLK1_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_CLK1_50,
	o => \FPGA_CLK1_50~input_o\);

\stepper_1_step_out[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(0),
	o => \stepper_1_step_out[0]~input_o\);

\stepper_1_speed[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(30),
	o => \stepper_1_speed[30]~input_o\);

\stepper_1_speed[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(29),
	o => \stepper_1_speed[29]~input_o\);

\stepper_1_speed[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(28),
	o => \stepper_1_speed[28]~input_o\);

\stepper_1_speed[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(27),
	o => \stepper_1_speed[27]~input_o\);

\stepper_1_speed[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(26),
	o => \stepper_1_speed[26]~input_o\);

\stepper_1_speed[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(25),
	o => \stepper_1_speed[25]~input_o\);

\stepper_1_speed[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(24),
	o => \stepper_1_speed[24]~input_o\);

\stepper_1_speed[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(23),
	o => \stepper_1_speed[23]~input_o\);

\stepper_1_speed[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(22),
	o => \stepper_1_speed[22]~input_o\);

\stepper_1_speed[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(21),
	o => \stepper_1_speed[21]~input_o\);

\stepper_1_speed[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(20),
	o => \stepper_1_speed[20]~input_o\);

\stepper_1_speed[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(19),
	o => \stepper_1_speed[19]~input_o\);

\stepper_1_speed[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(18),
	o => \stepper_1_speed[18]~input_o\);

\stepper_1_speed[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(17),
	o => \stepper_1_speed[17]~input_o\);

\stepper_1_speed[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(16),
	o => \stepper_1_speed[16]~input_o\);

\stepper_1_speed[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(15),
	o => \stepper_1_speed[15]~input_o\);

\stepper_1_speed[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(14),
	o => \stepper_1_speed[14]~input_o\);

\stepper_1_speed[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(13),
	o => \stepper_1_speed[13]~input_o\);

\stepper_1_speed[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(12),
	o => \stepper_1_speed[12]~input_o\);

\stepper_1_speed[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(11),
	o => \stepper_1_speed[11]~input_o\);

\stepper_1_speed[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(10),
	o => \stepper_1_speed[10]~input_o\);

\stepper_1_speed[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(9),
	o => \stepper_1_speed[9]~input_o\);

\stepper_1_speed[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(8),
	o => \stepper_1_speed[8]~input_o\);

\stepper_1_speed[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(7),
	o => \stepper_1_speed[7]~input_o\);

\stepper_1_speed[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(6),
	o => \stepper_1_speed[6]~input_o\);

\stepper_1_speed[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(5),
	o => \stepper_1_speed[5]~input_o\);

\stepper_1_speed[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(4),
	o => \stepper_1_speed[4]~input_o\);

\stepper_1_speed[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(3),
	o => \stepper_1_speed[3]~input_o\);

\stepper_1_speed[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(2),
	o => \stepper_1_speed[2]~input_o\);

\stepper_1_speed[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(1),
	o => \stepper_1_speed[1]~input_o\);

\stepper_1_speed[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(0),
	o => \stepper_1_speed[0]~input_o\);

\clk_gen1|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~109_sumout\ = SUM(( \stepper_1_speed[0]~input_o\ ) + ( VCC ) + ( !VCC ))
-- \clk_gen1|Add1~110\ = CARRY(( \stepper_1_speed[0]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[0]~input_o\,
	cin => GND,
	sumout => \clk_gen1|Add1~109_sumout\,
	cout => \clk_gen1|Add1~110\);

\clk_gen1|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~105_sumout\ = SUM(( \stepper_1_speed[1]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~110\ ))
-- \clk_gen1|Add1~106\ = CARRY(( \stepper_1_speed[1]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[1]~input_o\,
	cin => \clk_gen1|Add1~110\,
	sumout => \clk_gen1|Add1~105_sumout\,
	cout => \clk_gen1|Add1~106\);

\clk_gen1|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~101_sumout\ = SUM(( \stepper_1_speed[2]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~106\ ))
-- \clk_gen1|Add1~102\ = CARRY(( \stepper_1_speed[2]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[2]~input_o\,
	cin => \clk_gen1|Add1~106\,
	sumout => \clk_gen1|Add1~101_sumout\,
	cout => \clk_gen1|Add1~102\);

\clk_gen1|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~97_sumout\ = SUM(( \stepper_1_speed[3]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~102\ ))
-- \clk_gen1|Add1~98\ = CARRY(( \stepper_1_speed[3]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[3]~input_o\,
	cin => \clk_gen1|Add1~102\,
	sumout => \clk_gen1|Add1~97_sumout\,
	cout => \clk_gen1|Add1~98\);

\clk_gen1|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~93_sumout\ = SUM(( \stepper_1_speed[4]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~98\ ))
-- \clk_gen1|Add1~94\ = CARRY(( \stepper_1_speed[4]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[4]~input_o\,
	cin => \clk_gen1|Add1~98\,
	sumout => \clk_gen1|Add1~93_sumout\,
	cout => \clk_gen1|Add1~94\);

\clk_gen1|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~89_sumout\ = SUM(( \stepper_1_speed[5]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~94\ ))
-- \clk_gen1|Add1~90\ = CARRY(( \stepper_1_speed[5]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[5]~input_o\,
	cin => \clk_gen1|Add1~94\,
	sumout => \clk_gen1|Add1~89_sumout\,
	cout => \clk_gen1|Add1~90\);

\clk_gen1|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~85_sumout\ = SUM(( \stepper_1_speed[6]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~90\ ))
-- \clk_gen1|Add1~86\ = CARRY(( \stepper_1_speed[6]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[6]~input_o\,
	cin => \clk_gen1|Add1~90\,
	sumout => \clk_gen1|Add1~85_sumout\,
	cout => \clk_gen1|Add1~86\);

\clk_gen1|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~81_sumout\ = SUM(( \stepper_1_speed[7]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~86\ ))
-- \clk_gen1|Add1~82\ = CARRY(( \stepper_1_speed[7]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[7]~input_o\,
	cin => \clk_gen1|Add1~86\,
	sumout => \clk_gen1|Add1~81_sumout\,
	cout => \clk_gen1|Add1~82\);

\clk_gen1|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~113_sumout\ = SUM(( \stepper_1_speed[8]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~82\ ))
-- \clk_gen1|Add1~114\ = CARRY(( \stepper_1_speed[8]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[8]~input_o\,
	cin => \clk_gen1|Add1~82\,
	sumout => \clk_gen1|Add1~113_sumout\,
	cout => \clk_gen1|Add1~114\);

\clk_gen1|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~117_sumout\ = SUM(( \stepper_1_speed[9]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~114\ ))
-- \clk_gen1|Add1~118\ = CARRY(( \stepper_1_speed[9]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[9]~input_o\,
	cin => \clk_gen1|Add1~114\,
	sumout => \clk_gen1|Add1~117_sumout\,
	cout => \clk_gen1|Add1~118\);

\clk_gen1|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~121_sumout\ = SUM(( \stepper_1_speed[10]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~118\ ))
-- \clk_gen1|Add1~122\ = CARRY(( \stepper_1_speed[10]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[10]~input_o\,
	cin => \clk_gen1|Add1~118\,
	sumout => \clk_gen1|Add1~121_sumout\,
	cout => \clk_gen1|Add1~122\);

\clk_gen1|Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~125_sumout\ = SUM(( \stepper_1_speed[11]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~122\ ))
-- \clk_gen1|Add1~126\ = CARRY(( \stepper_1_speed[11]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[11]~input_o\,
	cin => \clk_gen1|Add1~122\,
	sumout => \clk_gen1|Add1~125_sumout\,
	cout => \clk_gen1|Add1~126\);

\clk_gen1|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~57_sumout\ = SUM(( \stepper_1_speed[12]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~126\ ))
-- \clk_gen1|Add1~58\ = CARRY(( \stepper_1_speed[12]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[12]~input_o\,
	cin => \clk_gen1|Add1~126\,
	sumout => \clk_gen1|Add1~57_sumout\,
	cout => \clk_gen1|Add1~58\);

\clk_gen1|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~61_sumout\ = SUM(( \stepper_1_speed[13]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~58\ ))
-- \clk_gen1|Add1~62\ = CARRY(( \stepper_1_speed[13]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[13]~input_o\,
	cin => \clk_gen1|Add1~58\,
	sumout => \clk_gen1|Add1~61_sumout\,
	cout => \clk_gen1|Add1~62\);

\clk_gen1|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~65_sumout\ = SUM(( \stepper_1_speed[14]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~62\ ))
-- \clk_gen1|Add1~66\ = CARRY(( \stepper_1_speed[14]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[14]~input_o\,
	cin => \clk_gen1|Add1~62\,
	sumout => \clk_gen1|Add1~65_sumout\,
	cout => \clk_gen1|Add1~66\);

\clk_gen1|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~69_sumout\ = SUM(( \stepper_1_speed[15]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~66\ ))
-- \clk_gen1|Add1~70\ = CARRY(( \stepper_1_speed[15]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[15]~input_o\,
	cin => \clk_gen1|Add1~66\,
	sumout => \clk_gen1|Add1~69_sumout\,
	cout => \clk_gen1|Add1~70\);

\clk_gen1|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~73_sumout\ = SUM(( \stepper_1_speed[16]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~70\ ))
-- \clk_gen1|Add1~74\ = CARRY(( \stepper_1_speed[16]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[16]~input_o\,
	cin => \clk_gen1|Add1~70\,
	sumout => \clk_gen1|Add1~73_sumout\,
	cout => \clk_gen1|Add1~74\);

\clk_gen1|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~77_sumout\ = SUM(( \stepper_1_speed[17]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~74\ ))
-- \clk_gen1|Add1~78\ = CARRY(( \stepper_1_speed[17]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[17]~input_o\,
	cin => \clk_gen1|Add1~74\,
	sumout => \clk_gen1|Add1~77_sumout\,
	cout => \clk_gen1|Add1~78\);

\clk_gen1|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~33_sumout\ = SUM(( \stepper_1_speed[18]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~78\ ))
-- \clk_gen1|Add1~34\ = CARRY(( \stepper_1_speed[18]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[18]~input_o\,
	cin => \clk_gen1|Add1~78\,
	sumout => \clk_gen1|Add1~33_sumout\,
	cout => \clk_gen1|Add1~34\);

\clk_gen1|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~37_sumout\ = SUM(( \stepper_1_speed[19]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~34\ ))
-- \clk_gen1|Add1~38\ = CARRY(( \stepper_1_speed[19]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[19]~input_o\,
	cin => \clk_gen1|Add1~34\,
	sumout => \clk_gen1|Add1~37_sumout\,
	cout => \clk_gen1|Add1~38\);

\clk_gen1|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~41_sumout\ = SUM(( \stepper_1_speed[20]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~38\ ))
-- \clk_gen1|Add1~42\ = CARRY(( \stepper_1_speed[20]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[20]~input_o\,
	cin => \clk_gen1|Add1~38\,
	sumout => \clk_gen1|Add1~41_sumout\,
	cout => \clk_gen1|Add1~42\);

\clk_gen1|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~45_sumout\ = SUM(( \stepper_1_speed[21]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~42\ ))
-- \clk_gen1|Add1~46\ = CARRY(( \stepper_1_speed[21]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[21]~input_o\,
	cin => \clk_gen1|Add1~42\,
	sumout => \clk_gen1|Add1~45_sumout\,
	cout => \clk_gen1|Add1~46\);

\clk_gen1|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~49_sumout\ = SUM(( \stepper_1_speed[22]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~46\ ))
-- \clk_gen1|Add1~50\ = CARRY(( \stepper_1_speed[22]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[22]~input_o\,
	cin => \clk_gen1|Add1~46\,
	sumout => \clk_gen1|Add1~49_sumout\,
	cout => \clk_gen1|Add1~50\);

\clk_gen1|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~53_sumout\ = SUM(( \stepper_1_speed[23]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~50\ ))
-- \clk_gen1|Add1~54\ = CARRY(( \stepper_1_speed[23]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[23]~input_o\,
	cin => \clk_gen1|Add1~50\,
	sumout => \clk_gen1|Add1~53_sumout\,
	cout => \clk_gen1|Add1~54\);

\clk_gen1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~9_sumout\ = SUM(( \stepper_1_speed[24]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~54\ ))
-- \clk_gen1|Add1~10\ = CARRY(( \stepper_1_speed[24]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[24]~input_o\,
	cin => \clk_gen1|Add1~54\,
	sumout => \clk_gen1|Add1~9_sumout\,
	cout => \clk_gen1|Add1~10\);

\clk_gen1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~13_sumout\ = SUM(( \stepper_1_speed[25]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~10\ ))
-- \clk_gen1|Add1~14\ = CARRY(( \stepper_1_speed[25]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[25]~input_o\,
	cin => \clk_gen1|Add1~10\,
	sumout => \clk_gen1|Add1~13_sumout\,
	cout => \clk_gen1|Add1~14\);

\clk_gen1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~17_sumout\ = SUM(( \stepper_1_speed[26]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~14\ ))
-- \clk_gen1|Add1~18\ = CARRY(( \stepper_1_speed[26]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[26]~input_o\,
	cin => \clk_gen1|Add1~14\,
	sumout => \clk_gen1|Add1~17_sumout\,
	cout => \clk_gen1|Add1~18\);

\clk_gen1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~21_sumout\ = SUM(( \stepper_1_speed[27]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~18\ ))
-- \clk_gen1|Add1~22\ = CARRY(( \stepper_1_speed[27]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[27]~input_o\,
	cin => \clk_gen1|Add1~18\,
	sumout => \clk_gen1|Add1~21_sumout\,
	cout => \clk_gen1|Add1~22\);

\clk_gen1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~25_sumout\ = SUM(( \stepper_1_speed[28]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~22\ ))
-- \clk_gen1|Add1~26\ = CARRY(( \stepper_1_speed[28]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[28]~input_o\,
	cin => \clk_gen1|Add1~22\,
	sumout => \clk_gen1|Add1~25_sumout\,
	cout => \clk_gen1|Add1~26\);

\clk_gen1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~29_sumout\ = SUM(( \stepper_1_speed[29]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~26\ ))
-- \clk_gen1|Add1~30\ = CARRY(( \stepper_1_speed[29]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[29]~input_o\,
	cin => \clk_gen1|Add1~26\,
	sumout => \clk_gen1|Add1~29_sumout\,
	cout => \clk_gen1|Add1~30\);

\clk_gen1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~1_sumout\ = SUM(( \stepper_1_speed[30]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~30\ ))
-- \clk_gen1|Add1~2\ = CARRY(( \stepper_1_speed[30]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[30]~input_o\,
	cin => \clk_gen1|Add1~30\,
	sumout => \clk_gen1|Add1~1_sumout\,
	cout => \clk_gen1|Add1~2\);

\clk_gen1|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~109_sumout\ = SUM(( \clk_gen1|m\(0) ) + ( VCC ) + ( !VCC ))
-- \clk_gen1|Add0~110\ = CARRY(( \clk_gen1|m\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(0),
	cin => GND,
	sumout => \clk_gen1|Add0~109_sumout\,
	cout => \clk_gen1|Add0~110\);

\clk_gen1|m[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|m[7]~0_combout\ = (flags(1) & (\clk_gen1|fin~q\ & !\clk_gen1|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_flags(1),
	datab => \clk_gen1|ALT_INV_fin~q\,
	datac => \clk_gen1|ALT_INV_Equal0~6_combout\,
	combout => \clk_gen1|m[7]~0_combout\);

\clk_gen1|m[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~109_sumout\,
	asdata => \clk_gen1|Add0~109_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(0));

\clk_gen1|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~105_sumout\ = SUM(( \clk_gen1|m\(1) ) + ( VCC ) + ( \clk_gen1|Add0~110\ ))
-- \clk_gen1|Add0~106\ = CARRY(( \clk_gen1|m\(1) ) + ( VCC ) + ( \clk_gen1|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(1),
	cin => \clk_gen1|Add0~110\,
	sumout => \clk_gen1|Add0~105_sumout\,
	cout => \clk_gen1|Add0~106\);

\clk_gen1|m[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~105_sumout\,
	asdata => \clk_gen1|Add0~105_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(1));

\clk_gen1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~101_sumout\ = SUM(( \clk_gen1|m\(2) ) + ( VCC ) + ( \clk_gen1|Add0~106\ ))
-- \clk_gen1|Add0~102\ = CARRY(( \clk_gen1|m\(2) ) + ( VCC ) + ( \clk_gen1|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(2),
	cin => \clk_gen1|Add0~106\,
	sumout => \clk_gen1|Add0~101_sumout\,
	cout => \clk_gen1|Add0~102\);

\clk_gen1|m[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~101_sumout\,
	asdata => \clk_gen1|Add0~101_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(2));

\clk_gen1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~97_sumout\ = SUM(( \clk_gen1|m\(3) ) + ( VCC ) + ( \clk_gen1|Add0~102\ ))
-- \clk_gen1|Add0~98\ = CARRY(( \clk_gen1|m\(3) ) + ( VCC ) + ( \clk_gen1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(3),
	cin => \clk_gen1|Add0~102\,
	sumout => \clk_gen1|Add0~97_sumout\,
	cout => \clk_gen1|Add0~98\);

\clk_gen1|m[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~97_sumout\,
	asdata => \clk_gen1|Add0~97_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(3));

\clk_gen1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~93_sumout\ = SUM(( \clk_gen1|m\(4) ) + ( VCC ) + ( \clk_gen1|Add0~98\ ))
-- \clk_gen1|Add0~94\ = CARRY(( \clk_gen1|m\(4) ) + ( VCC ) + ( \clk_gen1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(4),
	cin => \clk_gen1|Add0~98\,
	sumout => \clk_gen1|Add0~93_sumout\,
	cout => \clk_gen1|Add0~94\);

\clk_gen1|m[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~93_sumout\,
	asdata => \clk_gen1|Add0~93_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(4));

\clk_gen1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~89_sumout\ = SUM(( \clk_gen1|m\(5) ) + ( VCC ) + ( \clk_gen1|Add0~94\ ))
-- \clk_gen1|Add0~90\ = CARRY(( \clk_gen1|m\(5) ) + ( VCC ) + ( \clk_gen1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(5),
	cin => \clk_gen1|Add0~94\,
	sumout => \clk_gen1|Add0~89_sumout\,
	cout => \clk_gen1|Add0~90\);

\clk_gen1|m[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~89_sumout\,
	asdata => \clk_gen1|Add0~89_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(5));

\clk_gen1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~85_sumout\ = SUM(( \clk_gen1|m\(6) ) + ( VCC ) + ( \clk_gen1|Add0~90\ ))
-- \clk_gen1|Add0~86\ = CARRY(( \clk_gen1|m\(6) ) + ( VCC ) + ( \clk_gen1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(6),
	cin => \clk_gen1|Add0~90\,
	sumout => \clk_gen1|Add0~85_sumout\,
	cout => \clk_gen1|Add0~86\);

\clk_gen1|m[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~85_sumout\,
	asdata => \clk_gen1|Add0~85_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(6));

\clk_gen1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~81_sumout\ = SUM(( \clk_gen1|m\(7) ) + ( VCC ) + ( \clk_gen1|Add0~86\ ))
-- \clk_gen1|Add0~82\ = CARRY(( \clk_gen1|m\(7) ) + ( VCC ) + ( \clk_gen1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(7),
	cin => \clk_gen1|Add0~86\,
	sumout => \clk_gen1|Add0~81_sumout\,
	cout => \clk_gen1|Add0~82\);

\clk_gen1|m[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~81_sumout\,
	asdata => \clk_gen1|Add0~81_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(7));

\clk_gen1|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~113_sumout\ = SUM(( \clk_gen1|m\(8) ) + ( VCC ) + ( \clk_gen1|Add0~82\ ))
-- \clk_gen1|Add0~114\ = CARRY(( \clk_gen1|m\(8) ) + ( VCC ) + ( \clk_gen1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(8),
	cin => \clk_gen1|Add0~82\,
	sumout => \clk_gen1|Add0~113_sumout\,
	cout => \clk_gen1|Add0~114\);

\clk_gen1|m[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~113_sumout\,
	asdata => \clk_gen1|Add0~113_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(8));

\clk_gen1|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~117_sumout\ = SUM(( \clk_gen1|m\(9) ) + ( VCC ) + ( \clk_gen1|Add0~114\ ))
-- \clk_gen1|Add0~118\ = CARRY(( \clk_gen1|m\(9) ) + ( VCC ) + ( \clk_gen1|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(9),
	cin => \clk_gen1|Add0~114\,
	sumout => \clk_gen1|Add0~117_sumout\,
	cout => \clk_gen1|Add0~118\);

\clk_gen1|m[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~117_sumout\,
	asdata => \clk_gen1|Add0~117_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(9));

\clk_gen1|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~121_sumout\ = SUM(( \clk_gen1|m\(10) ) + ( VCC ) + ( \clk_gen1|Add0~118\ ))
-- \clk_gen1|Add0~122\ = CARRY(( \clk_gen1|m\(10) ) + ( VCC ) + ( \clk_gen1|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(10),
	cin => \clk_gen1|Add0~118\,
	sumout => \clk_gen1|Add0~121_sumout\,
	cout => \clk_gen1|Add0~122\);

\clk_gen1|m[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~121_sumout\,
	asdata => \clk_gen1|Add0~121_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(10));

\clk_gen1|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~125_sumout\ = SUM(( \clk_gen1|m\(11) ) + ( VCC ) + ( \clk_gen1|Add0~122\ ))
-- \clk_gen1|Add0~126\ = CARRY(( \clk_gen1|m\(11) ) + ( VCC ) + ( \clk_gen1|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(11),
	cin => \clk_gen1|Add0~122\,
	sumout => \clk_gen1|Add0~125_sumout\,
	cout => \clk_gen1|Add0~126\);

\clk_gen1|m[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~125_sumout\,
	asdata => \clk_gen1|Add0~125_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(11));

\clk_gen1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~57_sumout\ = SUM(( \clk_gen1|m\(12) ) + ( VCC ) + ( \clk_gen1|Add0~126\ ))
-- \clk_gen1|Add0~58\ = CARRY(( \clk_gen1|m\(12) ) + ( VCC ) + ( \clk_gen1|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(12),
	cin => \clk_gen1|Add0~126\,
	sumout => \clk_gen1|Add0~57_sumout\,
	cout => \clk_gen1|Add0~58\);

\clk_gen1|m[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~57_sumout\,
	asdata => \clk_gen1|Add0~57_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(12));

\clk_gen1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~61_sumout\ = SUM(( \clk_gen1|m\(13) ) + ( VCC ) + ( \clk_gen1|Add0~58\ ))
-- \clk_gen1|Add0~62\ = CARRY(( \clk_gen1|m\(13) ) + ( VCC ) + ( \clk_gen1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(13),
	cin => \clk_gen1|Add0~58\,
	sumout => \clk_gen1|Add0~61_sumout\,
	cout => \clk_gen1|Add0~62\);

\clk_gen1|m[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~61_sumout\,
	asdata => \clk_gen1|Add0~61_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(13));

\clk_gen1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~65_sumout\ = SUM(( \clk_gen1|m\(14) ) + ( VCC ) + ( \clk_gen1|Add0~62\ ))
-- \clk_gen1|Add0~66\ = CARRY(( \clk_gen1|m\(14) ) + ( VCC ) + ( \clk_gen1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(14),
	cin => \clk_gen1|Add0~62\,
	sumout => \clk_gen1|Add0~65_sumout\,
	cout => \clk_gen1|Add0~66\);

\clk_gen1|m[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~65_sumout\,
	asdata => \clk_gen1|Add0~65_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(14));

\clk_gen1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~69_sumout\ = SUM(( \clk_gen1|m\(15) ) + ( VCC ) + ( \clk_gen1|Add0~66\ ))
-- \clk_gen1|Add0~70\ = CARRY(( \clk_gen1|m\(15) ) + ( VCC ) + ( \clk_gen1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(15),
	cin => \clk_gen1|Add0~66\,
	sumout => \clk_gen1|Add0~69_sumout\,
	cout => \clk_gen1|Add0~70\);

\clk_gen1|m[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~69_sumout\,
	asdata => \clk_gen1|Add0~69_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(15));

\clk_gen1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~73_sumout\ = SUM(( \clk_gen1|m\(16) ) + ( VCC ) + ( \clk_gen1|Add0~70\ ))
-- \clk_gen1|Add0~74\ = CARRY(( \clk_gen1|m\(16) ) + ( VCC ) + ( \clk_gen1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(16),
	cin => \clk_gen1|Add0~70\,
	sumout => \clk_gen1|Add0~73_sumout\,
	cout => \clk_gen1|Add0~74\);

\clk_gen1|m[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~73_sumout\,
	asdata => \clk_gen1|Add0~73_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(16));

\clk_gen1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~77_sumout\ = SUM(( \clk_gen1|m\(17) ) + ( VCC ) + ( \clk_gen1|Add0~74\ ))
-- \clk_gen1|Add0~78\ = CARRY(( \clk_gen1|m\(17) ) + ( VCC ) + ( \clk_gen1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(17),
	cin => \clk_gen1|Add0~74\,
	sumout => \clk_gen1|Add0~77_sumout\,
	cout => \clk_gen1|Add0~78\);

\clk_gen1|m[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~77_sumout\,
	asdata => \clk_gen1|Add0~77_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(17));

\clk_gen1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~33_sumout\ = SUM(( \clk_gen1|m\(18) ) + ( VCC ) + ( \clk_gen1|Add0~78\ ))
-- \clk_gen1|Add0~34\ = CARRY(( \clk_gen1|m\(18) ) + ( VCC ) + ( \clk_gen1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(18),
	cin => \clk_gen1|Add0~78\,
	sumout => \clk_gen1|Add0~33_sumout\,
	cout => \clk_gen1|Add0~34\);

\clk_gen1|m[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~33_sumout\,
	asdata => \clk_gen1|Add0~33_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(18));

\clk_gen1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~37_sumout\ = SUM(( \clk_gen1|m\(19) ) + ( VCC ) + ( \clk_gen1|Add0~34\ ))
-- \clk_gen1|Add0~38\ = CARRY(( \clk_gen1|m\(19) ) + ( VCC ) + ( \clk_gen1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(19),
	cin => \clk_gen1|Add0~34\,
	sumout => \clk_gen1|Add0~37_sumout\,
	cout => \clk_gen1|Add0~38\);

\clk_gen1|m[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~37_sumout\,
	asdata => \clk_gen1|Add0~37_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(19));

\clk_gen1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~41_sumout\ = SUM(( \clk_gen1|m\(20) ) + ( VCC ) + ( \clk_gen1|Add0~38\ ))
-- \clk_gen1|Add0~42\ = CARRY(( \clk_gen1|m\(20) ) + ( VCC ) + ( \clk_gen1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(20),
	cin => \clk_gen1|Add0~38\,
	sumout => \clk_gen1|Add0~41_sumout\,
	cout => \clk_gen1|Add0~42\);

\clk_gen1|m[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~41_sumout\,
	asdata => \clk_gen1|Add0~41_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(20));

\clk_gen1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~45_sumout\ = SUM(( \clk_gen1|m\(21) ) + ( VCC ) + ( \clk_gen1|Add0~42\ ))
-- \clk_gen1|Add0~46\ = CARRY(( \clk_gen1|m\(21) ) + ( VCC ) + ( \clk_gen1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(21),
	cin => \clk_gen1|Add0~42\,
	sumout => \clk_gen1|Add0~45_sumout\,
	cout => \clk_gen1|Add0~46\);

\clk_gen1|m[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~45_sumout\,
	asdata => \clk_gen1|Add0~45_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(21));

\clk_gen1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~49_sumout\ = SUM(( \clk_gen1|m\(22) ) + ( VCC ) + ( \clk_gen1|Add0~46\ ))
-- \clk_gen1|Add0~50\ = CARRY(( \clk_gen1|m\(22) ) + ( VCC ) + ( \clk_gen1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(22),
	cin => \clk_gen1|Add0~46\,
	sumout => \clk_gen1|Add0~49_sumout\,
	cout => \clk_gen1|Add0~50\);

\clk_gen1|m[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~49_sumout\,
	asdata => \clk_gen1|Add0~49_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(22));

\clk_gen1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~53_sumout\ = SUM(( \clk_gen1|m\(23) ) + ( VCC ) + ( \clk_gen1|Add0~50\ ))
-- \clk_gen1|Add0~54\ = CARRY(( \clk_gen1|m\(23) ) + ( VCC ) + ( \clk_gen1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(23),
	cin => \clk_gen1|Add0~50\,
	sumout => \clk_gen1|Add0~53_sumout\,
	cout => \clk_gen1|Add0~54\);

\clk_gen1|m[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~53_sumout\,
	asdata => \clk_gen1|Add0~53_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(23));

\clk_gen1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~9_sumout\ = SUM(( \clk_gen1|m\(24) ) + ( VCC ) + ( \clk_gen1|Add0~54\ ))
-- \clk_gen1|Add0~10\ = CARRY(( \clk_gen1|m\(24) ) + ( VCC ) + ( \clk_gen1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(24),
	cin => \clk_gen1|Add0~54\,
	sumout => \clk_gen1|Add0~9_sumout\,
	cout => \clk_gen1|Add0~10\);

\clk_gen1|m[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~9_sumout\,
	asdata => \clk_gen1|Add0~9_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(24));

\clk_gen1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~13_sumout\ = SUM(( \clk_gen1|m\(25) ) + ( VCC ) + ( \clk_gen1|Add0~10\ ))
-- \clk_gen1|Add0~14\ = CARRY(( \clk_gen1|m\(25) ) + ( VCC ) + ( \clk_gen1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(25),
	cin => \clk_gen1|Add0~10\,
	sumout => \clk_gen1|Add0~13_sumout\,
	cout => \clk_gen1|Add0~14\);

\clk_gen1|m[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~13_sumout\,
	asdata => \clk_gen1|Add0~13_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(25));

\clk_gen1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~17_sumout\ = SUM(( \clk_gen1|m\(26) ) + ( VCC ) + ( \clk_gen1|Add0~14\ ))
-- \clk_gen1|Add0~18\ = CARRY(( \clk_gen1|m\(26) ) + ( VCC ) + ( \clk_gen1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(26),
	cin => \clk_gen1|Add0~14\,
	sumout => \clk_gen1|Add0~17_sumout\,
	cout => \clk_gen1|Add0~18\);

\clk_gen1|m[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~17_sumout\,
	asdata => \clk_gen1|Add0~17_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(26));

\clk_gen1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~21_sumout\ = SUM(( \clk_gen1|m\(27) ) + ( VCC ) + ( \clk_gen1|Add0~18\ ))
-- \clk_gen1|Add0~22\ = CARRY(( \clk_gen1|m\(27) ) + ( VCC ) + ( \clk_gen1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(27),
	cin => \clk_gen1|Add0~18\,
	sumout => \clk_gen1|Add0~21_sumout\,
	cout => \clk_gen1|Add0~22\);

\clk_gen1|m[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~21_sumout\,
	asdata => \clk_gen1|Add0~21_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(27));

\clk_gen1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~25_sumout\ = SUM(( \clk_gen1|m\(28) ) + ( VCC ) + ( \clk_gen1|Add0~22\ ))
-- \clk_gen1|Add0~26\ = CARRY(( \clk_gen1|m\(28) ) + ( VCC ) + ( \clk_gen1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(28),
	cin => \clk_gen1|Add0~22\,
	sumout => \clk_gen1|Add0~25_sumout\,
	cout => \clk_gen1|Add0~26\);

\clk_gen1|m[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~25_sumout\,
	asdata => \clk_gen1|Add0~25_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(28));

\clk_gen1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~29_sumout\ = SUM(( \clk_gen1|m\(29) ) + ( VCC ) + ( \clk_gen1|Add0~26\ ))
-- \clk_gen1|Add0~30\ = CARRY(( \clk_gen1|m\(29) ) + ( VCC ) + ( \clk_gen1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(29),
	cin => \clk_gen1|Add0~26\,
	sumout => \clk_gen1|Add0~29_sumout\,
	cout => \clk_gen1|Add0~30\);

\clk_gen1|m[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~29_sumout\,
	asdata => \clk_gen1|Add0~29_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(29));

\clk_gen1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~1_sumout\ = SUM(( \clk_gen1|m\(30) ) + ( VCC ) + ( \clk_gen1|Add0~30\ ))
-- \clk_gen1|Add0~2\ = CARRY(( \clk_gen1|m\(30) ) + ( VCC ) + ( \clk_gen1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(30),
	cin => \clk_gen1|Add0~30\,
	sumout => \clk_gen1|Add0~1_sumout\,
	cout => \clk_gen1|Add0~2\);

\clk_gen1|m[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~1_sumout\,
	asdata => \clk_gen1|Add0~1_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(30));

\stepper_1_speed[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_speed(31),
	o => \stepper_1_speed[31]~input_o\);

\clk_gen1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add1~5_sumout\ = SUM(( \stepper_1_speed[31]~input_o\ ) + ( VCC ) + ( \clk_gen1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stepper_1_speed[31]~input_o\,
	cin => \clk_gen1|Add1~2\,
	sumout => \clk_gen1|Add1~5_sumout\);

\clk_gen1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add0~5_sumout\ = SUM(( \clk_gen1|m\(31) ) + ( VCC ) + ( \clk_gen1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_m\(31),
	cin => \clk_gen1|Add0~2\,
	sumout => \clk_gen1|Add0~5_sumout\);

\clk_gen1|m[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add1~5_sumout\,
	asdata => \clk_gen1|Add0~5_sumout\,
	sload => \clk_gen1|Equal1~6_combout\,
	ena => \clk_gen1|m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|m\(31));

\clk_gen1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Equal1~0_combout\ = (!\clk_gen1|m\(30) & !\clk_gen1|m\(31))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen1|ALT_INV_m\(30),
	datab => \clk_gen1|ALT_INV_m\(31),
	combout => \clk_gen1|Equal1~0_combout\);

\clk_gen1|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Equal1~1_combout\ = ( !\clk_gen1|m\(28) & ( !\clk_gen1|m\(29) & ( (!\clk_gen1|m\(24) & (!\clk_gen1|m\(25) & (!\clk_gen1|m\(26) & !\clk_gen1|m\(27)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen1|ALT_INV_m\(24),
	datab => \clk_gen1|ALT_INV_m\(25),
	datac => \clk_gen1|ALT_INV_m\(26),
	datad => \clk_gen1|ALT_INV_m\(27),
	datae => \clk_gen1|ALT_INV_m\(28),
	dataf => \clk_gen1|ALT_INV_m\(29),
	combout => \clk_gen1|Equal1~1_combout\);

\clk_gen1|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Equal1~2_combout\ = ( !\clk_gen1|m\(22) & ( !\clk_gen1|m\(23) & ( (!\clk_gen1|m\(18) & (!\clk_gen1|m\(19) & (!\clk_gen1|m\(20) & !\clk_gen1|m\(21)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen1|ALT_INV_m\(18),
	datab => \clk_gen1|ALT_INV_m\(19),
	datac => \clk_gen1|ALT_INV_m\(20),
	datad => \clk_gen1|ALT_INV_m\(21),
	datae => \clk_gen1|ALT_INV_m\(22),
	dataf => \clk_gen1|ALT_INV_m\(23),
	combout => \clk_gen1|Equal1~2_combout\);

\clk_gen1|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Equal1~3_combout\ = ( !\clk_gen1|m\(16) & ( !\clk_gen1|m\(17) & ( (!\clk_gen1|m\(12) & (!\clk_gen1|m\(13) & (!\clk_gen1|m\(14) & !\clk_gen1|m\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen1|ALT_INV_m\(12),
	datab => \clk_gen1|ALT_INV_m\(13),
	datac => \clk_gen1|ALT_INV_m\(14),
	datad => \clk_gen1|ALT_INV_m\(15),
	datae => \clk_gen1|ALT_INV_m\(16),
	dataf => \clk_gen1|ALT_INV_m\(17),
	combout => \clk_gen1|Equal1~3_combout\);

\clk_gen1|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Equal1~4_combout\ = ( !\clk_gen1|m\(3) & ( !\clk_gen1|m\(2) & ( (!\clk_gen1|m\(7) & (!\clk_gen1|m\(6) & (!\clk_gen1|m\(5) & !\clk_gen1|m\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen1|ALT_INV_m\(7),
	datab => \clk_gen1|ALT_INV_m\(6),
	datac => \clk_gen1|ALT_INV_m\(5),
	datad => \clk_gen1|ALT_INV_m\(4),
	datae => \clk_gen1|ALT_INV_m\(3),
	dataf => \clk_gen1|ALT_INV_m\(2),
	combout => \clk_gen1|Equal1~4_combout\);

\clk_gen1|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Equal1~5_combout\ = ( !\clk_gen1|m\(10) & ( !\clk_gen1|m\(11) & ( (!\clk_gen1|m\(1) & (!\clk_gen1|m\(0) & (!\clk_gen1|m\(8) & !\clk_gen1|m\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen1|ALT_INV_m\(1),
	datab => \clk_gen1|ALT_INV_m\(0),
	datac => \clk_gen1|ALT_INV_m\(8),
	datad => \clk_gen1|ALT_INV_m\(9),
	datae => \clk_gen1|ALT_INV_m\(10),
	dataf => \clk_gen1|ALT_INV_m\(11),
	combout => \clk_gen1|Equal1~5_combout\);

\clk_gen1|Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Equal1~6_combout\ = ( \clk_gen1|Equal1~4_combout\ & ( \clk_gen1|Equal1~5_combout\ & ( (!\clk_gen1|Equal1~0_combout\) # ((!\clk_gen1|Equal1~1_combout\) # ((!\clk_gen1|Equal1~2_combout\) # (!\clk_gen1|Equal1~3_combout\))) ) ) ) # ( 
-- !\clk_gen1|Equal1~4_combout\ & ( \clk_gen1|Equal1~5_combout\ ) ) # ( \clk_gen1|Equal1~4_combout\ & ( !\clk_gen1|Equal1~5_combout\ ) ) # ( !\clk_gen1|Equal1~4_combout\ & ( !\clk_gen1|Equal1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen1|ALT_INV_Equal1~0_combout\,
	datab => \clk_gen1|ALT_INV_Equal1~1_combout\,
	datac => \clk_gen1|ALT_INV_Equal1~2_combout\,
	datad => \clk_gen1|ALT_INV_Equal1~3_combout\,
	datae => \clk_gen1|ALT_INV_Equal1~4_combout\,
	dataf => \clk_gen1|ALT_INV_Equal1~5_combout\,
	combout => \clk_gen1|Equal1~6_combout\);

\clk_gen1|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~5_sumout\ = SUM(( \clk_gen1|n\(0) ) + ( VCC ) + ( !VCC ))
-- \clk_gen1|Add2~6\ = CARRY(( \clk_gen1|n\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(0),
	cin => GND,
	sumout => \clk_gen1|Add2~5_sumout\,
	cout => \clk_gen1|Add2~6\);

\clk_gen1|n~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|n~1_combout\ = (!\clk_gen1|Equal1~6_combout\ & (((!\clk_gen1|Equal0~6_combout\ & \clk_gen1|Add2~5_sumout\)))) # (\clk_gen1|Equal1~6_combout\ & (\clk_gen1|n\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111000101000001011100010100000101110001010000010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen1|ALT_INV_n\(0),
	datab => \clk_gen1|ALT_INV_Equal0~6_combout\,
	datac => \clk_gen1|ALT_INV_Equal1~6_combout\,
	datad => \clk_gen1|ALT_INV_Add2~5_sumout\,
	combout => \clk_gen1|n~1_combout\);

\clk_gen1|n[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|n~1_combout\,
	asdata => VCC,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => flags(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(0));

\clk_gen1|Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~89_sumout\ = SUM(( \clk_gen1|n\(1) ) + ( VCC ) + ( \clk_gen1|Add2~6\ ))
-- \clk_gen1|Add2~90\ = CARRY(( \clk_gen1|n\(1) ) + ( VCC ) + ( \clk_gen1|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(1),
	cin => \clk_gen1|Add2~6\,
	sumout => \clk_gen1|Add2~89_sumout\,
	cout => \clk_gen1|Add2~90\);

\clk_gen1|n[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|n[31]~0_combout\ = (flags(1) & ((!\clk_gen1|fin~q\) # ((!\clk_gen1|Equal0~6_combout\ & !\clk_gen1|Equal1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001000100010101000100010001010100010001000101010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_flags(1),
	datab => \clk_gen1|ALT_INV_fin~q\,
	datac => \clk_gen1|ALT_INV_Equal0~6_combout\,
	datad => \clk_gen1|ALT_INV_Equal1~6_combout\,
	combout => \clk_gen1|n[31]~0_combout\);

\clk_gen1|n[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~89_sumout\,
	asdata => \stepper_1_step_out[0]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(1));

\clk_gen1|Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~93_sumout\ = SUM(( \clk_gen1|n\(2) ) + ( VCC ) + ( \clk_gen1|Add2~90\ ))
-- \clk_gen1|Add2~94\ = CARRY(( \clk_gen1|n\(2) ) + ( VCC ) + ( \clk_gen1|Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(2),
	cin => \clk_gen1|Add2~90\,
	sumout => \clk_gen1|Add2~93_sumout\,
	cout => \clk_gen1|Add2~94\);

\stepper_1_step_out[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(1),
	o => \stepper_1_step_out[1]~input_o\);

\clk_gen1|n[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~93_sumout\,
	asdata => \stepper_1_step_out[1]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(2));

\clk_gen1|Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~97_sumout\ = SUM(( \clk_gen1|n\(3) ) + ( VCC ) + ( \clk_gen1|Add2~94\ ))
-- \clk_gen1|Add2~98\ = CARRY(( \clk_gen1|n\(3) ) + ( VCC ) + ( \clk_gen1|Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(3),
	cin => \clk_gen1|Add2~94\,
	sumout => \clk_gen1|Add2~97_sumout\,
	cout => \clk_gen1|Add2~98\);

\stepper_1_step_out[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(2),
	o => \stepper_1_step_out[2]~input_o\);

\clk_gen1|n[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~97_sumout\,
	asdata => \stepper_1_step_out[2]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(3));

\clk_gen1|Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~101_sumout\ = SUM(( \clk_gen1|n\(4) ) + ( VCC ) + ( \clk_gen1|Add2~98\ ))
-- \clk_gen1|Add2~102\ = CARRY(( \clk_gen1|n\(4) ) + ( VCC ) + ( \clk_gen1|Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(4),
	cin => \clk_gen1|Add2~98\,
	sumout => \clk_gen1|Add2~101_sumout\,
	cout => \clk_gen1|Add2~102\);

\stepper_1_step_out[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(3),
	o => \stepper_1_step_out[3]~input_o\);

\clk_gen1|n[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~101_sumout\,
	asdata => \stepper_1_step_out[3]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(4));

\clk_gen1|Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~105_sumout\ = SUM(( \clk_gen1|n\(5) ) + ( VCC ) + ( \clk_gen1|Add2~102\ ))
-- \clk_gen1|Add2~106\ = CARRY(( \clk_gen1|n\(5) ) + ( VCC ) + ( \clk_gen1|Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(5),
	cin => \clk_gen1|Add2~102\,
	sumout => \clk_gen1|Add2~105_sumout\,
	cout => \clk_gen1|Add2~106\);

\stepper_1_step_out[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(4),
	o => \stepper_1_step_out[4]~input_o\);

\clk_gen1|n[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~105_sumout\,
	asdata => \stepper_1_step_out[4]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(5));

\clk_gen1|Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~109_sumout\ = SUM(( \clk_gen1|n\(6) ) + ( VCC ) + ( \clk_gen1|Add2~106\ ))
-- \clk_gen1|Add2~110\ = CARRY(( \clk_gen1|n\(6) ) + ( VCC ) + ( \clk_gen1|Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(6),
	cin => \clk_gen1|Add2~106\,
	sumout => \clk_gen1|Add2~109_sumout\,
	cout => \clk_gen1|Add2~110\);

\stepper_1_step_out[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(5),
	o => \stepper_1_step_out[5]~input_o\);

\clk_gen1|n[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~109_sumout\,
	asdata => \stepper_1_step_out[5]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(6));

\clk_gen1|Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~113_sumout\ = SUM(( \clk_gen1|n\(7) ) + ( VCC ) + ( \clk_gen1|Add2~110\ ))
-- \clk_gen1|Add2~114\ = CARRY(( \clk_gen1|n\(7) ) + ( VCC ) + ( \clk_gen1|Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(7),
	cin => \clk_gen1|Add2~110\,
	sumout => \clk_gen1|Add2~113_sumout\,
	cout => \clk_gen1|Add2~114\);

\stepper_1_step_out[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(6),
	o => \stepper_1_step_out[6]~input_o\);

\clk_gen1|n[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~113_sumout\,
	asdata => \stepper_1_step_out[6]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(7));

\clk_gen1|Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~117_sumout\ = SUM(( \clk_gen1|n\(8) ) + ( VCC ) + ( \clk_gen1|Add2~114\ ))
-- \clk_gen1|Add2~118\ = CARRY(( \clk_gen1|n\(8) ) + ( VCC ) + ( \clk_gen1|Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(8),
	cin => \clk_gen1|Add2~114\,
	sumout => \clk_gen1|Add2~117_sumout\,
	cout => \clk_gen1|Add2~118\);

\stepper_1_step_out[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(7),
	o => \stepper_1_step_out[7]~input_o\);

\clk_gen1|n[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~117_sumout\,
	asdata => \stepper_1_step_out[7]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(8));

\clk_gen1|Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~121_sumout\ = SUM(( \clk_gen1|n\(9) ) + ( VCC ) + ( \clk_gen1|Add2~118\ ))
-- \clk_gen1|Add2~122\ = CARRY(( \clk_gen1|n\(9) ) + ( VCC ) + ( \clk_gen1|Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(9),
	cin => \clk_gen1|Add2~118\,
	sumout => \clk_gen1|Add2~121_sumout\,
	cout => \clk_gen1|Add2~122\);

\stepper_1_step_out[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(8),
	o => \stepper_1_step_out[8]~input_o\);

\clk_gen1|n[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~121_sumout\,
	asdata => \stepper_1_step_out[8]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(9));

\clk_gen1|Add2~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~125_sumout\ = SUM(( \clk_gen1|n\(10) ) + ( VCC ) + ( \clk_gen1|Add2~122\ ))
-- \clk_gen1|Add2~126\ = CARRY(( \clk_gen1|n\(10) ) + ( VCC ) + ( \clk_gen1|Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(10),
	cin => \clk_gen1|Add2~122\,
	sumout => \clk_gen1|Add2~125_sumout\,
	cout => \clk_gen1|Add2~126\);

\stepper_1_step_out[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(9),
	o => \stepper_1_step_out[9]~input_o\);

\clk_gen1|n[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~125_sumout\,
	asdata => \stepper_1_step_out[9]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(10));

\clk_gen1|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~57_sumout\ = SUM(( \clk_gen1|n\(11) ) + ( VCC ) + ( \clk_gen1|Add2~126\ ))
-- \clk_gen1|Add2~58\ = CARRY(( \clk_gen1|n\(11) ) + ( VCC ) + ( \clk_gen1|Add2~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(11),
	cin => \clk_gen1|Add2~126\,
	sumout => \clk_gen1|Add2~57_sumout\,
	cout => \clk_gen1|Add2~58\);

\stepper_1_step_out[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(10),
	o => \stepper_1_step_out[10]~input_o\);

\clk_gen1|n[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~57_sumout\,
	asdata => \stepper_1_step_out[10]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(11));

\clk_gen1|Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~61_sumout\ = SUM(( \clk_gen1|n\(12) ) + ( VCC ) + ( \clk_gen1|Add2~58\ ))
-- \clk_gen1|Add2~62\ = CARRY(( \clk_gen1|n\(12) ) + ( VCC ) + ( \clk_gen1|Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(12),
	cin => \clk_gen1|Add2~58\,
	sumout => \clk_gen1|Add2~61_sumout\,
	cout => \clk_gen1|Add2~62\);

\stepper_1_step_out[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(11),
	o => \stepper_1_step_out[11]~input_o\);

\clk_gen1|n[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~61_sumout\,
	asdata => \stepper_1_step_out[11]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(12));

\clk_gen1|Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~65_sumout\ = SUM(( \clk_gen1|n\(13) ) + ( VCC ) + ( \clk_gen1|Add2~62\ ))
-- \clk_gen1|Add2~66\ = CARRY(( \clk_gen1|n\(13) ) + ( VCC ) + ( \clk_gen1|Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(13),
	cin => \clk_gen1|Add2~62\,
	sumout => \clk_gen1|Add2~65_sumout\,
	cout => \clk_gen1|Add2~66\);

\stepper_1_step_out[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(12),
	o => \stepper_1_step_out[12]~input_o\);

\clk_gen1|n[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~65_sumout\,
	asdata => \stepper_1_step_out[12]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(13));

\clk_gen1|Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~69_sumout\ = SUM(( \clk_gen1|n\(14) ) + ( VCC ) + ( \clk_gen1|Add2~66\ ))
-- \clk_gen1|Add2~70\ = CARRY(( \clk_gen1|n\(14) ) + ( VCC ) + ( \clk_gen1|Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(14),
	cin => \clk_gen1|Add2~66\,
	sumout => \clk_gen1|Add2~69_sumout\,
	cout => \clk_gen1|Add2~70\);

\stepper_1_step_out[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(13),
	o => \stepper_1_step_out[13]~input_o\);

\clk_gen1|n[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~69_sumout\,
	asdata => \stepper_1_step_out[13]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(14));

\clk_gen1|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~37_sumout\ = SUM(( \clk_gen1|n\(15) ) + ( VCC ) + ( \clk_gen1|Add2~70\ ))
-- \clk_gen1|Add2~38\ = CARRY(( \clk_gen1|n\(15) ) + ( VCC ) + ( \clk_gen1|Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(15),
	cin => \clk_gen1|Add2~70\,
	sumout => \clk_gen1|Add2~37_sumout\,
	cout => \clk_gen1|Add2~38\);

\stepper_1_step_out[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(14),
	o => \stepper_1_step_out[14]~input_o\);

\clk_gen1|n[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~37_sumout\,
	asdata => \stepper_1_step_out[14]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(15));

\clk_gen1|Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~85_sumout\ = SUM(( \clk_gen1|n\(16) ) + ( VCC ) + ( \clk_gen1|Add2~38\ ))
-- \clk_gen1|Add2~86\ = CARRY(( \clk_gen1|n\(16) ) + ( VCC ) + ( \clk_gen1|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(16),
	cin => \clk_gen1|Add2~38\,
	sumout => \clk_gen1|Add2~85_sumout\,
	cout => \clk_gen1|Add2~86\);

\stepper_1_step_out[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(15),
	o => \stepper_1_step_out[15]~input_o\);

\clk_gen1|n[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~85_sumout\,
	asdata => \stepper_1_step_out[15]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(16));

\clk_gen1|Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~73_sumout\ = SUM(( \clk_gen1|n\(17) ) + ( VCC ) + ( \clk_gen1|Add2~86\ ))
-- \clk_gen1|Add2~74\ = CARRY(( \clk_gen1|n\(17) ) + ( VCC ) + ( \clk_gen1|Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(17),
	cin => \clk_gen1|Add2~86\,
	sumout => \clk_gen1|Add2~73_sumout\,
	cout => \clk_gen1|Add2~74\);

\stepper_1_step_out[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(16),
	o => \stepper_1_step_out[16]~input_o\);

\clk_gen1|n[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~73_sumout\,
	asdata => \stepper_1_step_out[16]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(17));

\clk_gen1|Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~77_sumout\ = SUM(( \clk_gen1|n\(18) ) + ( VCC ) + ( \clk_gen1|Add2~74\ ))
-- \clk_gen1|Add2~78\ = CARRY(( \clk_gen1|n\(18) ) + ( VCC ) + ( \clk_gen1|Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(18),
	cin => \clk_gen1|Add2~74\,
	sumout => \clk_gen1|Add2~77_sumout\,
	cout => \clk_gen1|Add2~78\);

\stepper_1_step_out[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(17),
	o => \stepper_1_step_out[17]~input_o\);

\clk_gen1|n[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~77_sumout\,
	asdata => \stepper_1_step_out[17]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(18));

\clk_gen1|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~33_sumout\ = SUM(( \clk_gen1|n\(19) ) + ( VCC ) + ( \clk_gen1|Add2~78\ ))
-- \clk_gen1|Add2~34\ = CARRY(( \clk_gen1|n\(19) ) + ( VCC ) + ( \clk_gen1|Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(19),
	cin => \clk_gen1|Add2~78\,
	sumout => \clk_gen1|Add2~33_sumout\,
	cout => \clk_gen1|Add2~34\);

\stepper_1_step_out[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(18),
	o => \stepper_1_step_out[18]~input_o\);

\clk_gen1|n[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~33_sumout\,
	asdata => \stepper_1_step_out[18]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(19));

\clk_gen1|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~41_sumout\ = SUM(( \clk_gen1|n\(20) ) + ( VCC ) + ( \clk_gen1|Add2~34\ ))
-- \clk_gen1|Add2~42\ = CARRY(( \clk_gen1|n\(20) ) + ( VCC ) + ( \clk_gen1|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(20),
	cin => \clk_gen1|Add2~34\,
	sumout => \clk_gen1|Add2~41_sumout\,
	cout => \clk_gen1|Add2~42\);

\stepper_1_step_out[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(19),
	o => \stepper_1_step_out[19]~input_o\);

\clk_gen1|n[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~41_sumout\,
	asdata => \stepper_1_step_out[19]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(20));

\clk_gen1|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~45_sumout\ = SUM(( \clk_gen1|n\(21) ) + ( VCC ) + ( \clk_gen1|Add2~42\ ))
-- \clk_gen1|Add2~46\ = CARRY(( \clk_gen1|n\(21) ) + ( VCC ) + ( \clk_gen1|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(21),
	cin => \clk_gen1|Add2~42\,
	sumout => \clk_gen1|Add2~45_sumout\,
	cout => \clk_gen1|Add2~46\);

\stepper_1_step_out[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(20),
	o => \stepper_1_step_out[20]~input_o\);

\clk_gen1|n[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~45_sumout\,
	asdata => \stepper_1_step_out[20]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(21));

\clk_gen1|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~49_sumout\ = SUM(( \clk_gen1|n\(22) ) + ( VCC ) + ( \clk_gen1|Add2~46\ ))
-- \clk_gen1|Add2~50\ = CARRY(( \clk_gen1|n\(22) ) + ( VCC ) + ( \clk_gen1|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(22),
	cin => \clk_gen1|Add2~46\,
	sumout => \clk_gen1|Add2~49_sumout\,
	cout => \clk_gen1|Add2~50\);

\stepper_1_step_out[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(21),
	o => \stepper_1_step_out[21]~input_o\);

\clk_gen1|n[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~49_sumout\,
	asdata => \stepper_1_step_out[21]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(22));

\clk_gen1|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~53_sumout\ = SUM(( \clk_gen1|n\(23) ) + ( VCC ) + ( \clk_gen1|Add2~50\ ))
-- \clk_gen1|Add2~54\ = CARRY(( \clk_gen1|n\(23) ) + ( VCC ) + ( \clk_gen1|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(23),
	cin => \clk_gen1|Add2~50\,
	sumout => \clk_gen1|Add2~53_sumout\,
	cout => \clk_gen1|Add2~54\);

\stepper_1_step_out[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(22),
	o => \stepper_1_step_out[22]~input_o\);

\clk_gen1|n[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~53_sumout\,
	asdata => \stepper_1_step_out[22]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(23));

\clk_gen1|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~9_sumout\ = SUM(( \clk_gen1|n\(24) ) + ( VCC ) + ( \clk_gen1|Add2~54\ ))
-- \clk_gen1|Add2~10\ = CARRY(( \clk_gen1|n\(24) ) + ( VCC ) + ( \clk_gen1|Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(24),
	cin => \clk_gen1|Add2~54\,
	sumout => \clk_gen1|Add2~9_sumout\,
	cout => \clk_gen1|Add2~10\);

\stepper_1_step_out[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(23),
	o => \stepper_1_step_out[23]~input_o\);

\clk_gen1|n[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~9_sumout\,
	asdata => \stepper_1_step_out[23]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(24));

\clk_gen1|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~13_sumout\ = SUM(( \clk_gen1|n\(25) ) + ( VCC ) + ( \clk_gen1|Add2~10\ ))
-- \clk_gen1|Add2~14\ = CARRY(( \clk_gen1|n\(25) ) + ( VCC ) + ( \clk_gen1|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(25),
	cin => \clk_gen1|Add2~10\,
	sumout => \clk_gen1|Add2~13_sumout\,
	cout => \clk_gen1|Add2~14\);

\stepper_1_step_out[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(24),
	o => \stepper_1_step_out[24]~input_o\);

\clk_gen1|n[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~13_sumout\,
	asdata => \stepper_1_step_out[24]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(25));

\clk_gen1|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~17_sumout\ = SUM(( \clk_gen1|n\(26) ) + ( VCC ) + ( \clk_gen1|Add2~14\ ))
-- \clk_gen1|Add2~18\ = CARRY(( \clk_gen1|n\(26) ) + ( VCC ) + ( \clk_gen1|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(26),
	cin => \clk_gen1|Add2~14\,
	sumout => \clk_gen1|Add2~17_sumout\,
	cout => \clk_gen1|Add2~18\);

\stepper_1_step_out[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(25),
	o => \stepper_1_step_out[25]~input_o\);

\clk_gen1|n[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~17_sumout\,
	asdata => \stepper_1_step_out[25]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(26));

\clk_gen1|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~21_sumout\ = SUM(( \clk_gen1|n\(27) ) + ( VCC ) + ( \clk_gen1|Add2~18\ ))
-- \clk_gen1|Add2~22\ = CARRY(( \clk_gen1|n\(27) ) + ( VCC ) + ( \clk_gen1|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(27),
	cin => \clk_gen1|Add2~18\,
	sumout => \clk_gen1|Add2~21_sumout\,
	cout => \clk_gen1|Add2~22\);

\stepper_1_step_out[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(26),
	o => \stepper_1_step_out[26]~input_o\);

\clk_gen1|n[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~21_sumout\,
	asdata => \stepper_1_step_out[26]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(27));

\clk_gen1|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~25_sumout\ = SUM(( \clk_gen1|n\(28) ) + ( VCC ) + ( \clk_gen1|Add2~22\ ))
-- \clk_gen1|Add2~26\ = CARRY(( \clk_gen1|n\(28) ) + ( VCC ) + ( \clk_gen1|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(28),
	cin => \clk_gen1|Add2~22\,
	sumout => \clk_gen1|Add2~25_sumout\,
	cout => \clk_gen1|Add2~26\);

\stepper_1_step_out[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(27),
	o => \stepper_1_step_out[27]~input_o\);

\clk_gen1|n[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~25_sumout\,
	asdata => \stepper_1_step_out[27]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(28));

\clk_gen1|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~29_sumout\ = SUM(( \clk_gen1|n\(29) ) + ( VCC ) + ( \clk_gen1|Add2~26\ ))
-- \clk_gen1|Add2~30\ = CARRY(( \clk_gen1|n\(29) ) + ( VCC ) + ( \clk_gen1|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(29),
	cin => \clk_gen1|Add2~26\,
	sumout => \clk_gen1|Add2~29_sumout\,
	cout => \clk_gen1|Add2~30\);

\stepper_1_step_out[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(28),
	o => \stepper_1_step_out[28]~input_o\);

\clk_gen1|n[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~29_sumout\,
	asdata => \stepper_1_step_out[28]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(29));

\clk_gen1|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~1_sumout\ = SUM(( \clk_gen1|n\(30) ) + ( VCC ) + ( \clk_gen1|Add2~30\ ))
-- \clk_gen1|Add2~2\ = CARRY(( \clk_gen1|n\(30) ) + ( VCC ) + ( \clk_gen1|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(30),
	cin => \clk_gen1|Add2~30\,
	sumout => \clk_gen1|Add2~1_sumout\,
	cout => \clk_gen1|Add2~2\);

\stepper_1_step_out[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(29),
	o => \stepper_1_step_out[29]~input_o\);

\clk_gen1|n[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~1_sumout\,
	asdata => \stepper_1_step_out[29]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(30));

\clk_gen1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Equal0~0_combout\ = (!\clk_gen1|n\(30) & !\clk_gen1|n\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen1|ALT_INV_n\(30),
	datab => \clk_gen1|ALT_INV_n\(0),
	combout => \clk_gen1|Equal0~0_combout\);

\clk_gen1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Equal0~1_combout\ = ( !\clk_gen1|n\(28) & ( !\clk_gen1|n\(29) & ( (!\clk_gen1|n\(24) & (!\clk_gen1|n\(25) & (!\clk_gen1|n\(26) & !\clk_gen1|n\(27)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen1|ALT_INV_n\(24),
	datab => \clk_gen1|ALT_INV_n\(25),
	datac => \clk_gen1|ALT_INV_n\(26),
	datad => \clk_gen1|ALT_INV_n\(27),
	datae => \clk_gen1|ALT_INV_n\(28),
	dataf => \clk_gen1|ALT_INV_n\(29),
	combout => \clk_gen1|Equal0~1_combout\);

\clk_gen1|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Equal0~2_combout\ = ( !\clk_gen1|n\(22) & ( !\clk_gen1|n\(23) & ( (!\clk_gen1|n\(19) & (!\clk_gen1|n\(15) & (!\clk_gen1|n\(20) & !\clk_gen1|n\(21)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen1|ALT_INV_n\(19),
	datab => \clk_gen1|ALT_INV_n\(15),
	datac => \clk_gen1|ALT_INV_n\(20),
	datad => \clk_gen1|ALT_INV_n\(21),
	datae => \clk_gen1|ALT_INV_n\(22),
	dataf => \clk_gen1|ALT_INV_n\(23),
	combout => \clk_gen1|Equal0~2_combout\);

\clk_gen1|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Equal0~3_combout\ = ( !\clk_gen1|n\(17) & ( !\clk_gen1|n\(18) & ( (!\clk_gen1|n\(11) & (!\clk_gen1|n\(12) & (!\clk_gen1|n\(13) & !\clk_gen1|n\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen1|ALT_INV_n\(11),
	datab => \clk_gen1|ALT_INV_n\(12),
	datac => \clk_gen1|ALT_INV_n\(13),
	datad => \clk_gen1|ALT_INV_n\(14),
	datae => \clk_gen1|ALT_INV_n\(17),
	dataf => \clk_gen1|ALT_INV_n\(18),
	combout => \clk_gen1|Equal0~3_combout\);

\clk_gen1|Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Add2~81_sumout\ = SUM(( \clk_gen1|n\(31) ) + ( VCC ) + ( \clk_gen1|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_gen1|ALT_INV_n\(31),
	cin => \clk_gen1|Add2~2\,
	sumout => \clk_gen1|Add2~81_sumout\);

\stepper_1_step_out[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(30),
	o => \stepper_1_step_out[30]~input_o\);

\clk_gen1|n[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|Add2~81_sumout\,
	asdata => \stepper_1_step_out[30]~input_o\,
	sload => \clk_gen1|ALT_INV_fin~q\,
	ena => \clk_gen1|n[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|n\(31));

\clk_gen1|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Equal0~4_combout\ = ( !\clk_gen1|n\(3) & ( !\clk_gen1|n\(4) & ( (!\clk_gen1|n\(31) & (!\clk_gen1|n\(16) & (!\clk_gen1|n\(1) & !\clk_gen1|n\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen1|ALT_INV_n\(31),
	datab => \clk_gen1|ALT_INV_n\(16),
	datac => \clk_gen1|ALT_INV_n\(1),
	datad => \clk_gen1|ALT_INV_n\(2),
	datae => \clk_gen1|ALT_INV_n\(3),
	dataf => \clk_gen1|ALT_INV_n\(4),
	combout => \clk_gen1|Equal0~4_combout\);

\clk_gen1|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Equal0~5_combout\ = ( !\clk_gen1|n\(9) & ( !\clk_gen1|n\(10) & ( (!\clk_gen1|n\(5) & (!\clk_gen1|n\(6) & (!\clk_gen1|n\(7) & !\clk_gen1|n\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen1|ALT_INV_n\(5),
	datab => \clk_gen1|ALT_INV_n\(6),
	datac => \clk_gen1|ALT_INV_n\(7),
	datad => \clk_gen1|ALT_INV_n\(8),
	datae => \clk_gen1|ALT_INV_n\(9),
	dataf => \clk_gen1|ALT_INV_n\(10),
	combout => \clk_gen1|Equal0~5_combout\);

\clk_gen1|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|Equal0~6_combout\ = ( \clk_gen1|Equal0~4_combout\ & ( \clk_gen1|Equal0~5_combout\ & ( (\clk_gen1|Equal0~0_combout\ & (\clk_gen1|Equal0~1_combout\ & (\clk_gen1|Equal0~2_combout\ & \clk_gen1|Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen1|ALT_INV_Equal0~0_combout\,
	datab => \clk_gen1|ALT_INV_Equal0~1_combout\,
	datac => \clk_gen1|ALT_INV_Equal0~2_combout\,
	datad => \clk_gen1|ALT_INV_Equal0~3_combout\,
	datae => \clk_gen1|ALT_INV_Equal0~4_combout\,
	dataf => \clk_gen1|ALT_INV_Equal0~5_combout\,
	combout => \clk_gen1|Equal0~6_combout\);

\clk_gen1|fin~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|fin~0_combout\ = (!\clk_gen1|fin~q\) # (!\clk_gen1|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen1|ALT_INV_fin~q\,
	datab => \clk_gen1|ALT_INV_Equal0~6_combout\,
	combout => \clk_gen1|fin~0_combout\);

\clk_gen1|fin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|fin~0_combout\,
	ena => flags(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|fin~q\);

\stepper_1_step_out[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stepper_1_step_out(31),
	o => \stepper_1_step_out[31]~input_o\);

\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\stepper_1_step_out[28]~input_o\ & ( !\stepper_1_step_out[29]~input_o\ & ( (!\stepper_1_step_out[24]~input_o\ & (!\stepper_1_step_out[25]~input_o\ & (!\stepper_1_step_out[26]~input_o\ & !\stepper_1_step_out[27]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stepper_1_step_out[24]~input_o\,
	datab => \ALT_INV_stepper_1_step_out[25]~input_o\,
	datac => \ALT_INV_stepper_1_step_out[26]~input_o\,
	datad => \ALT_INV_stepper_1_step_out[27]~input_o\,
	datae => \ALT_INV_stepper_1_step_out[28]~input_o\,
	dataf => \ALT_INV_stepper_1_step_out[29]~input_o\,
	combout => \Equal0~0_combout\);

\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\stepper_1_step_out[22]~input_o\ & ( !\stepper_1_step_out[23]~input_o\ & ( (!\stepper_1_step_out[18]~input_o\ & (!\stepper_1_step_out[19]~input_o\ & (!\stepper_1_step_out[20]~input_o\ & !\stepper_1_step_out[21]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stepper_1_step_out[18]~input_o\,
	datab => \ALT_INV_stepper_1_step_out[19]~input_o\,
	datac => \ALT_INV_stepper_1_step_out[20]~input_o\,
	datad => \ALT_INV_stepper_1_step_out[21]~input_o\,
	datae => \ALT_INV_stepper_1_step_out[22]~input_o\,
	dataf => \ALT_INV_stepper_1_step_out[23]~input_o\,
	combout => \Equal0~1_combout\);

\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !\stepper_1_step_out[16]~input_o\ & ( !\stepper_1_step_out[17]~input_o\ & ( (!\stepper_1_step_out[12]~input_o\ & (!\stepper_1_step_out[13]~input_o\ & (!\stepper_1_step_out[14]~input_o\ & !\stepper_1_step_out[15]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stepper_1_step_out[12]~input_o\,
	datab => \ALT_INV_stepper_1_step_out[13]~input_o\,
	datac => \ALT_INV_stepper_1_step_out[14]~input_o\,
	datad => \ALT_INV_stepper_1_step_out[15]~input_o\,
	datae => \ALT_INV_stepper_1_step_out[16]~input_o\,
	dataf => \ALT_INV_stepper_1_step_out[17]~input_o\,
	combout => \Equal0~2_combout\);

\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !\stepper_1_step_out[4]~input_o\ & ( (!\stepper_1_step_out[0]~input_o\ & (!\stepper_1_step_out[1]~input_o\ & (!\stepper_1_step_out[2]~input_o\ & !\stepper_1_step_out[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stepper_1_step_out[0]~input_o\,
	datab => \ALT_INV_stepper_1_step_out[1]~input_o\,
	datac => \ALT_INV_stepper_1_step_out[2]~input_o\,
	datad => \ALT_INV_stepper_1_step_out[3]~input_o\,
	datae => \ALT_INV_stepper_1_step_out[4]~input_o\,
	combout => \Equal0~3_combout\);

\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !\stepper_1_step_out[10]~input_o\ & ( (!\stepper_1_step_out[6]~input_o\ & (!\stepper_1_step_out[7]~input_o\ & (!\stepper_1_step_out[8]~input_o\ & !\stepper_1_step_out[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stepper_1_step_out[6]~input_o\,
	datab => \ALT_INV_stepper_1_step_out[7]~input_o\,
	datac => \ALT_INV_stepper_1_step_out[8]~input_o\,
	datad => \ALT_INV_stepper_1_step_out[9]~input_o\,
	datae => \ALT_INV_stepper_1_step_out[10]~input_o\,
	combout => \Equal0~4_combout\);

\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( \Equal0~3_combout\ & ( \Equal0~4_combout\ & ( (!\stepper_1_step_out[5]~input_o\ & (!\stepper_1_step_out[11]~input_o\ & (\Equal0~1_combout\ & \Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stepper_1_step_out[5]~input_o\,
	datab => \ALT_INV_stepper_1_step_out[11]~input_o\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_Equal0~2_combout\,
	datae => \ALT_INV_Equal0~3_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Equal0~5_combout\);

\flags[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \flags[1]~0_combout\ = ( \Equal0~0_combout\ & ( \Equal0~5_combout\ & ( (!flags(1) & (((\stepper_1_step_out[31]~input_o\) # (\stepper_1_step_out[30]~input_o\)))) # (flags(1) & (\clk_gen1|fin~q\)) ) ) ) # ( !\Equal0~0_combout\ & ( \Equal0~5_combout\ & ( 
-- (!flags(1)) # (\clk_gen1|fin~q\) ) ) ) # ( \Equal0~0_combout\ & ( !\Equal0~5_combout\ & ( (!flags(1)) # (\clk_gen1|fin~q\) ) ) ) # ( !\Equal0~0_combout\ & ( !\Equal0~5_combout\ & ( (!flags(1)) # (\clk_gen1|fin~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110110001101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_flags(1),
	datab => \clk_gen1|ALT_INV_fin~q\,
	datac => \ALT_INV_stepper_1_step_out[30]~input_o\,
	datad => \ALT_INV_stepper_1_step_out[31]~input_o\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \flags[1]~0_combout\);

\flags[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \flags[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flags(1));

\stepper_step~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stepper_step~0_combout\ = (flags(1) & !\clk_gen1|fin~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_flags(1),
	datab => \clk_gen1|ALT_INV_fin~q\,
	combout => \stepper_step~0_combout\);

\stepper_step[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[0]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][0]~q\);

\stepper_step[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[1]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][1]~q\);

\stepper_step[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[2]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][2]~q\);

\stepper_step[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[3]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][3]~q\);

\stepper_step[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[4]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][4]~q\);

\stepper_step[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[5]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][5]~q\);

\stepper_step[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[6]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][6]~q\);

\stepper_step[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[7]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][7]~q\);

\stepper_step[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[8]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][8]~q\);

\stepper_step[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[9]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][9]~q\);

\stepper_step[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[10]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][10]~q\);

\stepper_step[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[11]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][11]~q\);

\stepper_step[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[12]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][12]~q\);

\stepper_step[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[13]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][13]~q\);

\stepper_step[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[14]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][14]~q\);

\stepper_step[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[15]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][15]~q\);

\stepper_step[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[16]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][16]~q\);

\stepper_step[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[17]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][17]~q\);

\stepper_step[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[18]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][18]~q\);

\stepper_step[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[19]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][19]~q\);

\stepper_step[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[20]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][20]~q\);

\stepper_step[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[21]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][21]~q\);

\stepper_step[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[22]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][22]~q\);

\stepper_step[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[23]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][23]~q\);

\stepper_step[0][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[24]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][24]~q\);

\stepper_step[0][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[25]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][25]~q\);

\stepper_step[0][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[26]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][26]~q\);

\stepper_step[0][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[27]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][27]~q\);

\stepper_step[0][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[28]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][28]~q\);

\stepper_step[0][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[29]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][29]~q\);

\stepper_step[0][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[30]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][30]~q\);

\stepper_step[0][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \stepper_1_step_out[31]~input_o\,
	sclr => \stepper_step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stepper_step[0][31]~q\);

\clk_gen1|signal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_gen1|signal~0_combout\ = (\clk_gen1|fin~q\ & ((!\clk_gen1|signal~q\ $ (\clk_gen1|Equal1~6_combout\)) # (\clk_gen1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010100010101010001010001010101000101000101010100010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_gen1|ALT_INV_fin~q\,
	datab => \clk_gen1|ALT_INV_signal~q\,
	datac => \clk_gen1|ALT_INV_Equal0~6_combout\,
	datad => \clk_gen1|ALT_INV_Equal1~6_combout\,
	combout => \clk_gen1|signal~0_combout\);

\clk_gen1|signal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \clk_gen1|signal~0_combout\,
	ena => flags(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_gen1|signal~q\);

ww_stepper_1_step_in(0) <= \stepper_1_step_in[0]~output_o\;

ww_stepper_1_step_in(1) <= \stepper_1_step_in[1]~output_o\;

ww_stepper_1_step_in(2) <= \stepper_1_step_in[2]~output_o\;

ww_stepper_1_step_in(3) <= \stepper_1_step_in[3]~output_o\;

ww_stepper_1_step_in(4) <= \stepper_1_step_in[4]~output_o\;

ww_stepper_1_step_in(5) <= \stepper_1_step_in[5]~output_o\;

ww_stepper_1_step_in(6) <= \stepper_1_step_in[6]~output_o\;

ww_stepper_1_step_in(7) <= \stepper_1_step_in[7]~output_o\;

ww_stepper_1_step_in(8) <= \stepper_1_step_in[8]~output_o\;

ww_stepper_1_step_in(9) <= \stepper_1_step_in[9]~output_o\;

ww_stepper_1_step_in(10) <= \stepper_1_step_in[10]~output_o\;

ww_stepper_1_step_in(11) <= \stepper_1_step_in[11]~output_o\;

ww_stepper_1_step_in(12) <= \stepper_1_step_in[12]~output_o\;

ww_stepper_1_step_in(13) <= \stepper_1_step_in[13]~output_o\;

ww_stepper_1_step_in(14) <= \stepper_1_step_in[14]~output_o\;

ww_stepper_1_step_in(15) <= \stepper_1_step_in[15]~output_o\;

ww_stepper_1_step_in(16) <= \stepper_1_step_in[16]~output_o\;

ww_stepper_1_step_in(17) <= \stepper_1_step_in[17]~output_o\;

ww_stepper_1_step_in(18) <= \stepper_1_step_in[18]~output_o\;

ww_stepper_1_step_in(19) <= \stepper_1_step_in[19]~output_o\;

ww_stepper_1_step_in(20) <= \stepper_1_step_in[20]~output_o\;

ww_stepper_1_step_in(21) <= \stepper_1_step_in[21]~output_o\;

ww_stepper_1_step_in(22) <= \stepper_1_step_in[22]~output_o\;

ww_stepper_1_step_in(23) <= \stepper_1_step_in[23]~output_o\;

ww_stepper_1_step_in(24) <= \stepper_1_step_in[24]~output_o\;

ww_stepper_1_step_in(25) <= \stepper_1_step_in[25]~output_o\;

ww_stepper_1_step_in(26) <= \stepper_1_step_in[26]~output_o\;

ww_stepper_1_step_in(27) <= \stepper_1_step_in[27]~output_o\;

ww_stepper_1_step_in(28) <= \stepper_1_step_in[28]~output_o\;

ww_stepper_1_step_in(29) <= \stepper_1_step_in[29]~output_o\;

ww_stepper_1_step_in(30) <= \stepper_1_step_in[30]~output_o\;

ww_stepper_1_step_in(31) <= \stepper_1_step_in[31]~output_o\;

ww_flags1(0) <= \flags1[0]~output_o\;

ww_flags1(1) <= \flags1[1]~output_o\;

ww_flags1(2) <= \flags1[2]~output_o\;

ww_reset_step1(0) <= \reset_step1[0]~output_o\;

ww_reset_step1(1) <= \reset_step1[1]~output_o\;

ww_fin(0) <= \fin[0]~output_o\;

ww_fin(1) <= \fin[1]~output_o\;

ww_fin(2) <= \fin[2]~output_o\;

ww_fin(3) <= \fin[3]~output_o\;

ww_fin(4) <= \fin[4]~output_o\;

ww_step_signal <= \step_signal~output_o\;
END structure;


