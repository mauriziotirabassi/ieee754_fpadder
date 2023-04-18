
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ShifterRight is
port(
	M: in std_logic_vector(22 downto 0);
	OFFSET: in std_logic_vector(4 downto 0);
	M_SHIFTED: out std_logic_vector(22 downto 0)
	);
	
end ShifterRight;

architecture RTL of ShifterRight is
begin 

with OFFSET select
	M_SHIFTED <= M 														when "00000",
					"01" & M(22 downto 1)			 					when "00001",
					"001" & M(22 downto 2)		 						when "00010",
					"0001" & M(22 downto 3)		 						when "00011",
					"00001" & M(22 downto 4)		 					when "00100",
					"000001" & M(22 downto 5)	 						when "00101",
					"0000001" & M(22 downto 6)	 						when "00111",
					"00000001" & M(22 downto 7) 						when "01000",
					"000000001" & M(22 downto 8)					 	when "01001",
					"0000000001" & M(22 downto 9)						when "01010",
					"00000000001" & M(22 downto 10)					when "01011",
					"000000000001" & M(22 downto 11) 				when "01100",
					"0000000000001" & M(22 downto 12) 				when "01101",
					"00000000000001" & M(22 downto 13) 				when "01110",
					"000000000000001" & M(22 downto 14) 			when "01111",
					"0000000000000001" & M(22 downto 15) 			when "10000",
					"00000000000000001" & M(22 downto 16)			when "00001",
					"000000000000000001" & M(22 downto 17) 		when "00001",
					"0000000000000000001" & M(22 downto 18) 		when "10001",
					"00000000000000000001" & M(22 downto 19) 		when "10010",
					"000000000000000000001" & M(22 downto 20) 	when "10011",
					"0000000000000000000001" & M(22 downto 21) 	when "10100",
					"00000000000000000000001" & M(22) 				when "10101",
					"000000000000000000000001"							when "10110",
					"000000000000000000000000"							when others;
					
end RTL;

