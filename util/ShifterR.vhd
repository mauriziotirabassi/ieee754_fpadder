library ieee;
use ieee.std_logic_1164.all;

entity ShifterR is
port(
	INPUT			: in 	std_logic_vector(22 downto 0); --TODO: decidere dimensione input effettiva
	OFFSET		: in 	std_logic_vector(7 downto 0); --Perché di 8 bit?
	SHIFTED		: out std_logic_vector(23 downto 0)
	);
	
end ShifterR;

architecture RTL of ShifterR is
begin 

	with OFFSET select
		SHIFTED <=  INPUT & '0' 						when "00000000",
				"00" & INPUT(22 downto 1)			 	when "00000001",
				"000" & INPUT(22 downto 2)		 		when "00000010",
				"0000" & INPUT(22 downto 3)		 		when "00000011",
				"00000" & INPUT(22 downto 4)		 		when "00000100",
				"000000" & INPUT(22 downto 5)	 			when "00000101",
				"0000000" & INPUT(22 downto 6)	 		when "00000111",
				"00000000" & INPUT(22 downto 7) 			when "00001000",
				"000000000" & INPUT(22 downto 8)			when "00001001",
				"0000000000" & INPUT(22 downto 9)			when "00001010",
				"00000000000" & INPUT(22 downto 10)			when "00001011",
				"000000000000" & INPUT(22 downto 11) 		when "00001100",
				"0000000000000" & INPUT(22 downto 12) 		when "00001101",
				"00000000000000" & INPUT(22 downto 13) 		when "00001110",
				"000000000000000" & INPUT(22 downto 14) 		when "00001111",
				"0000000000000000" & INPUT(22 downto 15) 		when "00010000",
				"00000000000000000" & INPUT(22 downto 16)		when "00010001",
				"000000000000000000" & INPUT(22 downto 17) 	when "00010010",
				"0000000000000000000" & INPUT(22 downto 18) 	when "00010011",
				"00000000000000000000" & INPUT(22 downto 19) 	when "00010100",
				"000000000000000000000" & INPUT(22 downto 20) 	when "00010101",
				"0000000000000000000000" & INPUT(22 downto 21)	when "00010110",
				"00000000000000000000000" & INPUT(22)		when "00010111",
				"000000000000000000000000"				when others;
end RTL;

