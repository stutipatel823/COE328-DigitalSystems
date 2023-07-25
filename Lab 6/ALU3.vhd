library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU3 is
port(Clock:in std_logic;
	A,B : in unsigned(7 downto 0);
	student_id : in unsigned(3 downto 0);
	OP : in unsigned(15 downto 0);
	Neg : out std_logic;
	R1: out unsigned(3 downto 0);
	R2: out unsigned(3 downto 0));
end ALU3;
architecture calculation of ALU3 is
signal Reg1,Reg2,Result : unsigned(7 downto 0) :=(others=> '0');
signal Reg4 : unsigned(0 to 7);
begin    
Reg1 <= A;
Reg2 <= B;
process(Clock,OP)
    begin    
    if(rising_edge(Clock)) THEN 
        case OP is
		  --y = "00000001" and n = "00000000"
            WHEN "0000000000000001" =>--5
						if (student_id mod 2 = 0) then
						Result <= "00000000";
						else
						Result <= "00000001";
					  end if ;
					  neg<='0';
					  
            WHEN "0000000000000010" =>--0
						if (student_id mod 2 = 0) then
						Result <= "00000000";
						else
						Result <= "00000001";
					  end if ;
					  neg<='0';
						
            WHEN "0000000000000100" =>--0
						if (student_id mod 2 = 0) then
						Result <= "00000000";
						else
						Result <= "00000001";
					  end if ;
					  neg<='0';
					  
            WHEN "0000000000001000" =>--7
						if (student_id mod 2 = 0) then
						Result <= "00000000";
						else
						Result <= "00000001";
					  end if ;
					  neg<='0';
					  
            WHEN "0000000000010000" =>--1
						if (student_id mod 2 = 0) then
						Result <= "00000000";
						else
						Result <= "00000001";
					  end if ;
					  neg<='0';
					  
            WHEN "0000000000100000" =>--3
						if (student_id mod 2 = 0) then
						Result <= "00000000";
						else
						Result <= "00000001";
					  end if ;
					  neg<='0';
					  
            WHEN "0000000001000000" =>--0
						if (student_id mod 2 = 0) then
						Result <= "00000000";
						else
						Result <= "00000001";
					  end if ;
					  neg<='0';
					
            WHEN "0000000010000000" =>--6
						if (student_id mod 2 = 0) then
						Result <= "00000000";
						else
						Result <= "00000001";
					  end if ;
					  neg<='0';
					  
            WHEN "0000000100000000" =>--2
						if (student_id mod 2 = 0) then
						Result <= "00000000";
						else
						Result <= "00000001";
					  end if ;
					  neg<='0';
					  
            WHEN OTHERS => Result<= "--------";
       
			end case;
    end if;
    end process;
    
R1 <= Result(3 downto 0);
R2 <= Result(7 downto 4);
end calculation;

