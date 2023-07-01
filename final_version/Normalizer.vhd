library ieee;
use ieee.std_logic_1164.all;

--Behavior of the module:
--1. Calculating the offset by which the result mantissa will have to be shifted
--2. Shifting the result mantissa by said offset
--3. Checking for the eventual underflow of the corrected exponent and singaling it

entity Normalizer is
	port(
		MAN_IN	: in	std_logic_vector(23 downto 0);
		EXP_IN	: in	std_logic_vector(7 downto 0);
		
		MAN_OUT	: out	std_logic_vector(23 downto 0);
		EXP_OUT	: out	std_logic_vector(7 downto 0);
		EXP_UF	: out std_logic --Flag that signals the underflow of the corrected exponent
	);
	
end Normalizer;

architecture RTL of Normalizer is

	--REGION SIGNALS
	signal SUB_EXP	: std_logic_vector(7 downto 0);
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
			OP			: in	std_logic; --0 sum, 1 diff
			OUTPUT	: out	std_logic_vector(N-1 downto 0);
			COUT		: out	std_logic
		);
	end component;
	--ENDREGION

begin

	--Calculating the offset by which the result mantissa will have to be shifted (the position "from the comma" of its first '1')
	RPE: ReversePriorityEncoder
		port map(
			INPUT		=> MAN_IN,
			OUTPUT	=> MAN_OFF
		);

	--Shifting the result mantissa
	SHFT:		ShifterL
		port map(
			INPUT		=> MAN_IN,
			OFFSET	=> MAN_OFF,
			SHIFTED	=> MAN_OUT --MODULE OUTPUT
		);

	--Extending the exponent correcting signal to 8 bits
	SUB_EXP	<= "000"	& MAN_OFF;
	
	--Checking if the exponent can be corrected (meaning checking for exponent underflow; meaning checking if the shift could have actually happened)
	CMP_EXP:	EightBitComparator
		port map(
			E1		=> EXP_IN,
			E2		=> SUB_EXP,
			SML	=> EXP_UF, --MODULE OUTPUT
			EQ 	=> open,
			GRT	=> open
		);

	--Correcting the exponent
	OP:	RCA
		generic map(
			N => 8
		)

		port map( 
			INPUT1	=> EXP_IN,
			INPUT2	=> SUB_EXP,
			OP			=> '1', --diff
			OUTPUT	=> EXP_OUT, --MODULE OUTPUT
			COUT		=> open
		);

end RTL;