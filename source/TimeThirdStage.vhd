library ieee;
use ieee.std_logic_1164.all;

entity TimeThirdStage is
	port(
		CLK		: in std_logic;
		RESET		: in std_logic;
		
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
end TimeThirdStage;

architecture RTL of TimeThirdStage is

	--REGION SIGNALS
	--"IN"	: Signals going in the register
	--"OUT"	: Signals going out of the register
	
	--REG0 
	signal REG0_SIG_OUT							: std_logic;
	signal REG0_EXP_OUT							: std_logic_vector(7 downto 0);
	signal REG0_MAN_OUT							: std_logic_vector(23 downto 0);
	signal REG0_SKIP_OUT							: std_logic_vector(31 downto 0);
	signal REG0_ERR_OUT							: std_logic_vector(2 downto 0);

	
	--REG1
	signal REG1_FINAL_IN, REG1_FINAL_OUT	: std_logic_vector(31 downto 0);
	
	--ENDREGION
	
	--REGION COMPONENTS
	component AdjustingStage is
	port(
			SIG_IN	: in	std_logic;
			EXP_IN	: in	std_logic_vector(7 downto 0);
			MAN_IN	: in	std_logic_vector(23 downto 0);
			SKIP		: in	std_logic_vector(31 downto 0);
			ERR		: in	std_logic_vector(2 downto 0);
			FINAL		: out	std_logic_vector(31 downto 0)
		);	
	end component;
	--ENDREGION
	
begin
	
	--REGION MODULES
	
		--STAGE 3
		S3: AdjustingStage
			port map(
			
				--Inputs
				SIG_IN	=> REG0_SIG_OUT,
				EXP_IN	=> REG0_EXP_OUT,
				MAN_IN	=> REG0_MAN_OUT,
				SKIP		=> REG0_SKIP_OUT,
				ERR		=> REG0_ERR_OUT,
				
				--Output
				FINAL		=> REG1_FINAL_IN 
			);		
				
	--ENDREGION
	
	--REGION REGISTERS
	
		--REG0
		reg0: process(CLK,RESET)
		begin
		
			if (RESET = '1') then 
				REG0_SIG_OUT	<= '0';
				REG0_EXP_OUT	<= (others => '0');
				REG0_MAN_OUT 	<= (others => '0');
				REG0_SKIP_OUT 	<= (others => '0');
				REG0_ERR_OUT 	<= (others => '0');
				
			elsif (CLK'event and CLK = '1') then
				REG0_SIG_OUT	<= SIG_IN;
				REG0_EXP_OUT	<= EXP_IN;
				REG0_MAN_OUT 	<= MAN_IN;
				REG0_SKIP_OUT 	<= SKIP;
				REG0_ERR_OUT 	<= ERR;
						
			end if;
		end process;
		
		--REG1
		reg1: process(CLK,RESET)
		begin
		
			if (RESET = '1') then 
				REG1_FINAL_OUT		<= (others => '0');
				
			
			elsif (CLK'event and CLK = '1') then
				REG1_FINAL_OUT		<= REG1_FINAL_IN;
						
			end if;
		end process;
		
		
	--ENDREGION
	 --Connecting all REG1_OUT to toplevel
	FINAL <= REG1_FINAL_OUT;

end RTL;
