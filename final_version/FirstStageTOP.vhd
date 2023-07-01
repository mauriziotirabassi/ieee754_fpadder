library ieee;
use ieee.std_logic_1164.all;

--Behavior of the module:
--1. Calculating the actual operation that the RCA will have to implement
--2. Comparing the two inputs and returning them order
--3. Calculating the sign of the end result
--4. Checking for eventual special cases dependent on the input
--5. Calculating the offset by which the smaller mantissa will eventually have to be shifted
--6. Checking for the special case in which the difference between the two inputs exceeds sensible magnitude

entity FirstStageTOP is
	port(
		--Inputs
		INPUT1	: in	std_logic_vector(31 downto 0);
		INPUT2	: in	std_logic_vector(31 downto 0);
		OP_IN 	: in	std_logic; --0 sum, 1 diff
		
		--Outputs forwarded to the second stage
		GRT_EXP	: out	std_logic_vector(7 downto 0);
		GRT_MAN	: out	std_logic_vector(22 downto 0);
		SML_MAN	: out	std_logic_vector(22 downto 0);
		OFF		: out	std_logic_vector(4 downto 0); --Offset for the eventual shift of the smaller mantissa
		OP_OUT	: out	std_logic; --0 sum, 1 diff
		
		--Output forwared to the third stage
		SIG_OUT	: out std_logic;
		
		--Special case management outputs
		SKIP		: out std_logic_vector(31 downto 0);
		ERR		: out	std_logic_vector(2 downto 0) --Signal encoding the eventual special output to print
	);
end FirstStageTOP;

architecture RTL of FirstStageTOP is

	--REGION SIGNALS
	signal SIG1_TMP, SIG2_TMP	:std_logic;
	
	signal GRT_TMP, SML_TMP		: std_logic_vector(31 downto 0);
	signal GRT_EXP_TMP, SML_EXP_TMP	: std_logic_vector(7 downto 0);
	signal GRT_MAN_TMP, SML_MAN_TMP		: std_logic_vector(22 downto 0);
	
	signal EXP_DIFF	: std_logic_vector(7 downto 0);
	signal ERR_TMP		: std_logic_vector(2 downto 0);
	--ENDREGION

	--REGION COMPONENTS
	component Comparator is
		port(
			INPUT1	: in	std_logic_vector(31 downto 0);
			INPUT2	: in	std_logic_vector(31 downto 0);
			OP_IN		: in	std_logic;
		
			GRT_IN	: out	std_logic_vector(31 downto 0);
			SML_IN	: out std_logic_vector(31 downto 0);
			OUT_SIG	: out	std_logic
		);
	end component;
	
	component CaseManager is
		port(
			INPUT1	: in	std_logic_vector(31 downto 0);
			INPUT2	: in	std_logic_vector(31 downto 0);
			OP			: in	std_logic;
			SKIP		: out	std_logic_vector(31 downto 0);
			ERR		: out	std_logic_vector(2 downto 0) 
		);
	end component;

	component RCA is
		generic(
			N	: integer := 24
		);
	
		port( 
			INPUT1	: in	std_logic_vector(N-1 downto 0);
			INPUT2	: in	std_logic_vector(N-1 downto 0);
			OP			: in	std_logic;
			OUTPUT	: out	std_logic_vector(N-1 downto 0);
			COUT		: out	std_logic
		);
	end component;
	--ENREGION
	
begin

	--Parsign the signs
	SIG1_TMP	<= INPUT1(31);
	SIG2_TMP	<= INPUT2(31);

	--Calculating the actual operation that the RCA will have to implement
	OP_OUT	<= SIG1_TMP xor SIG2_TMP xor OP_IN; --MODULE OUTPUT
		
	--Comparing the two inputs
	COMP:	Comparator
		port map(
			INPUT1	=> INPUT1,
			INPUT2	=> INPUT2,
			OP_IN		=> OP_IN,
		
			GRT_IN	=> GRT_TMP,
			SML_IN	=>	SML_TMP,
			OUT_SIG	=> SIG_OUT --MODULE OUTPUT
		);
	
	--Checking for eventual special cases dependent on the input
	 MAN:	CaseManager
		port map(
			INPUT1	=> GRT_TMP,
			INPUT2	=> SML_TMP,
			OP			=> OP_IN,
			
			SKIP		=> SKIP, --MODULE OUTPUT
			ERR		=>	ERR_TMP
		);
		
	--Parsing the ordered inputs
	GRT_EXP_TMP	<= GRT_TMP(30 downto 23);
	SML_EXP_TMP	<= SML_TMP(30 downto 23);
	
	GRT_EXP	<= GRT_TMP(30 downto 23); --MODULE OUTPUT
	GRT_MAN	<= GRT_TMP(22 downto 0); --MODULE OUTPUT
	SML_MAN	<= SML_TMP(22 downto 0); --MODULE OUTPUT
	
	--Calculating the offset by which the smaller mantissa will eventually have to be shifted
	ESub:	RCA
		generic map(
			N	=> 8
		)

		port map(
			INPUT1	=> GRT_EXP_TMP,
			INPUT2	=> SML_EXP_TMP,
			OP			=> '1', --diff
			OUTPUT	=> EXP_DIFF
		);
	
	--TODO: Spostare gestione skip da case manager a first stage top
	
	--Checking for the special case in which the difference between the two inputs exceeds sensible magnitude
	ERR	<= ERR_TMP	when ((EXP_DIFF(7 downto 5) = "000") or (not (EXP_DIFF(4 downto 3) = "11")))	else "001"; --MODULE OUTPUT
	
	--Slicing the offset to a word of sensible magnitude (5 bit)
	OFF	<= EXP_DIFF(4 downto 0); --MODULE OUTPUT

end RTL;