library ieee;
use ieee.std_logic_1164.all;

entity Normalizer is
	port(
		MAN_IN	: in	std_logic_vector(23 downto 0);
		EXP_IN	: in	std_logic_vector(7 downto 0);
		
		MAN_OUT	: out	std_logic_vector(23 downto 0);
		EXP_OUT	: out	std_logic_vector(7 downto 0)
	);
	
end Normalizer;

architecture RTL of Normalizer is

	--REGION SIGNALS
	signal MAN_OFF : std_logic_vector(4 downto 0);
	signal SUB_EXP	: std_logic_vector(7 downto 0);
	signal REM_EXP	: std_logic;
	--ENDREGION
	
	--REGION COMPONENTS
	component ReversePriorityEncoder is
		port(
				INPUT 	: in 	std_logic_vector(23 downto 0);
				OUTPUT 	: out	std_logic_vector(4 downto 0)
		);
	end component;

	component ShifterL is
		port(
				INPUT			: in 	std_logic_vector(23 downto 0);
				OFFSET		: in 	std_logic_vector(4 downto 0); 
				SHIFTED		: out std_logic_vector(23 downto 0)
		);
	end component;

	component RCA is
		generic(
			N	: integer := 24
		);

		port( 
			INPUT1	: in	std_logic_vector(N-1 downto 0);
			INPUT2	: in	std_logic_vector(N-1 downto 0);
			OP			: in	std_logic; --1 se sottrazione, 0 se addizione
			OUTPUT	: out	std_logic_vector(N-1 downto 0);
			COUT		: out	std_logic
		);
	end component;
	--ENDREGION

begin

	--Calcolo posizione primo '1' della mantissa da shiftare
	RPE: ReversePriorityEncoder
		port map(
			INPUT		=> MAN_IN,
			OUTPUT	=> MAN_OFF
		);

	--TODO: Verifica se mantissa shiftabile con eventuale gestione eccezioni

	--Shifto a sinistra di tante posizioni quante posizione
	SHFT:		ShifterL
		port map(
			INPUT		=> MAN_IN,
			OFFSET	=> MAN_OFF,
			SHIFTED	=> MAN_OUT
		);

	--TODO: Verifica se esponente decrementabile con eventuale gestione eccezioni

	--Decremento l'esponente
	SUB_EXP	<= "000"	& MAN_OFF; --Sottrattore esponente prende parole di 8 bit
	
	OP:	RCA
		generic map(
			N => 8
		)

		port map( 
			INPUT1	=> EXP_IN,
			INPUT2	=> SUB_EXP,
			OP			=> '1', --Sottrazione
			COUT		=> REM_EXP --TODO: Inutile, è una sottrazione, decidere come togliere
		);
		
	--TODO: Gestione caso underflow (per il momento sputo il risultato)
	EXP_OUT	<= SUB_EXP;

end RTL;