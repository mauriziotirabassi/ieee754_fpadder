library ieee;
use ieee.std_logic_1164.all;

--Behavior of the module:
--1. Shifting the smaller mantissa
--2. Implementing the actual operation between the two numbers
--3. Checking for the eventual overflow of the corrected exponent

entity SummingStage is
	port(
	
		--Inputs for the implementation of the operation
		GRT_EXP	: in	std_logic_vector(7 downto 0);
		GRT_MAN	: in	std_logic_vector(22 downto 0); 
		SML_MAN	: in	std_logic_vector(22 downto 0);
		OP_IN		: in	std_logic; -- 0 sum, 1 diff
		OFF		: in	std_logic_vector(4 downto 0); --Offset for the eventual shift of the smaller mantissa
		
		--Special case management input
		ERR_IN	: in	std_logic_vector(2 downto 0);
		
		--Outputs forwarded to the third stage
		MAN_OUT	: out	std_logic_vector(23 downto 0);
		EXP_OUT	: out	std_logic_vector(7 downto 0);
		
		--Special case management output
		ERR_OUT	: out	std_logic_vector(2 downto 0)
	);
end SummingStage;

architecture RTL of SummingStage is

	--REGION SIGNALS
	signal EXT_M1, EXT_M2, SHFT_M2, RESULT	: std_logic_vector(23 downto 0);
	
	signal PLUS_ONE	: std_logic_vector(7 downto 0);
	signal REM_MAN, REM_EXP, EXP_OF	: std_logic;
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
			OP			: in	std_logic; --0 sum, 1 diff
			OUTPUT	: out	std_logic_vector(N-1 downto 0);
			COUT		: out	std_logic
		);
	end component;
	--ENDREGION

begin

	--Making the hidden bit explicit
	EXT_M1	<= '1'	& GRT_MAN;
	EXT_M2	<= '1'	& SML_MAN;
	
	--Shifting the smaller mantissa by the difference of the two exponents
	SHFT:	ShifterR
		port map(
			INPUT		=> EXT_M2,
			OFFSET	=> OFF,
			SHIFTED	=> SHFT_M2
		);
		
	--Implementing the operation between the two numbers
	OP:	RCA
		generic map(
			N	=> 24
		)
		
		port map(
			INPUT1	=> EXT_M1,
			INPUT2	=> SHFT_M2,
			OP			=> OP_IN,
			OUTPUT	=> RESULT,
			COUT		=> REM_MAN
		);
		
	--Managing the eventual overflow of the result mantissa
	MAN_OUT	<=	RESULT	when REM_MAN	= '0'	else	('1' &	RESULT(23 downto 1)); --MODULE OUTPUT
		
	--Extending the exponent correcting signal to 8 bits
	PLUS_ONE	<= "0000000"	& REM_MAN;
	
	--Correcting the exponent (if the mantissa overflow happened then +1, otherwise +0)
	P1:	RCA
		generic map(
			N	=> 8
		)
		
		port map(
			INPUT1	=> GRT_EXP,
			INPUT2	=> PLUS_ONE,
			OP			=> '0', --sum
			OUTPUT	=> EXP_OUT, --MODULE OUTPUT
			COUT		=> EXP_OF		
		);
	
	--Checking for the overflow of the corrected exponent
	ERR_OUT	<= "001" when (EXP_OF = '1' and ERR_IN = "000") else ERR_IN; --MODULE OUTPUT
	
end RTL;

