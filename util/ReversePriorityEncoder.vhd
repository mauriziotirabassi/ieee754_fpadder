library ieee;
use ieee.std_logic_1164.all;

--Mi dice di quanto deve shiftare la mantissa risultato per essere normalizzata
entity ReversePriorityEncoder is
	port(
			INPUT 	: in 	std_logic_vector(22 downto 0);
			OUTPUT 	: out	std_logic_vector(4 downto 0)
	);
end ReversePriorityEncoder;

architecture RTL of ReversePriorityEncoder is

begin
		OUTPUT	<= 	"00000"		when INPUT(22) = '1' 
					else	"00001"	when INPUT(22 downto 21) = "01" 
					else	"00010"	when INPUT(22 downto 20) = "001"
					else	"00011"	when INPUT(22 downto 19) = "0001"
					else	"00100"	when INPUT(22 downto 18) = "00001"
					else	"00101"	when INPUT(22 downto 17) = "000001"
					else	"00110"	when INPUT(22 downto 16) = "0000001"
					else	"00111"	when INPUT(22 downto 15) = "00000001"
					else	"01000"	when INPUT(22 downto 14) = "000000001"
					else	"01001"	when INPUT(22 downto 13) = "0000000001"
					else	"01010"	when INPUT(22 downto 12) = "00000000001"
					else	"01011"	when INPUT(22 downto 11) = "000000000001"
					else	"01100"	when INPUT(22 downto 10) = "0000000000001"
					else	"01101"	when INPUT(22 downto 9) = "00000000000001"
					else	"01110"	when INPUT(22 downto 8)  = "000000000000001"
					else	"01111"	when INPUT(22 downto 7)  = "0000000000000001"
					else	"10000"	when INPUT(22 downto 6)  = "00000000000000001"
					else	"10001"	when INPUT(22 downto 5)  = "000000000000000001"
					else	"10010"	when INPUT(22 downto 4)  = "0000000000000000001"
					else	"10011"	when INPUT(22 downto 3)  = "00000000000000000001"
					else	"10100"	when INPUT(22 downto 2)  = "000000000000000000001"
					else	"10101"	when INPUT(22 downto 1)  = "0000000000000000000001"
					else	"10110"	when INPUT(22 downto 0)  = "00000000000000000000001"
					else	"10111"	when INPUT(22 downto 0)  = "00000000000000000000000" --Gestione eccezione(?)
					else	"-----";
end RTL;



