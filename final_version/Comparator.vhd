library ieee;
use ieee.std_logic_1164.all;

--Behavior of the module:
--1. Comparing the two inputs and returning them in order
--2. Calculating the sign of the end result

entity Comparator is
	port(
		INPUT1	: in	std_logic_vector(31 downto 0);
		INPUT2	: in	std_logic_vector(31 downto 0);
		OP_IN		: in	std_logic;
		
		GRT_IN	: out	std_logic_vector(31 downto 0);
		SML_IN	: out std_logic_vector(31 downto 0);
		OUT_SIG	: out	std_logic
	);
	
end Comparator;
	
architecture Behavioral of Comparator is

	--REGION SIGNALS
	signal SIG1, SIG2		: std_logic;
	signal EXP1, EXP2		: std_logic_vector(7 downto 0);
	signal MAN1, MAN2		: std_logic_vector(22 downto 0);
	
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
	
	--Parsing the inputs
    SIG1  <= INPUT1(31);
    SIG2  <= INPUT2(31);
    EXP1  <= INPUT1(30 downto 23);
    EXP2  <= INPUT2(30 downto 23);
	 MAN1  <= INPUT1(22 downto 0);
	 MAN2  <= INPUT2(22 downto 0);

	--Comparing the exponents
	EComp:	EightBitComparator
		port map(
			E1		=> EXP1,    
			E2		=> EXP2,
			SML	=> E1_SML,
			EQ		=> E1_EQ, 
			GRT	=> E1_GRT
		);

	--Comparing the mantissas
	MComp:	MantissaComparator
		port map(
			M1		=> MAN1,			
			M2		=> MAN2,
			GRT	=> M1_GRT,
			EQ		=> M1_EQ,
			SML	=> M1_SML
		);
		
	--The bigger input is the one with either the bigger exponent or equal exponent and bigger mantissa
	GRT_IN	<= INPUT1	when (E1_GRT or (E1_EQ and (M1_GRT or M1_EQ))) = '1'	else INPUT2;
	
	--The smaller input is the one with either the smaller exponent or equal exponent and smaller mantissa
	SML_IN	<= INPUT1	when (E1_SML or (E1_EQ and (M1_SML or (not M1_EQ)))) = '1'	else INPUT2;
	
	--TODO: Più grande in assoluto non odvrebbe essere quello con exp e man più grandi?
	
	--Calculating the sign of the end result
	OUT_SIG	<= SIG1	when (E1_GRT or (E1_EQ and (M1_GRT or M1_EQ))) = '1'	--Se il più grande in assoluto è il primo sig è segno del più grande indipendentemente dall'operazione
		else	not SIG2	when (M1_SML = '1'	and OP_IN	= '1') --Se il più grande in abs è il secondo e l'op è la sottrazione
		else	SIG2		when (M1_SML = '1'	and OP_IN	= '0'); --Se il più grande in abs è il secondo e l'op è l'addizione
		
end Behavioral;
