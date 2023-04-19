
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SignPicker is
port(
	S1 	 : in std_logic;
	S2 	 : in std_logic;
	E_comp : in std_logic_vector(1 downto 0); --10 is equal, 01 is grt, sml bit is ignored since 00 implies sml
	M_comp : in std_logic; --greater or not  
	S_grt  : out std_logic);
end SignPicker;


architecture RTL of SignPicker is
signal temp: std_logic_vector(0 to 2);

begin
	temp <= E_comp & M_comp;
	with temp select
	S_grt <= S2 when "100",
				S2 when "000",
				S2 when "001",
				S1 when others;
end RTL;
