library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux2to1 is
port(
		w0,w1: in std_logic;
		s: in std_logic;
		f: out std_logic

	);
end mux2to1;

architecture Behavioral of mux2to1 is
begin
	with s select
		f <= w0 when '0',
			  w1 when '1';
end Behavioral;
