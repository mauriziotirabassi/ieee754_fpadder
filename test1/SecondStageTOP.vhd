library ieee;
use ieee.std_logic_1164.all;

--Il secondo stadio della pipeline si occupa di:
--1. Shiftare la mantissa più piccola
--2. Effettuare l'operazione
--3. Gestire casi di overflow

entity SecondStageTOP is
	port(
		GRT_MAN	: in	std_logic_vector(22 downto 0); 
		SML_MAN	: in	std_logic_vector(22 downto 0); --Mantissa da shiftare
		GRT_EXP	: in	std_logic_vector(7 downto 0);
		
		OP_IN		: in	std_logic; --Operazione che deve effettivamente fare l'RCA/CLA
		OFF		: in	std_logic_vector(4 downto 0); --Offset per lo shift della mantissa più piccola
		
		SKIP_IN	: in	std_logic_vector(31 downto 0);
		ERR_IN	: in	std_logic_vector(2 downto 0);
		
		MAN_OUT	: out	std_logic_vector(23 downto 0);
		EXP_OUT	: out	std_logic_vector(7 downto 0);
		
		SKIP_OUT	: out	std_logic_vector(31 downto 0);
		ERR_OUT	: out	std_logic_vector(2 downto 0)
	);
end SecondStageTOP;

architecture RTL of SecondStageTOP is

	--REGION SIGNALS
	signal EXT_M1, EXT_M2, SHFT_M2, RESULT	: std_logic_vector(23 downto 0);
	signal PLUS_ONE	: std_logic_vector(7 downto 0);
	signal MAN_OF, EXP_OF	: std_logic;
	--ENDREGION

	--REGION COMPONENTS
	component ShifterR is
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
			COUT		: out	std_logic --sgn control for overflow of mantissa module ...shift R
		);
	end component;
	--ENDREGION

begin

	--Estendere di un bit la mantissa più grande in quanto RCA/CLA prende input di 24 bit
	EXT_M1	<= '1'	& GRT_MAN;
	
	--Esplicitare il significant della mantissa più piccola perché shifter prende input di 24 bit perché RCA/CLA prende input di 24 bit
	EXT_M2	<= '1'	& SML_MAN;
	
	--TODO: Check se mantissa shiftabile non è più necessario perché ho ispezionato cause precedentemente con ERR
	
	--Shift mantissa più piccola
	SHFT:	ShifterR
		port map(
			INPUT		=> EXT_M2,
			OFFSET	=> OFF,
			SHIFTED	=> SHFT_M2
		);
		
	--Operazione effettiva tra mantisse
	OP:	RCA
		generic map(
			N	=> 24
		)
		
		port map(
			INPUT1	=> EXT_M1,
			INPUT2	=> SHFT_M2,
			OP			=> OP_IN,
			OUTPUT	=> RESULT,
			COUT		=> MAN_OF
		);
		
	--Gestione overflow mantissa
	MAN_OUT	<=	RESULT	when MAN_OF	= '0'	else	('1' &	RESULT(23 downto 1));
		
	--Correzione esponente
	PLUS_ONE	<= "0000000"	& MAN_OF; -- Input somma con esponente prende parole di 8 bit (1 o 0 in base al cout della mantissa)
	
	P1:	RCA
		generic map(
			N	=> 8
		)
		
		port map(
			INPUT1	=> GRT_EXP,
			INPUT2	=> PLUS_ONE,
			OP			=> '0', --Addizione
			OUTPUT	=> EXP_OUT, --Valore exp indipendente da eventuale overflow in quanto output viene forzato al terzo stage
			COUT		=> EXP_OF		
		);
	
	--Forwarding skip
	SKIP_OUT	<= SKIP_IN;
	
	--Selezione errore exp overflow --TODO: Decidere che erroe è effettivamente (adesso è +inf)
	ERR_OUT	<= "100" when EXP_OF = '1' else ERR_IN;
	
end RTL;

