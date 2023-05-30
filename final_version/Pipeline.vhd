library ieee;
use ieee.std_logic_1164.all;

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
	
	--REG0 
	signal REG0_INPUT1_OUT, REG0_INPUT2_OUT				: std_logic_vector(31 downto 0);
	signal REG0_OP_OUT										: std_logic;
	
	--REG1
	signal REG1_GRT_MAN_IN, REG1_GRT_MAN_OUT			: std_logic_vector(22 downto 0);
	signal REG1_SML_MAN_IN, REG1_SML_MAN_OUT			: std_logic_vector(22 downto 0);
	signal REG1_GRT_EXP_IN, REG1_GRT_EXP_OUT			: std_logic_vector(7 downto 0);
	signal REG1_OP_IN, REG1_OP_OUT						: std_logic;
	signal REG1_SIG_IN, REG1_SIG_OUT						: std_logic; --propagate to reg2 out
	signal REG1_OFF_IN, REG1_OFF_OUT						: std_logic_vector(4 downto 0);
	signal REG1_ERR_IN, REG1_ERR_OUT						: std_logic_vector(2 downto 0); 
	signal REG1_SKIP_IN, REG1_SKIP_OUT					: std_logic_vector(31 downto 0); --propagate to reg 2 out
	
	--REG2
	signal REG2_MAN_IN, REG2_MAN_OUT						: std_logic_vector(23 downto 0);
	signal REG2_EXP_IN, REG2_EXP_OUT						: std_logic_vector(7 downto 0);
	signal REG2_ERR_IN, REG2_ERR_OUT						: std_logic_vector(2 downto 0);
	signal REG2_SIG_OUT										: std_logic;
	signal REG2_SKIP_OUT										: std_logic_vector(31 downto 0);
	
	--REG3
	signal REG3_FINAL_IN, REG3_FINAL_OUT				: std_logic_vector(31 downto 0); 
	
	--ENDREGION
	
	--REGION COMPONENTS
	component FirstStageTOP is
    port(
        INPUT1    : in    std_logic_vector(31 downto 0);
        INPUT2    : in    std_logic_vector(31 downto 0);

        OP_IN     : in    std_logic; --0 se somma, 1 se sottrazione

        GRT_MAN    : out    std_logic_vector(22 downto 0);
        SML_MAN    : out    std_logic_vector(22 downto 0); --la mantissa più piccola verrà shiftata ed estesa di un bit da ShifterMANT
        GRT_EXP    : out    std_logic_vector(7 downto 0);

        OP_OUT    : out    std_logic; --0 se somma, 1 se sottrazione
        SIG_OUT    : out std_logic;

        OFF        : out    std_logic_vector(4 downto 0); --differenza tra gli esponenti (offset per lo shift in stage 2)

        SKIP        : out std_logic_vector(31 downto 0); --uno dei due input originari caso in cui uno dei due è 0
        ERR        : out    std_logic_vector(2 downto 0) --1 se la differenza tra gli esponenti eccede 24
    );
	end component;
	
	component SecondStageTOP is
    port(
        GRT_MAN    : in    std_logic_vector(22 downto 0); 
        SML_MAN    : in    std_logic_vector(22 downto 0); --Mantissa da shiftare
        GRT_EXP    : in    std_logic_vector(7 downto 0);

        OP_IN        : in    std_logic; --Operazione che deve effettivamente fare l'RCA/CLA
        OFF        : in    std_logic_vector(4 downto 0); --Offset per lo shift della mantissa più piccola

        ERR_IN    : in    std_logic_vector(2 downto 0);

        MAN_OUT    : out    std_logic_vector(23 downto 0);
        EXP_OUT    : out    std_logic_vector(7 downto 0);

        ERR_OUT    : out    std_logic_vector(2 downto 0)
    );
	end component;
	
	
	component ThirdStageTOP is
    port(
        SIG_IN    : in    std_logic; -- Forwardarla ttraverso gli stage
        MAN_IN    : in    std_logic_vector(23 downto 0);
        EXP_IN    : in    std_logic_vector(7 downto 0);

        SKIP        : in    std_logic_vector(31 downto 0);
        ERR        : in    std_logic_vector(2 downto 0);

        FINAL        : out    std_logic_vector(31 downto 0)
    );
	end component;
	--ENDREGION
	
	--REGION MAPPING 
	
