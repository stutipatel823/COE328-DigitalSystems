LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY Vhdl2 IS
PORT (
w1,w2,w3,w4: IN STD_LOGIC;
g,h: OUT STD_LOGIC);
end Vhdl2;

ARCHITECTURE Behaviour OF Vhdl2 IS
BEGIN
g <= (w1 AND w2) or (w3 AND w4);
h <= (w1 AND w3) or (w2 AND w4);
END Behaviour;


