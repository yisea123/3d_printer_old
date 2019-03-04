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
-- Generated on "02/15/2019 17:36:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          clk_gen
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY clk_gen_vhd_vec_tst IS
END clk_gen_vhd_vec_tst;
ARCHITECTURE clk_gen_arch OF clk_gen_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL clk_out : STD_LOGIC;
SIGNAL count : STD_LOGIC_VECTOR(30 DOWNTO 0);
SIGNAL finish : STD_LOGIC;
SIGNAL reduction : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT clk_gen
	PORT (
	clk : IN STD_LOGIC;
	clk_out : OUT STD_LOGIC;
	count : IN STD_LOGIC_VECTOR(30 DOWNTO 0);
	finish : OUT STD_LOGIC;
	reduction : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : clk_gen
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clk_out => clk_out,
	count => count,
	finish => finish,
	reduction => reduction,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 10000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- count[30]
t_prcs_count_30: PROCESS
BEGIN
	count(30) <= '0';
WAIT;
END PROCESS t_prcs_count_30;
-- count[29]
t_prcs_count_29: PROCESS
BEGIN
	count(29) <= '0';
WAIT;
END PROCESS t_prcs_count_29;
-- count[28]
t_prcs_count_28: PROCESS
BEGIN
	count(28) <= '0';
WAIT;
END PROCESS t_prcs_count_28;
-- count[27]
t_prcs_count_27: PROCESS
BEGIN
	count(27) <= '0';
WAIT;
END PROCESS t_prcs_count_27;
-- count[26]
t_prcs_count_26: PROCESS
BEGIN
	count(26) <= '0';
WAIT;
END PROCESS t_prcs_count_26;
-- count[25]
t_prcs_count_25: PROCESS
BEGIN
	count(25) <= '0';
WAIT;
END PROCESS t_prcs_count_25;
-- count[24]
t_prcs_count_24: PROCESS
BEGIN
	count(24) <= '0';
WAIT;
END PROCESS t_prcs_count_24;
-- count[23]
t_prcs_count_23: PROCESS
BEGIN
	count(23) <= '0';
WAIT;
END PROCESS t_prcs_count_23;
-- count[22]
t_prcs_count_22: PROCESS
BEGIN
	count(22) <= '0';
WAIT;
END PROCESS t_prcs_count_22;
-- count[21]
t_prcs_count_21: PROCESS
BEGIN
	count(21) <= '0';
WAIT;
END PROCESS t_prcs_count_21;
-- count[20]
t_prcs_count_20: PROCESS
BEGIN
	count(20) <= '0';
WAIT;
END PROCESS t_prcs_count_20;
-- count[19]
t_prcs_count_19: PROCESS
BEGIN
	count(19) <= '0';
WAIT;
END PROCESS t_prcs_count_19;
-- count[18]
t_prcs_count_18: PROCESS
BEGIN
	count(18) <= '0';
WAIT;
END PROCESS t_prcs_count_18;
-- count[17]
t_prcs_count_17: PROCESS
BEGIN
	count(17) <= '0';
WAIT;
END PROCESS t_prcs_count_17;
-- count[16]
t_prcs_count_16: PROCESS
BEGIN
	count(16) <= '0';
WAIT;
END PROCESS t_prcs_count_16;
-- count[15]
t_prcs_count_15: PROCESS
BEGIN
	count(15) <= '0';
WAIT;
END PROCESS t_prcs_count_15;
-- count[14]
t_prcs_count_14: PROCESS
BEGIN
	count(14) <= '0';
WAIT;
END PROCESS t_prcs_count_14;
-- count[13]
t_prcs_count_13: PROCESS
BEGIN
	count(13) <= '0';
WAIT;
END PROCESS t_prcs_count_13;
-- count[12]
t_prcs_count_12: PROCESS
BEGIN
	count(12) <= '0';
WAIT;
END PROCESS t_prcs_count_12;
-- count[11]
t_prcs_count_11: PROCESS
BEGIN
	count(11) <= '0';
WAIT;
END PROCESS t_prcs_count_11;
-- count[10]
t_prcs_count_10: PROCESS
BEGIN
	count(10) <= '0';
WAIT;
END PROCESS t_prcs_count_10;
-- count[9]
t_prcs_count_9: PROCESS
BEGIN
	count(9) <= '0';
WAIT;
END PROCESS t_prcs_count_9;
-- count[8]
t_prcs_count_8: PROCESS
BEGIN
	count(8) <= '0';
WAIT;
END PROCESS t_prcs_count_8;
-- count[7]
t_prcs_count_7: PROCESS
BEGIN
	count(7) <= '0';
WAIT;
END PROCESS t_prcs_count_7;
-- count[6]
t_prcs_count_6: PROCESS
BEGIN
	count(6) <= '0';
WAIT;
END PROCESS t_prcs_count_6;
-- count[5]
t_prcs_count_5: PROCESS
BEGIN
	count(5) <= '0';
WAIT;
END PROCESS t_prcs_count_5;
-- count[4]
t_prcs_count_4: PROCESS
BEGIN
	count(4) <= '0';
WAIT;
END PROCESS t_prcs_count_4;
-- count[3]
t_prcs_count_3: PROCESS
BEGIN
	count(3) <= '0';
WAIT;
END PROCESS t_prcs_count_3;
-- count[2]
t_prcs_count_2: PROCESS
BEGIN
	count(2) <= '1';
WAIT;
END PROCESS t_prcs_count_2;
-- count[1]
t_prcs_count_1: PROCESS
BEGIN
	count(1) <= '1';
WAIT;
END PROCESS t_prcs_count_1;
-- count[0]
t_prcs_count_0: PROCESS
BEGIN
	count(0) <= '0';
WAIT;
END PROCESS t_prcs_count_0;
-- reduction[31]
t_prcs_reduction_31: PROCESS
BEGIN
	reduction(31) <= '0';
WAIT;
END PROCESS t_prcs_reduction_31;
-- reduction[30]
t_prcs_reduction_30: PROCESS
BEGIN
	reduction(30) <= '0';
WAIT;
END PROCESS t_prcs_reduction_30;
-- reduction[29]
t_prcs_reduction_29: PROCESS
BEGIN
	reduction(29) <= '0';
WAIT;
END PROCESS t_prcs_reduction_29;
-- reduction[28]
t_prcs_reduction_28: PROCESS
BEGIN
	reduction(28) <= '0';
WAIT;
END PROCESS t_prcs_reduction_28;
-- reduction[27]
t_prcs_reduction_27: PROCESS
BEGIN
	reduction(27) <= '0';
WAIT;
END PROCESS t_prcs_reduction_27;
-- reduction[26]
t_prcs_reduction_26: PROCESS
BEGIN
	reduction(26) <= '0';
WAIT;
END PROCESS t_prcs_reduction_26;
-- reduction[25]
t_prcs_reduction_25: PROCESS
BEGIN
	reduction(25) <= '0';
WAIT;
END PROCESS t_prcs_reduction_25;
-- reduction[24]
t_prcs_reduction_24: PROCESS
BEGIN
	reduction(24) <= '0';
WAIT;
END PROCESS t_prcs_reduction_24;
-- reduction[23]
t_prcs_reduction_23: PROCESS
BEGIN
	reduction(23) <= '0';
WAIT;
END PROCESS t_prcs_reduction_23;
-- reduction[22]
t_prcs_reduction_22: PROCESS
BEGIN
	reduction(22) <= '0';
WAIT;
END PROCESS t_prcs_reduction_22;
-- reduction[21]
t_prcs_reduction_21: PROCESS
BEGIN
	reduction(21) <= '0';
WAIT;
END PROCESS t_prcs_reduction_21;
-- reduction[20]
t_prcs_reduction_20: PROCESS
BEGIN
	reduction(20) <= '0';
WAIT;
END PROCESS t_prcs_reduction_20;
-- reduction[19]
t_prcs_reduction_19: PROCESS
BEGIN
	reduction(19) <= '0';
WAIT;
END PROCESS t_prcs_reduction_19;
-- reduction[18]
t_prcs_reduction_18: PROCESS
BEGIN
	reduction(18) <= '0';
WAIT;
END PROCESS t_prcs_reduction_18;
-- reduction[17]
t_prcs_reduction_17: PROCESS
BEGIN
	reduction(17) <= '0';
WAIT;
END PROCESS t_prcs_reduction_17;
-- reduction[16]
t_prcs_reduction_16: PROCESS
BEGIN
	reduction(16) <= '0';
WAIT;
END PROCESS t_prcs_reduction_16;
-- reduction[15]
t_prcs_reduction_15: PROCESS
BEGIN
	reduction(15) <= '0';
WAIT;
END PROCESS t_prcs_reduction_15;
-- reduction[14]
t_prcs_reduction_14: PROCESS
BEGIN
	reduction(14) <= '0';
WAIT;
END PROCESS t_prcs_reduction_14;
-- reduction[13]
t_prcs_reduction_13: PROCESS
BEGIN
	reduction(13) <= '0';
WAIT;
END PROCESS t_prcs_reduction_13;
-- reduction[12]
t_prcs_reduction_12: PROCESS
BEGIN
	reduction(12) <= '0';
WAIT;
END PROCESS t_prcs_reduction_12;
-- reduction[11]
t_prcs_reduction_11: PROCESS
BEGIN
	reduction(11) <= '0';
WAIT;
END PROCESS t_prcs_reduction_11;
-- reduction[10]
t_prcs_reduction_10: PROCESS
BEGIN
	reduction(10) <= '0';
WAIT;
END PROCESS t_prcs_reduction_10;
-- reduction[9]
t_prcs_reduction_9: PROCESS
BEGIN
	reduction(9) <= '0';
WAIT;
END PROCESS t_prcs_reduction_9;
-- reduction[8]
t_prcs_reduction_8: PROCESS
BEGIN
	reduction(8) <= '0';
WAIT;
END PROCESS t_prcs_reduction_8;
-- reduction[7]
t_prcs_reduction_7: PROCESS
BEGIN
	reduction(7) <= '0';
WAIT;
END PROCESS t_prcs_reduction_7;
-- reduction[6]
t_prcs_reduction_6: PROCESS
BEGIN
	reduction(6) <= '0';
WAIT;
END PROCESS t_prcs_reduction_6;
-- reduction[5]
t_prcs_reduction_5: PROCESS
BEGIN
	reduction(5) <= '0';
WAIT;
END PROCESS t_prcs_reduction_5;
-- reduction[4]
t_prcs_reduction_4: PROCESS
BEGIN
	reduction(4) <= '0';
WAIT;
END PROCESS t_prcs_reduction_4;
-- reduction[3]
t_prcs_reduction_3: PROCESS
BEGIN
	reduction(3) <= '0';
WAIT;
END PROCESS t_prcs_reduction_3;
-- reduction[2]
t_prcs_reduction_2: PROCESS
BEGIN
	reduction(2) <= '0';
WAIT;
END PROCESS t_prcs_reduction_2;
-- reduction[1]
t_prcs_reduction_1: PROCESS
BEGIN
	reduction(1) <= '0';
WAIT;
END PROCESS t_prcs_reduction_1;
-- reduction[0]
t_prcs_reduction_0: PROCESS
BEGIN
	reduction(0) <= '1';
WAIT;
END PROCESS t_prcs_reduction_0;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 300000 ps;
	FOR i IN 1 TO 16
	LOOP
		reset <= '0';
		WAIT FOR 300000 ps;
		reset <= '1';
		WAIT FOR 300000 ps;
	END LOOP;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END clk_gen_arch;
