LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY HalfAddSub IS
PORT (	AddSub, A, B 	: IN STD_LOGIC;
		C, Sum 			: OUT STD_LOGIC );
END HalfAddSub;

ARCHITECTURE HAS OF HalfAddSub IS
BEGIN
	C <= A AND (B XOR AddSub);
	SUM <= A XOR B;
END HAS;