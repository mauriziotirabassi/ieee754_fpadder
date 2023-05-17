library ieee;
use ieee.std_logic_1164.all;

entity Normalizer is
	port(
		MAN_IN	: in	std_logic_vector(23 downto 0);
		EXP_IN	: in	std_logic_vector(7 downto 0);
		
		MAN_OUT	: out	std_logic_vector(23 downto 0);
		EXP_OUT	: out	std_logic_vector(7 downto 0);
		EXP_UF	: out std_logic --Flag che mi dice se si è verificato un underflow dell'esponente
	);
	
end Normalizer;

architecture RTL of Normalizer is

	--REGION SIGNALS
	signal MAN_OFF : std_logic_vector(4 downto 0);
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
	
	component EightBitComparator is
		port(
			E1    : in std_logic_vector(7 downto 0); 
			E2    : in std_logic_vector(7 downto 0);
			SML   : out std_logic;
			EQ    : out std_logic;
			GRT   : out std_logic
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

	--Shifto a sinistra di tante posizioni quante offset
	SHFT:		ShifterL
		port map(
			INPUT		=> MAN_IN,
			OFFSET	=> MAN_OFF,
			SHIFTED	=> MAN_OUT
		);
		
	--TODO: Il MSB '1' adesso è esplicito: rendere implicito

	--Verifico se esponente decrementabile
	SUB_EXP	<= "000"	& MAN_OFF; --Comparatore e RCA/CLA prendono parole di 8 bit
	
	CMP_EXP:	EightBitComparator
		port map(
			E1		=> EXP_IN,
			E2		=> SUB_EXP,
			SML	=> EXP_UF,
			EQ 	=> open,
			GRT	=> open
		);

	--Decremento l'esponente
	OP:	RCA
		generic map(
			N => 8
		)

		port map( 
			INPUT1	=> EXP_IN,
			INPUT2	=> EXP_OUT,
			OP			=> '1', --Sottrazione
			COUT		=> open --Irrilevante perché sottrazione
		);

end RTL;