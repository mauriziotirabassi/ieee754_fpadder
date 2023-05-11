library ieee;
use ieee.std_logic_1164.all;

--Il primo stadio della pipeline prende in ingresso i due numeri e l'operazione da effettuare e si occupa di:
--1. Gestire caso speciale in cui un operando sia 0
--2. Restituire le due mantisse tale che M1 > M2
--3. Restituire la differenza tra gli esponenti il cui valore è l'offset dello shift di M2
--4. Gestire caso speciale per cui la differenza degli esponenti sia un valore maggiore della lunghezza delle mantisse

entity FirstStageTOP is
	port(
		INPUT1	: in	std_logic_vector(31 downto 0);
		INPUT2	: in	std_logic_vector(31 downto 0);
		
		OP_IN 	: in	std_logic; --0 se somma, 1 se sottrazione
		
		GRT_MAN	: out	std_logic_vector(22 downto 0); --TODO: Decidere se la mantissa più grande già consideri il significant esplicitamente
		SML_MAN	: out	std_logic_vector(22 downto 0); --la mantissa più piccola verrà shiftata ed estesa di un bit da ShifterMANT
		GRT_EXP	: out	std_logic_vector(7 downto 0);
		SML_EXP	: out	std_logic_vector(7 downto 0); --TODO: Inutile, decidere come rimuovere
		
		OP_OUT	: out	std_logic; --0 se somma, 1 se sottrazione
		
		OFF		: out	std_logic_vector(4 downto 0); --differenza tra gli esponenti (offset per lo shift in stage 2)
		
		ERR		: out	std_logic --1 se la differenza tra gli esponenti eccede 24
	);
end FirstStageTOP;

architecture RTL of FirstStageTOP is

	--REGION SIGNALS
	signal SIG1, SIG2		: std_logic;
	signal EXP1, EXP2		: std_logic_vector(7 downto 0);
	signal MAN1, MAN2		: std_logic_vector(22 downto 0);
	
	signal E_GRT, E_SML	: std_logic_vector(7 downto 0);
	signal EXP_DIFF		: std_logic_vector(7 downto 0);
	--ENDREGION

	--REGION COMPONENTS
	component OpPicker is
        port(
            S1	: in  std_logic; --0: positive, 1: negative
            S2	: in  std_logic; --0: positive, 1: negative
            OP	: in  std_logic; --1: SUB, 0: ADD
            SUB : out std_logic  --1: SUB, 0: ADD
        );
    end component;
	 
	component Comparator is
		port(
			M1_IN	: in	std_logic_vector(22 downto 0);
			M2_IN	: in	std_logic_vector(22 downto 0);
			E1_IN	: in	std_logic_vector(7 downto 0);
			E2_IN	: in	std_logic_vector(7 downto 0);
			
			GRT_MAN	: out	std_logic_vector(22 downto 0);
			SML_MAN	: out std_logic_vector(22 downto 0);
			GRT_EXP	: out	std_logic_vector(7 downto 0);
			SML_EXP	: out	std_logic_vector(7 downto 0)
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
	--ENREGION
	
begin
    --TODO: Decidre se cambiare segno o meno
	 
	 --TODO: Forse stage precedente di pipeline verificare se un operando sia uguale a 0 così da evitare di dover lavorare su esponenti e segni

    --Parsing the inputs
    SIG1  <= INPUT1(31);
    SIG2  <= INPUT2(31);
    EXP1  <= INPUT1(30 downto 23);
    EXP2  <= INPUT2(30 downto 23);
	 MAN1  <= INPUT1(22 downto 0);
	 MAN2  <= INPUT2(22 downto 0);

	--Calcolo dell'operazione che l'RCA dovrà effettivamente eseguire
	OP: OpPicker
		port map(
			S1		=> SIG1,
			S2		=> SIG2,
			OP		=> OP_IN,
			SUB	=> OP_OUT
		);
		
	--Paragone tra i due numeri
	COMP:	Comparator
		port map(
			M1_IN		=> MAN1,
			M2_IN		=> MAN2,
			E1_IN		=> EXP1,
			E2_IN		=> EXP2,
			
			GRT_MAN	=> GRT_MAN,
			SML_MAN	=> SML_MAN,
			GRT_EXP	=> E_GRT,
			SML_EXP	=> E_SML
		);
		
	--Swap
	GRT_EXP	<= E_GRT;
	SML_EXP	<= E_SML; --TODO: Inutile, decidere come rimuovere
		
	--Calcolo differenza esponenti
	ESub:	RCA
		generic map(
			N	=> 8
		)

		port map(
			INPUT1	=> E_GRT,
			INPUT2	=> E_SML,
			OP			=> '1',
			OUTPUT	=> EXP_DIFF
		);
	
	--Gestione caso differenza degli esponenti eccede lunghezza mantissa: si alza flag ERR
	ERR	<= '0'	when (EXP_DIFF(7 downto 5) = "000")	else '1';
	
	--Slicing della dimensione della parola dell'offset a 5 bit
	OFF	<= EXP_DIFF(4 downto 0);
	
	--TODO: Gestione caso mantisse uguali e op è sottrazione

end RTL;