library ieee;
use ieee.std_logic_1164.all;


entity SpecialOutput is
	port(
		ERR				: in	std_logic_vector(2 downto 0);
		SKIP				: in	std_logic_vector(31 downto 0);
		
		SPECIAL_OUTPUT	: out	std_logic_vector(31 downto 0);
		SPECIAL_FLAG	: out	std_logic
	);
end SpecialOutput;

architecture RTL of SpecialOutput is

	--REGION SIGNALS
	signal NaN, PLUS_INF, MINUS_INF, ZERO	: std_logic_vector(31 downto 0);
	--ENDREGION

begin

	--Definizione output speciali
	NaN			<= "01111111111111111111111111111111";
	PLUS_INF		<= "01111111100000000000000000000000";
	MINUS_INF	<= "11111111100000000000000000000000";
	ZERO			<= "00000000000000000000000000000000";
	
	--Scelta output in base al tipo di caso speciale
	with ERR	select
		SPECIAL_OUTPUT	<=	ZERO			when "010",
								NaN			when "011",
								PLUS_INF		when "100",
								MINUS_INF	when "101",
								SKIP			when others;
								
	--Viene comandato di dare in output il risultato speciale solo nel caso in cui ERR sia diverso da "000" (nessun errore)
	SPECIAL_FLAG	<= '0' when ERR(2 downto 0) = "000" else '1';

end RTL;

