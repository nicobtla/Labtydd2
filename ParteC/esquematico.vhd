-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Thu Nov 24 01:39:34 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY esquematico IS 
	PORT
	(
		a1 :  IN  STD_LOGIC;
		b1 :  IN  STD_LOGIC;
		a2 :  IN  STD_LOGIC;
		b2 :  IN  STD_LOGIC;
		a3 :  IN  STD_LOGIC;
		b3 :  IN  STD_LOGIC;
		a4 :  IN  STD_LOGIC;
		b4 :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		cin :  IN  STD_LOGIC;
		s1 :  OUT  STD_LOGIC;
		s2 :  OUT  STD_LOGIC;
		s3 :  OUT  STD_LOGIC;
		s4 :  OUT  STD_LOGIC;
		cout :  OUT  STD_LOGIC
	);
END esquematico;

ARCHITECTURE bdf_type OF esquematico IS 

COMPONENT sumador_completo
	PORT(a : IN STD_LOGIC;
		 b : IN STD_LOGIC;
		 cin : IN STD_LOGIC;
		 f : OUT STD_LOGIC;
		 cout : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	DFF_inst19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	DFF_inst17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	DFF_inst15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	DFF_inst14 :  STD_LOGIC;
SIGNAL	DFF_inst16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	DFF_inst12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	DFF_inst13 :  STD_LOGIC;
SIGNAL	DFF_inst18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;


BEGIN 



b2v_inst : sumador_completo
PORT MAP(a => DFF_inst19,
		 b => SYNTHESIZED_WIRE_0,
		 cin => SYNTHESIZED_WIRE_11,
		 f => SYNTHESIZED_WIRE_8,
		 cout => SYNTHESIZED_WIRE_10);


PROCESS(clk)
BEGIN
IF (RISING_EDGE(clk)) THEN
	s4 <= SYNTHESIZED_WIRE_1;
END IF;
END PROCESS;


b2v_inst10 : sumador_completo
PORT MAP(a => DFF_inst17,
		 b => SYNTHESIZED_WIRE_2,
		 cin => SYNTHESIZED_WIRE_3,
		 f => SYNTHESIZED_WIRE_6,
		 cout => SYNTHESIZED_WIRE_5);


b2v_inst11 : sumador_completo
PORT MAP(a => DFF_inst15,
		 b => SYNTHESIZED_WIRE_4,
		 cin => SYNTHESIZED_WIRE_5,
		 f => SYNTHESIZED_WIRE_1,
		 cout => cout);


PROCESS(clk)
BEGIN
IF (RISING_EDGE(clk)) THEN
	DFF_inst12 <= b1;
END IF;
END PROCESS;


PROCESS(clk)
BEGIN
IF (RISING_EDGE(clk)) THEN
	DFF_inst13 <= b2;
END IF;
END PROCESS;



PROCESS(clk)
BEGIN
IF (RISING_EDGE(clk)) THEN
	DFF_inst15 <= a4;
END IF;
END PROCESS;


PROCESS(clk)
BEGIN
IF (RISING_EDGE(clk)) THEN
	DFF_inst16 <= b4;
END IF;
END PROCESS;



PROCESS(clk)
BEGIN
IF (RISING_EDGE(clk)) THEN
	DFF_inst18 <= a2;
END IF;
END PROCESS;


PROCESS(clk)
BEGIN
IF (RISING_EDGE(clk)) THEN
	DFF_inst19 <= a1;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_2 <= DFF_inst14 XOR SYNTHESIZED_WIRE_11;


SYNTHESIZED_WIRE_4 <= DFF_inst16 XOR SYNTHESIZED_WIRE_11;


PROCESS(clk)
BEGIN
IF (RISING_EDGE(clk)) THEN
	SYNTHESIZED_WIRE_11 <= cin;
END IF;
END PROCESS;


PROCESS(clk)
BEGIN
IF (RISING_EDGE(clk)) THEN
	s3 <= SYNTHESIZED_WIRE_6;
END IF;
END PROCESS;


PROCESS(clk)
BEGIN
IF (RISING_EDGE(clk)) THEN
	s2 <= SYNTHESIZED_WIRE_7;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_0 <= DFF_inst12 XOR SYNTHESIZED_WIRE_11;


PROCESS(clk)
BEGIN
IF (RISING_EDGE(clk)) THEN
	s1 <= SYNTHESIZED_WIRE_8;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_9 <= DFF_inst13 XOR SYNTHESIZED_WIRE_11;


b2v_inst9 : sumador_completo
PORT MAP(a => DFF_inst18,
		 b => SYNTHESIZED_WIRE_9,
		 cin => SYNTHESIZED_WIRE_10,
		 f => SYNTHESIZED_WIRE_7,
		 cout => SYNTHESIZED_WIRE_3);


END bdf_type;