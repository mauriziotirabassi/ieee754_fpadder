library ieee;
use ieee.std_logic_1164.all;

entity Normalizer is
	port(
		MAN_IN	: std_logic_vector(23 downto 0);
		EXP_IN	: std_logic_vector(7 downto 0);
		MAN_OUT	: std_logic_vector(23 downto 0);
		EXP_OUT	: std_logic_vector(7 downto 0);
	);
	
end Normalizer;

architecture RTL of Normalizer is

	--Moduli

	--Mi dice di quanto deve shiftare la mantissa risultato per essere normalizzata
	component ReversePriorityEncoder is
		port(
				INPUT 	: in 	std_logic_vector(23 downto 0);
				OUTPUT 	: out	std_logic_vector(4 downto 0)
		);
	end component;

	--Shifter Left per shiftare effettivamente la mantissa risultato
	component ShifterL is
		port(
				INPUT			: in 	std_logic_vector(23 downto 0); --TODO: Shifter prende in ingresso 24 bit, non 23...
				OFFSET		: in 	std_logic_vector(4 downto 0); 
				SHIFTED		: out std_logic_vector(23 downto 0)
		);
	
	end component;

	--Sub/Adder per decrementare eventualmente l'esponente
	component add_sub_EXP is
		generic(
				N:integer := 8
		);

		port( 
				A		: in std_logic_vector(N-1 downto 0);
				B		: in std_logic_vector(N-1 downto 0);
				SUB		: in std_logic;
				S		: out std_logic_vector(N-1 downto 0);
				Cout		: out std_logic
		);
	
	end component;

	--Segnali
	signal MAN_OFF : std_logic_vector(4 downto 0);
	

begin

	--Calcolo posizione primo 1
	RPE: ReversePriorityEncoder
		port map(
			INPUT		=> MAN_IN,
			OUTPUT	=> MAN_OFF
		);

	--TODO: Verifica se mantissa shiftabile con eventuale gestione eccezioni

	--Shifto a sinistra di tante posizioni quante posizione
	SHL: ShiftL
		port map(
			INPUT		=> MAN_IN,
			OFFSET	=> MAN_OFF,
			OUTPUT	=> MAN_OUT
		);

	--TODO: Verifica se esponente decrementabile con eventuale gestione eccezioni

	--Decremento l'esponente
	SUB_EXP: add_sub_EXP
		generic map(
			N => 8
		)

		port map( 
			A		=> EXP_IN,
			B		=> MAN_OFF,
			SUB		=> '1', --Sottrazione
			S		=> EXP_OUT, --TODO: se S == 0 => underflow
		);

end RTL;