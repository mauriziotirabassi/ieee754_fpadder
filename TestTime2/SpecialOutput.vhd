library ieee;
use ieee.std_logic_1164.all;

--Behavior of the module:
--1. Translating the encoded special output signal ERR
--2. Signaling that the output of the operation will have to be ignored in case an abnormality happened

entity SpecialOutput is
	port(
		ERR				: in	std_logic_vector(2 downto 0);
		SKIP				: in	std_logic_vector(31 downto 0);
		
		SPECIAL_OUTPUT	: out	std_logic_vector(31 downto 0);
		SPECIAL_FLAG	: out	std_logic --1 force special output, 0 forward operation result
	);
end SpecialOutput;

architecture RTL of SpecialOutput is

	--REGION SIGNALS
	signal NaN, PLUS_INF, MINUS_INF, ZERO	: std_logic_vector(31 downto 0);
	--ENDREGION

begin

	--Definition of special outputs
	NaN			<= "01111111111111111111111111111111";
	PLUS_INF		<= "01111111100000000000000000000000";
	MINUS_INF	<= "11111111100000000000000000000000";
	ZERO			<= "00000000000000000000000000000000";
	
	--Decoding the signal identifying the special case
	with ERR	select
		SPECIAL_OUTPUT	<=	ZERO			when "010",
								NaN			when "011",
								PLUS_INF		when "100",
								MINUS_INF	when "101",
								SKIP			when others; --random choice
								
	--Signaling that the output of the operation will have to be ignored in case an abnormality happened
	SPECIAL_FLAG	<= '0' when ERR(2 downto 0) = "000" else '1';

end RTL;

