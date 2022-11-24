LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY maq_estado IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        x : IN STD_LOGIC := '0'
    );
END maq_estado;

ARCHITECTURE BEHAVIOR OF maq_estado IS
    TYPE type_fstate IS (state1,state4,state2,state3);
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
        ELSE
            CASE fstate IS
                WHEN state1 =>
                    IF ((x = '0')) THEN
                        reg_fstate <= state2;
                    ELSIF ((x = '1')) THEN
                        reg_fstate <= state3;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state1;
                    END IF;
                WHEN state4 =>
                    IF ((x = '1')) THEN
                        reg_fstate <= state1;
                    ELSIF ((x = '0')) THEN
                        reg_fstate <= state4;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state4;
                    END IF;
                WHEN state2 =>
                    IF ((x = '1')) THEN
                        reg_fstate <= state1;
                    ELSIF ((x = '0')) THEN
                        reg_fstate <= state2;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state2;
                    END IF;
                WHEN state3 =>
                    IF ((x = '0')) THEN
                        reg_fstate <= state4;
                    ELSIF ((x = '1')) THEN
                        reg_fstate <= state2;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state3;
                    END IF;
                WHEN OTHERS => 
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;
