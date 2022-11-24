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

-- Generated by Quartus II Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition
-- Created on Thu Nov 24 16:11:12 2022

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY adc IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        x : IN STD_LOGIC := '0';
        s1 : OUT STD_LOGIC;
        s2 : OUT STD_LOGIC;
        s3 : OUT STD_LOGIC
    );
END adc;

ARCHITECTURE BEHAVIOR OF adc IS
    TYPE type_fstate IS (state6,state4,state5,state2,state3,state7,state1,state9,state8,state10,state11,state15,state14,state13,state12);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,x)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= state1;
            s1 <= '0';
            s2 <= '0';
            s3 <= '0';
        ELSE
            s1 <= '0';
            s2 <= '0';
            s3 <= '0';
            CASE fstate IS
                WHEN state6 =>
                    IF ((x = '0')) THEN
                        reg_fstate <= state13;
                    ELSIF ((x = '1')) THEN
                        reg_fstate <= state12;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state6;
                    END IF;
                WHEN state4 =>
                    IF ((x = '0')) THEN
                        reg_fstate <= state9;
                    ELSIF ((x = '1')) THEN
                        reg_fstate <= state8;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state4;
                    END IF;
                WHEN state5 =>
                    IF ((x = '1')) THEN
                        reg_fstate <= state10;
                    ELSIF ((x = '0')) THEN
                        reg_fstate <= state11;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state5;
                    END IF;
                WHEN state2 =>
                    IF ((x = '1')) THEN
                        reg_fstate <= state4;
                    ELSIF ((x = '0')) THEN
                        reg_fstate <= state5;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state2;
                    END IF;
                WHEN state3 =>
                    IF ((x = '1')) THEN
                        reg_fstate <= state6;
                    ELSIF ((x = '0')) THEN
                        reg_fstate <= state7;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state3;
                    END IF;
                WHEN state7 =>
                    IF ((x = '0')) THEN
                        reg_fstate <= state15;
                    ELSIF ((x = '1')) THEN
                        reg_fstate <= state14;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state7;
                    END IF;
                WHEN state1 =>
                    IF ((x = '1')) THEN
                        reg_fstate <= state2;
                    ELSIF ((x = '0')) THEN
                        reg_fstate <= state3;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state1;
                    END IF;
                WHEN state9 =>
                    reg_fstate <= state9;

                    s3 <= '1';

                    s1 <= '0';

                    s2 <= '0';
                WHEN state8 =>
                    reg_fstate <= state8;

                    s3 <= '0';

                    s1 <= '0';

                    s2 <= '0';
                WHEN state10 =>
                    reg_fstate <= state10;

                    s3 <= '0';

                    s1 <= '0';

                    s2 <= '1';
                WHEN state11 =>
                    reg_fstate <= state11;

                    s3 <= '1';

                    s1 <= '0';

                    s2 <= '1';
                WHEN state15 =>
                    reg_fstate <= state15;

                    s3 <= '1';

                    s1 <= '1';

                    s2 <= '1';
                WHEN state14 =>
                    reg_fstate <= state14;

                    s3 <= '0';

                    s1 <= '1';

                    s2 <= '1';
                WHEN state13 =>
                    reg_fstate <= state13;

                    s3 <= '1';

                    s1 <= '1';

                    s2 <= '0';
                WHEN state12 =>
                    reg_fstate <= state12;

                    s3 <= '0';

                    s1 <= '1';

                    s2 <= '0';
                WHEN OTHERS => 
                    s1 <= 'X';
                    s2 <= 'X';
                    s3 <= 'X';
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;