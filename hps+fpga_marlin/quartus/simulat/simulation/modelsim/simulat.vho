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

-- DATE "04/04/2019 00:09:20"

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

ENTITY 	analog_filter IS
    PORT (
	clk : IN std_logic;
	signal_in : IN std_logic_vector(11 DOWNTO 0);
	signal_out : BUFFER std_logic_vector(11 DOWNTO 0);
	outt : BUFFER std_logic_vector(16 DOWNTO 0)
	);
END analog_filter;

-- Design Ports Information
-- signal_out[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_out[1]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_out[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_out[3]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_out[4]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_out[5]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_out[6]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_out[7]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_out[8]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_out[9]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_out[10]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_out[11]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outt[0]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outt[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outt[2]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outt[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outt[4]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outt[5]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outt[6]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outt[7]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outt[8]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outt[9]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outt[10]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outt[11]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outt[12]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outt[13]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outt[14]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outt[15]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outt[16]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_in[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_in[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_in[2]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_in[3]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_in[4]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_in[5]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_in[6]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_in[7]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_in[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_in[9]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_in[10]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_in[11]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF analog_filter IS
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
SIGNAL ww_signal_in : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_signal_out : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_outt : std_logic_vector(16 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \num[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \num[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \num[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \num[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \num[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \signal_in[3]~input_o\ : std_logic;
SIGNAL \history[3][3]~q\ : std_logic;
SIGNAL \history[4][3]~q\ : std_logic;
SIGNAL \signal_in[2]~input_o\ : std_logic;
SIGNAL \history[4][2]~q\ : std_logic;
SIGNAL \history[3][2]~feeder_combout\ : std_logic;
SIGNAL \history[3][2]~q\ : std_logic;
SIGNAL \signal_in[1]~input_o\ : std_logic;
SIGNAL \history[4][1]~q\ : std_logic;
SIGNAL \history[3][1]~feeder_combout\ : std_logic;
SIGNAL \history[3][1]~q\ : std_logic;
SIGNAL \signal_in[0]~input_o\ : std_logic;
SIGNAL \history[4][0]~q\ : std_logic;
SIGNAL \history[3][0]~feeder_combout\ : std_logic;
SIGNAL \history[3][0]~q\ : std_logic;
SIGNAL \Add4~62\ : std_logic;
SIGNAL \Add4~66\ : std_logic;
SIGNAL \Add4~70\ : std_logic;
SIGNAL \Add4~73_sumout\ : std_logic;
SIGNAL \history[0][3]~q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \history~9_combout\ : std_logic;
SIGNAL \history[2][3]~q\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \history~11_combout\ : std_logic;
SIGNAL \history[1][3]~q\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \history~10_combout\ : std_logic;
SIGNAL \history[0][2]~q\ : std_logic;
SIGNAL \history~6_combout\ : std_logic;
SIGNAL \history[2][2]~q\ : std_logic;
SIGNAL \history~8_combout\ : std_logic;
SIGNAL \history[1][2]~q\ : std_logic;
SIGNAL \history~7_combout\ : std_logic;
SIGNAL \history[0][1]~q\ : std_logic;
SIGNAL \history~3_combout\ : std_logic;
SIGNAL \history[2][1]~q\ : std_logic;
SIGNAL \history~5_combout\ : std_logic;
SIGNAL \history[1][1]~q\ : std_logic;
SIGNAL \history~4_combout\ : std_logic;
SIGNAL \history[1][0]~q\ : std_logic;
SIGNAL \history~1_combout\ : std_logic;
SIGNAL \history[0][0]~q\ : std_logic;
SIGNAL \history~0_combout\ : std_logic;
SIGNAL \history[2][0]~q\ : std_logic;
SIGNAL \history~2_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add4~69_sumout\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add4~65_sumout\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add4~61_sumout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~13_sumout\ : std_logic;
SIGNAL \signal_in[6]~input_o\ : std_logic;
SIGNAL \history[3][6]~q\ : std_logic;
SIGNAL \history[4][6]~feeder_combout\ : std_logic;
SIGNAL \history[4][6]~q\ : std_logic;
SIGNAL \signal_in[5]~input_o\ : std_logic;
SIGNAL \history[4][5]~q\ : std_logic;
SIGNAL \history[3][5]~feeder_combout\ : std_logic;
SIGNAL \history[3][5]~q\ : std_logic;
SIGNAL \signal_in[4]~input_o\ : std_logic;
SIGNAL \history[4][4]~q\ : std_logic;
SIGNAL \history[3][4]~feeder_combout\ : std_logic;
SIGNAL \history[3][4]~q\ : std_logic;
SIGNAL \Add4~74\ : std_logic;
SIGNAL \Add4~78\ : std_logic;
SIGNAL \Add4~82\ : std_logic;
SIGNAL \Add4~85_sumout\ : std_logic;
SIGNAL \history[2][6]~q\ : std_logic;
SIGNAL \history~20_combout\ : std_logic;
SIGNAL \history[0][6]~q\ : std_logic;
SIGNAL \history~18_combout\ : std_logic;
SIGNAL \history[1][6]~q\ : std_logic;
SIGNAL \history~19_combout\ : std_logic;
SIGNAL \history[0][5]~q\ : std_logic;
SIGNAL \history~15_combout\ : std_logic;
SIGNAL \history[2][5]~q\ : std_logic;
SIGNAL \history~17_combout\ : std_logic;
SIGNAL \history[1][5]~q\ : std_logic;
SIGNAL \history~16_combout\ : std_logic;
SIGNAL \history[2][4]~q\ : std_logic;
SIGNAL \history~14_combout\ : std_logic;
SIGNAL \history[0][4]~q\ : std_logic;
SIGNAL \history~12_combout\ : std_logic;
SIGNAL \history[1][4]~q\ : std_logic;
SIGNAL \history~13_combout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add4~81_sumout\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add4~77_sumout\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~25_sumout\ : std_logic;
SIGNAL \signal_in[11]~input_o\ : std_logic;
SIGNAL \history[4][11]~q\ : std_logic;
SIGNAL \history[3][11]~q\ : std_logic;
SIGNAL \signal_in[10]~input_o\ : std_logic;
SIGNAL \history[4][10]~feeder_combout\ : std_logic;
SIGNAL \history[4][10]~q\ : std_logic;
SIGNAL \history[3][10]~q\ : std_logic;
SIGNAL \signal_in[9]~input_o\ : std_logic;
SIGNAL \history[3][9]~q\ : std_logic;
SIGNAL \history[4][9]~q\ : std_logic;
SIGNAL \signal_in[8]~input_o\ : std_logic;
SIGNAL \history[3][8]~feeder_combout\ : std_logic;
SIGNAL \history[3][8]~q\ : std_logic;
SIGNAL \history[4][8]~feeder_combout\ : std_logic;
SIGNAL \history[4][8]~q\ : std_logic;
SIGNAL \signal_in[7]~input_o\ : std_logic;
SIGNAL \history[4][7]~feeder_combout\ : std_logic;
SIGNAL \history[4][7]~q\ : std_logic;
SIGNAL \history[3][7]~feeder_combout\ : std_logic;
SIGNAL \history[3][7]~q\ : std_logic;
SIGNAL \Add4~86\ : std_logic;
SIGNAL \Add4~90\ : std_logic;
SIGNAL \Add4~94\ : std_logic;
SIGNAL \Add4~98\ : std_logic;
SIGNAL \Add4~102\ : std_logic;
SIGNAL \Add4~105_sumout\ : std_logic;
SIGNAL \history[2][11]~q\ : std_logic;
SIGNAL \history~35_combout\ : std_logic;
SIGNAL \history[0][11]~q\ : std_logic;
SIGNAL \history~33_combout\ : std_logic;
SIGNAL \history[1][11]~q\ : std_logic;
SIGNAL \history~34_combout\ : std_logic;
SIGNAL \history[2][10]~q\ : std_logic;
SIGNAL \history~32_combout\ : std_logic;
SIGNAL \history[1][10]~q\ : std_logic;
SIGNAL \history~31_combout\ : std_logic;
SIGNAL \history[0][10]~q\ : std_logic;
SIGNAL \history~30_combout\ : std_logic;
SIGNAL \history[2][9]~q\ : std_logic;
SIGNAL \history~29_combout\ : std_logic;
SIGNAL \history[1][9]~q\ : std_logic;
SIGNAL \history~28_combout\ : std_logic;
SIGNAL \history[0][9]~q\ : std_logic;
SIGNAL \history~27_combout\ : std_logic;
SIGNAL \history[1][8]~q\ : std_logic;
SIGNAL \history~25_combout\ : std_logic;
SIGNAL \history[2][8]~q\ : std_logic;
SIGNAL \history~26_combout\ : std_logic;
SIGNAL \history[0][8]~q\ : std_logic;
SIGNAL \history~24_combout\ : std_logic;
SIGNAL \history[2][7]~q\ : std_logic;
SIGNAL \history~23_combout\ : std_logic;
SIGNAL \history[0][7]~q\ : std_logic;
SIGNAL \history~21_combout\ : std_logic;
SIGNAL \history[1][7]~q\ : std_logic;
SIGNAL \history~22_combout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add4~101_sumout\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add4~97_sumout\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add4~93_sumout\ : std_logic;
SIGNAL \Add4~89_sumout\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~30\ : std_logic;
SIGNAL \Add4~34\ : std_logic;
SIGNAL \Add4~38\ : std_logic;
SIGNAL \Add4~42\ : std_logic;
SIGNAL \Add4~45_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Add4~106\ : std_logic;
SIGNAL \Add4~109_sumout\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add4~46\ : std_logic;
SIGNAL \Add4~50\ : std_logic;
SIGNAL \Add4~54\ : std_logic;
SIGNAL \Add4~57_sumout\ : std_logic;
SIGNAL \Add4~53_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~5_sumout\ : std_logic;
SIGNAL \Add4~49_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[9]~23_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~18_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[9]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[13]~35_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~9_sumout\ : std_logic;
SIGNAL \Add4~41_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[13]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[13]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~34_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~33_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~9_sumout\ : std_logic;
SIGNAL \Add4~37_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_13~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_13~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_13~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_13~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_13~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_13~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_13~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~32_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_13~9_sumout\ : std_logic;
SIGNAL \Add4~33_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[29]~13_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[29]~31_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~9_sumout\ : std_logic;
SIGNAL \Add4~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[29]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~9_sumout\ : std_logic;
SIGNAL \Add4~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[37]~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[41]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[41]~29_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~9_sumout\ : std_logic;
SIGNAL \Add4~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[37]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[37]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[41]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \Add4~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~25_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \Add4~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[57]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~17_sumout\ : std_logic;
SIGNAL \Add4~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~18_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~14_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~10_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~1_sumout\ : std_logic;
SIGNAL \out[0]~0_combout\ : std_logic;
SIGNAL \out[1]~1_combout\ : std_logic;
SIGNAL \out[2]~2_combout\ : std_logic;
SIGNAL \out[3]~3_combout\ : std_logic;
SIGNAL \out[4]~4_combout\ : std_logic;
SIGNAL \out[5]~5_combout\ : std_logic;
SIGNAL \out[6]~6_combout\ : std_logic;
SIGNAL \out[7]~7_combout\ : std_logic;
SIGNAL \out[8]~8_combout\ : std_logic;
SIGNAL \out[9]~9_combout\ : std_logic;
SIGNAL \out[10]~10_combout\ : std_logic;
SIGNAL \out[11]~11_combout\ : std_logic;
SIGNAL \out1[0]~feeder_combout\ : std_logic;
SIGNAL \out1[1]~feeder_combout\ : std_logic;
SIGNAL \out1[3]~feeder_combout\ : std_logic;
SIGNAL \out1[9]~feeder_combout\ : std_logic;
SIGNAL \out1[13]~feeder_combout\ : std_logic;
SIGNAL num : std_logic_vector(15 DOWNTO 0);
SIGNAL \out\ : std_logic_vector(16 DOWNTO 0);
SIGNAL out1 : std_logic_vector(16 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL ALT_INV_num : std_logic_vector(15 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_9~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_11~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_10~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_12~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_11~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_11~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_13~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_12~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_12~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_14~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_13~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_13~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_15~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_14~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_14~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_16~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_15~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_15~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_3~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_16~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_16~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_13~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_16~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ : std_logic;
SIGNAL \ALT_INV_num[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_num[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_num[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_num[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_num[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_signal_in[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_signal_in[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_signal_in[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_signal_in[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_signal_in[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_signal_in[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_signal_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_signal_in[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_signal_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_signal_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_signal_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_signal_in[0]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[13]~35_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~34_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~33_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~32_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[29]~31_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[41]~29_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[57]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~25_combout\ : std_logic;
SIGNAL \ALT_INV_history~35_combout\ : std_logic;
SIGNAL \ALT_INV_history[2][11]~q\ : std_logic;
SIGNAL \ALT_INV_history~34_combout\ : std_logic;
SIGNAL \ALT_INV_history[1][11]~q\ : std_logic;
SIGNAL \ALT_INV_history~33_combout\ : std_logic;
SIGNAL \ALT_INV_history[0][11]~q\ : std_logic;
SIGNAL \ALT_INV_history[3][11]~q\ : std_logic;
SIGNAL \ALT_INV_history[4][11]~q\ : std_logic;
SIGNAL \ALT_INV_history~32_combout\ : std_logic;
SIGNAL \ALT_INV_history[2][10]~q\ : std_logic;
SIGNAL \ALT_INV_history~31_combout\ : std_logic;
SIGNAL \ALT_INV_history[1][10]~q\ : std_logic;
SIGNAL \ALT_INV_history~30_combout\ : std_logic;
SIGNAL \ALT_INV_history[0][10]~q\ : std_logic;
SIGNAL \ALT_INV_history[3][10]~q\ : std_logic;
SIGNAL \ALT_INV_history[4][10]~q\ : std_logic;
SIGNAL \ALT_INV_history~29_combout\ : std_logic;
SIGNAL \ALT_INV_history[2][9]~q\ : std_logic;
SIGNAL \ALT_INV_history~28_combout\ : std_logic;
SIGNAL \ALT_INV_history[1][9]~q\ : std_logic;
SIGNAL \ALT_INV_history~27_combout\ : std_logic;
SIGNAL \ALT_INV_history[0][9]~q\ : std_logic;
SIGNAL \ALT_INV_history[3][9]~q\ : std_logic;
SIGNAL \ALT_INV_history[4][9]~q\ : std_logic;
SIGNAL \ALT_INV_history~26_combout\ : std_logic;
SIGNAL \ALT_INV_history[2][8]~q\ : std_logic;
SIGNAL \ALT_INV_history~25_combout\ : std_logic;
SIGNAL \ALT_INV_history[1][8]~q\ : std_logic;
SIGNAL \ALT_INV_history~24_combout\ : std_logic;
SIGNAL \ALT_INV_history[0][8]~q\ : std_logic;
SIGNAL \ALT_INV_history[3][8]~q\ : std_logic;
SIGNAL \ALT_INV_history[4][8]~q\ : std_logic;
SIGNAL \ALT_INV_history~23_combout\ : std_logic;
SIGNAL \ALT_INV_history[2][7]~q\ : std_logic;
SIGNAL \ALT_INV_history~22_combout\ : std_logic;
SIGNAL \ALT_INV_history[1][7]~q\ : std_logic;
SIGNAL \ALT_INV_history~21_combout\ : std_logic;
SIGNAL \ALT_INV_history[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_history[3][7]~q\ : std_logic;
SIGNAL \ALT_INV_history[4][7]~q\ : std_logic;
SIGNAL \ALT_INV_history~20_combout\ : std_logic;
SIGNAL \ALT_INV_history[2][6]~q\ : std_logic;
SIGNAL \ALT_INV_history~19_combout\ : std_logic;
SIGNAL \ALT_INV_history[1][6]~q\ : std_logic;
SIGNAL \ALT_INV_history~18_combout\ : std_logic;
SIGNAL \ALT_INV_history[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_history[3][6]~q\ : std_logic;
SIGNAL \ALT_INV_history[4][6]~q\ : std_logic;
SIGNAL \ALT_INV_history~17_combout\ : std_logic;
SIGNAL \ALT_INV_history[2][5]~q\ : std_logic;
SIGNAL \ALT_INV_history~16_combout\ : std_logic;
SIGNAL \ALT_INV_history[1][5]~q\ : std_logic;
SIGNAL \ALT_INV_history~15_combout\ : std_logic;
SIGNAL \ALT_INV_history[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_history[3][5]~q\ : std_logic;
SIGNAL \ALT_INV_history[4][5]~q\ : std_logic;
SIGNAL \ALT_INV_history~14_combout\ : std_logic;
SIGNAL \ALT_INV_history[2][4]~q\ : std_logic;
SIGNAL \ALT_INV_history~13_combout\ : std_logic;
SIGNAL \ALT_INV_history[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_history~12_combout\ : std_logic;
SIGNAL \ALT_INV_history[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_history[3][4]~q\ : std_logic;
SIGNAL \ALT_INV_history[4][4]~q\ : std_logic;
SIGNAL \ALT_INV_history~11_combout\ : std_logic;
SIGNAL \ALT_INV_history[2][3]~q\ : std_logic;
SIGNAL \ALT_INV_history~10_combout\ : std_logic;
SIGNAL \ALT_INV_history[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_history~9_combout\ : std_logic;
SIGNAL \ALT_INV_history[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_history[3][3]~q\ : std_logic;
SIGNAL \ALT_INV_history[4][3]~q\ : std_logic;
SIGNAL \ALT_INV_history~8_combout\ : std_logic;
SIGNAL \ALT_INV_history[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_history~7_combout\ : std_logic;
SIGNAL \ALT_INV_history[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_history~6_combout\ : std_logic;
SIGNAL \ALT_INV_history[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_history[3][2]~q\ : std_logic;
SIGNAL \ALT_INV_history[4][2]~q\ : std_logic;
SIGNAL \ALT_INV_history~5_combout\ : std_logic;
SIGNAL \ALT_INV_history[2][1]~q\ : std_logic;
SIGNAL \ALT_INV_history~4_combout\ : std_logic;
SIGNAL \ALT_INV_history[1][1]~q\ : std_logic;
SIGNAL \ALT_INV_history~3_combout\ : std_logic;
SIGNAL \ALT_INV_history[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_history[3][1]~q\ : std_logic;
SIGNAL \ALT_INV_history[4][1]~q\ : std_logic;
SIGNAL \ALT_INV_history~2_combout\ : std_logic;
SIGNAL \ALT_INV_history[2][0]~q\ : std_logic;
SIGNAL \ALT_INV_Decoder0~4_combout\ : std_logic;
SIGNAL \ALT_INV_history~1_combout\ : std_logic;
SIGNAL \ALT_INV_history[1][0]~q\ : std_logic;
SIGNAL \ALT_INV_Decoder0~3_combout\ : std_logic;
SIGNAL \ALT_INV_history~0_combout\ : std_logic;
SIGNAL \ALT_INV_history[0][0]~q\ : std_logic;
SIGNAL \ALT_INV_Decoder0~2_combout\ : std_logic;
SIGNAL \ALT_INV_history[3][0]~q\ : std_logic;
SIGNAL \ALT_INV_history[4][0]~q\ : std_logic;
SIGNAL \ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~23_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[13]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[13]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[29]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[29]~13_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[33]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[28]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[33]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[41]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[41]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_signal_in <= signal_in;
signal_out <= ww_signal_out;
outt <= ww_outt;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Div0|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_9~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~17_sumout\;
ALT_INV_num(1) <= NOT num(1);
ALT_INV_num(0) <= NOT num(0);
ALT_INV_num(2) <= NOT num(2);
ALT_INV_num(15) <= NOT num(15);
ALT_INV_num(14) <= NOT num(14);
ALT_INV_num(12) <= NOT num(12);
ALT_INV_num(5) <= NOT num(5);
ALT_INV_num(6) <= NOT num(6);
ALT_INV_num(7) <= NOT num(7);
ALT_INV_num(9) <= NOT num(9);
ALT_INV_num(8) <= NOT num(8);
ALT_INV_num(10) <= NOT num(10);
ALT_INV_num(11) <= NOT num(11);
ALT_INV_num(3) <= NOT num(3);
ALT_INV_num(13) <= NOT num(13);
ALT_INV_num(4) <= NOT num(4);
\Div0|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_10~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_9~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_9~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_9~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_9~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_11~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_11~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_10~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_10~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_10~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_10~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_12~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_12~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_11~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_11~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_11~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_11~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_13~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_13~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_12~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_12~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_12~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_12~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_14~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_14~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_13~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_13~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_13~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_13~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_15~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_15~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_14~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_14~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_14~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_14~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_16~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_16~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_15~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_15~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_15~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_15~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_3~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_3~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_16~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_16~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_16~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_16~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_3~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_3~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~9_sumout\;
\ALT_INV_Add1~53_sumout\ <= NOT \Add1~53_sumout\;
\ALT_INV_Add1~49_sumout\ <= NOT \Add1~49_sumout\;
\ALT_INV_Add4~109_sumout\ <= NOT \Add4~109_sumout\;
\ALT_INV_Add1~45_sumout\ <= NOT \Add1~45_sumout\;
\ALT_INV_Add4~105_sumout\ <= NOT \Add4~105_sumout\;
\ALT_INV_Add1~41_sumout\ <= NOT \Add1~41_sumout\;
\ALT_INV_Add4~101_sumout\ <= NOT \Add4~101_sumout\;
\ALT_INV_Add1~37_sumout\ <= NOT \Add1~37_sumout\;
\ALT_INV_Add4~97_sumout\ <= NOT \Add4~97_sumout\;
\ALT_INV_Add1~33_sumout\ <= NOT \Add1~33_sumout\;
\ALT_INV_Add4~93_sumout\ <= NOT \Add4~93_sumout\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
\ALT_INV_Add4~89_sumout\ <= NOT \Add4~89_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add4~85_sumout\ <= NOT \Add4~85_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add4~81_sumout\ <= NOT \Add4~81_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add4~77_sumout\ <= NOT \Add4~77_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add4~73_sumout\ <= NOT \Add4~73_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add4~69_sumout\ <= NOT \Add4~69_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add4~65_sumout\ <= NOT \Add4~65_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\ALT_INV_Add4~61_sumout\ <= NOT \Add4~61_sumout\;
\ALT_INV_Add4~57_sumout\ <= NOT \Add4~57_sumout\;
\ALT_INV_Add4~53_sumout\ <= NOT \Add4~53_sumout\;
\ALT_INV_Add4~49_sumout\ <= NOT \Add4~49_sumout\;
\ALT_INV_Add4~45_sumout\ <= NOT \Add4~45_sumout\;
\ALT_INV_Add4~41_sumout\ <= NOT \Add4~41_sumout\;
\ALT_INV_Add4~37_sumout\ <= NOT \Add4~37_sumout\;
\ALT_INV_Add4~33_sumout\ <= NOT \Add4~33_sumout\;
\ALT_INV_Add4~29_sumout\ <= NOT \Add4~29_sumout\;
\ALT_INV_Add4~25_sumout\ <= NOT \Add4~25_sumout\;
\ALT_INV_Add4~21_sumout\ <= NOT \Add4~21_sumout\;
\ALT_INV_Add4~17_sumout\ <= NOT \Add4~17_sumout\;
\ALT_INV_Add4~13_sumout\ <= NOT \Add4~13_sumout\;
\ALT_INV_Add4~9_sumout\ <= NOT \Add4~9_sumout\;
\ALT_INV_Add4~5_sumout\ <= NOT \Add4~5_sumout\;
\ALT_INV_Add4~1_sumout\ <= NOT \Add4~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_11~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_12~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_13~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_13~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_14~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_15~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_16~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_16~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_3~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_8~1_sumout\;
\ALT_INV_num[1]~DUPLICATE_q\ <= NOT \num[1]~DUPLICATE_q\;
\ALT_INV_num[0]~DUPLICATE_q\ <= NOT \num[0]~DUPLICATE_q\;
\ALT_INV_num[7]~DUPLICATE_q\ <= NOT \num[7]~DUPLICATE_q\;
\ALT_INV_num[13]~DUPLICATE_q\ <= NOT \num[13]~DUPLICATE_q\;
\ALT_INV_num[4]~DUPLICATE_q\ <= NOT \num[4]~DUPLICATE_q\;
\ALT_INV_signal_in[11]~input_o\ <= NOT \signal_in[11]~input_o\;
\ALT_INV_signal_in[10]~input_o\ <= NOT \signal_in[10]~input_o\;
\ALT_INV_signal_in[9]~input_o\ <= NOT \signal_in[9]~input_o\;
\ALT_INV_signal_in[8]~input_o\ <= NOT \signal_in[8]~input_o\;
\ALT_INV_signal_in[7]~input_o\ <= NOT \signal_in[7]~input_o\;
\ALT_INV_signal_in[6]~input_o\ <= NOT \signal_in[6]~input_o\;
\ALT_INV_signal_in[5]~input_o\ <= NOT \signal_in[5]~input_o\;
\ALT_INV_signal_in[4]~input_o\ <= NOT \signal_in[4]~input_o\;
\ALT_INV_signal_in[3]~input_o\ <= NOT \signal_in[3]~input_o\;
\ALT_INV_signal_in[2]~input_o\ <= NOT \signal_in[2]~input_o\;
\ALT_INV_signal_in[1]~input_o\ <= NOT \signal_in[1]~input_o\;
\ALT_INV_signal_in[0]~input_o\ <= NOT \signal_in[0]~input_o\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[13]~35_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[13]~35_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~34_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[17]~34_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~33_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[21]~33_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~32_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[25]~32_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[29]~31_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[29]~31_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~30_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[37]~30_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[41]~29_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[41]~29_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~28_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[45]~28_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~27_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[49]~27_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[57]~26_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[57]~26_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~25_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[53]~25_combout\;
\ALT_INV_history~35_combout\ <= NOT \history~35_combout\;
\ALT_INV_history[2][11]~q\ <= NOT \history[2][11]~q\;
\ALT_INV_history~34_combout\ <= NOT \history~34_combout\;
\ALT_INV_history[1][11]~q\ <= NOT \history[1][11]~q\;
\ALT_INV_history~33_combout\ <= NOT \history~33_combout\;
\ALT_INV_history[0][11]~q\ <= NOT \history[0][11]~q\;
\ALT_INV_history[3][11]~q\ <= NOT \history[3][11]~q\;
\ALT_INV_history[4][11]~q\ <= NOT \history[4][11]~q\;
\ALT_INV_history~32_combout\ <= NOT \history~32_combout\;
\ALT_INV_history[2][10]~q\ <= NOT \history[2][10]~q\;
\ALT_INV_history~31_combout\ <= NOT \history~31_combout\;
\ALT_INV_history[1][10]~q\ <= NOT \history[1][10]~q\;
\ALT_INV_history~30_combout\ <= NOT \history~30_combout\;
\ALT_INV_history[0][10]~q\ <= NOT \history[0][10]~q\;
\ALT_INV_history[3][10]~q\ <= NOT \history[3][10]~q\;
\ALT_INV_history[4][10]~q\ <= NOT \history[4][10]~q\;
\ALT_INV_history~29_combout\ <= NOT \history~29_combout\;
\ALT_INV_history[2][9]~q\ <= NOT \history[2][9]~q\;
\ALT_INV_history~28_combout\ <= NOT \history~28_combout\;
\ALT_INV_history[1][9]~q\ <= NOT \history[1][9]~q\;
\ALT_INV_history~27_combout\ <= NOT \history~27_combout\;
\ALT_INV_history[0][9]~q\ <= NOT \history[0][9]~q\;
\ALT_INV_history[3][9]~q\ <= NOT \history[3][9]~q\;
\ALT_INV_history[4][9]~q\ <= NOT \history[4][9]~q\;
\ALT_INV_history~26_combout\ <= NOT \history~26_combout\;
\ALT_INV_history[2][8]~q\ <= NOT \history[2][8]~q\;
\ALT_INV_history~25_combout\ <= NOT \history~25_combout\;
\ALT_INV_history[1][8]~q\ <= NOT \history[1][8]~q\;
\ALT_INV_history~24_combout\ <= NOT \history~24_combout\;
\ALT_INV_history[0][8]~q\ <= NOT \history[0][8]~q\;
\ALT_INV_history[3][8]~q\ <= NOT \history[3][8]~q\;
\ALT_INV_history[4][8]~q\ <= NOT \history[4][8]~q\;
\ALT_INV_history~23_combout\ <= NOT \history~23_combout\;
\ALT_INV_history[2][7]~q\ <= NOT \history[2][7]~q\;
\ALT_INV_history~22_combout\ <= NOT \history~22_combout\;
\ALT_INV_history[1][7]~q\ <= NOT \history[1][7]~q\;
\ALT_INV_history~21_combout\ <= NOT \history~21_combout\;
\ALT_INV_history[0][7]~q\ <= NOT \history[0][7]~q\;
\ALT_INV_history[3][7]~q\ <= NOT \history[3][7]~q\;
\ALT_INV_history[4][7]~q\ <= NOT \history[4][7]~q\;
\ALT_INV_history~20_combout\ <= NOT \history~20_combout\;
\ALT_INV_history[2][6]~q\ <= NOT \history[2][6]~q\;
\ALT_INV_history~19_combout\ <= NOT \history~19_combout\;
\ALT_INV_history[1][6]~q\ <= NOT \history[1][6]~q\;
\ALT_INV_history~18_combout\ <= NOT \history~18_combout\;
\ALT_INV_history[0][6]~q\ <= NOT \history[0][6]~q\;
\ALT_INV_history[3][6]~q\ <= NOT \history[3][6]~q\;
\ALT_INV_history[4][6]~q\ <= NOT \history[4][6]~q\;
\ALT_INV_history~17_combout\ <= NOT \history~17_combout\;
\ALT_INV_history[2][5]~q\ <= NOT \history[2][5]~q\;
\ALT_INV_history~16_combout\ <= NOT \history~16_combout\;
\ALT_INV_history[1][5]~q\ <= NOT \history[1][5]~q\;
\ALT_INV_history~15_combout\ <= NOT \history~15_combout\;
\ALT_INV_history[0][5]~q\ <= NOT \history[0][5]~q\;
\ALT_INV_history[3][5]~q\ <= NOT \history[3][5]~q\;
\ALT_INV_history[4][5]~q\ <= NOT \history[4][5]~q\;
\ALT_INV_history~14_combout\ <= NOT \history~14_combout\;
\ALT_INV_history[2][4]~q\ <= NOT \history[2][4]~q\;
\ALT_INV_history~13_combout\ <= NOT \history~13_combout\;
\ALT_INV_history[1][4]~q\ <= NOT \history[1][4]~q\;
\ALT_INV_history~12_combout\ <= NOT \history~12_combout\;
\ALT_INV_history[0][4]~q\ <= NOT \history[0][4]~q\;
\ALT_INV_history[3][4]~q\ <= NOT \history[3][4]~q\;
\ALT_INV_history[4][4]~q\ <= NOT \history[4][4]~q\;
\ALT_INV_history~11_combout\ <= NOT \history~11_combout\;
\ALT_INV_history[2][3]~q\ <= NOT \history[2][3]~q\;
\ALT_INV_history~10_combout\ <= NOT \history~10_combout\;
\ALT_INV_history[1][3]~q\ <= NOT \history[1][3]~q\;
\ALT_INV_history~9_combout\ <= NOT \history~9_combout\;
\ALT_INV_history[0][3]~q\ <= NOT \history[0][3]~q\;
\ALT_INV_history[3][3]~q\ <= NOT \history[3][3]~q\;
\ALT_INV_history[4][3]~q\ <= NOT \history[4][3]~q\;
\ALT_INV_history~8_combout\ <= NOT \history~8_combout\;
\ALT_INV_history[2][2]~q\ <= NOT \history[2][2]~q\;
\ALT_INV_history~7_combout\ <= NOT \history~7_combout\;
\ALT_INV_history[1][2]~q\ <= NOT \history[1][2]~q\;
\ALT_INV_history~6_combout\ <= NOT \history~6_combout\;
\ALT_INV_history[0][2]~q\ <= NOT \history[0][2]~q\;
\ALT_INV_history[3][2]~q\ <= NOT \history[3][2]~q\;
\ALT_INV_history[4][2]~q\ <= NOT \history[4][2]~q\;
\ALT_INV_history~5_combout\ <= NOT \history~5_combout\;
\ALT_INV_history[2][1]~q\ <= NOT \history[2][1]~q\;
\ALT_INV_history~4_combout\ <= NOT \history~4_combout\;
\ALT_INV_history[1][1]~q\ <= NOT \history[1][1]~q\;
\ALT_INV_history~3_combout\ <= NOT \history~3_combout\;
\ALT_INV_history[0][1]~q\ <= NOT \history[0][1]~q\;
\ALT_INV_history[3][1]~q\ <= NOT \history[3][1]~q\;
\ALT_INV_history[4][1]~q\ <= NOT \history[4][1]~q\;
\ALT_INV_history~2_combout\ <= NOT \history~2_combout\;
\ALT_INV_history[2][0]~q\ <= NOT \history[2][0]~q\;
\ALT_INV_Decoder0~4_combout\ <= NOT \Decoder0~4_combout\;
\ALT_INV_history~1_combout\ <= NOT \history~1_combout\;
\ALT_INV_history[1][0]~q\ <= NOT \history[1][0]~q\;
\ALT_INV_Decoder0~3_combout\ <= NOT \Decoder0~3_combout\;
\ALT_INV_history~0_combout\ <= NOT \history~0_combout\;
\ALT_INV_history[0][0]~q\ <= NOT \history[0][0]~q\;
\ALT_INV_Decoder0~2_combout\ <= NOT \Decoder0~2_combout\;
\ALT_INV_history[3][0]~q\ <= NOT \history[3][0]~q\;
\ALT_INV_history[4][0]~q\ <= NOT \history[4][0]~q\;
\ALT_INV_Decoder0~1_combout\ <= NOT \Decoder0~1_combout\;
\ALT_INV_Decoder0~0_combout\ <= NOT \Decoder0~0_combout\;
\ALT_INV_LessThan1~1_combout\ <= NOT \LessThan1~1_combout\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~24_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[9]~24_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~23_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[9]~23_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[13]~22_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[13]~22_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[13]~21_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[13]~21_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~20_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[17]~20_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~19_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[17]~19_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~18_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[21]~18_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~17_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[21]~17_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~16_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[25]~16_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~15_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[25]~15_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[29]~14_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[29]~14_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[29]~13_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[29]~13_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[33]~12_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[33]~12_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[28]~11_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[28]~11_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[33]~10_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[33]~10_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~9_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[37]~9_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~8_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[37]~8_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[41]~7_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[41]~7_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[41]~6_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[41]~6_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~5_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[45]~5_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~4_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[45]~4_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~3_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[49]~3_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~2_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[49]~2_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~1_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[53]~1_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~0_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[53]~0_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~17_sumout\;

-- Location: IOOBUF_X64_Y0_N19
\signal_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out\(0),
	devoe => ww_devoe,
	o => ww_signal_out(0));

-- Location: IOOBUF_X58_Y0_N76
\signal_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out\(1),
	devoe => ww_devoe,
	o => ww_signal_out(1));

-- Location: IOOBUF_X62_Y0_N53
\signal_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out\(2),
	devoe => ww_devoe,
	o => ww_signal_out(2));

-- Location: IOOBUF_X89_Y4_N79
\signal_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out\(3),
	devoe => ww_devoe,
	o => ww_signal_out(3));

-- Location: IOOBUF_X89_Y6_N56
\signal_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out\(4),
	devoe => ww_devoe,
	o => ww_signal_out(4));

-- Location: IOOBUF_X62_Y0_N19
\signal_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out\(5),
	devoe => ww_devoe,
	o => ww_signal_out(5));

-- Location: IOOBUF_X56_Y0_N2
\signal_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out\(6),
	devoe => ww_devoe,
	o => ww_signal_out(6));

-- Location: IOOBUF_X89_Y4_N45
\signal_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out\(7),
	devoe => ww_devoe,
	o => ww_signal_out(7));

-- Location: IOOBUF_X89_Y6_N39
\signal_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out\(8),
	devoe => ww_devoe,
	o => ww_signal_out(8));

-- Location: IOOBUF_X62_Y0_N36
\signal_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out\(9),
	devoe => ww_devoe,
	o => ww_signal_out(9));

-- Location: IOOBUF_X58_Y0_N42
\signal_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out\(10),
	devoe => ww_devoe,
	o => ww_signal_out(10));

-- Location: IOOBUF_X72_Y0_N53
\signal_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out\(11),
	devoe => ww_devoe,
	o => ww_signal_out(11));

-- Location: IOOBUF_X60_Y0_N2
\outt[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => out1(0),
	devoe => ww_devoe,
	o => ww_outt(0));

-- Location: IOOBUF_X60_Y0_N53
\outt[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => out1(1),
	devoe => ww_devoe,
	o => ww_outt(1));

-- Location: IOOBUF_X64_Y0_N53
\outt[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => out1(2),
	devoe => ww_devoe,
	o => ww_outt(2));

-- Location: IOOBUF_X60_Y0_N36
\outt[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => out1(3),
	devoe => ww_devoe,
	o => ww_outt(3));

-- Location: IOOBUF_X60_Y0_N19
\outt[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => out1(4),
	devoe => ww_devoe,
	o => ww_outt(4));

-- Location: IOOBUF_X66_Y0_N93
\outt[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => out1(5),
	devoe => ww_devoe,
	o => ww_outt(5));

-- Location: IOOBUF_X66_Y0_N76
\outt[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => out1(6),
	devoe => ww_devoe,
	o => ww_outt(6));

-- Location: IOOBUF_X89_Y4_N96
\outt[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => out1(7),
	devoe => ww_devoe,
	o => ww_outt(7));

-- Location: IOOBUF_X89_Y4_N62
\outt[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => out1(8),
	devoe => ww_devoe,
	o => ww_outt(8));

-- Location: IOOBUF_X89_Y6_N22
\outt[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => out1(9),
	devoe => ww_devoe,
	o => ww_outt(9));

-- Location: IOOBUF_X72_Y0_N19
\outt[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => out1(10),
	devoe => ww_devoe,
	o => ww_outt(10));

-- Location: IOOBUF_X66_Y0_N42
\outt[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => out1(11),
	devoe => ww_devoe,
	o => ww_outt(11));

-- Location: IOOBUF_X66_Y0_N59
\outt[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => out1(12),
	devoe => ww_devoe,
	o => ww_outt(12));

-- Location: IOOBUF_X64_Y0_N36
\outt[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => out1(13),
	devoe => ww_devoe,
	o => ww_outt(13));

-- Location: IOOBUF_X68_Y0_N53
\outt[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => out1(14),
	devoe => ww_devoe,
	o => ww_outt(14));

-- Location: IOOBUF_X8_Y0_N53
\outt[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_outt(15));

-- Location: IOOBUF_X89_Y36_N56
\outt[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_outt(16));

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

-- Location: LABCELL_X68_Y3_N0
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \num[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Add0~58\ = CARRY(( \num[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_num[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: LABCELL_X68_Y3_N12
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \num[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~2\ = CARRY(( \num[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_num[4]~DUPLICATE_q\,
	cin => \Add0~10\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X68_Y3_N15
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( num(5) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~38\ = CARRY(( num(5) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_num(5),
	cin => \Add0~2\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X68_Y3_N52
\num[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~37_sumout\,
	sclr => \LessThan1~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num(5));

-- Location: LABCELL_X68_Y3_N18
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( num(6) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~34\ = CARRY(( num(6) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_num(6),
	cin => \Add0~38\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X68_Y3_N32
\num[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~33_sumout\,
	sclr => \LessThan1~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num(6));

-- Location: LABCELL_X68_Y3_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \num[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( \num[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_num[7]~DUPLICATE_q\,
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X68_Y3_N55
\num[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~29_sumout\,
	sclr => \LessThan1~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \num[7]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y3_N24
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( num(8) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~22\ = CARRY(( num(8) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_num(8),
	cin => \Add0~30\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X68_Y3_N11
\num[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~21_sumout\,
	sclr => \LessThan1~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num(8));

-- Location: LABCELL_X68_Y3_N27
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( num(9) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( num(9) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_num(9),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X68_Y3_N29
\num[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num(9));

-- Location: LABCELL_X68_Y3_N30
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( num(10) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~18\ = CARRY(( num(10) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_num(10),
	cin => \Add0~26\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X68_Y3_N17
\num[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~17_sumout\,
	sclr => \LessThan1~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num(10));

-- Location: LABCELL_X68_Y3_N33
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( num(11) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( num(11) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_num(11),
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X68_Y3_N47
\num[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~13_sumout\,
	sclr => \LessThan1~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num(11));

-- Location: LABCELL_X68_Y3_N36
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( num(12) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~42\ = CARRY(( num(12) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_num(12),
	cin => \Add0~14\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X68_Y3_N59
\num[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~41_sumout\,
	sclr => \LessThan1~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num(12));

-- Location: LABCELL_X68_Y3_N39
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \num[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~6\ = CARRY(( \num[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_num[13]~DUPLICATE_q\,
	cin => \Add0~42\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X68_Y3_N40
\num[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \num[13]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y3_N42
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( num(14) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~46\ = CARRY(( num(14) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_num(14),
	cin => \Add0~6\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X68_Y3_N50
\num[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~45_sumout\,
	sclr => \LessThan1~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num(14));

-- Location: LABCELL_X68_Y3_N45
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( num(15) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_num(15),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\);

-- Location: FF_X68_Y3_N23
\num[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~49_sumout\,
	sclr => \LessThan1~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num(15));

-- Location: FF_X68_Y3_N56
\num[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~29_sumout\,
	sclr => \LessThan1~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num(7));

-- Location: LABCELL_X68_Y3_N51
\LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ( !num(5) & ( !num(14) & ( (!num(15) & (!num(12) & (!num(6) & !num(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_num(15),
	datab => ALT_INV_num(12),
	datac => ALT_INV_num(6),
	datad => ALT_INV_num(7),
	datae => ALT_INV_num(5),
	dataf => ALT_INV_num(14),
	combout => \LessThan1~1_combout\);

-- Location: FF_X70_Y3_N37
\num[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~1_sumout\,
	sclr => \LessThan1~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num(4));

-- Location: FF_X70_Y3_N1
\num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~57_sumout\,
	sclr => \LessThan1~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num(0));

-- Location: FF_X68_Y3_N41
\num[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num(13));

-- Location: LABCELL_X68_Y3_N57
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( !num(11) & ( !num(8) & ( (!num(9) & (!num(13) & (!num(10) & !num(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_num(9),
	datab => ALT_INV_num(13),
	datac => ALT_INV_num(10),
	datad => ALT_INV_num(3),
	datae => ALT_INV_num(11),
	dataf => ALT_INV_num(8),
	combout => \LessThan1~0_combout\);

-- Location: FF_X70_Y3_N31
\num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~61_sumout\,
	sclr => \LessThan1~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num(1));

-- Location: LABCELL_X70_Y3_N39
\LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ( num(2) & ( num(1) ) ) # ( !num(2) & ( num(1) & ( (!\LessThan1~1_combout\) # ((!\LessThan1~0_combout\) # (num(4))) ) ) ) # ( num(2) & ( !num(1) & ( (!\LessThan1~1_combout\) # (((!\LessThan1~0_combout\) # (num(0))) # (num(4))) ) ) 
-- ) # ( !num(2) & ( !num(1) & ( (!\LessThan1~1_combout\) # ((!\LessThan1~0_combout\) # (num(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111011111111111011111111111111101110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~1_combout\,
	datab => ALT_INV_num(4),
	datac => ALT_INV_num(0),
	datad => \ALT_INV_LessThan1~0_combout\,
	datae => ALT_INV_num(2),
	dataf => ALT_INV_num(1),
	combout => \LessThan1~2_combout\);

-- Location: FF_X70_Y3_N2
\num[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~57_sumout\,
	sclr => \LessThan1~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \num[0]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y3_N3
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \num[1]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( \num[1]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_num[1]~DUPLICATE_q\,
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X70_Y3_N32
\num[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~61_sumout\,
	sclr => \LessThan1~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \num[1]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y3_N6
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( num(2) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~54\ = CARRY(( num(2) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_num(2),
	cin => \Add0~62\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X70_Y3_N8
\num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~53_sumout\,
	sclr => \LessThan1~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num(2));

-- Location: LABCELL_X68_Y3_N9
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( num(3) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~10\ = CARRY(( num(3) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_num(3),
	cin => \Add0~54\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X68_Y3_N35
\num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~9_sumout\,
	sclr => \LessThan1~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num(3));

-- Location: FF_X70_Y3_N38
\num[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~1_sumout\,
	sclr => \LessThan1~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \num[4]~DUPLICATE_q\);

-- Location: LABCELL_X70_Y3_N6
\Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = ( num(2) & ( !num(0) & ( (!\num[4]~DUPLICATE_q\ & (!\num[1]~DUPLICATE_q\ & (\LessThan1~0_combout\ & \LessThan1~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_num[4]~DUPLICATE_q\,
	datab => \ALT_INV_num[1]~DUPLICATE_q\,
	datac => \ALT_INV_LessThan1~0_combout\,
	datad => \ALT_INV_LessThan1~1_combout\,
	datae => ALT_INV_num(2),
	dataf => ALT_INV_num(0),
	combout => \Decoder0~0_combout\);

-- Location: LABCELL_X70_Y3_N3
\Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = ( \LessThan1~1_combout\ & ( \LessThan1~0_combout\ & ( (\num[0]~DUPLICATE_q\ & (\num[1]~DUPLICATE_q\ & (!num(2) & !\num[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_num[0]~DUPLICATE_q\,
	datab => \ALT_INV_num[1]~DUPLICATE_q\,
	datac => ALT_INV_num(2),
	datad => \ALT_INV_num[4]~DUPLICATE_q\,
	datae => \ALT_INV_LessThan1~1_combout\,
	dataf => \ALT_INV_LessThan1~0_combout\,
	combout => \Decoder0~1_combout\);

-- Location: IOIBUF_X64_Y0_N1
\signal_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_in(3),
	o => \signal_in[3]~input_o\);

-- Location: FF_X71_Y3_N56
\history[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \signal_in[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[3][3]~q\);

-- Location: FF_X70_Y3_N52
\history[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \signal_in[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[4][3]~q\);

-- Location: IOIBUF_X70_Y0_N52
\signal_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_in(2),
	o => \signal_in[2]~input_o\);

-- Location: FF_X72_Y3_N8
\history[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \signal_in[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[4][2]~q\);

-- Location: LABCELL_X71_Y3_N57
\history[3][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \history[3][2]~feeder_combout\ = ( \signal_in[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_signal_in[2]~input_o\,
	combout => \history[3][2]~feeder_combout\);

-- Location: FF_X71_Y3_N58
\history[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history[3][2]~feeder_combout\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[3][2]~q\);

-- Location: IOIBUF_X68_Y0_N1
\signal_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_in(1),
	o => \signal_in[1]~input_o\);

-- Location: FF_X70_Y3_N49
\history[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \signal_in[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[4][1]~q\);

-- Location: LABCELL_X71_Y3_N45
\history[3][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \history[3][1]~feeder_combout\ = ( \signal_in[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_signal_in[1]~input_o\,
	combout => \history[3][1]~feeder_combout\);

-- Location: FF_X71_Y3_N46
\history[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history[3][1]~feeder_combout\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[3][1]~q\);

-- Location: IOIBUF_X72_Y0_N35
\signal_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_in(0),
	o => \signal_in[0]~input_o\);

-- Location: FF_X72_Y3_N41
\history[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \signal_in[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[4][0]~q\);

-- Location: LABCELL_X71_Y3_N48
\history[3][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \history[3][0]~feeder_combout\ = ( \signal_in[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_signal_in[0]~input_o\,
	combout => \history[3][0]~feeder_combout\);

-- Location: FF_X71_Y3_N50
\history[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history[3][0]~feeder_combout\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[3][0]~q\);

-- Location: LABCELL_X71_Y3_N0
\Add4~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~61_sumout\ = SUM(( (!\Decoder0~0_combout\ & ((\history[4][0]~q\))) # (\Decoder0~0_combout\ & (\signal_in[0]~input_o\)) ) + ( (!\Decoder0~1_combout\ & ((\history[3][0]~q\))) # (\Decoder0~1_combout\ & (\signal_in[0]~input_o\)) ) + ( !VCC ))
-- \Add4~62\ = CARRY(( (!\Decoder0~0_combout\ & ((\history[4][0]~q\))) # (\Decoder0~0_combout\ & (\signal_in[0]~input_o\)) ) + ( (!\Decoder0~1_combout\ & ((\history[3][0]~q\))) # (\Decoder0~1_combout\ & (\signal_in[0]~input_o\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~0_combout\,
	datab => \ALT_INV_Decoder0~1_combout\,
	datac => \ALT_INV_signal_in[0]~input_o\,
	datad => \ALT_INV_history[4][0]~q\,
	dataf => \ALT_INV_history[3][0]~q\,
	cin => GND,
	sumout => \Add4~61_sumout\,
	cout => \Add4~62\);

-- Location: LABCELL_X71_Y3_N3
\Add4~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~65_sumout\ = SUM(( (!\Decoder0~0_combout\ & ((\history[4][1]~q\))) # (\Decoder0~0_combout\ & (\signal_in[1]~input_o\)) ) + ( (!\Decoder0~1_combout\ & ((\history[3][1]~q\))) # (\Decoder0~1_combout\ & (\signal_in[1]~input_o\)) ) + ( \Add4~62\ ))
-- \Add4~66\ = CARRY(( (!\Decoder0~0_combout\ & ((\history[4][1]~q\))) # (\Decoder0~0_combout\ & (\signal_in[1]~input_o\)) ) + ( (!\Decoder0~1_combout\ & ((\history[3][1]~q\))) # (\Decoder0~1_combout\ & (\signal_in[1]~input_o\)) ) + ( \Add4~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~0_combout\,
	datab => \ALT_INV_Decoder0~1_combout\,
	datac => \ALT_INV_signal_in[1]~input_o\,
	datad => \ALT_INV_history[4][1]~q\,
	dataf => \ALT_INV_history[3][1]~q\,
	cin => \Add4~62\,
	sumout => \Add4~65_sumout\,
	cout => \Add4~66\);

-- Location: LABCELL_X71_Y3_N6
\Add4~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~69_sumout\ = SUM(( (!\Decoder0~0_combout\ & ((\history[4][2]~q\))) # (\Decoder0~0_combout\ & (\signal_in[2]~input_o\)) ) + ( (!\Decoder0~1_combout\ & ((\history[3][2]~q\))) # (\Decoder0~1_combout\ & (\signal_in[2]~input_o\)) ) + ( \Add4~66\ ))
-- \Add4~70\ = CARRY(( (!\Decoder0~0_combout\ & ((\history[4][2]~q\))) # (\Decoder0~0_combout\ & (\signal_in[2]~input_o\)) ) + ( (!\Decoder0~1_combout\ & ((\history[3][2]~q\))) # (\Decoder0~1_combout\ & (\signal_in[2]~input_o\)) ) + ( \Add4~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~0_combout\,
	datab => \ALT_INV_Decoder0~1_combout\,
	datac => \ALT_INV_signal_in[2]~input_o\,
	datad => \ALT_INV_history[4][2]~q\,
	dataf => \ALT_INV_history[3][2]~q\,
	cin => \Add4~66\,
	sumout => \Add4~69_sumout\,
	cout => \Add4~70\);

-- Location: LABCELL_X71_Y3_N9
\Add4~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~73_sumout\ = SUM(( (!\Decoder0~1_combout\ & ((\history[3][3]~q\))) # (\Decoder0~1_combout\ & (\signal_in[3]~input_o\)) ) + ( (!\Decoder0~0_combout\ & ((\history[4][3]~q\))) # (\Decoder0~0_combout\ & (\signal_in[3]~input_o\)) ) + ( \Add4~70\ ))
-- \Add4~74\ = CARRY(( (!\Decoder0~1_combout\ & ((\history[3][3]~q\))) # (\Decoder0~1_combout\ & (\signal_in[3]~input_o\)) ) + ( (!\Decoder0~0_combout\ & ((\history[4][3]~q\))) # (\Decoder0~0_combout\ & (\signal_in[3]~input_o\)) ) + ( \Add4~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~0_combout\,
	datab => \ALT_INV_Decoder0~1_combout\,
	datac => \ALT_INV_signal_in[3]~input_o\,
	datad => \ALT_INV_history[3][3]~q\,
	dataf => \ALT_INV_history[4][3]~q\,
	cin => \Add4~70\,
	sumout => \Add4~73_sumout\,
	cout => \Add4~74\);

-- Location: FF_X72_Y3_N53
\history[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[0][3]~q\);

-- Location: LABCELL_X70_Y3_N51
\Decoder0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = ( \LessThan1~0_combout\ & ( !num(2) & ( (!\num[0]~DUPLICATE_q\ & (!\num[1]~DUPLICATE_q\ & (\LessThan1~1_combout\ & !\num[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_num[0]~DUPLICATE_q\,
	datab => \ALT_INV_num[1]~DUPLICATE_q\,
	datac => \ALT_INV_LessThan1~1_combout\,
	datad => \ALT_INV_num[4]~DUPLICATE_q\,
	datae => \ALT_INV_LessThan1~0_combout\,
	dataf => ALT_INV_num(2),
	combout => \Decoder0~2_combout\);

-- Location: MLABCELL_X72_Y3_N51
\history~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~9_combout\ = ( \history[0][3]~q\ & ( \Decoder0~2_combout\ & ( \signal_in[3]~input_o\ ) ) ) # ( !\history[0][3]~q\ & ( \Decoder0~2_combout\ & ( \signal_in[3]~input_o\ ) ) ) # ( \history[0][3]~q\ & ( !\Decoder0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_in[3]~input_o\,
	datae => \ALT_INV_history[0][3]~q\,
	dataf => \ALT_INV_Decoder0~2_combout\,
	combout => \history~9_combout\);

-- Location: FF_X70_Y3_N5
\history[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \history~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[2][3]~q\);

-- Location: LABCELL_X70_Y3_N33
\Decoder0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = ( \LessThan1~0_combout\ & ( \LessThan1~1_combout\ & ( (!\num[0]~DUPLICATE_q\ & (\num[1]~DUPLICATE_q\ & (!num(2) & !\num[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_num[0]~DUPLICATE_q\,
	datab => \ALT_INV_num[1]~DUPLICATE_q\,
	datac => ALT_INV_num(2),
	datad => \ALT_INV_num[4]~DUPLICATE_q\,
	datae => \ALT_INV_LessThan1~0_combout\,
	dataf => \ALT_INV_LessThan1~1_combout\,
	combout => \Decoder0~4_combout\);

-- Location: LABCELL_X70_Y3_N15
\history~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~11_combout\ = ( \Decoder0~4_combout\ & ( \signal_in[3]~input_o\ ) ) # ( !\Decoder0~4_combout\ & ( \history[2][3]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_history[2][3]~q\,
	datac => \ALT_INV_signal_in[3]~input_o\,
	dataf => \ALT_INV_Decoder0~4_combout\,
	combout => \history~11_combout\);

-- Location: FF_X70_Y3_N59
\history[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[1][3]~q\);

-- Location: LABCELL_X70_Y3_N9
\Decoder0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = ( \num[0]~DUPLICATE_q\ & ( !num(2) & ( (!\num[4]~DUPLICATE_q\ & (!\num[1]~DUPLICATE_q\ & (\LessThan1~1_combout\ & \LessThan1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_num[4]~DUPLICATE_q\,
	datab => \ALT_INV_num[1]~DUPLICATE_q\,
	datac => \ALT_INV_LessThan1~1_combout\,
	datad => \ALT_INV_LessThan1~0_combout\,
	datae => \ALT_INV_num[0]~DUPLICATE_q\,
	dataf => ALT_INV_num(2),
	combout => \Decoder0~3_combout\);

-- Location: LABCELL_X70_Y3_N57
\history~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~10_combout\ = ( \Decoder0~3_combout\ & ( \signal_in[3]~input_o\ ) ) # ( !\Decoder0~3_combout\ & ( \history[1][3]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_in[3]~input_o\,
	datad => \ALT_INV_history[1][3]~q\,
	dataf => \ALT_INV_Decoder0~3_combout\,
	combout => \history~10_combout\);

-- Location: FF_X73_Y3_N50
\history[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[0][2]~q\);

-- Location: LABCELL_X73_Y3_N48
\history~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~6_combout\ = ( \Decoder0~2_combout\ & ( \signal_in[2]~input_o\ ) ) # ( !\Decoder0~2_combout\ & ( \history[0][2]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_signal_in[2]~input_o\,
	datad => \ALT_INV_history[0][2]~q\,
	dataf => \ALT_INV_Decoder0~2_combout\,
	combout => \history~6_combout\);

-- Location: FF_X70_Y3_N26
\history[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \history~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[2][2]~q\);

-- Location: LABCELL_X70_Y3_N45
\history~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~8_combout\ = ( \Decoder0~4_combout\ & ( \signal_in[2]~input_o\ ) ) # ( !\Decoder0~4_combout\ & ( \history[2][2]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_history[2][2]~q\,
	datac => \ALT_INV_signal_in[2]~input_o\,
	dataf => \ALT_INV_Decoder0~4_combout\,
	combout => \history~8_combout\);

-- Location: FF_X70_Y3_N41
\history[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \history~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[1][2]~q\);

-- Location: LABCELL_X70_Y3_N18
\history~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~7_combout\ = ( \Decoder0~3_combout\ & ( \signal_in[2]~input_o\ ) ) # ( !\Decoder0~3_combout\ & ( \history[1][2]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_history[1][2]~q\,
	datac => \ALT_INV_signal_in[2]~input_o\,
	dataf => \ALT_INV_Decoder0~3_combout\,
	combout => \history~7_combout\);

-- Location: FF_X73_Y3_N53
\history[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[0][1]~q\);

-- Location: LABCELL_X73_Y3_N51
\history~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~3_combout\ = ( \Decoder0~2_combout\ & ( \signal_in[1]~input_o\ ) ) # ( !\Decoder0~2_combout\ & ( \history[0][1]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_in[1]~input_o\,
	datad => \ALT_INV_history[0][1]~q\,
	dataf => \ALT_INV_Decoder0~2_combout\,
	combout => \history~3_combout\);

-- Location: FF_X73_Y3_N47
\history[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[2][1]~q\);

-- Location: LABCELL_X73_Y3_N45
\history~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~5_combout\ = ( \Decoder0~4_combout\ & ( \signal_in[1]~input_o\ ) ) # ( !\Decoder0~4_combout\ & ( \history[2][1]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_in[1]~input_o\,
	datad => \ALT_INV_history[2][1]~q\,
	dataf => \ALT_INV_Decoder0~4_combout\,
	combout => \history~5_combout\);

-- Location: FF_X73_Y3_N56
\history[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[1][1]~q\);

-- Location: LABCELL_X73_Y3_N54
\history~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~4_combout\ = ( \Decoder0~3_combout\ & ( \signal_in[1]~input_o\ ) ) # ( !\Decoder0~3_combout\ & ( \history[1][1]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_signal_in[1]~input_o\,
	datad => \ALT_INV_history[1][1]~q\,
	dataf => \ALT_INV_Decoder0~3_combout\,
	combout => \history~4_combout\);

-- Location: FF_X74_Y3_N59
\history[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[1][0]~q\);

-- Location: LABCELL_X74_Y3_N57
\history~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~1_combout\ = ( \Decoder0~3_combout\ & ( \signal_in[0]~input_o\ ) ) # ( !\Decoder0~3_combout\ & ( \history[1][0]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_in[0]~input_o\,
	datad => \ALT_INV_history[1][0]~q\,
	dataf => \ALT_INV_Decoder0~3_combout\,
	combout => \history~1_combout\);

-- Location: FF_X72_Y3_N56
\history[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[0][0]~q\);

-- Location: MLABCELL_X72_Y3_N54
\history~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~0_combout\ = ( \Decoder0~2_combout\ & ( \signal_in[0]~input_o\ ) ) # ( !\Decoder0~2_combout\ & ( \history[0][0]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_signal_in[0]~input_o\,
	datad => \ALT_INV_history[0][0]~q\,
	dataf => \ALT_INV_Decoder0~2_combout\,
	combout => \history~0_combout\);

-- Location: FF_X74_Y3_N44
\history[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[2][0]~q\);

-- Location: LABCELL_X74_Y3_N42
\history~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~2_combout\ = ( \Decoder0~4_combout\ & ( \signal_in[0]~input_o\ ) ) # ( !\Decoder0~4_combout\ & ( \history[2][0]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_signal_in[0]~input_o\,
	datad => \ALT_INV_history[2][0]~q\,
	dataf => \ALT_INV_Decoder0~4_combout\,
	combout => \history~2_combout\);

-- Location: LABCELL_X73_Y3_N0
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( !\history~1_combout\ $ (!\history~0_combout\ $ (\history~2_combout\)) ) + ( !VCC ) + ( !VCC ))
-- \Add1~2\ = CARRY(( !\history~1_combout\ $ (!\history~0_combout\ $ (\history~2_combout\)) ) + ( !VCC ) + ( !VCC ))
-- \Add1~3\ = SHARE((!\history~1_combout\ & (\history~0_combout\ & \history~2_combout\)) # (\history~1_combout\ & ((\history~2_combout\) # (\history~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_history~1_combout\,
	datac => \ALT_INV_history~0_combout\,
	datad => \ALT_INV_history~2_combout\,
	cin => GND,
	sharein => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\,
	shareout => \Add1~3\);

-- Location: LABCELL_X73_Y3_N3
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( !\history~3_combout\ $ (!\history~5_combout\ $ (\history~4_combout\)) ) + ( \Add1~3\ ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( !\history~3_combout\ $ (!\history~5_combout\ $ (\history~4_combout\)) ) + ( \Add1~3\ ) + ( \Add1~2\ ))
-- \Add1~7\ = SHARE((!\history~3_combout\ & (\history~5_combout\ & \history~4_combout\)) # (\history~3_combout\ & ((\history~4_combout\) # (\history~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_history~3_combout\,
	datac => \ALT_INV_history~5_combout\,
	datad => \ALT_INV_history~4_combout\,
	cin => \Add1~2\,
	sharein => \Add1~3\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\,
	shareout => \Add1~7\);

-- Location: LABCELL_X73_Y3_N6
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( !\history~6_combout\ $ (!\history~8_combout\ $ (\history~7_combout\)) ) + ( \Add1~7\ ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( !\history~6_combout\ $ (!\history~8_combout\ $ (\history~7_combout\)) ) + ( \Add1~7\ ) + ( \Add1~6\ ))
-- \Add1~11\ = SHARE((!\history~6_combout\ & (\history~8_combout\ & \history~7_combout\)) # (\history~6_combout\ & ((\history~7_combout\) # (\history~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_history~6_combout\,
	datac => \ALT_INV_history~8_combout\,
	datad => \ALT_INV_history~7_combout\,
	cin => \Add1~6\,
	sharein => \Add1~7\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\,
	shareout => \Add1~11\);

-- Location: LABCELL_X73_Y3_N9
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( !\history~9_combout\ $ (!\history~11_combout\ $ (\history~10_combout\)) ) + ( \Add1~11\ ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( !\history~9_combout\ $ (!\history~11_combout\ $ (\history~10_combout\)) ) + ( \Add1~11\ ) + ( \Add1~10\ ))
-- \Add1~15\ = SHARE((!\history~9_combout\ & (\history~11_combout\ & \history~10_combout\)) # (\history~9_combout\ & ((\history~10_combout\) # (\history~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_history~9_combout\,
	datac => \ALT_INV_history~11_combout\,
	datad => \ALT_INV_history~10_combout\,
	cin => \Add1~10\,
	sharein => \Add1~11\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\,
	shareout => \Add1~15\);

-- Location: MLABCELL_X72_Y3_N0
\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_sumout\ = SUM(( \Add1~1_sumout\ ) + ( \Add4~61_sumout\ ) + ( !VCC ))
-- \Add4~2\ = CARRY(( \Add1~1_sumout\ ) + ( \Add4~61_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add4~61_sumout\,
	datad => \ALT_INV_Add1~1_sumout\,
	cin => GND,
	sumout => \Add4~1_sumout\,
	cout => \Add4~2\);

-- Location: MLABCELL_X72_Y3_N3
\Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~5_sumout\ = SUM(( \Add1~5_sumout\ ) + ( \Add4~65_sumout\ ) + ( \Add4~2\ ))
-- \Add4~6\ = CARRY(( \Add1~5_sumout\ ) + ( \Add4~65_sumout\ ) + ( \Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~65_sumout\,
	datad => \ALT_INV_Add1~5_sumout\,
	cin => \Add4~2\,
	sumout => \Add4~5_sumout\,
	cout => \Add4~6\);

-- Location: MLABCELL_X72_Y3_N6
\Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~9_sumout\ = SUM(( \Add1~9_sumout\ ) + ( \Add4~69_sumout\ ) + ( \Add4~6\ ))
-- \Add4~10\ = CARRY(( \Add1~9_sumout\ ) + ( \Add4~69_sumout\ ) + ( \Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~69_sumout\,
	datad => \ALT_INV_Add1~9_sumout\,
	cin => \Add4~6\,
	sumout => \Add4~9_sumout\,
	cout => \Add4~10\);

-- Location: MLABCELL_X72_Y3_N9
\Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~13_sumout\ = SUM(( \Add1~13_sumout\ ) + ( \Add4~73_sumout\ ) + ( \Add4~10\ ))
-- \Add4~14\ = CARRY(( \Add1~13_sumout\ ) + ( \Add4~73_sumout\ ) + ( \Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~73_sumout\,
	datad => \ALT_INV_Add1~13_sumout\,
	cin => \Add4~10\,
	sumout => \Add4~13_sumout\,
	cout => \Add4~14\);

-- Location: IOIBUF_X70_Y0_N35
\signal_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_in(6),
	o => \signal_in[6]~input_o\);

-- Location: FF_X71_Y3_N38
\history[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \signal_in[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[3][6]~q\);

-- Location: LABCELL_X70_Y2_N57
\history[4][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \history[4][6]~feeder_combout\ = ( \signal_in[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_signal_in[6]~input_o\,
	combout => \history[4][6]~feeder_combout\);

-- Location: FF_X70_Y2_N58
\history[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history[4][6]~feeder_combout\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[4][6]~q\);

-- Location: IOIBUF_X70_Y0_N18
\signal_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_in(5),
	o => \signal_in[5]~input_o\);

-- Location: FF_X72_Y3_N11
\history[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \signal_in[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[4][5]~q\);

-- Location: LABCELL_X71_Y3_N42
\history[3][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \history[3][5]~feeder_combout\ = ( \signal_in[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_signal_in[5]~input_o\,
	combout => \history[3][5]~feeder_combout\);

-- Location: FF_X71_Y3_N44
\history[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history[3][5]~feeder_combout\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[3][5]~q\);

-- Location: IOIBUF_X68_Y0_N18
\signal_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_in(4),
	o => \signal_in[4]~input_o\);

-- Location: FF_X72_Y3_N29
\history[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \signal_in[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[4][4]~q\);

-- Location: LABCELL_X71_Y3_N51
\history[3][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \history[3][4]~feeder_combout\ = ( \signal_in[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_signal_in[4]~input_o\,
	combout => \history[3][4]~feeder_combout\);

-- Location: FF_X71_Y3_N53
\history[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history[3][4]~feeder_combout\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[3][4]~q\);

-- Location: LABCELL_X71_Y3_N12
\Add4~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~77_sumout\ = SUM(( (!\Decoder0~0_combout\ & ((\history[4][4]~q\))) # (\Decoder0~0_combout\ & (\signal_in[4]~input_o\)) ) + ( (!\Decoder0~1_combout\ & ((\history[3][4]~q\))) # (\Decoder0~1_combout\ & (\signal_in[4]~input_o\)) ) + ( \Add4~74\ ))
-- \Add4~78\ = CARRY(( (!\Decoder0~0_combout\ & ((\history[4][4]~q\))) # (\Decoder0~0_combout\ & (\signal_in[4]~input_o\)) ) + ( (!\Decoder0~1_combout\ & ((\history[3][4]~q\))) # (\Decoder0~1_combout\ & (\signal_in[4]~input_o\)) ) + ( \Add4~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~0_combout\,
	datab => \ALT_INV_Decoder0~1_combout\,
	datac => \ALT_INV_signal_in[4]~input_o\,
	datad => \ALT_INV_history[4][4]~q\,
	dataf => \ALT_INV_history[3][4]~q\,
	cin => \Add4~74\,
	sumout => \Add4~77_sumout\,
	cout => \Add4~78\);

-- Location: LABCELL_X71_Y3_N15
\Add4~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~81_sumout\ = SUM(( (!\Decoder0~0_combout\ & ((\history[4][5]~q\))) # (\Decoder0~0_combout\ & (\signal_in[5]~input_o\)) ) + ( (!\Decoder0~1_combout\ & ((\history[3][5]~q\))) # (\Decoder0~1_combout\ & (\signal_in[5]~input_o\)) ) + ( \Add4~78\ ))
-- \Add4~82\ = CARRY(( (!\Decoder0~0_combout\ & ((\history[4][5]~q\))) # (\Decoder0~0_combout\ & (\signal_in[5]~input_o\)) ) + ( (!\Decoder0~1_combout\ & ((\history[3][5]~q\))) # (\Decoder0~1_combout\ & (\signal_in[5]~input_o\)) ) + ( \Add4~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~0_combout\,
	datab => \ALT_INV_Decoder0~1_combout\,
	datac => \ALT_INV_signal_in[5]~input_o\,
	datad => \ALT_INV_history[4][5]~q\,
	dataf => \ALT_INV_history[3][5]~q\,
	cin => \Add4~78\,
	sumout => \Add4~81_sumout\,
	cout => \Add4~82\);

-- Location: LABCELL_X71_Y3_N18
\Add4~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~85_sumout\ = SUM(( (!\Decoder0~1_combout\ & ((\history[3][6]~q\))) # (\Decoder0~1_combout\ & (\signal_in[6]~input_o\)) ) + ( (!\Decoder0~0_combout\ & ((\history[4][6]~q\))) # (\Decoder0~0_combout\ & (\signal_in[6]~input_o\)) ) + ( \Add4~82\ ))
-- \Add4~86\ = CARRY(( (!\Decoder0~1_combout\ & ((\history[3][6]~q\))) # (\Decoder0~1_combout\ & (\signal_in[6]~input_o\)) ) + ( (!\Decoder0~0_combout\ & ((\history[4][6]~q\))) # (\Decoder0~0_combout\ & (\signal_in[6]~input_o\)) ) + ( \Add4~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~0_combout\,
	datab => \ALT_INV_Decoder0~1_combout\,
	datac => \ALT_INV_signal_in[6]~input_o\,
	datad => \ALT_INV_history[3][6]~q\,
	dataf => \ALT_INV_history[4][6]~q\,
	cin => \Add4~82\,
	sumout => \Add4~85_sumout\,
	cout => \Add4~86\);

-- Location: FF_X70_Y3_N44
\history[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \history~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[2][6]~q\);

-- Location: LABCELL_X70_Y3_N54
\history~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~20_combout\ = ( \Decoder0~4_combout\ & ( \signal_in[6]~input_o\ ) ) # ( !\Decoder0~4_combout\ & ( \history[2][6]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_history[2][6]~q\,
	datac => \ALT_INV_signal_in[6]~input_o\,
	dataf => \ALT_INV_Decoder0~4_combout\,
	combout => \history~20_combout\);

-- Location: FF_X74_Y3_N14
\history[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \history~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[0][6]~q\);

-- Location: LABCELL_X74_Y3_N39
\history~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~18_combout\ = ( \Decoder0~2_combout\ & ( \signal_in[6]~input_o\ ) ) # ( !\Decoder0~2_combout\ & ( \history[0][6]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_signal_in[6]~input_o\,
	datac => \ALT_INV_history[0][6]~q\,
	dataf => \ALT_INV_Decoder0~2_combout\,
	combout => \history~18_combout\);

-- Location: FF_X70_Y3_N23
\history[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[1][6]~q\);

-- Location: LABCELL_X70_Y3_N21
\history~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~19_combout\ = ( \Decoder0~3_combout\ & ( \signal_in[6]~input_o\ ) ) # ( !\Decoder0~3_combout\ & ( \history[1][6]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_in[6]~input_o\,
	datad => \ALT_INV_history[1][6]~q\,
	dataf => \ALT_INV_Decoder0~3_combout\,
	combout => \history~19_combout\);

-- Location: FF_X74_Y3_N17
\history[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[0][5]~q\);

-- Location: LABCELL_X74_Y3_N15
\history~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~15_combout\ = ( \history[0][5]~q\ & ( \Decoder0~2_combout\ & ( \signal_in[5]~input_o\ ) ) ) # ( !\history[0][5]~q\ & ( \Decoder0~2_combout\ & ( \signal_in[5]~input_o\ ) ) ) # ( \history[0][5]~q\ & ( !\Decoder0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_in[5]~input_o\,
	datae => \ALT_INV_history[0][5]~q\,
	dataf => \ALT_INV_Decoder0~2_combout\,
	combout => \history~15_combout\);

-- Location: FF_X70_Y3_N29
\history[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[2][5]~q\);

-- Location: LABCELL_X70_Y3_N27
\history~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~17_combout\ = ( \history[2][5]~q\ & ( \Decoder0~4_combout\ & ( \signal_in[5]~input_o\ ) ) ) # ( !\history[2][5]~q\ & ( \Decoder0~4_combout\ & ( \signal_in[5]~input_o\ ) ) ) # ( \history[2][5]~q\ & ( !\Decoder0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_in[5]~input_o\,
	datae => \ALT_INV_history[2][5]~q\,
	dataf => \ALT_INV_Decoder0~4_combout\,
	combout => \history~17_combout\);

-- Location: FF_X70_Y3_N17
\history[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \history~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[1][5]~q\);

-- Location: LABCELL_X70_Y3_N42
\history~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~16_combout\ = ( \Decoder0~3_combout\ & ( \signal_in[5]~input_o\ ) ) # ( !\Decoder0~3_combout\ & ( \history[1][5]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_history[1][5]~q\,
	datac => \ALT_INV_signal_in[5]~input_o\,
	dataf => \ALT_INV_Decoder0~3_combout\,
	combout => \history~16_combout\);

-- Location: FF_X74_Y3_N29
\history[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \history~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[2][4]~q\);

-- Location: LABCELL_X74_Y3_N54
\history~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~14_combout\ = ( \Decoder0~4_combout\ & ( \signal_in[4]~input_o\ ) ) # ( !\Decoder0~4_combout\ & ( \history[2][4]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_signal_in[4]~input_o\,
	datac => \ALT_INV_history[2][4]~q\,
	dataf => \ALT_INV_Decoder0~4_combout\,
	combout => \history~14_combout\);

-- Location: FF_X74_Y3_N49
\history[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \history~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[0][4]~q\);

-- Location: LABCELL_X74_Y3_N51
\history~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~12_combout\ = ( \history[0][4]~q\ & ( \Decoder0~2_combout\ & ( \signal_in[4]~input_o\ ) ) ) # ( !\history[0][4]~q\ & ( \Decoder0~2_combout\ & ( \signal_in[4]~input_o\ ) ) ) # ( \history[0][4]~q\ & ( !\Decoder0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_signal_in[4]~input_o\,
	datae => \ALT_INV_history[0][4]~q\,
	dataf => \ALT_INV_Decoder0~2_combout\,
	combout => \history~12_combout\);

-- Location: FF_X74_Y3_N53
\history[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \history~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[1][4]~q\);

-- Location: LABCELL_X74_Y3_N27
\history~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~13_combout\ = ( \Decoder0~3_combout\ & ( \signal_in[4]~input_o\ ) ) # ( !\Decoder0~3_combout\ & ( \history[1][4]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_history[1][4]~q\,
	datac => \ALT_INV_signal_in[4]~input_o\,
	dataf => \ALT_INV_Decoder0~3_combout\,
	combout => \history~13_combout\);

-- Location: LABCELL_X73_Y3_N12
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( !\history~14_combout\ $ (!\history~12_combout\ $ (\history~13_combout\)) ) + ( \Add1~15\ ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( !\history~14_combout\ $ (!\history~12_combout\ $ (\history~13_combout\)) ) + ( \Add1~15\ ) + ( \Add1~14\ ))
-- \Add1~19\ = SHARE((!\history~14_combout\ & (\history~12_combout\ & \history~13_combout\)) # (\history~14_combout\ & ((\history~13_combout\) # (\history~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_history~14_combout\,
	datac => \ALT_INV_history~12_combout\,
	datad => \ALT_INV_history~13_combout\,
	cin => \Add1~14\,
	sharein => \Add1~15\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\,
	shareout => \Add1~19\);

-- Location: LABCELL_X73_Y3_N15
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( !\history~15_combout\ $ (!\history~17_combout\ $ (\history~16_combout\)) ) + ( \Add1~19\ ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( !\history~15_combout\ $ (!\history~17_combout\ $ (\history~16_combout\)) ) + ( \Add1~19\ ) + ( \Add1~18\ ))
-- \Add1~23\ = SHARE((!\history~15_combout\ & (\history~17_combout\ & \history~16_combout\)) # (\history~15_combout\ & ((\history~16_combout\) # (\history~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_history~15_combout\,
	datac => \ALT_INV_history~17_combout\,
	datad => \ALT_INV_history~16_combout\,
	cin => \Add1~18\,
	sharein => \Add1~19\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\,
	shareout => \Add1~23\);

-- Location: LABCELL_X73_Y3_N18
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( !\history~20_combout\ $ (!\history~18_combout\ $ (\history~19_combout\)) ) + ( \Add1~23\ ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( !\history~20_combout\ $ (!\history~18_combout\ $ (\history~19_combout\)) ) + ( \Add1~23\ ) + ( \Add1~22\ ))
-- \Add1~27\ = SHARE((!\history~20_combout\ & (\history~18_combout\ & \history~19_combout\)) # (\history~20_combout\ & ((\history~19_combout\) # (\history~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_history~20_combout\,
	datac => \ALT_INV_history~18_combout\,
	datad => \ALT_INV_history~19_combout\,
	cin => \Add1~22\,
	sharein => \Add1~23\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\,
	shareout => \Add1~27\);

-- Location: MLABCELL_X72_Y3_N12
\Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~17_sumout\ = SUM(( \Add4~77_sumout\ ) + ( \Add1~17_sumout\ ) + ( \Add4~14\ ))
-- \Add4~18\ = CARRY(( \Add4~77_sumout\ ) + ( \Add1~17_sumout\ ) + ( \Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~17_sumout\,
	datad => \ALT_INV_Add4~77_sumout\,
	cin => \Add4~14\,
	sumout => \Add4~17_sumout\,
	cout => \Add4~18\);

-- Location: MLABCELL_X72_Y3_N15
\Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~21_sumout\ = SUM(( \Add1~21_sumout\ ) + ( \Add4~81_sumout\ ) + ( \Add4~18\ ))
-- \Add4~22\ = CARRY(( \Add1~21_sumout\ ) + ( \Add4~81_sumout\ ) + ( \Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~81_sumout\,
	datad => \ALT_INV_Add1~21_sumout\,
	cin => \Add4~18\,
	sumout => \Add4~21_sumout\,
	cout => \Add4~22\);

-- Location: MLABCELL_X72_Y3_N18
\Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~25_sumout\ = SUM(( \Add1~25_sumout\ ) + ( \Add4~85_sumout\ ) + ( \Add4~22\ ))
-- \Add4~26\ = CARRY(( \Add1~25_sumout\ ) + ( \Add4~85_sumout\ ) + ( \Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add4~85_sumout\,
	datad => \ALT_INV_Add1~25_sumout\,
	cin => \Add4~22\,
	sumout => \Add4~25_sumout\,
	cout => \Add4~26\);

-- Location: IOIBUF_X62_Y0_N1
\signal_in[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_in(11),
	o => \signal_in[11]~input_o\);

-- Location: FF_X72_Y3_N17
\history[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \signal_in[11]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[4][11]~q\);

-- Location: FF_X71_Y3_N41
\history[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \signal_in[11]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[3][11]~q\);

-- Location: IOIBUF_X72_Y0_N1
\signal_in[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_in(10),
	o => \signal_in[10]~input_o\);

-- Location: LABCELL_X70_Y2_N51
\history[4][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \history[4][10]~feeder_combout\ = ( \signal_in[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_signal_in[10]~input_o\,
	combout => \history[4][10]~feeder_combout\);

-- Location: FF_X70_Y2_N52
\history[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history[4][10]~feeder_combout\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[4][10]~q\);

-- Location: FF_X74_Y3_N34
\history[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \signal_in[10]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[3][10]~q\);

-- Location: IOIBUF_X70_Y0_N1
\signal_in[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_in(9),
	o => \signal_in[9]~input_o\);

-- Location: FF_X74_Y3_N32
\history[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \signal_in[9]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[3][9]~q\);

-- Location: FF_X72_Y3_N47
\history[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \signal_in[9]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[4][9]~q\);

-- Location: IOIBUF_X68_Y0_N35
\signal_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_in(8),
	o => \signal_in[8]~input_o\);

-- Location: LABCELL_X70_Y4_N48
\history[3][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \history[3][8]~feeder_combout\ = ( \signal_in[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_signal_in[8]~input_o\,
	combout => \history[3][8]~feeder_combout\);

-- Location: FF_X70_Y4_N49
\history[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history[3][8]~feeder_combout\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[3][8]~q\);

-- Location: LABCELL_X70_Y4_N24
\history[4][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \history[4][8]~feeder_combout\ = ( \signal_in[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_signal_in[8]~input_o\,
	combout => \history[4][8]~feeder_combout\);

-- Location: FF_X70_Y4_N25
\history[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history[4][8]~feeder_combout\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[4][8]~q\);

-- Location: IOIBUF_X58_Y0_N92
\signal_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_in(7),
	o => \signal_in[7]~input_o\);

-- Location: LABCELL_X70_Y4_N27
\history[4][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \history[4][7]~feeder_combout\ = ( \signal_in[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_signal_in[7]~input_o\,
	combout => \history[4][7]~feeder_combout\);

-- Location: FF_X70_Y4_N28
\history[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history[4][7]~feeder_combout\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[4][7]~q\);

-- Location: LABCELL_X70_Y4_N51
\history[3][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \history[3][7]~feeder_combout\ = ( \signal_in[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_signal_in[7]~input_o\,
	combout => \history[3][7]~feeder_combout\);

-- Location: FF_X70_Y4_N53
\history[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history[3][7]~feeder_combout\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[3][7]~q\);

-- Location: LABCELL_X71_Y3_N21
\Add4~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~89_sumout\ = SUM(( (!\Decoder0~0_combout\ & ((\history[4][7]~q\))) # (\Decoder0~0_combout\ & (\signal_in[7]~input_o\)) ) + ( (!\Decoder0~1_combout\ & ((\history[3][7]~q\))) # (\Decoder0~1_combout\ & (\signal_in[7]~input_o\)) ) + ( \Add4~86\ ))
-- \Add4~90\ = CARRY(( (!\Decoder0~0_combout\ & ((\history[4][7]~q\))) # (\Decoder0~0_combout\ & (\signal_in[7]~input_o\)) ) + ( (!\Decoder0~1_combout\ & ((\history[3][7]~q\))) # (\Decoder0~1_combout\ & (\signal_in[7]~input_o\)) ) + ( \Add4~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~0_combout\,
	datab => \ALT_INV_Decoder0~1_combout\,
	datac => \ALT_INV_signal_in[7]~input_o\,
	datad => \ALT_INV_history[4][7]~q\,
	dataf => \ALT_INV_history[3][7]~q\,
	cin => \Add4~86\,
	sumout => \Add4~89_sumout\,
	cout => \Add4~90\);

-- Location: LABCELL_X71_Y3_N24
\Add4~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~93_sumout\ = SUM(( (!\Decoder0~1_combout\ & ((\history[3][8]~q\))) # (\Decoder0~1_combout\ & (\signal_in[8]~input_o\)) ) + ( (!\Decoder0~0_combout\ & ((\history[4][8]~q\))) # (\Decoder0~0_combout\ & (\signal_in[8]~input_o\)) ) + ( \Add4~90\ ))
-- \Add4~94\ = CARRY(( (!\Decoder0~1_combout\ & ((\history[3][8]~q\))) # (\Decoder0~1_combout\ & (\signal_in[8]~input_o\)) ) + ( (!\Decoder0~0_combout\ & ((\history[4][8]~q\))) # (\Decoder0~0_combout\ & (\signal_in[8]~input_o\)) ) + ( \Add4~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~0_combout\,
	datab => \ALT_INV_Decoder0~1_combout\,
	datac => \ALT_INV_signal_in[8]~input_o\,
	datad => \ALT_INV_history[3][8]~q\,
	dataf => \ALT_INV_history[4][8]~q\,
	cin => \Add4~90\,
	sumout => \Add4~93_sumout\,
	cout => \Add4~94\);

-- Location: LABCELL_X71_Y3_N27
\Add4~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~97_sumout\ = SUM(( (!\Decoder0~1_combout\ & ((\history[3][9]~q\))) # (\Decoder0~1_combout\ & (\signal_in[9]~input_o\)) ) + ( (!\Decoder0~0_combout\ & ((\history[4][9]~q\))) # (\Decoder0~0_combout\ & (\signal_in[9]~input_o\)) ) + ( \Add4~94\ ))
-- \Add4~98\ = CARRY(( (!\Decoder0~1_combout\ & ((\history[3][9]~q\))) # (\Decoder0~1_combout\ & (\signal_in[9]~input_o\)) ) + ( (!\Decoder0~0_combout\ & ((\history[4][9]~q\))) # (\Decoder0~0_combout\ & (\signal_in[9]~input_o\)) ) + ( \Add4~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~0_combout\,
	datab => \ALT_INV_Decoder0~1_combout\,
	datac => \ALT_INV_signal_in[9]~input_o\,
	datad => \ALT_INV_history[3][9]~q\,
	dataf => \ALT_INV_history[4][9]~q\,
	cin => \Add4~94\,
	sumout => \Add4~97_sumout\,
	cout => \Add4~98\);

-- Location: LABCELL_X71_Y3_N30
\Add4~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~101_sumout\ = SUM(( (!\Decoder0~0_combout\ & ((\history[4][10]~q\))) # (\Decoder0~0_combout\ & (\signal_in[10]~input_o\)) ) + ( (!\Decoder0~1_combout\ & ((\history[3][10]~q\))) # (\Decoder0~1_combout\ & (\signal_in[10]~input_o\)) ) + ( \Add4~98\ ))
-- \Add4~102\ = CARRY(( (!\Decoder0~0_combout\ & ((\history[4][10]~q\))) # (\Decoder0~0_combout\ & (\signal_in[10]~input_o\)) ) + ( (!\Decoder0~1_combout\ & ((\history[3][10]~q\))) # (\Decoder0~1_combout\ & (\signal_in[10]~input_o\)) ) + ( \Add4~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~0_combout\,
	datab => \ALT_INV_Decoder0~1_combout\,
	datac => \ALT_INV_signal_in[10]~input_o\,
	datad => \ALT_INV_history[4][10]~q\,
	dataf => \ALT_INV_history[3][10]~q\,
	cin => \Add4~98\,
	sumout => \Add4~101_sumout\,
	cout => \Add4~102\);

-- Location: LABCELL_X71_Y3_N33
\Add4~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~105_sumout\ = SUM(( (!\Decoder0~0_combout\ & ((\history[4][11]~q\))) # (\Decoder0~0_combout\ & (\signal_in[11]~input_o\)) ) + ( (!\Decoder0~1_combout\ & ((\history[3][11]~q\))) # (\Decoder0~1_combout\ & (\signal_in[11]~input_o\)) ) + ( \Add4~102\ ))
-- \Add4~106\ = CARRY(( (!\Decoder0~0_combout\ & ((\history[4][11]~q\))) # (\Decoder0~0_combout\ & (\signal_in[11]~input_o\)) ) + ( (!\Decoder0~1_combout\ & ((\history[3][11]~q\))) # (\Decoder0~1_combout\ & (\signal_in[11]~input_o\)) ) + ( \Add4~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~0_combout\,
	datab => \ALT_INV_Decoder0~1_combout\,
	datac => \ALT_INV_signal_in[11]~input_o\,
	datad => \ALT_INV_history[4][11]~q\,
	dataf => \ALT_INV_history[3][11]~q\,
	cin => \Add4~102\,
	sumout => \Add4~105_sumout\,
	cout => \Add4~106\);

-- Location: FF_X73_Y3_N59
\history[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[2][11]~q\);

-- Location: LABCELL_X73_Y3_N57
\history~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~35_combout\ = ( \Decoder0~4_combout\ & ( \signal_in[11]~input_o\ ) ) # ( !\Decoder0~4_combout\ & ( \history[2][11]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_signal_in[11]~input_o\,
	datad => \ALT_INV_history[2][11]~q\,
	dataf => \ALT_INV_Decoder0~4_combout\,
	combout => \history~35_combout\);

-- Location: FF_X73_Y3_N44
\history[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[0][11]~q\);

-- Location: LABCELL_X73_Y3_N42
\history~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~33_combout\ = ( \Decoder0~2_combout\ & ( \signal_in[11]~input_o\ ) ) # ( !\Decoder0~2_combout\ & ( \history[0][11]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_signal_in[11]~input_o\,
	datad => \ALT_INV_history[0][11]~q\,
	dataf => \ALT_INV_Decoder0~2_combout\,
	combout => \history~33_combout\);

-- Location: FF_X72_Y3_N50
\history[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \history~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[1][11]~q\);

-- Location: MLABCELL_X72_Y3_N57
\history~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~34_combout\ = ( \Decoder0~3_combout\ & ( \signal_in[11]~input_o\ ) ) # ( !\Decoder0~3_combout\ & ( \history[1][11]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_history[1][11]~q\,
	datac => \ALT_INV_signal_in[11]~input_o\,
	dataf => \ALT_INV_Decoder0~3_combout\,
	combout => \history~34_combout\);

-- Location: FF_X74_Y3_N23
\history[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[2][10]~q\);

-- Location: LABCELL_X74_Y3_N21
\history~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~32_combout\ = ( \Decoder0~4_combout\ & ( \signal_in[10]~input_o\ ) ) # ( !\Decoder0~4_combout\ & ( \history[2][10]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_signal_in[10]~input_o\,
	datad => \ALT_INV_history[2][10]~q\,
	dataf => \ALT_INV_Decoder0~4_combout\,
	combout => \history~32_combout\);

-- Location: FF_X74_Y3_N41
\history[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \history~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[1][10]~q\);

-- Location: LABCELL_X74_Y3_N33
\history~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~31_combout\ = ( \Decoder0~3_combout\ & ( \signal_in[10]~input_o\ ) ) # ( !\Decoder0~3_combout\ & ( \history[1][10]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_history[1][10]~q\,
	datad => \ALT_INV_signal_in[10]~input_o\,
	dataf => \ALT_INV_Decoder0~3_combout\,
	combout => \history~31_combout\);

-- Location: FF_X70_Y3_N14
\history[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[0][10]~q\);

-- Location: LABCELL_X70_Y3_N12
\history~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~30_combout\ = ( \Decoder0~2_combout\ & ( \signal_in[10]~input_o\ ) ) # ( !\Decoder0~2_combout\ & ( \history[0][10]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_signal_in[10]~input_o\,
	datad => \ALT_INV_history[0][10]~q\,
	dataf => \ALT_INV_Decoder0~2_combout\,
	combout => \history~30_combout\);

-- Location: FF_X74_Y3_N56
\history[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \history~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[2][9]~q\);

-- Location: LABCELL_X74_Y3_N0
\history~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~29_combout\ = ( \Decoder0~4_combout\ & ( \signal_in[9]~input_o\ ) ) # ( !\Decoder0~4_combout\ & ( \history[2][9]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_in[9]~input_o\,
	datac => \ALT_INV_history[2][9]~q\,
	dataf => \ALT_INV_Decoder0~4_combout\,
	combout => \history~29_combout\);

-- Location: FF_X74_Y3_N38
\history[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[1][9]~q\);

-- Location: LABCELL_X74_Y3_N36
\history~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~28_combout\ = ( \Decoder0~3_combout\ & ( \signal_in[9]~input_o\ ) ) # ( !\Decoder0~3_combout\ & ( \history[1][9]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_signal_in[9]~input_o\,
	datad => \ALT_INV_history[1][9]~q\,
	dataf => \ALT_INV_Decoder0~3_combout\,
	combout => \history~28_combout\);

-- Location: FF_X74_Y3_N5
\history[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[0][9]~q\);

-- Location: LABCELL_X74_Y3_N3
\history~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~27_combout\ = ( \Decoder0~2_combout\ & ( \signal_in[9]~input_o\ ) ) # ( !\Decoder0~2_combout\ & ( \history[0][9]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_in[9]~input_o\,
	datad => \ALT_INV_history[0][9]~q\,
	dataf => \ALT_INV_Decoder0~2_combout\,
	combout => \history~27_combout\);

-- Location: FF_X74_Y3_N26
\history[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[1][8]~q\);

-- Location: LABCELL_X74_Y3_N24
\history~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~25_combout\ = ( \Decoder0~3_combout\ & ( \signal_in[8]~input_o\ ) ) # ( !\Decoder0~3_combout\ & ( \history[1][8]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_signal_in[8]~input_o\,
	datad => \ALT_INV_history[1][8]~q\,
	dataf => \ALT_INV_Decoder0~3_combout\,
	combout => \history~25_combout\);

-- Location: FF_X74_Y3_N47
\history[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[2][8]~q\);

-- Location: LABCELL_X74_Y3_N45
\history~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~26_combout\ = ( \Decoder0~4_combout\ & ( \signal_in[8]~input_o\ ) ) # ( !\Decoder0~4_combout\ & ( \history[2][8]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_in[8]~input_o\,
	datad => \ALT_INV_history[2][8]~q\,
	dataf => \ALT_INV_Decoder0~4_combout\,
	combout => \history~26_combout\);

-- Location: FF_X74_Y3_N2
\history[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \history~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[0][8]~q\);

-- Location: LABCELL_X74_Y3_N30
\history~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~24_combout\ = ( \Decoder0~2_combout\ & ( \signal_in[8]~input_o\ ) ) # ( !\Decoder0~2_combout\ & ( \history[0][8]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signal_in[8]~input_o\,
	datac => \ALT_INV_history[0][8]~q\,
	dataf => \ALT_INV_Decoder0~2_combout\,
	combout => \history~24_combout\);

-- Location: FF_X74_Y3_N11
\history[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[2][7]~q\);

-- Location: LABCELL_X74_Y3_N9
\history~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~23_combout\ = ( \Decoder0~4_combout\ & ( \signal_in[7]~input_o\ ) ) # ( !\Decoder0~4_combout\ & ( \history[2][7]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_signal_in[7]~input_o\,
	datad => \ALT_INV_history[2][7]~q\,
	dataf => \ALT_INV_Decoder0~4_combout\,
	combout => \history~23_combout\);

-- Location: FF_X74_Y3_N20
\history[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[0][7]~q\);

-- Location: LABCELL_X74_Y3_N18
\history~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~21_combout\ = ( \Decoder0~2_combout\ & ( \signal_in[7]~input_o\ ) ) # ( !\Decoder0~2_combout\ & ( \history[0][7]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_signal_in[7]~input_o\,
	datad => \ALT_INV_history[0][7]~q\,
	dataf => \ALT_INV_Decoder0~2_combout\,
	combout => \history~21_combout\);

-- Location: FF_X74_Y3_N8
\history[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \history~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \history[1][7]~q\);

-- Location: LABCELL_X74_Y3_N6
\history~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \history~22_combout\ = ( \Decoder0~3_combout\ & ( \signal_in[7]~input_o\ ) ) # ( !\Decoder0~3_combout\ & ( \history[1][7]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_signal_in[7]~input_o\,
	datad => \ALT_INV_history[1][7]~q\,
	dataf => \ALT_INV_Decoder0~3_combout\,
	combout => \history~22_combout\);

-- Location: LABCELL_X73_Y3_N21
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( !\history~23_combout\ $ (!\history~21_combout\ $ (\history~22_combout\)) ) + ( \Add1~27\ ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( !\history~23_combout\ $ (!\history~21_combout\ $ (\history~22_combout\)) ) + ( \Add1~27\ ) + ( \Add1~26\ ))
-- \Add1~31\ = SHARE((!\history~23_combout\ & (\history~21_combout\ & \history~22_combout\)) # (\history~23_combout\ & ((\history~22_combout\) # (\history~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_history~23_combout\,
	datac => \ALT_INV_history~21_combout\,
	datad => \ALT_INV_history~22_combout\,
	cin => \Add1~26\,
	sharein => \Add1~27\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\,
	shareout => \Add1~31\);

-- Location: LABCELL_X73_Y3_N24
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( !\history~25_combout\ $ (!\history~26_combout\ $ (\history~24_combout\)) ) + ( \Add1~31\ ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( !\history~25_combout\ $ (!\history~26_combout\ $ (\history~24_combout\)) ) + ( \Add1~31\ ) + ( \Add1~30\ ))
-- \Add1~35\ = SHARE((!\history~25_combout\ & (\history~26_combout\ & \history~24_combout\)) # (\history~25_combout\ & ((\history~24_combout\) # (\history~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_history~25_combout\,
	datac => \ALT_INV_history~26_combout\,
	datad => \ALT_INV_history~24_combout\,
	cin => \Add1~30\,
	sharein => \Add1~31\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\,
	shareout => \Add1~35\);

-- Location: LABCELL_X73_Y3_N27
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( !\history~29_combout\ $ (!\history~28_combout\ $ (\history~27_combout\)) ) + ( \Add1~35\ ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( !\history~29_combout\ $ (!\history~28_combout\ $ (\history~27_combout\)) ) + ( \Add1~35\ ) + ( \Add1~34\ ))
-- \Add1~39\ = SHARE((!\history~29_combout\ & (\history~28_combout\ & \history~27_combout\)) # (\history~29_combout\ & ((\history~27_combout\) # (\history~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_history~29_combout\,
	datac => \ALT_INV_history~28_combout\,
	datad => \ALT_INV_history~27_combout\,
	cin => \Add1~34\,
	sharein => \Add1~35\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\,
	shareout => \Add1~39\);

-- Location: LABCELL_X73_Y3_N30
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( !\history~32_combout\ $ (!\history~31_combout\ $ (\history~30_combout\)) ) + ( \Add1~39\ ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( !\history~32_combout\ $ (!\history~31_combout\ $ (\history~30_combout\)) ) + ( \Add1~39\ ) + ( \Add1~38\ ))
-- \Add1~43\ = SHARE((!\history~32_combout\ & (\history~31_combout\ & \history~30_combout\)) # (\history~32_combout\ & ((\history~30_combout\) # (\history~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_history~32_combout\,
	datac => \ALT_INV_history~31_combout\,
	datad => \ALT_INV_history~30_combout\,
	cin => \Add1~38\,
	sharein => \Add1~39\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\,
	shareout => \Add1~43\);

-- Location: LABCELL_X73_Y3_N33
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( !\history~35_combout\ $ (!\history~33_combout\ $ (\history~34_combout\)) ) + ( \Add1~43\ ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( !\history~35_combout\ $ (!\history~33_combout\ $ (\history~34_combout\)) ) + ( \Add1~43\ ) + ( \Add1~42\ ))
-- \Add1~47\ = SHARE((!\history~35_combout\ & (\history~33_combout\ & \history~34_combout\)) # (\history~35_combout\ & ((\history~34_combout\) # (\history~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_history~35_combout\,
	datac => \ALT_INV_history~33_combout\,
	datad => \ALT_INV_history~34_combout\,
	cin => \Add1~42\,
	sharein => \Add1~43\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\,
	shareout => \Add1~47\);

-- Location: MLABCELL_X72_Y3_N21
\Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~29_sumout\ = SUM(( \Add1~29_sumout\ ) + ( \Add4~89_sumout\ ) + ( \Add4~26\ ))
-- \Add4~30\ = CARRY(( \Add1~29_sumout\ ) + ( \Add4~89_sumout\ ) + ( \Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~89_sumout\,
	datad => \ALT_INV_Add1~29_sumout\,
	cin => \Add4~26\,
	sumout => \Add4~29_sumout\,
	cout => \Add4~30\);

-- Location: MLABCELL_X72_Y3_N24
\Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~33_sumout\ = SUM(( \Add4~93_sumout\ ) + ( \Add1~33_sumout\ ) + ( \Add4~30\ ))
-- \Add4~34\ = CARRY(( \Add4~93_sumout\ ) + ( \Add1~33_sumout\ ) + ( \Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~33_sumout\,
	datad => \ALT_INV_Add4~93_sumout\,
	cin => \Add4~30\,
	sumout => \Add4~33_sumout\,
	cout => \Add4~34\);

-- Location: MLABCELL_X72_Y3_N27
\Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~37_sumout\ = SUM(( \Add1~37_sumout\ ) + ( \Add4~97_sumout\ ) + ( \Add4~34\ ))
-- \Add4~38\ = CARRY(( \Add1~37_sumout\ ) + ( \Add4~97_sumout\ ) + ( \Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~97_sumout\,
	datad => \ALT_INV_Add1~37_sumout\,
	cin => \Add4~34\,
	sumout => \Add4~37_sumout\,
	cout => \Add4~38\);

-- Location: MLABCELL_X72_Y3_N30
\Add4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~41_sumout\ = SUM(( \Add4~101_sumout\ ) + ( \Add1~41_sumout\ ) + ( \Add4~38\ ))
-- \Add4~42\ = CARRY(( \Add4~101_sumout\ ) + ( \Add1~41_sumout\ ) + ( \Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~101_sumout\,
	datac => \ALT_INV_Add1~41_sumout\,
	cin => \Add4~38\,
	sumout => \Add4~41_sumout\,
	cout => \Add4~42\);

-- Location: MLABCELL_X72_Y3_N33
\Add4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~45_sumout\ = SUM(( \Add1~45_sumout\ ) + ( \Add4~105_sumout\ ) + ( \Add4~42\ ))
-- \Add4~46\ = CARRY(( \Add1~45_sumout\ ) + ( \Add4~105_sumout\ ) + ( \Add4~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~105_sumout\,
	datad => \ALT_INV_Add1~45_sumout\,
	cin => \Add4~42\,
	sumout => \Add4~45_sumout\,
	cout => \Add4~46\);

-- Location: LABCELL_X73_Y3_N36
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( GND ) + ( \Add1~47\ ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( GND ) + ( \Add1~47\ ) + ( \Add1~46\ ))
-- \Add1~51\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Add1~46\,
	sharein => \Add1~47\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\,
	shareout => \Add1~51\);

-- Location: LABCELL_X73_Y3_N39
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( GND ) + ( \Add1~51\ ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Add1~50\,
	sharein => \Add1~51\,
	sumout => \Add1~53_sumout\);

-- Location: LABCELL_X71_Y3_N36
\Add4~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~109_sumout\ = SUM(( GND ) + ( GND ) + ( \Add4~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add4~106\,
	sumout => \Add4~109_sumout\);

-- Location: MLABCELL_X72_Y3_N36
\Add4~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~49_sumout\ = SUM(( \Add1~49_sumout\ ) + ( \Add4~109_sumout\ ) + ( \Add4~46\ ))
-- \Add4~50\ = CARRY(( \Add1~49_sumout\ ) + ( \Add4~109_sumout\ ) + ( \Add4~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~109_sumout\,
	datad => \ALT_INV_Add1~49_sumout\,
	cin => \Add4~46\,
	sumout => \Add4~49_sumout\,
	cout => \Add4~50\);

-- Location: MLABCELL_X72_Y3_N39
\Add4~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~53_sumout\ = SUM(( \Add1~53_sumout\ ) + ( GND ) + ( \Add4~50\ ))
-- \Add4~54\ = CARRY(( \Add1~53_sumout\ ) + ( GND ) + ( \Add4~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add1~53_sumout\,
	cin => \Add4~50\,
	sumout => \Add4~53_sumout\,
	cout => \Add4~54\);

-- Location: MLABCELL_X72_Y3_N42
\Add4~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~57_sumout\ = SUM(( GND ) + ( GND ) + ( \Add4~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add4~54\,
	sumout => \Add4~57_sumout\);

-- Location: LABCELL_X71_Y2_N0
\Div0|auto_generated|divider|divider|op_9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~5_sumout\ = SUM(( \Add4~53_sumout\ ) + ( VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|op_9~6\ = CARRY(( \Add4~53_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add4~53_sumout\,
	cin => GND,
	sumout => \Div0|auto_generated|divider|divider|op_9~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_9~6\);

-- Location: LABCELL_X71_Y2_N3
\Div0|auto_generated|divider|divider|op_9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~9_sumout\ = SUM(( \Add4~57_sumout\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_9~6\ ))
-- \Div0|auto_generated|divider|divider|op_9~10\ = CARRY(( \Add4~57_sumout\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_9~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add4~57_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_9~6\,
	sumout => \Div0|auto_generated|divider|divider|op_9~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_9~10\);

-- Location: LABCELL_X71_Y2_N6
\Div0|auto_generated|divider|divider|op_9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~13_sumout\ = SUM(( GND ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_9~10\ ))
-- \Div0|auto_generated|divider|divider|op_9~14\ = CARRY(( GND ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_9~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_9~10\,
	sumout => \Div0|auto_generated|divider|divider|op_9~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_9~14\);

-- Location: LABCELL_X71_Y2_N9
\Div0|auto_generated|divider|divider|op_9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_9~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_9~14\,
	sumout => \Div0|auto_generated|divider|divider|op_9~1_sumout\);

-- Location: MLABCELL_X72_Y2_N30
\Div0|auto_generated|divider|divider|op_10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~5_sumout\ = SUM(( \Add4~49_sumout\ ) + ( VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|op_10~6\ = CARRY(( \Add4~49_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add4~49_sumout\,
	cin => GND,
	sumout => \Div0|auto_generated|divider|divider|op_10~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_10~6\);

-- Location: MLABCELL_X72_Y2_N33
\Div0|auto_generated|divider|divider|op_10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~9_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_9~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & (\Add4~53_sumout\)) ) + 
-- ( VCC ) + ( \Div0|auto_generated|divider|divider|op_10~6\ ))
-- \Div0|auto_generated|divider|divider|op_10~10\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_9~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & (\Add4~53_sumout\)) ) + ( 
-- VCC ) + ( \Div0|auto_generated|divider|divider|op_10~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \ALT_INV_Add4~53_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_9~5_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_10~6\,
	sumout => \Div0|auto_generated|divider|divider|op_10~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_10~10\);

-- Location: MLABCELL_X72_Y2_N36
\Div0|auto_generated|divider|divider|op_10~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_9~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & (\Add4~57_sumout\)) ) + 
-- ( GND ) + ( \Div0|auto_generated|divider|divider|op_10~10\ ))
-- \Div0|auto_generated|divider|divider|op_10~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_9~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & (\Add4~57_sumout\)) ) + ( 
-- GND ) + ( \Div0|auto_generated|divider|divider|op_10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \ALT_INV_Add4~57_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_10~10\,
	sumout => \Div0|auto_generated|divider|divider|op_10~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_10~14\);

-- Location: LABCELL_X71_Y2_N57
\Div0|auto_generated|divider|divider|StageOut[9]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[9]~23_combout\ = ( \Div0|auto_generated|divider|divider|op_9~9_sumout\ & ( !\Div0|auto_generated|divider|divider|op_9~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Div0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[9]~23_combout\);

-- Location: MLABCELL_X72_Y2_N39
\Div0|auto_generated|divider|divider|op_10~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~18_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & \Div0|auto_generated|divider|divider|op_9~13_sumout\) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_10~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_10~14\,
	cout => \Div0|auto_generated|divider|divider|op_10~18_cout\);

-- Location: MLABCELL_X72_Y2_N42
\Div0|auto_generated|divider|divider|op_10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_10~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_10~18_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_10~1_sumout\);

-- Location: MLABCELL_X72_Y2_N54
\Div0|auto_generated|divider|divider|StageOut[9]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[9]~24_combout\ = ( \Add4~57_sumout\ & ( \Div0|auto_generated|divider|divider|op_9~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	dataf => \ALT_INV_Add4~57_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[9]~24_combout\);

-- Location: MLABCELL_X72_Y2_N21
\Div0|auto_generated|divider|divider|StageOut[13]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[13]~35_combout\ = ( \Add4~53_sumout\ & ( \Div0|auto_generated|divider|divider|op_10~1_sumout\ & ( (\Div0|auto_generated|divider|divider|op_9~5_sumout\) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\) ) 
-- ) ) # ( !\Add4~53_sumout\ & ( \Div0|auto_generated|divider|divider|op_10~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & \Div0|auto_generated|divider|divider|op_9~5_sumout\) ) ) ) # ( \Add4~53_sumout\ & ( 
-- !\Div0|auto_generated|divider|divider|op_10~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_10~9_sumout\ ) ) ) # ( !\Add4~53_sumout\ & ( !\Div0|auto_generated|divider|divider|op_10~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_10~9_sumout\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_9~5_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\,
	datae => \ALT_INV_Add4~53_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[13]~35_combout\);

-- Location: MLABCELL_X72_Y2_N0
\Div0|auto_generated|divider|divider|op_11~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~9_sumout\ = SUM(( \Add4~45_sumout\ ) + ( VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|op_11~10\ = CARRY(( \Add4~45_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add4~45_sumout\,
	cin => GND,
	sumout => \Div0|auto_generated|divider|divider|op_11~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_11~10\);

-- Location: MLABCELL_X72_Y2_N3
\Div0|auto_generated|divider|divider|op_11~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_10~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_10~1_sumout\ & (\Add4~49_sumout\)) 
-- ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_11~10\ ))
-- \Div0|auto_generated|divider|divider|op_11~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_10~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_10~1_sumout\ & (\Add4~49_sumout\)) ) + ( 
-- VCC ) + ( \Div0|auto_generated|divider|divider|op_11~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~49_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_10~5_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_11~10\,
	sumout => \Div0|auto_generated|divider|divider|op_11~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_11~14\);

-- Location: MLABCELL_X72_Y2_N6
\Div0|auto_generated|divider|divider|op_11~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~17_sumout\ = SUM(( \Div0|auto_generated|divider|divider|StageOut[13]~35_combout\ ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_11~14\ ))
-- \Div0|auto_generated|divider|divider|op_11~18\ = CARRY(( \Div0|auto_generated|divider|divider|StageOut[13]~35_combout\ ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_11~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[13]~35_combout\,
	cin => \Div0|auto_generated|divider|divider|op_11~14\,
	sumout => \Div0|auto_generated|divider|divider|op_11~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_11~18\);

-- Location: MLABCELL_X72_Y2_N9
\Div0|auto_generated|divider|divider|op_11~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_10~1_sumout\ & (\Div0|auto_generated|divider|divider|op_10~13_sumout\)) # (\Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[9]~24_combout\) # (\Div0|auto_generated|divider|divider|StageOut[9]~23_combout\)))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_11~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~23_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~24_combout\,
	cin => \Div0|auto_generated|divider|divider|op_11~18\,
	cout => \Div0|auto_generated|divider|divider|op_11~6_cout\);

-- Location: MLABCELL_X72_Y2_N12
\Div0|auto_generated|divider|divider|op_11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_11~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_11~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_11~1_sumout\);

-- Location: LABCELL_X73_Y2_N30
\Div0|auto_generated|divider|divider|op_12~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~9_sumout\ = SUM(( \Add4~41_sumout\ ) + ( VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|op_12~10\ = CARRY(( \Add4~41_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add4~41_sumout\,
	cin => GND,
	sumout => \Div0|auto_generated|divider|divider|op_12~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_12~10\);

-- Location: LABCELL_X73_Y2_N33
\Div0|auto_generated|divider|divider|op_12~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_11~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_11~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_11~1_sumout\ & (\Add4~45_sumout\)) 
-- ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_12~10\ ))
-- \Div0|auto_generated|divider|divider|op_12~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_11~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_11~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_11~1_sumout\ & (\Add4~45_sumout\)) ) + ( 
-- VCC ) + ( \Div0|auto_generated|divider|divider|op_12~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add4~45_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_11~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_12~10\,
	sumout => \Div0|auto_generated|divider|divider|op_12~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_12~14\);

-- Location: MLABCELL_X72_Y2_N48
\Div0|auto_generated|divider|divider|StageOut[13]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[13]~21_combout\ = ( !\Div0|auto_generated|divider|divider|op_10~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_10~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[13]~21_combout\);

-- Location: LABCELL_X73_Y2_N57
\Div0|auto_generated|divider|divider|StageOut[13]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[13]~22_combout\ = ( \Div0|auto_generated|divider|divider|op_9~5_sumout\ & ( (\Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((!\Div0|auto_generated|divider|divider|op_9~1_sumout\) # 
-- (\Add4~53_sumout\))) ) ) # ( !\Div0|auto_generated|divider|divider|op_9~5_sumout\ & ( (\Div0|auto_generated|divider|divider|op_10~1_sumout\ & (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & \Add4~53_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datad => \ALT_INV_Add4~53_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_9~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[13]~22_combout\);

-- Location: LABCELL_X73_Y2_N54
\Div0|auto_generated|divider|divider|StageOut[17]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~34_combout\ = ( \Div0|auto_generated|divider|divider|op_11~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_10~1_sumout\ & (\Div0|auto_generated|divider|divider|op_10~5_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\Add4~49_sumout\))) ) ) # ( !\Div0|auto_generated|divider|divider|op_11~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_11~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_11~13_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_10~5_sumout\,
	datad => \ALT_INV_Add4~49_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~34_combout\);

-- Location: LABCELL_X73_Y2_N36
\Div0|auto_generated|divider|divider|op_12~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~17_sumout\ = SUM(( \Div0|auto_generated|divider|divider|StageOut[17]~34_combout\ ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_12~14\ ))
-- \Div0|auto_generated|divider|divider|op_12~18\ = CARRY(( \Div0|auto_generated|divider|divider|StageOut[17]~34_combout\ ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_12~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~34_combout\,
	cin => \Div0|auto_generated|divider|divider|op_12~14\,
	sumout => \Div0|auto_generated|divider|divider|op_12~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_12~18\);

-- Location: LABCELL_X73_Y2_N39
\Div0|auto_generated|divider|divider|op_12~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_11~1_sumout\ & (\Div0|auto_generated|divider|divider|op_11~17_sumout\)) # (\Div0|auto_generated|divider|divider|op_11~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[13]~22_combout\) # (\Div0|auto_generated|divider|divider|StageOut[13]~21_combout\)))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_12~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_11~17_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[13]~21_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[13]~22_combout\,
	cin => \Div0|auto_generated|divider|divider|op_12~18\,
	cout => \Div0|auto_generated|divider|divider|op_12~6_cout\);

-- Location: LABCELL_X73_Y2_N42
\Div0|auto_generated|divider|divider|op_12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_12~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_12~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_12~1_sumout\);

-- Location: LABCELL_X73_Y2_N24
\Div0|auto_generated|divider|divider|StageOut[21]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~17_combout\ = ( !\Div0|auto_generated|divider|divider|op_12~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_12~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_12~13_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~17_combout\);

-- Location: LABCELL_X73_Y2_N27
\Div0|auto_generated|divider|divider|StageOut[21]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~33_combout\ = ( \Div0|auto_generated|divider|divider|op_12~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_11~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_11~9_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|op_11~1_sumout\ & (\Add4~45_sumout\)) ) ) # ( !\Div0|auto_generated|divider|divider|op_12~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_12~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_12~13_sumout\,
	datab => \ALT_INV_Add4~45_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_11~9_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~33_combout\);

-- Location: LABCELL_X73_Y2_N0
\Div0|auto_generated|divider|divider|op_13~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_13~9_sumout\ = SUM(( \Add4~37_sumout\ ) + ( VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|op_13~10\ = CARRY(( \Add4~37_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add4~37_sumout\,
	cin => GND,
	sumout => \Div0|auto_generated|divider|divider|op_13~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_13~10\);

-- Location: LABCELL_X73_Y2_N3
\Div0|auto_generated|divider|divider|op_13~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_13~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_12~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_12~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_12~1_sumout\ & (\Add4~41_sumout\)) 
-- ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_13~10\ ))
-- \Div0|auto_generated|divider|divider|op_13~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_12~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_12~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_12~1_sumout\ & (\Add4~41_sumout\)) ) + ( 
-- VCC ) + ( \Div0|auto_generated|divider|divider|op_13~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~41_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_12~9_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_13~10\,
	sumout => \Div0|auto_generated|divider|divider|op_13~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_13~14\);

-- Location: LABCELL_X73_Y2_N6
\Div0|auto_generated|divider|divider|op_13~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_13~17_sumout\ = SUM(( \Div0|auto_generated|divider|divider|StageOut[21]~33_combout\ ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_13~14\ ))
-- \Div0|auto_generated|divider|divider|op_13~18\ = CARRY(( \Div0|auto_generated|divider|divider|StageOut[21]~33_combout\ ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_13~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~33_combout\,
	cin => \Div0|auto_generated|divider|divider|op_13~14\,
	sumout => \Div0|auto_generated|divider|divider|op_13~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_13~18\);

-- Location: MLABCELL_X72_Y2_N27
\Div0|auto_generated|divider|divider|StageOut[17]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ = ( \Div0|auto_generated|divider|divider|op_11~13_sumout\ & ( !\Div0|auto_generated|divider|divider|op_11~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Div0|auto_generated|divider|divider|ALT_INV_op_11~13_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~19_combout\);

-- Location: LABCELL_X73_Y2_N51
\Div0|auto_generated|divider|divider|StageOut[17]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~20_combout\ = ( \Div0|auto_generated|divider|divider|op_11~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_10~1_sumout\ & (\Div0|auto_generated|divider|divider|op_10~5_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\Add4~49_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_10~5_sumout\,
	datab => \ALT_INV_Add4~49_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~20_combout\);

-- Location: LABCELL_X73_Y2_N9
\Div0|auto_generated|divider|divider|op_13~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_13~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_12~1_sumout\ & (\Div0|auto_generated|divider|divider|op_12~17_sumout\)) # (\Div0|auto_generated|divider|divider|op_12~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[17]~20_combout\) # (\Div0|auto_generated|divider|divider|StageOut[17]~19_combout\)))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_13~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_12~17_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~19_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~20_combout\,
	cin => \Div0|auto_generated|divider|divider|op_13~18\,
	cout => \Div0|auto_generated|divider|divider|op_13~6_cout\);

-- Location: LABCELL_X73_Y2_N12
\Div0|auto_generated|divider|divider|op_13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_13~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_13~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_13~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_13~1_sumout\);

-- Location: LABCELL_X73_Y2_N18
\Div0|auto_generated|divider|divider|StageOut[21]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~18_combout\ = ( \Div0|auto_generated|divider|divider|op_12~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_11~1_sumout\ & (\Div0|auto_generated|divider|divider|op_11~9_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_11~1_sumout\ & ((\Add4~45_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_11~9_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datad => \ALT_INV_Add4~45_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~18_combout\);

-- Location: LABCELL_X74_Y4_N54
\Div0|auto_generated|divider|divider|StageOut[25]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~32_combout\ = ( \Div0|auto_generated|divider|divider|op_13~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_12~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_12~9_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|op_12~1_sumout\ & (\Add4~41_sumout\)) ) ) # ( !\Div0|auto_generated|divider|divider|op_13~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_13~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~41_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_13~13_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_12~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_13~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~32_combout\);

-- Location: LABCELL_X74_Y4_N30
\Div0|auto_generated|divider|divider|op_14~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_14~9_sumout\ = SUM(( \Add4~33_sumout\ ) + ( VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|op_14~10\ = CARRY(( \Add4~33_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add4~33_sumout\,
	cin => GND,
	sumout => \Div0|auto_generated|divider|divider|op_14~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_14~10\);

-- Location: LABCELL_X74_Y4_N33
\Div0|auto_generated|divider|divider|op_14~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_14~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_13~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_13~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_13~1_sumout\ & (\Add4~37_sumout\)) 
-- ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_14~10\ ))
-- \Div0|auto_generated|divider|divider|op_14~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_13~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_13~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_13~1_sumout\ & (\Add4~37_sumout\)) ) + ( 
-- VCC ) + ( \Div0|auto_generated|divider|divider|op_14~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_13~1_sumout\,
	datab => \ALT_INV_Add4~37_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_13~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_14~10\,
	sumout => \Div0|auto_generated|divider|divider|op_14~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_14~14\);

-- Location: LABCELL_X74_Y4_N36
\Div0|auto_generated|divider|divider|op_14~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_14~17_sumout\ = SUM(( \Div0|auto_generated|divider|divider|StageOut[25]~32_combout\ ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_14~14\ ))
-- \Div0|auto_generated|divider|divider|op_14~18\ = CARRY(( \Div0|auto_generated|divider|divider|StageOut[25]~32_combout\ ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_14~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~32_combout\,
	cin => \Div0|auto_generated|divider|divider|op_14~14\,
	sumout => \Div0|auto_generated|divider|divider|op_14~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_14~18\);

-- Location: LABCELL_X74_Y4_N39
\Div0|auto_generated|divider|divider|op_14~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_14~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_13~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_13~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_13~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[21]~18_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[21]~17_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_14~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~17_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_13~17_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_13~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~18_combout\,
	cin => \Div0|auto_generated|divider|divider|op_14~18\,
	cout => \Div0|auto_generated|divider|divider|op_14~6_cout\);

-- Location: LABCELL_X74_Y4_N42
\Div0|auto_generated|divider|divider|op_14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_14~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_14~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_14~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_14~1_sumout\);

-- Location: LABCELL_X74_Y4_N21
\Div0|auto_generated|divider|divider|StageOut[29]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[29]~13_combout\ = ( \Div0|auto_generated|divider|divider|op_14~13_sumout\ & ( !\Div0|auto_generated|divider|divider|op_14~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_14~13_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[29]~13_combout\);

-- Location: LABCELL_X73_Y2_N48
\Div0|auto_generated|divider|divider|StageOut[25]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~15_combout\ = ( !\Div0|auto_generated|divider|divider|op_13~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_13~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_13~13_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_13~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~15_combout\);

-- Location: LABCELL_X73_Y2_N21
\Div0|auto_generated|divider|divider|StageOut[25]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~16_combout\ = ( \Div0|auto_generated|divider|divider|op_13~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_12~1_sumout\ & (\Div0|auto_generated|divider|divider|op_12~9_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_12~1_sumout\ & ((\Add4~41_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_12~9_sumout\,
	datad => \ALT_INV_Add4~41_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_13~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~16_combout\);

-- Location: LABCELL_X74_Y4_N24
\Div0|auto_generated|divider|divider|StageOut[29]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[29]~31_combout\ = ( \Div0|auto_generated|divider|divider|op_14~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_13~1_sumout\ & (\Div0|auto_generated|divider|divider|op_13~9_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_13~1_sumout\ & ((\Add4~37_sumout\))) ) ) # ( !\Div0|auto_generated|divider|divider|op_14~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_14~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_13~9_sumout\,
	datab => \ALT_INV_Add4~37_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_14~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_13~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[29]~31_combout\);

-- Location: LABCELL_X74_Y4_N0
\Div0|auto_generated|divider|divider|op_15~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~9_sumout\ = SUM(( \Add4~29_sumout\ ) + ( VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|op_15~10\ = CARRY(( \Add4~29_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~29_sumout\,
	cin => GND,
	sumout => \Div0|auto_generated|divider|divider|op_15~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_15~10\);

-- Location: LABCELL_X74_Y4_N3
\Div0|auto_generated|divider|divider|op_15~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_14~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_14~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_14~1_sumout\ & (\Add4~33_sumout\)) 
-- ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_15~10\ ))
-- \Div0|auto_generated|divider|divider|op_15~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_14~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_14~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_14~1_sumout\ & (\Add4~33_sumout\)) ) + ( 
-- VCC ) + ( \Div0|auto_generated|divider|divider|op_15~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~33_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_14~9_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_15~10\,
	sumout => \Div0|auto_generated|divider|divider|op_15~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_15~14\);

-- Location: LABCELL_X74_Y4_N6
\Div0|auto_generated|divider|divider|op_15~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~17_sumout\ = SUM(( \Div0|auto_generated|divider|divider|StageOut[29]~31_combout\ ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_15~14\ ))
-- \Div0|auto_generated|divider|divider|op_15~18\ = CARRY(( \Div0|auto_generated|divider|divider|StageOut[29]~31_combout\ ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_15~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[29]~31_combout\,
	cin => \Div0|auto_generated|divider|divider|op_15~14\,
	sumout => \Div0|auto_generated|divider|divider|op_15~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_15~18\);

-- Location: LABCELL_X74_Y4_N9
\Div0|auto_generated|divider|divider|op_15~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_14~1_sumout\ & (\Div0|auto_generated|divider|divider|op_14~17_sumout\)) # (\Div0|auto_generated|divider|divider|op_14~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[25]~16_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~15_combout\)))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_15~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_14~17_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~15_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~16_combout\,
	cin => \Div0|auto_generated|divider|divider|op_15~18\,
	cout => \Div0|auto_generated|divider|divider|op_15~6_cout\);

-- Location: LABCELL_X74_Y4_N12
\Div0|auto_generated|divider|divider|op_15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_15~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_15~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_15~1_sumout\);

-- Location: LABCELL_X73_Y4_N54
\Div0|auto_generated|divider|divider|StageOut[29]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[29]~14_combout\ = ( \Div0|auto_generated|divider|divider|op_14~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_13~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_13~9_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|op_13~1_sumout\ & (\Add4~37_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add4~37_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_13~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_13~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[29]~14_combout\);

-- Location: LABCELL_X74_Y4_N51
\Div0|auto_generated|divider|divider|StageOut[33]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~10_combout\ = ( !\Div0|auto_generated|divider|divider|op_15~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_15~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_15~13_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~10_combout\);

-- Location: LABCELL_X74_Y4_N18
\Div0|auto_generated|divider|divider|StageOut[28]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~11_combout\ = ( \Div0|auto_generated|divider|divider|op_14~1_sumout\ & ( \Add4~33_sumout\ ) ) # ( !\Div0|auto_generated|divider|divider|op_14~1_sumout\ & ( 
-- \Div0|auto_generated|divider|divider|op_14~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_14~9_sumout\,
	datac => \ALT_INV_Add4~33_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~11_combout\);

-- Location: LABCELL_X73_Y4_N0
\Div0|auto_generated|divider|divider|op_16~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~9_sumout\ = SUM(( \Add4~25_sumout\ ) + ( VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|op_16~10\ = CARRY(( \Add4~25_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~25_sumout\,
	cin => GND,
	sumout => \Div0|auto_generated|divider|divider|op_16~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_16~10\);

-- Location: LABCELL_X73_Y4_N3
\Div0|auto_generated|divider|divider|op_16~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_15~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_15~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_15~1_sumout\ & (\Add4~29_sumout\)) 
-- ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_16~10\ ))
-- \Div0|auto_generated|divider|divider|op_16~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_15~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_15~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_15~1_sumout\ & (\Add4~29_sumout\)) ) + ( 
-- VCC ) + ( \Div0|auto_generated|divider|divider|op_16~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add4~29_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_15~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_16~10\,
	sumout => \Div0|auto_generated|divider|divider|op_16~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_16~14\);

-- Location: LABCELL_X73_Y4_N6
\Div0|auto_generated|divider|divider|op_16~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~17_sumout\ = SUM(( ((\Div0|auto_generated|divider|divider|op_15~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[28]~11_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[33]~10_combout\) ) + ( 
-- GND ) + ( \Div0|auto_generated|divider|divider|op_16~14\ ))
-- \Div0|auto_generated|divider|divider|op_16~18\ = CARRY(( ((\Div0|auto_generated|divider|divider|op_15~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[28]~11_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[33]~10_combout\) ) + ( GND ) 
-- + ( \Div0|auto_generated|divider|divider|op_16~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[33]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[28]~11_combout\,
	cin => \Div0|auto_generated|divider|divider|op_16~14\,
	sumout => \Div0|auto_generated|divider|divider|op_16~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_16~18\);

-- Location: LABCELL_X73_Y4_N9
\Div0|auto_generated|divider|divider|op_16~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_15~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_15~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_15~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[29]~14_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[29]~13_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_16~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[29]~13_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_15~17_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[29]~14_combout\,
	cin => \Div0|auto_generated|divider|divider|op_16~18\,
	cout => \Div0|auto_generated|divider|divider|op_16~6_cout\);

-- Location: LABCELL_X73_Y4_N12
\Div0|auto_generated|divider|divider|op_16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_16~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_16~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_16~1_sumout\);

-- Location: LABCELL_X73_Y4_N30
\Div0|auto_generated|divider|divider|op_3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~9_sumout\ = SUM(( \Add4~21_sumout\ ) + ( VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|op_3~10\ = CARRY(( \Add4~21_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add4~21_sumout\,
	cin => GND,
	sumout => \Div0|auto_generated|divider|divider|op_3~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_3~10\);

-- Location: LABCELL_X73_Y4_N33
\Div0|auto_generated|divider|divider|op_3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_16~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_16~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_16~1_sumout\ & (\Add4~25_sumout\)) ) 
-- + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_3~10\ ))
-- \Div0|auto_generated|divider|divider|op_3~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_16~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_16~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_16~1_sumout\ & (\Add4~25_sumout\)) ) + ( 
-- VCC ) + ( \Div0|auto_generated|divider|divider|op_3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~25_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_16~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_16~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_3~10\,
	sumout => \Div0|auto_generated|divider|divider|op_3~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_3~14\);

-- Location: LABCELL_X74_Y4_N48
\Div0|auto_generated|divider|divider|StageOut[33]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~12_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[28]~11_combout\ & ( \Div0|auto_generated|divider|divider|op_15~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[28]~11_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~12_combout\);

-- Location: LABCELL_X73_Y4_N21
\Div0|auto_generated|divider|divider|StageOut[37]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[37]~30_combout\ = ( \Div0|auto_generated|divider|divider|op_16~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_15~1_sumout\ & (\Div0|auto_generated|divider|divider|op_15~9_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_15~1_sumout\ & ((\Add4~29_sumout\))) ) ) # ( !\Div0|auto_generated|divider|divider|op_16~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_16~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_15~9_sumout\,
	datab => \ALT_INV_Add4~29_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_16~13_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_16~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[37]~30_combout\);

-- Location: LABCELL_X73_Y4_N36
\Div0|auto_generated|divider|divider|op_3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~17_sumout\ = SUM(( \Div0|auto_generated|divider|divider|StageOut[37]~30_combout\ ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_3~14\ ))
-- \Div0|auto_generated|divider|divider|op_3~18\ = CARRY(( \Div0|auto_generated|divider|divider|StageOut[37]~30_combout\ ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~30_combout\,
	cin => \Div0|auto_generated|divider|divider|op_3~14\,
	sumout => \Div0|auto_generated|divider|divider|op_3~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_3~18\);

-- Location: LABCELL_X73_Y4_N39
\Div0|auto_generated|divider|divider|op_3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_16~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_16~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_16~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[33]~12_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[33]~10_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[33]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_16~17_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_16~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[33]~12_combout\,
	cin => \Div0|auto_generated|divider|divider|op_3~18\,
	cout => \Div0|auto_generated|divider|divider|op_3~6_cout\);

-- Location: LABCELL_X73_Y4_N42
\Div0|auto_generated|divider|divider|op_3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_3~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_3~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_3~1_sumout\);

-- Location: LABCELL_X73_Y4_N57
\Div0|auto_generated|divider|divider|StageOut[41]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[41]~6_combout\ = ( !\Div0|auto_generated|divider|divider|op_3~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_3~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[41]~6_combout\);

-- Location: LABCELL_X73_Y4_N27
\Div0|auto_generated|divider|divider|StageOut[41]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[41]~29_combout\ = ( \Div0|auto_generated|divider|divider|op_3~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_16~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_16~9_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|op_16~1_sumout\ & (\Add4~25_sumout\)) ) ) # ( !\Div0|auto_generated|divider|divider|op_3~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_3~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\,
	datab => \ALT_INV_Add4~25_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_16~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_16~9_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[41]~29_combout\);

-- Location: MLABCELL_X72_Y4_N0
\Div0|auto_generated|divider|divider|op_4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~9_sumout\ = SUM(( \Add4~17_sumout\ ) + ( VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|op_4~10\ = CARRY(( \Add4~17_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add4~17_sumout\,
	cin => GND,
	sumout => \Div0|auto_generated|divider|divider|op_4~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~10\);

-- Location: MLABCELL_X72_Y4_N3
\Div0|auto_generated|divider|divider|op_4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~13_sumout\ = SUM(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_3~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\Add4~21_sumout\)) ) + ( \Div0|auto_generated|divider|divider|op_4~10\ ))
-- \Div0|auto_generated|divider|divider|op_4~14\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_3~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & (\Add4~21_sumout\)) 
-- ) + ( \Div0|auto_generated|divider|divider|op_4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~21_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_4~10\,
	sumout => \Div0|auto_generated|divider|divider|op_4~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~14\);

-- Location: MLABCELL_X72_Y4_N6
\Div0|auto_generated|divider|divider|op_4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~17_sumout\ = SUM(( \Div0|auto_generated|divider|divider|StageOut[41]~29_combout\ ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_4~14\ ))
-- \Div0|auto_generated|divider|divider|op_4~18\ = CARRY(( \Div0|auto_generated|divider|divider|StageOut[41]~29_combout\ ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[41]~29_combout\,
	cin => \Div0|auto_generated|divider|divider|op_4~14\,
	sumout => \Div0|auto_generated|divider|divider|op_4~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~18\);

-- Location: LABCELL_X73_Y4_N24
\Div0|auto_generated|divider|divider|StageOut[37]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[37]~8_combout\ = ( !\Div0|auto_generated|divider|divider|op_16~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_16~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_16~13_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_16~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[37]~8_combout\);

-- Location: LABCELL_X73_Y4_N48
\Div0|auto_generated|divider|divider|StageOut[37]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[37]~9_combout\ = ( \Div0|auto_generated|divider|divider|op_15~1_sumout\ & ( (\Div0|auto_generated|divider|divider|op_16~1_sumout\ & \Add4~29_sumout\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|op_15~1_sumout\ & ( (\Div0|auto_generated|divider|divider|op_16~1_sumout\ & \Div0|auto_generated|divider|divider|op_15~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_16~1_sumout\,
	datac => \ALT_INV_Add4~29_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_15~9_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[37]~9_combout\);

-- Location: MLABCELL_X72_Y4_N9
\Div0|auto_generated|divider|divider|op_4~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_3~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[37]~9_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[37]~8_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_3~17_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~9_combout\,
	cin => \Div0|auto_generated|divider|divider|op_4~18\,
	cout => \Div0|auto_generated|divider|divider|op_4~6_cout\);

-- Location: MLABCELL_X72_Y4_N12
\Div0|auto_generated|divider|divider|op_4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_4~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_4~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_4~1_sumout\);

-- Location: LABCELL_X73_Y4_N51
\Div0|auto_generated|divider|divider|StageOut[41]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[41]~7_combout\ = ( \Div0|auto_generated|divider|divider|op_3~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_16~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_16~9_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|op_16~1_sumout\ & (\Add4~25_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~25_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_16~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_16~9_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[41]~7_combout\);

-- Location: MLABCELL_X72_Y4_N21
\Div0|auto_generated|divider|divider|StageOut[45]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~28_combout\ = ( \Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & (\Div0|auto_generated|divider|divider|op_3~9_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Add4~21_sumout\))) ) ) # ( !\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_4~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\,
	datab => \ALT_INV_Add4~21_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~28_combout\);

-- Location: MLABCELL_X72_Y4_N30
\Div0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( \Add4~13_sumout\ ) + ( VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|op_5~10\ = CARRY(( \Add4~13_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~13_sumout\,
	cin => GND,
	sumout => \Div0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~10\);

-- Location: MLABCELL_X72_Y4_N33
\Div0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_4~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Add4~17_sumout\)) ) + 
-- ( VCC ) + ( \Div0|auto_generated|divider|divider|op_5~10\ ))
-- \Div0|auto_generated|divider|divider|op_5~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_4~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Add4~17_sumout\)) ) + ( VCC 
-- ) + ( \Div0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add4~17_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_5~10\,
	sumout => \Div0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~14\);

-- Location: MLABCELL_X72_Y4_N36
\Div0|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( \Div0|auto_generated|divider|divider|StageOut[45]~28_combout\ ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_5~14\ ))
-- \Div0|auto_generated|divider|divider|op_5~18\ = CARRY(( \Div0|auto_generated|divider|divider|StageOut[45]~28_combout\ ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~28_combout\,
	cin => \Div0|auto_generated|divider|divider|op_5~14\,
	sumout => \Div0|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~18\);

-- Location: MLABCELL_X72_Y4_N39
\Div0|auto_generated|divider|divider|op_5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_4~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[41]~7_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[41]~6_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[41]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[41]~7_combout\,
	cin => \Div0|auto_generated|divider|divider|op_5~18\,
	cout => \Div0|auto_generated|divider|divider|op_5~6_cout\);

-- Location: MLABCELL_X72_Y4_N42
\Div0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_5~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_5~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: LABCELL_X71_Y4_N30
\Div0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( \Add4~9_sumout\ ) + ( VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|op_6~18\ = CARRY(( \Add4~9_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add4~9_sumout\,
	cin => GND,
	sumout => \Div0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~18\);

-- Location: LABCELL_X71_Y4_N33
\Div0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Add4~13_sumout\)) ) + ( \Div0|auto_generated|divider|divider|op_6~18\ ))
-- \Div0|auto_generated|divider|divider|op_6~10\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Add4~13_sumout\)) 
-- ) + ( \Div0|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~13_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~18\,
	sumout => \Div0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~10\);

-- Location: LABCELL_X71_Y4_N27
\Div0|auto_generated|divider|divider|StageOut[45]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~4_combout\ = ( \Div0|auto_generated|divider|divider|op_4~13_sumout\ & ( !\Div0|auto_generated|divider|divider|op_4~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~4_combout\);

-- Location: MLABCELL_X72_Y4_N48
\Div0|auto_generated|divider|divider|StageOut[45]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~5_combout\ = ( \Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_3~9_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & (\Add4~21_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~21_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~5_combout\);

-- Location: LABCELL_X71_Y4_N21
\Div0|auto_generated|divider|divider|StageOut[49]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~27_combout\ = ( \Div0|auto_generated|divider|divider|op_5~13_sumout\ & ( \Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|op_4~9_sumout\)) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Add4~17_sumout\))) ) ) ) # ( !\Div0|auto_generated|divider|divider|op_5~13_sumout\ & ( \Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- ( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Div0|auto_generated|divider|divider|op_4~9_sumout\)) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Add4~17_sumout\))) ) ) ) # ( \Div0|auto_generated|divider|divider|op_5~13_sumout\ 
-- & ( !\Div0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	datab => \ALT_INV_Add4~17_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datae => \Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~27_combout\);

-- Location: LABCELL_X71_Y4_N36
\Div0|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( \Div0|auto_generated|divider|divider|StageOut[49]~27_combout\ ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_6~10\ ))
-- \Div0|auto_generated|divider|divider|op_6~14\ = CARRY(( \Div0|auto_generated|divider|divider|StageOut[49]~27_combout\ ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~27_combout\,
	cin => \Div0|auto_generated|divider|divider|op_6~10\,
	sumout => \Div0|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~14\);

-- Location: LABCELL_X71_Y4_N39
\Div0|auto_generated|divider|divider|op_6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_5~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[45]~5_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[45]~4_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~5_combout\,
	cin => \Div0|auto_generated|divider|divider|op_6~14\,
	cout => \Div0|auto_generated|divider|divider|op_6~6_cout\);

-- Location: LABCELL_X71_Y4_N42
\Div0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_6~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_6~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: LABCELL_X71_Y4_N9
\Div0|auto_generated|divider|divider|StageOut[53]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~25_combout\ = ( \Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Div0|auto_generated|divider|divider|op_5~9_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Add4~13_sumout\))) ) ) # ( !\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_6~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	datac => \ALT_INV_Add4~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~25_combout\);

-- Location: LABCELL_X70_Y4_N30
\Div0|auto_generated|divider|divider|op_7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~17_sumout\ = SUM(( \Add4~5_sumout\ ) + ( VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|op_7~18\ = CARRY(( \Add4~5_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add4~5_sumout\,
	cin => GND,
	sumout => \Div0|auto_generated|divider|divider|op_7~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~18\);

-- Location: LABCELL_X70_Y4_N33
\Div0|auto_generated|divider|divider|op_7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Div0|auto_generated|divider|divider|op_6~17_sumout\)) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Add4~9_sumout\))) ) + 
-- ( VCC ) + ( \Div0|auto_generated|divider|divider|op_7~18\ ))
-- \Div0|auto_generated|divider|divider|op_7~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Div0|auto_generated|divider|divider|op_6~17_sumout\)) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Add4~9_sumout\))) ) + ( VCC 
-- ) + ( \Div0|auto_generated|divider|divider|op_7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	datab => \ALT_INV_Add4~9_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~18\,
	sumout => \Div0|auto_generated|divider|divider|op_7~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~14\);

-- Location: LABCELL_X70_Y4_N36
\Div0|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( \Div0|auto_generated|divider|divider|StageOut[53]~25_combout\ ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_7~14\ ))
-- \Div0|auto_generated|divider|divider|op_7~10\ = CARRY(( \Div0|auto_generated|divider|divider|StageOut[53]~25_combout\ ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~25_combout\,
	cin => \Div0|auto_generated|divider|divider|op_7~14\,
	sumout => \Div0|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~10\);

-- Location: LABCELL_X70_Y4_N21
\Div0|auto_generated|divider|divider|StageOut[53]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~0_combout\ = ( \Div0|auto_generated|divider|divider|op_6~9_sumout\ & ( !\Div0|auto_generated|divider|divider|op_6~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~0_combout\);

-- Location: LABCELL_X71_Y4_N15
\Div0|auto_generated|divider|divider|StageOut[49]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~2_combout\ = ( !\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_5~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~2_combout\);

-- Location: LABCELL_X71_Y4_N48
\Div0|auto_generated|divider|divider|StageOut[49]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~3_combout\ = ( \Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \Add4~17_sumout\ ) ) ) # ( \Div0|auto_generated|divider|divider|op_5~1_sumout\ 
-- & ( !\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_4~9_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add4~17_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	datae => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~3_combout\);

-- Location: LABCELL_X70_Y4_N39
\Div0|auto_generated|divider|divider|op_7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_6~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[49]~3_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[49]~2_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~3_combout\,
	cin => \Div0|auto_generated|divider|divider|op_7~10\,
	cout => \Div0|auto_generated|divider|divider|op_7~6_cout\);

-- Location: LABCELL_X70_Y4_N42
\Div0|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_7~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_7~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_7~1_sumout\);

-- Location: LABCELL_X71_Y4_N54
\Div0|auto_generated|divider|divider|StageOut[53]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~1_combout\ = ( \Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( \Add4~13_sumout\ ) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_5~9_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~13_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	datae => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~1_combout\);

-- Location: LABCELL_X70_Y4_N54
\Div0|auto_generated|divider|divider|StageOut[57]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[57]~26_combout\ = ( \Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Div0|auto_generated|divider|divider|op_6~17_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Add4~9_sumout\))) ) ) # ( !\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_7~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	datab => \ALT_INV_Add4~9_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[57]~26_combout\);

-- Location: LABCELL_X70_Y4_N0
\Div0|auto_generated|divider|divider|op_8~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~18_cout\ = CARRY(( \Add4~1_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~1_sumout\,
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_8~18_cout\);

-- Location: LABCELL_X70_Y4_N3
\Div0|auto_generated|divider|divider|op_8~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~14_cout\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_7~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\Add4~5_sumout\)) ) + ( \Div0|auto_generated|divider|divider|op_8~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add4~5_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_8~18_cout\,
	cout => \Div0|auto_generated|divider|divider|op_8~14_cout\);

-- Location: LABCELL_X70_Y4_N6
\Div0|auto_generated|divider|divider|op_8~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~10_cout\ = CARRY(( \Div0|auto_generated|divider|divider|StageOut[57]~26_combout\ ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_8~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[57]~26_combout\,
	cin => \Div0|auto_generated|divider|divider|op_8~14_cout\,
	cout => \Div0|auto_generated|divider|divider|op_8~10_cout\);

-- Location: LABCELL_X70_Y4_N9
\Div0|auto_generated|divider|divider|op_8~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\Div0|auto_generated|divider|divider|op_7~9_sumout\)) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[53]~1_combout\) # (\Div0|auto_generated|divider|divider|StageOut[53]~0_combout\)))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_8~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~1_combout\,
	cin => \Div0|auto_generated|divider|divider|op_8~10_cout\,
	cout => \Div0|auto_generated|divider|divider|op_8~6_cout\);

-- Location: LABCELL_X70_Y4_N12
\Div0|auto_generated|divider|divider|op_8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_8~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_8~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_8~1_sumout\);

-- Location: LABCELL_X70_Y4_N18
\out[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \out[0]~0_combout\ = ( !\Div0|auto_generated|divider|divider|op_8~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \out[0]~0_combout\);

-- Location: FF_X70_Y4_N20
\out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out\(0));

-- Location: LABCELL_X70_Y4_N57
\out[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \out[1]~1_combout\ = ( !\Div0|auto_generated|divider|divider|op_7~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \out[1]~1_combout\);

-- Location: FF_X70_Y4_N58
\out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out\(1));

-- Location: LABCELL_X71_Y4_N6
\out[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \out[2]~2_combout\ = ( !\Div0|auto_generated|divider|divider|op_6~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \out[2]~2_combout\);

-- Location: FF_X71_Y4_N8
\out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \out[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out\(2));

-- Location: MLABCELL_X72_Y4_N18
\out[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \out[3]~3_combout\ = ( !\Div0|auto_generated|divider|divider|op_5~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \out[3]~3_combout\);

-- Location: FF_X72_Y4_N19
\out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \out[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out\(3));

-- Location: MLABCELL_X72_Y4_N51
\out[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \out[4]~4_combout\ = ( !\Div0|auto_generated|divider|divider|op_4~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \out[4]~4_combout\);

-- Location: FF_X72_Y4_N52
\out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \out[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out\(4));

-- Location: LABCELL_X73_Y4_N18
\out[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \out[5]~5_combout\ = ( !\Div0|auto_generated|divider|divider|op_3~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	combout => \out[5]~5_combout\);

-- Location: FF_X73_Y4_N19
\out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \out[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out\(5));

-- Location: MLABCELL_X72_Y4_N57
\out[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \out[6]~6_combout\ = ( !\Div0|auto_generated|divider|divider|op_16~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_16~1_sumout\,
	combout => \out[6]~6_combout\);

-- Location: FF_X72_Y4_N58
\out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \out[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out\(6));

-- Location: LABCELL_X74_Y4_N27
\out[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \out[7]~7_combout\ = ( !\Div0|auto_generated|divider|divider|op_15~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\,
	combout => \out[7]~7_combout\);

-- Location: FF_X74_Y4_N29
\out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \out[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out\(7));

-- Location: LABCELL_X74_Y4_N57
\out[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \out[8]~8_combout\ = ( !\Div0|auto_generated|divider|divider|op_14~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	combout => \out[8]~8_combout\);

-- Location: FF_X74_Y4_N58
\out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \out[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out\(8));

-- Location: LABCELL_X68_Y2_N0
\out[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \out[9]~9_combout\ = ( !\Div0|auto_generated|divider|divider|op_13~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Div0|auto_generated|divider|divider|ALT_INV_op_13~1_sumout\,
	combout => \out[9]~9_combout\);

-- Location: FF_X68_Y2_N1
\out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \out[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out\(9));

-- Location: LABCELL_X64_Y2_N0
\out[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \out[10]~10_combout\ = ( !\Div0|auto_generated|divider|divider|op_12~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	combout => \out[10]~10_combout\);

-- Location: FF_X64_Y2_N1
\out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \out[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out\(10));

-- Location: MLABCELL_X72_Y2_N51
\out[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \out[11]~11_combout\ = ( !\Div0|auto_generated|divider|divider|op_11~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	combout => \out[11]~11_combout\);

-- Location: FF_X72_Y2_N53
\out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \out[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out\(11));

-- Location: LABCELL_X66_Y2_N51
\out1[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out1[0]~feeder_combout\ = ( \Add4~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add4~1_sumout\,
	combout => \out1[0]~feeder_combout\);

-- Location: FF_X66_Y2_N52
\out1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \out1[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out1(0));

-- Location: LABCELL_X66_Y2_N45
\out1[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out1[1]~feeder_combout\ = ( \Add4~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add4~5_sumout\,
	combout => \out1[1]~feeder_combout\);

-- Location: FF_X66_Y2_N46
\out1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \out1[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out1(1));

-- Location: FF_X70_Y4_N17
\out1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add4~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out1(2));

-- Location: LABCELL_X66_Y2_N15
\out1[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out1[3]~feeder_combout\ = ( \Add4~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add4~13_sumout\,
	combout => \out1[3]~feeder_combout\);

-- Location: FF_X66_Y2_N16
\out1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \out1[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out1(3));

-- Location: FF_X71_Y4_N13
\out1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add4~17_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out1(4));

-- Location: FF_X72_Y4_N25
\out1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add4~21_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out1(5));

-- Location: FF_X72_Y3_N20
\out1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out1(6));

-- Location: FF_X74_Y4_N16
\out1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add4~29_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out1(7));

-- Location: FF_X74_Y4_N46
\out1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add4~33_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out1(8));

-- Location: LABCELL_X75_Y4_N0
\out1[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out1[9]~feeder_combout\ = ( \Add4~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add4~37_sumout\,
	combout => \out1[9]~feeder_combout\);

-- Location: FF_X75_Y4_N1
\out1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \out1[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out1(9));

-- Location: FF_X73_Y2_N53
\out1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add4~41_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out1(10));

-- Location: FF_X72_Y2_N25
\out1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add4~45_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out1(11));

-- Location: FF_X72_Y2_N19
\out1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add4~49_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out1(12));

-- Location: LABCELL_X70_Y2_N15
\out1[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out1[13]~feeder_combout\ = ( \Add4~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add4~53_sumout\,
	combout => \out1[13]~feeder_combout\);

-- Location: FF_X70_Y2_N16
\out1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \out1[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out1(13));

-- Location: FF_X71_Y2_N32
\out1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add4~57_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out1(14));

-- Location: LABCELL_X62_Y75_N0
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


