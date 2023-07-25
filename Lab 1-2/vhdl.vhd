LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY Vhdl1 IS
PORT (
x1,x2,x3: IN STD_LOGIC;
f: OUT STD_LOGIC);
end Vhdl1;

ARCHITECTURE Behaviour OF Vhdl1 IS
BEGIN
f <= (x1 AND x2) or (NOT x2 AND x3);
END Behaviour;
