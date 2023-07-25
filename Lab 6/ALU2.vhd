library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU2 is
port(Clock:in std_logic;
	A,B : in unsigned(7 downto 0);
	student_id : in unsigned(3 downto 0);
	OP : in unsigned(15 downto 0);
	Neg : out std_logic;
	R1: out unsigned(3 downto 0);
	R2: out unsigned(3 downto 0));
end ALU2;
architecture calculation of ALU2 is
signal Reg1,Reg2,Result : unsigned(7 downto 0) :=(others=> '0');
signal Reg4 : unsigned(0 to 7);
begin    
Reg1 <= A;
Reg2 <= B;
process(Clock,OP)
    begin    
    if(rising_edge(Clock)) THEN 
        case OP is
            WHEN "0000000000000001" =>--Diff(A,B)
						if (Reg1 > Reg2) then
						Result <= ( Reg1 - Reg2 );
						else
						Result <= ( Reg2 - Reg1 );
						NEG <= '1';
					  end if ;
					  
            WHEN "0000000000000010" =>--2's Complement of B 
				Result <= NOT Reg2 + "00000001"; neg<='0';
						
            WHEN "0000000000000100" =>--Swap lower 4 bits of A with lower 4 bits of B
				Result <= (Reg1 xor "0011") and (Reg2 or "0011"); neg<='0';

            WHEN "0000000000001000" =>--Produce Null
				Result <= NULL; neg<='0';
				
            WHEN "0000000000010000" =>--Decrement B by 5
				Result <= Reg2 - "0101";
				
            WHEN "0000000000100000" =>--Invert bit significance order of A
				Result <= (Reg1(0),Reg1(1),Reg1(2), Reg1(3),Reg1(4),Reg1(5),Reg1(6),Reg1(7)); neg<='0';                   

            WHEN "0000000001000000" =>--Shift B to left by 3 bits, input bit=1(SHL)
				Result <= Reg2 Sll 3; neg<='0';

            WHEN "0000000010000000" =>--Increment A by 3
				Result <= Reg1 + "0011"; neg<='0';

            WHEN "0000000100000000" =>--Invert all bits of B 
				Result <= NOT Reg2; neg<='0';
				
            WHEN OTHERS => Result<= "--------";
       
			end case;
    end if;
    end process;
    
R1 <= Result(3 downto 0);
R2 <= Result(7 downto 4);
end calculation;