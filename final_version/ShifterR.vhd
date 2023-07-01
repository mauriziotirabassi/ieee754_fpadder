library ieee;
use ieee.std_logic_1164.all;

entity ShifterR is
	port(
		INPUT			: in 	std_logic_vector(23 downto 0);
		OFFSET		: in 	std_logic_vector(4 downto 0);  --Number of positions to shift in binary 
		SHIFTED		: out std_logic_vector(23 downto 0)
	);
	
end ShifterR;

architecture RTL of ShifterR is
begin 
	with OFFSET select
		SHIFTED <= INPUT												   when "00000", --0
				"0" & INPUT(23 downto 1)								when "00001", --1
				"00" & INPUT(23 downto 2)								when "00010", --2
				"000" & INPUT(23 downto 3)								when "00011", --3
				"0000" & INPUT(23 downto 4)							when "00100", --4
				"00000" & INPUT(23 downto 5)							when "00101", --5
				"000000" & INPUT(23 downto 6)							when "00110", --6
				"0000000" & INPUT(23 downto 7)						when "00111", --7
				"00000000" & INPUT(23 downto 8)						when "01000", --8
				"000000000" & INPUT(23 downto 9)						when "01001", --9
				"0000000000" & INPUT(23 downto 10)					when "01010", --10
				"00000000000" & INPUT(23 downto 11)					when "01011", --11
				"000000000000" & INPUT(23 downto 12)				when "01100", --12
				"0000000000000" & INPUT(23 downto 13)				when "01101", --13
				"00000000000000" & INPUT(23 downto 14)				when "01110", --14
				"000000000000000" & INPUT(23 downto 15)			when "01111", --15
				"0000000000000000" & INPUT(23 downto 16)			when "10000", --16
				"00000000000000000" & INPUT(23 downto 17)			when "10001", --17
				"000000000000000000" & INPUT(23 downto 18)		when "10010", --18
				"0000000000000000000" & INPUT(23 downto 19) 		when "10011", --19
				"00000000000000000000" & INPUT(23 downto 20) 	when "10100", --20
				"000000000000000000000" & INPUT(23 downto 21)	when "10101", --21
				"0000000000000000000000" & INPUT(23 downto 22)	when "10110", --22
				"00000000000000000000000" & INPUT(23)				when "10111", --23
				"000000000000000000000000"								when others;
				
	--The inputs can be of maximum 24 bits therefore ignoring the rest of the cases exceeding 24 positions
end RTL;