begin
	
		--STAGE 1
		S1: FirstStageTOP
			port map(
				INPUT1	=> REG0_INPUT1_OUT,	
				INPUT2	=> REG0_INPUT2_OUT,	
				OP_IN		=> REG0_OP_OUT,
				
				GRT_MAN	=> REG1_GRT_MAN_IN,
				SML_MAN	=> REG1_SML_MAN_IN,
				GRT_EXP	=> REG1_GRT_EXP_IN,

				OP_OUT	=> REG1_OP_IN,
				SIG_OUT	=> REG1_SIG_IN ,
				
				OFF		=> REG1_OFF_IN,
				
				SKIP		=> REG1_SKIP_IN,
				ERR		=> REG1_ERR_IN
			);	
			
		--stage 2
		S2: SecondStageTOP
			port map(
				GRT_MAN	=> REG1_GRT_MAN_OUT,
				SML_MAN	=> REG1_SML_MAN_OUT,
				GRT_EXP	=> REG1_GRT_EXP_OUT,
				
				OP_IN		=> REG1_OP_OUT,
				OFF		=> REG1_OFF_OUT,
				ERR_IN	=> REG1_ERR_OUT,
				
				MAN_OUT	=> REG2_MAN_IN,
				EXP_OUT	=> REG2_EXP_IN,
				ERR_OUT	=> REG2_ERR_IN
			);
				
			
		--stage 3
		S3: ThirdStageTOP
			port map(
				SIG_IN	=> REG2_SIG_OUT,
				MAN_IN	=> REG2_MAN_OUT,
				EXP_IN	=> REG2_EXP_OUT,
				
				SKIP		=> REG2_SKIP_OUT,
				ERR		=> REG2_ERR_OUT,
				
				FINAL		=> REG3_FINAL_IN 
			);			
				
	--ENDREGION
	
	--REGION REGISTERS
	
		--REG0
		reg0: process(CLK,RESET)
		begin
		
		if (RESET ='1') then 
		
			REG0_INPUT1_OUT	<= (others =>'0');
			REG0_INPUT2_OUT	 	<= (others =>'0');
			REG0_OP_OUT 		<= '0';
		
		elsif (CLK'event and CLK ='1') then
		
			REG0_INPUT1_OUT	<= INPUT1;
			REG0_INPUT2_OUT	 	<= INPUT2;
			REG0_OP_OUT 		<= OP_IN;
						
		end if;
		end process;
		
		--REG1
		reg1: process(CLK,RESET)
		begin
		
		if (RESET ='1') then 
		
			REG1_GRT_MAN_OUT		<= (others =>'0');
			REG1_SML_MAN_OUT	 	<= (others =>'0');
			REG1_GRT_EXP_OUT 		<= (others =>'0');
			REG1_OP_OUT				<= '0';
			REG1_SIG_OUT			<= '0';
			REG1_OFF_OUT	 		<= (others =>'0');	
			REG1_ERR_OUT			<= (others =>'0');
			REG1_SKIP_OUT			<= (others =>'0');
			
			
			
		elsif (CLK'event and CLK ='1') then
		
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
		
		--REG2
		reg2: process(CLK,RESET)
		begin
		
		if (RESET ='1') then 
		
			REG2_MAN_OUT			<= (others =>'0');
			REG2_EXP_OUT			<= (others =>'0');
			REG2_SKIP_OUT			<= (others =>'0');
			REG2_ERR_OUT			<= (others =>'0');
			REG2_SIG_OUT			<= '0';
			
		elsif (CLK'event and CLK ='1') then
		
			REG2_MAN_OUT			<= REG2_MAN_IN;
			REG2_EXP_OUT			<= REG2_EXP_IN;
			REG2_SKIP_OUT			<= REG1_SKIP_OUT; --FORWARD
			REG2_ERR_OUT			<= REG2_ERR_IN;
			REG2_SIG_OUT			<= REG1_SIG_OUT;	--FORWARD
						
		end if;
		end process;
		
		--REG3
		reg3: process(CLK,RESET)
		begin
		
		if (RESET ='1') then 
		
			REG3_FINAL_OUT			<= (others =>'0');
			
		elsif (CLK'event and CLK ='1') then
		
			REG3_FINAL_OUT			<= REG3_FINAL_IN;
						
		end if;
		end process;

	--ENDREGION
	
	OUTPUT <= REG3_FINAL_OUT; -- connect REG3_FINAL_OUT to toplevel 

end RTL;