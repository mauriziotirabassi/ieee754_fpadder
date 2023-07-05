library ieee;
use ieee.std_logic_1164.all;

entity ShifterL is
	port(
		INPUT			: in 	std_logic_vector(23 downto 0);
		OFFSET		: in 	std_logic_vector(4 downto 0); --Number of positions to shift in binary 
		SHIFTED		: out std_logic_vector(23 downto 0)
	);
	
end ShifterL;

architecture RTL of ShifterL is
begin 
	with OFFSET select
		SHIFTED <=  INPUT													when "00000", --0
				INPUT(22 downto 0) & "0"								when "00001", --1
				INPUT(21 downto 0) & "00"								when "00010", --2
				INPUT(20 downto 0) & "000"								when "00011", --3
				INPUT(19 downto 0) & "0000"							when "00100", --4
				INPUT(18 downto 0) & "00000"							when "00101", --5
				INPUT(17 downto 0) & "000000"							when "00110", --6
				INPUT(16 downto 0) & "0000000"						when "00111", --7
				INPUT(15 downto 0) & "00000000"						when "01000", --8
				INPUT(14 downto 0) & "000000000"						when "01001", --9
				INPUT(13 downto 0) & "0000000000"					when "01010", --10
				INPUT(12 downto 0) & "00000000000"					when "01011", --11
				INPUT(11 downto 0) & "000000000000"					when "01100", --12
				INPUT(10 downto 0) & "0000000000000"				when "01101", --13
				INPUT(9 downto 0)  & "00000000000000"				when "01110", --14
				INPUT(8 downto 0)  & "000000000000000"				when "01111", --15
				INPUT(7 downto 0)  & "0000000000000000"			when "10000", --16
				INPUT(6 downto 0)  & "00000000000000000"			when "10001", --17
				INPUT(5 downto 0)  & "000000000000000000"			when "10010", --18
				INPUT(4 downto 0)  & "0000000000000000000"		when "10011", --19
				INPUT(3 downto 0)  & "00000000000000000000"		when "10100", --20
				INPUT(2 downto 0)  & "000000000000000000000"		when "10101", --21
				INPUT(1 downto 0)  & "0000000000000000000000"	when "10110", --22
				INPUT(0)  		 	 & "00000000000000000000000"	when "10111", --23
				"000000000000000000000000"								when others;
				
	--The inputs can be of maximum 24 bits therefore ignoring the rest of the cases exceeding 24 positions
end RTL;