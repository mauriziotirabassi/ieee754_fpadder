library ieee;
use ieee.std_logic_1164.all;

entity ShifterL is
	port(
		INPUT			: in 	std_logic_vector(22 downto 0);
		--Numero di posizioni da voler shiftare in codifica binaria
		--Max possibile per un numero da 23 è 31 con 5 bit come input (scarto 8 in "others")
		OFFSET		: in 	std_logic_vector(4 downto 0); 
		SHIFTED		: out std_logic_vector(23 downto 0)
	);
	
end ShifterL;

architecture RTL of ShifterL is
begin 
	--TODO: Considerare implementazione ricorsiva
	with OFFSET select
		SHIFTED <=  INPUT 		 & '0' 				when "00000", --Miglior modo per no shift?
				INPUT(21 downto 0) & "00"				when "00001",
				INPUT(20 downto 0) & "000"				when "00010",
				INPUT(19 downto 0) & "0000"				when "00011",
				INPUT(18 downto 0) & "00000"				when "00100",
				INPUT(17 downto 0) & "000000"				when "00101",
				INPUT(16 downto 0) & "0000000"			when "00110",
				INPUT(15 downto 0) & "00000000"			when "00111",
				INPUT(14 downto 0) & "000000000"			when "01000",
				INPUT(13 downto 0) & "0000000000"			when "01001",
				INPUT(12 downto 0) & "00000000000"			when "01010",
				INPUT(11 downto 0) & "000000000000"			when "01011",
				INPUT(10 downto 0) & "0000000000000"		when "01100",
				INPUT(9 downto 0)  & "00000000000000"		when "01101",
				INPUT(8 downto 0)  & "000000000000000"		when "01110",
				INPUT(7 downto 0)  & "0000000000000000"		when "01111",
				INPUT(6 downto 0)  & "00000000000000000"		when "10000",
				INPUT(5 downto 0)  & "000000000000000000"		when "10010",
				INPUT(4 downto 0)  & "0000000000000000000"	when "10011",
				INPUT(3 downto 0)  & "00000000000000000000"	when "10100",
				INPUT(2 downto 0)  & "000000000000000000000"	when "10101",
				INPUT(1 downto 0)  & "0000000000000000000000"	when "10110",
				INPUT(0)  		 & "0000000000000000000000"	when "10111",
				"00000000000000000000000"				when others;
end RTL;

