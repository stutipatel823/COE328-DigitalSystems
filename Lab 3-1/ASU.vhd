LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY ASU IS
    PORT(Cin          :IN  STD_LOGIC;
         X,Y          :IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
          S            :OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
          Cout,Overflow,Sign:OUT STD_LOGIC);
END ASU;

ARCHITECTURE Behavior OF ASU IS
    SIGNAL sum : STD_LOGIC_VECTOR(4 DOWNTO 0);
    BEGIN
    PROCESS (Cin)
    BEGIN
        IF (Cin = '0') THEN
        Sum <= (('0' &X) + ('0' &Y));
        S <= Sum(3 DOWNTO 0);
        Cout <= Sum(4);
        SIGN <= '0';
    ELSE
        Sum <= (('1' & X) - ('1' & Y));
        S <= Sum(3 DOWNTO 0);
        Cout <= Sum(4);
        SIGN <= '1';
    END IF;

    END PROCESS;
END Behavior;