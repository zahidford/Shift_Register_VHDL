library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_std.all;

entity Shift_Register_Test is
end Shift_Register_Test;
		
--architecture

architecture test of Shift_Register_Test is

component Shift_Register
port (
		Reg_A : out std_logic;
		Reg_B : out std_logic;
		Reg_C : out std_logic;
		Reg_D : out std_logic;
		Data_in : in std_logic;
		Reset : in std_logic;
		Clock : in std_logic);
		
end component;

signal	        Reg_A :  std_logic;
signal		Reg_B :  std_logic;
signal		Reg_C :  std_logic;
signal		Reg_D :  std_logic;
signal		Data_in :std_logic :='0';
signal		Reset :  std_logic :='0';
signal		Clock :  std_logic :='1';


begin
     dev_to_test : Shift_Register port map (Reg_A,Reg_B,Reg_C,Reg_D,Data_in,Reset,Clock);
     clk_stimulus: process 
		begin
		wait for 10 ns;
		Clock <= not Clock;
     end process clk_stimulus;
	 
     data_stimulus: process
	 	begin
	 	wait for 10 ns;
	 	Data_In <= not Data_in;
	 	wait for 150 ns;
      end process data_stimulus; 
     

end test;
