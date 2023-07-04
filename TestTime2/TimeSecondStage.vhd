library ieee;
use ieee.std_logic_1164.all;

entity TimeSecondStage is
	port(
		CLK		: in std_logic;
		RESET		: in std_logic;
		
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
end TimeSecondStage;

architecture RTL of TimeSecondStage is

	--REGION SIGNALS
	--"IN"	: Signals going in the register
	--"OUT"	: Signals going out of the register
	
	--REG0 
	signal REG0_GRT_EXP_OUT							: std_logic_vector(7 downto 0);
	signal REG0_GRT_MAN_OUT							: std_logic_vector(22 downto 0);
	signal REG0_SML_MAN_OUT							: std_logic_vector(22 downto 0);
	signal REG0_OP_OUT								: std_logic;
	signal REG0_OFF_OUT								: std_logic_vector(4 downto 0);
	signal REG0_ERR_OUT								: std_logic_vector(2 downto 0);
	
	--REG1
	signal REG1_MAN_IN, REG1_MAN_OUT				: std_logic_vector(23 downto 0);
	signal REG1_EXP_IN, REG1_EXP_OUT				: std_logic_vector(7 downto 0);
	signal REG1_ERR_IN, REG1_ERR_OUT				: std_logic_vector(2 downto 0); 
	
	--ENDREGION
	
	--REGION COMPONENTS
	component SummingStage is
		port(
			GRT_EXP	: in	std_logic_vector(7 downto 0);
			GRT_MAN	: in	std_logic_vector(22 downto 0); 
			SML_MAN	: in	std_logic_vector(22 downto 0);
			OP_IN		: in	std_logic;
			OFF		: in	std_logic_vector(4 downto 0);
			ERR_IN	: in	std_logic_vector(2 downto 0);
			MAN_OUT	: out	std_logic_vector(23 downto 0);
			EXP_OUT	: out	std_logic_vector(7 downto 0);
			ERR_OUT	: out	std_logic_vector(2 downto 0)
		);
	end component;
	--ENDREGION
	
begin
	
	--REGION MODULES
	
		--STAGE 2
		S2: SummingStage
			port map(
			
				--Inputs
				GRT_EXP	=> REG0_GRT_EXP_OUT,
				GRT_MAN	=> REG0_GRT_MAN_OUT,
				SML_MAN	=> REG0_SML_MAN_OUT,
				OP_IN		=> REG0_OP_OUT,
				OFF		=> REG0_OFF_OUT,
				ERR_IN	=> REG0_ERR_OUT,
				
				--Outputs
				MAN_OUT	=> REG1_MAN_IN,
				EXP_OUT	=> REG1_EXP_IN,
				ERR_OUT	=> REG1_ERR_IN
			);
				
	--ENDREGION
	
	--REGION REGISTERS
	
		--REG0
		reg0: process(CLK,RESET)
		begin
		
			if (RESET = '1') then 
				REG0_GRT_EXP_OUT	<= (others => '0');
				REG0_GRT_MAN_OUT	<= (others => '0');
				REG0_SML_MAN_OUT 	<= (others => '0');
				REG0_OP_OUT 	<= '0';
				REG0_OFF_OUT 	<= (others => '0');
				REG0_ERR_OUT 	<= (others => '0');
				
			elsif (CLK'event and CLK = '1') then
				REG0_GRT_EXP_OUT	<= GRT_EXP;
				REG0_GRT_MAN_OUT	<= GRT_MAN;
				REG0_SML_MAN_OUT 	<= SML_MAN;
				REG0_OP_OUT 	<= OP_IN;
				REG0_OFF_OUT 	<= OFF;
				REG0_ERR_OUT 	<= ERR_IN;
						
			end if;
		end process;
		
		--REG1
		reg1: process(CLK,RESET)
		begin
		
			if (RESET = '1') then 
				REG1_MAN_OUT		<= (others => '0');
				REG1_EXP_OUT 		<= (others => '0');
				REG1_ERR_OUT		<= (others => '0');
			
			elsif (CLK'event and CLK = '1') then
				REG1_MAN_OUT		<= REG1_MAN_IN;
				REG1_EXP_OUT 		<= REG1_EXP_IN;
				REG1_ERR_OUT			<= REG1_ERR_IN;
						
			end if;
		end process;
		
		
	--ENDREGION
	 --Connecting all REG1_OUT to toplevel
	ERR_OUT	<= REG1_ERR_OUT;
	MAN_OUT  <= REG1_MAN_OUT;
	EXP_OUT	<= REG1_EXP_OUT;

end RTL;
