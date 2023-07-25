LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
ENTITY C IS
PORT(
	K: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	L: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END C;

		ARCHITECTURE Behaviour OF C IS
				BEGIN
				L(0) <= (not K(3) and not K(2)) or (not K(3) and K(0)) or (not K(3) and K(1));
				L(1) <= (not K(3) and K(1));
				L(2) <= (not K(3) and K(2) and not K(0)) or (not K(3) and K(2) and K(1));
				L(3) <= (K(3) and not K(2) and not K(1) and not K(0));
				END Behaviour;
