library ieee;
use ieee.std_logic_1164.all;

entity ShifterR is
port(
	INPUT			: in 	std_logic_vector(23 downto 0);
	OFFSET		: in 	std_logic_vector(4 downto 0);
	SHIFTED		: out std_logic_vector(23 downto 0)
	);
	
end ShifterR;

architecture RTL of ShifterR is
begin 

	with OFFSET select
		SHIFTED <= INPUT												   when "00000",
				"0" & INPUT(23 downto 1)								when "00001",
				"00" & INPUT(23 downto 2)								when "00010",
				"000" & INPUT(23 downto 3)								when "00011",
				"0000" & INPUT(23 downto 4)							when "00100",
				"00000" & INPUT(23 downto 5)							when "00101",
				"000000" & INPUT(23 downto 6)							when "00111",
				"0000000" & INPUT(23 downto 7)						when "01000",
				"00000000" & INPUT(23 downto 8)						when "01001",
				"000000000" & INPUT(23 downto 9)						when "01010",
				"0000000000" & INPUT(23 downto 10)					when "01011",
				"00000000000" & INPUT(23 downto 11)					when "01100",
				"000000000000" & INPUT(23 downto 12)				when "01101",
				"0000000000000" & INPUT(23 downto 13)				when "01110",
				"00000000000000" & INPUT(23 downto 14)				when "01111",
				"000000000000000" & INPUT(23 downto 15)			when "10000",
				"0000000000000000" & INPUT(23 downto 16)			when "10001",
				"00000000000000000" & INPUT(23 downto 17)			when "10010",
				"000000000000000000" & INPUT(23 downto 18)		when "10011",
				"0000000000000000000" & INPUT(23 downto 19) 		when "10100",
				"00000000000000000000" & INPUT(23 downto 20) 	when "10101",
				"000000000000000000000" & INPUT(23 downto 21)	when "10110",
				"0000000000000000000000" & INPUT(23 downto 22)	when "10111",
				"00000000000000000000000" & INPUT(23)				when "11000",
				"000000000000000000000000"								when others;
end RTL;