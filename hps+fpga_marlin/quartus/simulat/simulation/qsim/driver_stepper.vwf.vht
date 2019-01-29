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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/22/2019 22:06:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          driver_stepper
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY driver_stepper_vhd_vec_tst IS
END driver_stepper_vhd_vec_tst;
ARCHITECTURE driver_stepper_arch OF driver_stepper_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL FPGA_CLK1_50 : STD_LOGIC;
SIGNAL fin : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL flags1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL reset_step1 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL step_signal : STD_LOGIC;
SIGNAL stepper_1_speed : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL stepper_1_step_in : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL stepper_1_step_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT driver_stepper
	PORT (
	FPGA_CLK1_50 : IN STD_LOGIC;
	fin : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	flags1 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	reset_step1 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	step_signal : OUT STD_LOGIC;
	stepper_1_speed : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	stepper_1_step_in : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	stepper_1_step_out : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : driver_stepper
	PORT MAP (
-- list connections between master ports and signals
	FPGA_CLK1_50 => FPGA_CLK1_50,
	fin => fin,
	flags1 => flags1,
	reset_step1 => reset_step1,
	step_signal => step_signal,
	stepper_1_speed => stepper_1_speed,
	stepper_1_step_in => stepper_1_step_in,
	stepper_1_step_out => stepper_1_step_out
	);

-- FPGA_CLK1_50
t_prcs_FPGA_CLK1_50: PROCESS
BEGIN
LOOP
	FPGA_CLK1_50 <= '0';
	WAIT FOR 10000 ps;
	FPGA_CLK1_50 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_FPGA_CLK1_50;
-- stepper_1_step_out[31]
t_prcs_stepper_1_step_out_31: PROCESS
BEGIN
	stepper_1_step_out(31) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_31;
-- stepper_1_step_out[30]
t_prcs_stepper_1_step_out_30: PROCESS
BEGIN
	stepper_1_step_out(30) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_30;
-- stepper_1_step_out[29]
t_prcs_stepper_1_step_out_29: PROCESS
BEGIN
	stepper_1_step_out(29) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_29;
-- stepper_1_step_out[28]
t_prcs_stepper_1_step_out_28: PROCESS
BEGIN
	stepper_1_step_out(28) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_28;
-- stepper_1_step_out[27]
t_prcs_stepper_1_step_out_27: PROCESS
BEGIN
	stepper_1_step_out(27) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_27;
-- stepper_1_step_out[26]
t_prcs_stepper_1_step_out_26: PROCESS
BEGIN
	stepper_1_step_out(26) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_26;
-- stepper_1_step_out[25]
t_prcs_stepper_1_step_out_25: PROCESS
BEGIN
	stepper_1_step_out(25) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_25;
-- stepper_1_step_out[24]
t_prcs_stepper_1_step_out_24: PROCESS
BEGIN
	stepper_1_step_out(24) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_24;
-- stepper_1_step_out[23]
t_prcs_stepper_1_step_out_23: PROCESS
BEGIN
	stepper_1_step_out(23) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_23;
-- stepper_1_step_out[22]
t_prcs_stepper_1_step_out_22: PROCESS
BEGIN
	stepper_1_step_out(22) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_22;
-- stepper_1_step_out[21]
t_prcs_stepper_1_step_out_21: PROCESS
BEGIN
	stepper_1_step_out(21) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_21;
-- stepper_1_step_out[20]
t_prcs_stepper_1_step_out_20: PROCESS
BEGIN
	stepper_1_step_out(20) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_20;
-- stepper_1_step_out[19]
t_prcs_stepper_1_step_out_19: PROCESS
BEGIN
	stepper_1_step_out(19) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_19;
-- stepper_1_step_out[18]
t_prcs_stepper_1_step_out_18: PROCESS
BEGIN
	stepper_1_step_out(18) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_18;
-- stepper_1_step_out[17]
t_prcs_stepper_1_step_out_17: PROCESS
BEGIN
	stepper_1_step_out(17) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_17;
-- stepper_1_step_out[16]
t_prcs_stepper_1_step_out_16: PROCESS
BEGIN
	stepper_1_step_out(16) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_16;
-- stepper_1_step_out[15]
t_prcs_stepper_1_step_out_15: PROCESS
BEGIN
	stepper_1_step_out(15) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_15;
-- stepper_1_step_out[14]
t_prcs_stepper_1_step_out_14: PROCESS
BEGIN
	stepper_1_step_out(14) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_14;
-- stepper_1_step_out[13]
t_prcs_stepper_1_step_out_13: PROCESS
BEGIN
	stepper_1_step_out(13) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_13;
-- stepper_1_step_out[12]
t_prcs_stepper_1_step_out_12: PROCESS
BEGIN
	stepper_1_step_out(12) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_12;
-- stepper_1_step_out[11]
t_prcs_stepper_1_step_out_11: PROCESS
BEGIN
	stepper_1_step_out(11) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_11;
-- stepper_1_step_out[10]
t_prcs_stepper_1_step_out_10: PROCESS
BEGIN
	stepper_1_step_out(10) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_10;
-- stepper_1_step_out[9]
t_prcs_stepper_1_step_out_9: PROCESS
BEGIN
	stepper_1_step_out(9) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_9;
-- stepper_1_step_out[8]
t_prcs_stepper_1_step_out_8: PROCESS
BEGIN
	stepper_1_step_out(8) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_8;
-- stepper_1_step_out[7]
t_prcs_stepper_1_step_out_7: PROCESS
BEGIN
	stepper_1_step_out(7) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_7;
-- stepper_1_step_out[6]
t_prcs_stepper_1_step_out_6: PROCESS
BEGIN
	stepper_1_step_out(6) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_6;
-- stepper_1_step_out[5]
t_prcs_stepper_1_step_out_5: PROCESS
BEGIN
	stepper_1_step_out(5) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_5;
-- stepper_1_step_out[4]
t_prcs_stepper_1_step_out_4: PROCESS
BEGIN
	stepper_1_step_out(4) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_4;
-- stepper_1_step_out[3]
t_prcs_stepper_1_step_out_3: PROCESS
BEGIN
	stepper_1_step_out(3) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_3;
-- stepper_1_step_out[2]
t_prcs_stepper_1_step_out_2: PROCESS
BEGIN
	stepper_1_step_out(2) <= '1';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_2;
-- stepper_1_step_out[1]
t_prcs_stepper_1_step_out_1: PROCESS
BEGIN
	stepper_1_step_out(1) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_1;
-- stepper_1_step_out[0]
t_prcs_stepper_1_step_out_0: PROCESS
BEGIN
	stepper_1_step_out(0) <= '1';
WAIT;
END PROCESS t_prcs_stepper_1_step_out_0;
-- stepper_1_speed[31]
t_prcs_stepper_1_speed_31: PROCESS
BEGIN
	stepper_1_speed(31) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_31;
-- stepper_1_speed[30]
t_prcs_stepper_1_speed_30: PROCESS
BEGIN
	stepper_1_speed(30) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_30;
-- stepper_1_speed[29]
t_prcs_stepper_1_speed_29: PROCESS
BEGIN
	stepper_1_speed(29) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_29;
-- stepper_1_speed[28]
t_prcs_stepper_1_speed_28: PROCESS
BEGIN
	stepper_1_speed(28) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_28;
-- stepper_1_speed[27]
t_prcs_stepper_1_speed_27: PROCESS
BEGIN
	stepper_1_speed(27) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_27;
-- stepper_1_speed[26]
t_prcs_stepper_1_speed_26: PROCESS
BEGIN
	stepper_1_speed(26) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_26;
-- stepper_1_speed[25]
t_prcs_stepper_1_speed_25: PROCESS
BEGIN
	stepper_1_speed(25) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_25;
-- stepper_1_speed[24]
t_prcs_stepper_1_speed_24: PROCESS
BEGIN
	stepper_1_speed(24) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_24;
-- stepper_1_speed[23]
t_prcs_stepper_1_speed_23: PROCESS
BEGIN
	stepper_1_speed(23) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_23;
-- stepper_1_speed[22]
t_prcs_stepper_1_speed_22: PROCESS
BEGIN
	stepper_1_speed(22) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_22;
-- stepper_1_speed[21]
t_prcs_stepper_1_speed_21: PROCESS
BEGIN
	stepper_1_speed(21) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_21;
-- stepper_1_speed[20]
t_prcs_stepper_1_speed_20: PROCESS
BEGIN
	stepper_1_speed(20) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_20;
-- stepper_1_speed[19]
t_prcs_stepper_1_speed_19: PROCESS
BEGIN
	stepper_1_speed(19) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_19;
-- stepper_1_speed[18]
t_prcs_stepper_1_speed_18: PROCESS
BEGIN
	stepper_1_speed(18) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_18;
-- stepper_1_speed[17]
t_prcs_stepper_1_speed_17: PROCESS
BEGIN
	stepper_1_speed(17) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_17;
-- stepper_1_speed[16]
t_prcs_stepper_1_speed_16: PROCESS
BEGIN
	stepper_1_speed(16) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_16;
-- stepper_1_speed[15]
t_prcs_stepper_1_speed_15: PROCESS
BEGIN
	stepper_1_speed(15) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_15;
-- stepper_1_speed[14]
t_prcs_stepper_1_speed_14: PROCESS
BEGIN
	stepper_1_speed(14) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_14;
-- stepper_1_speed[13]
t_prcs_stepper_1_speed_13: PROCESS
BEGIN
	stepper_1_speed(13) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_13;
-- stepper_1_speed[12]
t_prcs_stepper_1_speed_12: PROCESS
BEGIN
	stepper_1_speed(12) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_12;
-- stepper_1_speed[11]
t_prcs_stepper_1_speed_11: PROCESS
BEGIN
	stepper_1_speed(11) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_11;
-- stepper_1_speed[10]
t_prcs_stepper_1_speed_10: PROCESS
BEGIN
	stepper_1_speed(10) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_10;
-- stepper_1_speed[9]
t_prcs_stepper_1_speed_9: PROCESS
BEGIN
	stepper_1_speed(9) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_9;
-- stepper_1_speed[8]
t_prcs_stepper_1_speed_8: PROCESS
BEGIN
	stepper_1_speed(8) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_8;
-- stepper_1_speed[7]
t_prcs_stepper_1_speed_7: PROCESS
BEGIN
	stepper_1_speed(7) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_7;
-- stepper_1_speed[6]
t_prcs_stepper_1_speed_6: PROCESS
BEGIN
	stepper_1_speed(6) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_6;
-- stepper_1_speed[5]
t_prcs_stepper_1_speed_5: PROCESS
BEGIN
	stepper_1_speed(5) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_5;
-- stepper_1_speed[4]
t_prcs_stepper_1_speed_4: PROCESS
BEGIN
	stepper_1_speed(4) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_4;
-- stepper_1_speed[3]
t_prcs_stepper_1_speed_3: PROCESS
BEGIN
	stepper_1_speed(3) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_3;
-- stepper_1_speed[2]
t_prcs_stepper_1_speed_2: PROCESS
BEGIN
	stepper_1_speed(2) <= '0';
WAIT;
END PROCESS t_prcs_stepper_1_speed_2;
-- stepper_1_speed[1]
t_prcs_stepper_1_speed_1: PROCESS
BEGIN
	stepper_1_speed(1) <= '1';
WAIT;
END PROCESS t_prcs_stepper_1_speed_1;
-- stepper_1_speed[0]
t_prcs_stepper_1_speed_0: PROCESS
BEGIN
	stepper_1_speed(0) <= '1';
WAIT;
END PROCESS t_prcs_stepper_1_speed_0;
END driver_stepper_arch;
