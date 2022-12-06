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
-- CREATED		"Mon Dec 05 22:09:28 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Block1 IS 
	PORT
	(
		x :  IN  STD_LOGIC;
		inclk0 :  IN  STD_LOGIC;
		areset :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		s1 :  OUT  STD_LOGIC;
		s2 :  OUT  STD_LOGIC;
		s3 :  OUT  STD_LOGIC;
		c0 :  OUT  STD_LOGIC;
		locked :  OUT  STD_LOGIC;
		led1 :  OUT  STD_LOGIC;
		led2 :  OUT  STD_LOGIC;
		led3 :  OUT  STD_LOGIC
	);
END Block1;

ARCHITECTURE bdf_type OF Block1 IS 

COMPONENT adc
	PORT(reset : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 x : IN STD_LOGIC;
		 r : IN STD_LOGIC;
		 s1 : OUT STD_LOGIC;
		 s2 : OUT STD_LOGIC;
		 s3 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT reloj
	PORT(inclk0 : IN STD_LOGIC;
		 areset : IN STD_LOGIC;
		 c0 : OUT STD_LOGIC;
		 locked : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;


BEGIN 
s1 <= SYNTHESIZED_WIRE_3;
s2 <= SYNTHESIZED_WIRE_4;
s3 <= SYNTHESIZED_WIRE_5;
c0 <= SYNTHESIZED_WIRE_0;
locked <= SYNTHESIZED_WIRE_2;
led1 <= SYNTHESIZED_WIRE_3;
led2 <= SYNTHESIZED_WIRE_4;
led3 <= SYNTHESIZED_WIRE_5;



b2v_inst : adc
PORT MAP(reset => reset,
		 clock => SYNTHESIZED_WIRE_0,
		 x => x,
		 r => SYNTHESIZED_WIRE_1,
		 s1 => SYNTHESIZED_WIRE_3,
		 s2 => SYNTHESIZED_WIRE_4,
		 s3 => SYNTHESIZED_WIRE_5);


SYNTHESIZED_WIRE_1 <= NOT(SYNTHESIZED_WIRE_2);



b2v_inst4 : reloj
PORT MAP(inclk0 => inclk0,
		 areset => areset,
		 c0 => SYNTHESIZED_WIRE_0,
		 locked => SYNTHESIZED_WIRE_2);


END bdf_type;