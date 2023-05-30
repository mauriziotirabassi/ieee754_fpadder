library ieee;
use ieee.std_logic_1164.all;

--TODO: Cambiare nome
--Compares two exponent/significant pairs and outputs the bigger and smaller ones
entity Comparator is
	port(
		M1_IN	: in	std_logic_vector(22 downto 0);
		M2_IN	: in	std_logic_vector(22 downto 0);
		E1_IN	: in	std_logic_vector(7 downto 0);
		E2_IN	: in	std_logic_vector(7 downto 0);
		S1_IN	: in	std_logic;
		S2_IN	: in	std_logic;
		OP_IN	: in	std_logic;
		
		SWAP		: out std_logic; --0: 1 è il più grande, 1: 2 è il più grande 
		
		GRT_MAN	: out	std_logic_vector(22 downto 0);
		SML_MAN	: out std_logic_vector(22 downto 0);
		GRT_EXP	: out	std_logic_vector(7 downto 0);
		SML_EXP	: out	std_logic_vector(7 downto 0);
		OUT_SIG	: out	std_logic
	);
	
end Comparator;
	
architecture Behavioral of Comparator is

	--REGION SIGNALS
	signal E1_GRT, E1_SML, E1_EQ, M1_GRT, M1_SML, M1_EQ	: std_logic;
	--ENDREGION

	--REGION COMPONENTS
	component MantissaComparator is
		port(
			M1		: in	std_logic_vector(22 downto 0);
			M2		: in	std_logic_vector(22 downto 0);
			GRT	: out	std_logic;	--M1 > M2
			EQ		: out	std_logic;	--M1 = M2
			SML	: out	std_logic	--M1 < M2
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
	--ENDREGION
	
begin

	--Paragone degli esponenti
	EComp:	EightBitComparator
		port map(
			E1		=> E1_IN,    
			E2		=> E2_IN,
			SML	=> E1_SML,
			EQ		=> E1_EQ, 
			GRT	=> E1_GRT
		);

	--Paragone delle mantisse
	MComp:	MantissaComparator
		port map(
			M1		=> M1_IN,			
			M2		=> M2_IN,
			GRT	=> M1_GRT,
			EQ		=> M1_EQ,
			SML	=> M1_SML
		);
		
	--Il numero più grande è quello con esponente maggiore oppure con esponente uguale e mantissa maggiore
	GRT_MAN	<= M1_IN	when (E1_GRT or (E1_EQ and M1_GRT)) = '1'	else M2_IN;
	GRT_EXP	<= E1_IN	when (E1_GRT or (E1_EQ and M1_GRT)) = '1'	else E2_IN;
	
	--Il numero più piccolo è quello con esponente minore oppure con esponente uguale e mantissa minore
	SML_MAN	<= M1_IN	when (E1_SML = '1' or (E1_EQ = '1' and M1_SML = '1'))	else M2_IN;
	SML_EXP	<= E1_IN	when (E1_SML = '1' or (E1_EQ = '1' and M1_SML = '1'))	else E2_IN;
	
	--Scelta segno del risultato finale
	OUT_SIG	<= S1_IN	when M1_GRT = '1'	--Se il più grande in assoluto è il primo sig è segno del più grande indipendentemente dall'operazione
					else	not S2_IN	when (M1_SML = '1'	and OP_IN	= '1') --Se il più grande in abs è il secondo e l'op è la sottrazione
					else	S2_IN			when (M1_SML = '1'	and OP_IN	= '0'); --Se il più grande in abs è il secondo e l'op è l'addizione
					
	SWAP	<= '0' when (E1_GRT = '1' or (E1_EQ = '1' and M1_GRT = '1'))	else '1';
		
end Behavioral;