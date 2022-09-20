LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY FF_JK IS
PORT( J, K, Clk : IN STD_LOGIC;
Q, Qinv : OUT STD_LOGIC );
END FF_JK;
ARCHITECTURE JK OF FF_JK IS
BEGIN
PROCESS(Clk)
VARIABLE var_Q, var_Qinv : STD_LOGIC;
BEGIN
IF (RISING_EDGE(Clk)) THEN
var_Q := (NOT(var_Q) AND J) OR (var_Q AND (NOT(K)));
var_Qinv := (NOT(var_Qinv) AND K) OR (var_Qinv AND (NOT(J)));
END IF;
Q <= var_Q;
Qinv <= var_Qinv;
END PROCESS;
END JK;