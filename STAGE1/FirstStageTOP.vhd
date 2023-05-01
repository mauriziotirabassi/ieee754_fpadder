library ieee;
use ieee.std_logic_1164.all;

--Il primo stadio della pipeline prende in ingresso i due numeri da sommare e si occupa di:
--1. Gestire caso speciale in cui un operando sia 0
--2. Restituire le due mantisse tale che M1 > M2
--3. Restituire la differenza tra gli esponenti delle due mantisse il cui valore è l'offset dello shift di M2
--4. Gestire caso speciale per cui la differenza degli esponenti ecceda 23 (in quanto i segnali di offset per gli shifter sono di 5 bit)

entity FirstStageTOP is
	port(
		INPUT1  : in	std_logic_vector(31 downto 0);
		INPUT2  : in	std_logic_vector(31 downto 0);
		OP_IN   : in	std_logic; --0 se somma, 1 se sottrazione
		GRT_MAN	: out	std_logic_vector(23 downto 0); --TODO: Decidere se la mantissa più grande già consideri il significant esplicitamente
		SML_MAN	: out   std_logic_vector(22 downto 0); --la mantissa più piccola verrà shiftata ed estesa di un bit da ShifterMANT
		GRT_EXP	: out	std_logic_vector(7 downto 0);
		SML_EXP	: out	std_logic_vector(7 downto 0);
		OP_OUT  : out   std_logic;
		OFF     : out   std_logic_vector(4 downto 0); --differenza tra gli esponenti (offset per lo shift in stage 2)
		ERR     : out   std_logic --1 se la differenza tra gli esponenti eccede 24
	);
end FirstStageTOP;

architecture RTL of FirstStageTOP is

	--REGION SIGNALS
	signal SIG1, SIG2   : std_logic;
	signal EXP1, EXP2   : std_logic_vector(7 downto 0);
	signal MAN1, MAN2   : std_logic_vector(22 downto 0);

	signal EXP_COMP, EXP_DIFF	: std_logic;
	--ENDREGION

	--REGION COMPONENTS
    --Definisce che operazione implementerà effettivamente l'RCA
    component OpPicker is
        port(
            S1	: in  std_logic; --0: positive, 1: negative
            S2	: in  std_logic; --0: positive, 1: negative
            OP	: in  std_logic; --1: SUB, 0: ADD
            SUB : out std_logic  --1: SUB, 0: ADD
        );
    end component;

	component ExponentPicker is

		port(
			E1      : in    std_logic_vector(7 downto 0);
			E2      : in    std_logic_vector(7 downto 0);
			E1GE2	: out	std_logic; --1 se E1 > E2
			E_grt   : out   std_logic_vector(7 downto 0);
			E_sml   : out   std_logic_vector(7 downto 0)
		);
			
	end component;

	component RCA is
		generic(
			N	: integer := 24
		);
	
		port( 
			INPUT1	: in	std_logic_vector(N-1 downto 0);
			INPUT2	: in	std_logic_vector(N-1 downto 0);
			OP		: in	std_logic; --1 se sottrazione, 0 se addizione
			OUTPUT	: out	std_logic_vector(N-1 downto 0);
			COUT	: out	std_logic --sgn control for overflow of mantissa module ...shift R
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

	--OpPicker calcola l'operazione che l'RCA dovrà effettivamente eseguire
	OP: OpPicker
		port map(
			S1	=> SIG1
			S2	=> SIG2
			OP	=> OP_IN,
			SUB	=> OP_OUT
		);

	--Paragono gli esponeti e verifico se la differenza è maggiore di 24
	EComp:	ExponentPicker
		port map(
			E1		=> EXP1,
			E2		=> EXP2,
			E1GE2	=> EXP_COMP,
			E_grt	=> GRT_EXP,
			E_sml	=> SML_EXP
		);
	
	--La mantissa più grande è quella con esponente maggiore (?)
	GRT_MAN	<= MAN1	when EXP_COMP = '1'	else MAN2;
	SML_MAN	<= MAN2	when EXP_COMP = '0'	else MAN1;
	
	--Calcolo differenza esponenti e il più grande, gestione caso in cui la differenza sia maggiore di 23 (si pone mantissa più piccola
	--nulla e si gestisce il caso come se l'input fosse nullo(?)
	ESub:	RCA
		generic map(
			N	=> 8
		)

		port map(
			INPUT1	=> GRT_EXP,
			INPUT2	=> SML_EXP,
			OP		=> '1',
			OUTPUT	=> EXP_DIFF
		);
	
	ERR	<= '0'	when (EXP_DIFF(7 downto 5) = "000")	else '1';

	--TODO: Gestione caso mantisse uguali e op è sottrazione

end RTL;

