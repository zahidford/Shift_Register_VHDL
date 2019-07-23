library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_std.all;

entity Shift_Register is

port (
		Reg_A : out std_logic;
		Reg_B : out std_logic;
		Reg_C : out std_logic;
		Reg_D : out std_logic;
		Data_in : in std_logic;
		Reset : in std_logic;
		Clock : in std_logic);
		
--architecture

architecture behaviour of Shift_Register is

signal A_Reg, B_Reg : std_logic :='0';
signal C_Reg, D_Reg : std_logic :='0';


begin


Reg_A <=A_Reg;
Reg_B <=B_Reg;
Reg_C <=C_Reg;
Reg_D <=D_Reg;
	
reg_process: process(Clock) 
begin
	if(rising_edge(Clock) then
		 if (Reset = '1') then
			A_Reg <='0';
			B_Reg <='0';
			C_Reg <='0';
			D_Reg <='0';
		 else
		    A_Reg <= Data_in;
			B_Reg <= A_Reg;
			C_Reg <= B_Reg;
			D_Reg <= C_Reg;
		 end if;
	end if
	end process reg_process;

end behaviour;