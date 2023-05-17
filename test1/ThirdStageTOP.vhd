library ieee;
use ieee.std_logic_1164.all;

--Terzo stadio della pipeline si occupa di:
--1. Correggere il risultato
--2. Gestire casi eccezionali come (?)

entity ThirdStageTOP is
	port(
		SIG_IN	: in	std_logic; --TODO: Forwardarla ttraverso gli stage
		MAN_IN	: in	std_logic_vector(23 downto 0);
		EXP_IN	: in	std_logic_vector(7 downto 0);
		
		SKIP		: in	std_logic_vector(31 downto 0);
		ERR		: in	std_logic_vector(2 downto 0);
		
		FINAL		: out	std_logic_vector(31 downto 0)
	);	
end ThirdStageTOP;

architecture RTL of ThirdStageTOP is

	--REGION SIGNALS
	signal TMP_EXP		: std_logic_vector(7 downto 0);
	signal TMP_MAN		: std_logic_vector(23 downto 0);
	signal TMP_SPECIAL: std_logic_vector(31 downto 0);
	signal TMP_FLAG	: std_logic;
	--ENDREGION
	
	--REGION COMPONENTS
	component Normalizer is
		port(
			MAN_IN	: in	std_logic_vector(23 downto 0);
			EXP_IN	: in	std_logic_vector(7 downto 0);
			MAN_OUT	: out	std_logic_vector(23 downto 0);
			EXP_OUT	: out	std_logic_vector(7 downto 0)
		);
	end component;
	
	component SpecialOutput is
		port(
			ERR				: in	std_logic_vector(2 downto 0);
			SKIP				: in	std_logic_vector(31 downto 0);
			SPECIAL_OUTPUT	: out	std_logic_vector(31 downto 0);
			SPECIAL_FLAG	: out	std_logic_vector
		);
	end component;
	--ENDREGION

begin

	--Normalizzo il risultato dell'operazione fatta nello stage precedente
	NORM:	Normalizer
		port map(
			MAN_IN	=> MAN_IN,
			EXP_IN	=> EXP_IN,
			MAN_OUT	=> TMP_MAN,
			EXP_OUT	=> TMP_EXP
		);

	--Decido l'output speciale nel caso in cui ERR sia diverso da "000" e setto la flag per comandare la forzatura dell'output
	ERR:	SpecialOutput
		port map(
			ERR				=> ERR,
			SKIP				=> SKIP,
			SPECIAL_OUTPUT	=> TMP_SPECIAL,
			SPECIAL_FLAG	=> TMP_FLAG
		);
		
	--Output è forzato a speciale oppure è il risultato della normalizzazione (rendendo nuovamente il significand 1 implicio: slicing mantissa)
	FINAL	<= (SIG_IN & TMP_EXP & TMP_MAN(22 downto 0)) when TMP_FLAG = '0' else TMP_SPECIAL;

end RTL;

