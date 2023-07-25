LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY Vhdl IS
PORT (
x1,x2,x3: IN STD_LOGIC;
f: OUT STD_LOGIC);
end Vhdl;

ARCHITECTURE Behaviour OF Vhdl IS
BEGIN
f <= (x1 AND x2) or (NOT x2 AND x3);
END Behaviour;
