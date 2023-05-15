
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Pipeline is
	port(
		CLK : in std_logic;
		RESET : in std_logic;
		
		INPUT1	: in	std_logic_vector(31 downto 0);
		INPUT2	: in	std_logic_vector(31 downto 0);
		OP_IN 	: in	std_logic; --0 se somma, 1 se sottrazione
		
		OUTPUT	: out	std_logic_vector(31 downto 0)
	);
	end Pipeline;

architecture RTL of Pipeline is

	--REGION SIGNALS
	-- i is the stage of the pipeline
	signal i: std_logic;
	
	--First stage signals
	signal TMP_GRT_MAN, TMP_SML_MAN				: std_logic_vector(22 downto 0);
	signal TMP_GRT_EXP								: std_logic_vector(7 downto 0);
	signal TMP_OFF										: std_logic_vector(4 downto 0);
	signal TMP_OP_OUT, TMP_SIG_OUT, TMP_ERR	: std_logic;
	
	-- signals second stage
	signal TMP_MAN_OUT : std_logic;
	signal TMP_EXP_OUT : std_logic_vector(7 downto 0);	
	signal TMP_EXP_OF  : std_logic_vector(23 downto 0);
	
	-- signals third stage
	signal TMP_FINAL	 : std_logic_vector(23 downto 0);
	
	--ENDREGION
	
	--REGION COMPONENTS
	component FirstStageTOP is
		port(
			INPUT1	: in	std_logic_vector(31 downto 0);
			INPUT2	: in	std_logic_vector(31 downto 0);
			
			OP_IN 	: in	std_logic; --0 se somma, 1 se sottrazione
			
			GRT_MAN	: out	std_logic_vector(22 downto 0);
			SML_MAN	: out	std_logic_vector(22 downto 0); --la mantissa più piccola verrà shiftata ed estesa di un bit da ShifterMANT
			GRT_EXP	: out	std_logic_vector(7 downto 0);

			OP_OUT	: out	std_logic; --0 se somma, 1 se sottrazione
			SIG_OUT	: out std_logic;
			
			OFF		: out	std_logic_vector(4 downto 0); --differenza tra gli esponenti (offset per lo shift in stage 2)
			
			ERR		: out	std_logic --1 se la differenza tra gli esponenti eccede 24
		);
	end component;
	
	component SecondStageTOP is
		port(
			GRT_MAN	: in	std_logic_vector(22 downto 0); 
			SML_MAN	: in	std_logic_vector(22 downto 0); --Mantissa da shiftare
			GRT_EXP	: in	std_logic_vector(7 downto 0);
			
			OP_IN		: in	std_logic; --Operazione che deve effettivamente fare l'RCA/CLA
			OFF		: in	std_logic_vector(4 downto 0); --Offset per lo shift della mantissa più piccola
			
			MAN_OUT	: out	std_logic_vector(23 downto 0);
			EXP_OUT	: out	std_logic_vector(7 downto 0);
			
			EXP_OF	: out	std_logic
		);
	end component;
	
	
	component ThirdStageTOP is
		port(
			MAN_IN	: in	std_logic_vector(23 downto 0);
			EXP_IN	: in	std_logic_vector(7 downto 0);
			
			FINAL		: out	std_logic_vector(31 downto 0)
		);
	end component;
	--ENDREGION
		--stage 1	
		S1:	FirstStageTOP
			port map(
				INPUT1	=> INPUT1,	
				INPUT2	=> INPUT2,	
				OP_IN		=> OP_IN,
				
				GRT_MAN	=> TMP_GRT_MAN,
				SML_MAN	=> TMP_SML_MAN,
				GRT_EXP	=> TMP_GRT_EXP,

				OP_OUT	=> TMP_OP_OUT,
				
				OFF		=> TMP_OFF,
				
				ERR		=> TMP_ERR
				);	
			
		--stage 2
		S2: SecondStageTOP
			port map(
				GRT_MAN	=> TMP_GRT_MAN,
				SML_MAN	=> TMP_SML_MAN,
				GRT_EXP	=> TMP_GRT_EXP,
				
				OP_IN		=> TMP_OP_OUT,
				OFF		=> TMP_OFF,
				
				MAN_OUT	=> TMP_MAN_OUT,
				EXP_OUT	=> TMP_EXP_OUT,
				EXP_OF	=> TMP_EXP_OF
				);
				
			
		--stage 3
		S3: ThirdStageTOP
			port map(
				MAN_IN	=> TMP_MAN_OUT,
				EXP_IN	=> TMP_EXP_OUT,
				FINAL		=> TMP_FINAL
				);


begin
	pipeline: process(CLK,RESET)
		begin
		
		--reset pipeline
		if (RESET ='1') then 
		
		-- reset first stage
		
		TMP_GRT_MAN			<=(others=>'0'); 
		TMP_SML_MAN 	  	<=(others=>'0'); 
		TMP_GRT_EXP			<=(others=>'0');
		TMP_OFF				<=(others=>'0');
		TMP_OP_OUT			<='0';
		TMP_SIG_OUT			<='0';
		TMP_ERR 				<='0';
	
		-- reset second stage
		
		TMP_MAN_OUT			<='0';
		TMP_EXP_OUT			<=(others=>'0');
		TMP_EXP_OF			<=(others=>'0');
		
		--reset third stage
		
		TMP_FINAL			<=(others=>'0');
		
		--clock
		elsif (CLK'event and CLK ='1') then
						
		end if;
		end process;

end RTL;