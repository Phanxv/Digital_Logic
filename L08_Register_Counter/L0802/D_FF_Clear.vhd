LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY D_FF_Clear IS
PORT (	D, CLK, Clear 	: IN STD_LOGIC;
		Q 				: OUT STD_LOGIC );
END D_FF_Clear;

ARCHITECTURE Behavior OF D_FF_Clear IS
BEGIN
	PROCESS(CLK, Clear)
	BEGIN
		IF Clear = '0' THEN
			Q <= '0';
		ELSIF RISING_EDGE(CLK) THEN
			Q <= D;
		END IF;
	END PROCESS ;
END Behavior;