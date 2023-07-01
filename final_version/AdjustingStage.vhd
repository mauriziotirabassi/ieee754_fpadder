library ieee;
use ieee.std_logic_1164.all;

--Behavior of the module:
--1. Normalizing the result mantissa
--2. Checking for the eventual underflow of the corrected exponent
--3. Translating the encoded special output signal ERR
--4. Generating the final result

entity AdjustingStage is
	port(
	
		--Inputs for the normalization of the result mantissa
		SIG_IN	: in	std_logic;
		EXP_IN	: in	std_logic_vector(7 downto 0);
		MAN_IN	: in	std_logic_vector(23 downto 0);
		
		--Special case management inputs
		SKIP		: in	std_logic_vector(31 downto 0);
		ERR		: in	std_logic_vector(2 downto 0);
		
		--Final result of the operation
		FINAL		: out	std_logic_vector(31 downto 0)
	);	
end AdjustingStage;

architecture RTL of AdjustingStage is

	--REGION SIGNALS
	signal TMP_EXP		: std_logic_vector(7 downto 0);
	signal TMP_MAN		: std_logic_vector(23 downto 0);
	signal TMP_UF		: std_logic;
	signal TMP_ERR		: std_logic_vector(2 downto 0);
	
	signal TMP_SPECIAL: std_logic_vector(31 downto 0);
	signal TMP_FLAG	: std_logic;
	--ENDREGION
	
	--REGION COMPONENTS
	component Normalizer is
		port(
			MAN_IN	: in	std_logic_vector(23 downto 0);
			EXP_IN	: in	std_logic_vector(7 downto 0);
			MAN_OUT	: out	std_logic_vector(23 downto 0);
			EXP_OUT	: out	std_logic_vector(7 downto 0);
			EXP_UF	: out std_logic
		);
	end component;
	
	component SpecialOutput is
		port(
			ERR				: in	std_logic_vector(2 downto 0);
			SKIP				: in	std_logic_vector(31 downto 0);
			SPECIAL_OUTPUT	: out	std_logic_vector(31 downto 0);
			SPECIAL_FLAG	: out	std_logic
		);
	end component;
	--ENDREGION

begin

	--Normalizing the result mantissa
	NORM:	Normalizer
		port map(
			MAN_IN	=> MAN_IN,
			EXP_IN	=> EXP_IN,
			MAN_OUT	=> TMP_MAN,
			EXP_OUT	=> TMP_EXP,
			EXP_UF	=> TMP_UF
		);
		
	--Checking for the underflow of the corrected exponent
	TMP_ERR <= "011" when TMP_UF = '1' else ERR; --TODO: ora NaN, capire che caso è

	--Translating the encoded special output signal ERR and eventually signaling the abnormality
	SPCL:	SpecialOutput
		port map(
			ERR				=> TMP_ERR,
			SKIP				=> SKIP,
			SPECIAL_OUTPUT	=> TMP_SPECIAL,
			SPECIAL_FLAG	=> TMP_FLAG
		);
		
	--Generating the final result (if no abnormality occurred then the hidden bit of the normalized result mantissa is made implicit by slicing)
	FINAL	<= (SIG_IN & TMP_EXP & TMP_MAN(22 downto 0)) when TMP_FLAG = '0' else TMP_SPECIAL;

end RTL;

