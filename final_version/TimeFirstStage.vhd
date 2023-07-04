library ieee;
use ieee.std_logic_1164.all;

entity TimeFirstStage is
	port(
		CLK		: in std_logic;
		RESET		: in std_logic;
		
		INPUT1	: in	std_logic_vector(31 downto 0);
		INPUT2	: in	std_logic_vector(31 downto 0);
		OP_IN		: in	std_logic; --0 sum, 1 diff
		
		GRT_EXP	: out	std_logic_vector(7 downto 0);
		GRT_MAN	: out	std_logic_vector(22 downto 0);
		SML_MAN	: out	std_logic_vector(22 downto 0);
		OFF		: out	std_logic_vector(4 downto 0); --Offset for the eventual shift of the smaller mantissa
		OP_OUT	: out	std_logic; --0 sum, 1 diff
		
		--Output forwared to the third stage
		SIG_OUT	: out std_logic;
		
		--Special case management outputs
		SKIP		: out std_logic_vector(31 downto 0);
		ERR		: out	std_logic_vector(2 downto 0)
	);
end TimeFirstStage;

architecture RTL of TimeFirstStage is

	--REGION SIGNALS
	--"IN"	: Signals going in the register
	--"OUT"	: Signals going out of the register
	
	--REG0 
	signal REG0_INPUT1_OUT							: std_logic_vector(31 downto 0);
	signal REG0_INPUT2_OUT							: std_logic_vector(31 downto 0);
	signal REG0_OP_OUT								: std_logic;
	
	--REG1
	signal REG1_GRT_MAN_IN, REG1_GRT_MAN_OUT	: std_logic_vector(22 downto 0);
	signal REG1_SML_MAN_IN, REG1_SML_MAN_OUT	: std_logic_vector(22 downto 0);
	signal REG1_GRT_EXP_IN, REG1_GRT_EXP_OUT	: std_logic_vector(7 downto 0);
	signal REG1_OP_IN, 		REG1_OP_OUT			: std_logic;
	signal REG1_SIG_IN, 		REG1_SIG_OUT		: std_logic;
	signal REG1_OFF_IN, 		REG1_OFF_OUT		: std_logic_vector(4 downto 0);
	signal REG1_ERR_IN, 		REG1_ERR_OUT		: std_logic_vector(2 downto 0); 
	signal REG1_SKIP_IN, 	REG1_SKIP_OUT		: std_logic_vector(31 downto 0);
	
	--ENDREGION
	
	--REGION COMPONENTS
	component ComparingStage is
		port(
			INPUT1	: in	std_logic_vector(31 downto 0);
			INPUT2	: in	std_logic_vector(31 downto 0);
			OP_IN 	: in	std_logic;
			GRT_EXP	: out	std_logic_vector(7 downto 0);
			GRT_MAN	: out	std_logic_vector(22 downto 0);
			SML_MAN	: out	std_logic_vector(22 downto 0);
			OFF		: out	std_logic_vector(4 downto 0);
			OP_OUT	: out	std_logic;
			SIG_OUT	: out std_logic;
			SKIP		: out std_logic_vector(31 downto 0);
			ERR		: out	std_logic_vector(2 downto 0)
		);
	end component;
	--ENDREGION
	
begin
	
	--REGION MODULES
	
		--STAGE 1
		S1: ComparingStage
			port map(
			
				--Inputs
				INPUT1	=> REG0_INPUT1_OUT,	
				INPUT2	=> REG0_INPUT2_OUT,	
				OP_IN		=> REG0_OP_OUT,
				
				--Outputs
				GRT_EXP	=> REG1_GRT_EXP_IN,
				GRT_MAN	=> REG1_GRT_MAN_IN,
				SML_MAN	=> REG1_SML_MAN_IN,
				OFF		=> REG1_OFF_IN,
				OP_OUT	=> REG1_OP_IN,
				SIG_OUT	=> REG1_SIG_IN,
				SKIP		=> REG1_SKIP_IN,
				ERR		=> REG1_ERR_IN
			);	
				
	--ENDREGION
	
	--REGION REGISTERS
	
		--REG0
		reg0: process(CLK,RESET)
		begin
		
			if (RESET = '1') then 
				REG0_INPUT1_OUT	<= (others => '0');
				REG0_INPUT2_OUT	<= (others => '0');
				REG0_OP_OUT 		<= '0';
		
			elsif (CLK'event and CLK = '1') then
				REG0_INPUT1_OUT	<= INPUT1;
				REG0_INPUT2_OUT	<= INPUT2;
				REG0_OP_OUT 		<= OP_IN;
						
			end if;
		end process;
		
		--REG1
		reg1: process(CLK,RESET)
		begin
		
			if (RESET = '1') then 
				REG1_GRT_MAN_OUT		<= (others => '0');
				REG1_SML_MAN_OUT	 	<= (others => '0');
				REG1_GRT_EXP_OUT 		<= (others => '0');
				REG1_OP_OUT				<= '0';
				REG1_SIG_OUT			<= '0';
				REG1_OFF_OUT	 		<= (others => '0');	
				REG1_ERR_OUT			<= (others => '0');
				REG1_SKIP_OUT			<= (others => '0');
			
			elsif (CLK'event and CLK = '1') then
				REG1_GRT_MAN_OUT		<= REG1_GRT_MAN_IN;
				REG1_SML_MAN_OUT	 	<= REG1_SML_MAN_IN;
				REG1_GRT_EXP_OUT 		<= REG1_GRT_EXP_IN;
				REG1_OP_OUT				<= REG1_OP_IN;
				REG1_SIG_OUT			<= REG1_SIG_IN;
				REG1_OFF_OUT			<= REG1_OFF_IN;
				REG1_ERR_OUT			<= REG1_ERR_IN;
				REG1_SKIP_OUT			<= REG1_SKIP_IN;
						
			end if;
		end process;
		
		
	--ENDREGION
	 --Connecting all REG1_OUT to toplevel
	GRT_EXP	<= REG1_GRT_EXP_OUT;
	GRT_MAN	<= REG1_GRT_MAN_OUT;
	SML_MAN	<= REG1_SML_MAN_OUT;
	OFF		<= REG1_OFF_OUT;
	OP_OUT	<= REG1_OP_OUT;
	SIG_OUT	<= REG1_SIG_OUT;
	SKIP		<= REG1_SKIP_OUT;
	ERR		<= REG1_ERR_OUT;

end RTL;
