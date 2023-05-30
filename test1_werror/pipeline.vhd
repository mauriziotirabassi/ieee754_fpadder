
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
	
	-- signals first stage
	signal S_grt, S_in: std_logic;
	signal E_grt, E_in, OFFSET_E, OFFSET_rslt: std_logic_vector(7 downto 0);
	signal M1_in, M2_in: std_logic_vector(22 downto 0);
	
	-- signals second stage
	signal tmp1 : std_logic;
	signal tmp2 : std_logic_vector(7 downto 0);	
	signal tmp3, tmp_ALU : std_logic_vector(23 downto 0);
	
	-- signals third stage
	signal S_out: std_logic;
	signal E_out: std_logic_vector(7 downto 0);
	signal M_out: std_logic_vector(22 downto 0);
	signal tmp_exp_adj : std_logic_vector(7 downto 0);
	signal tmp_norm : std_logic_vector(22 downto 0);
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
			
			ERR		: in	std_logic; --TODO: Decidere come gestire azzeramento mantissa nella pipeline
			
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


begin
	pipeline: process(CLK,RESET)
		begin
		
		--reset pipeline
		if (RESET ='1') then 
		S_grt			<='0'; 
		S_in			<='0'; 
		E_grt			<=(others=>'0');
		E_in			<=(others=>'0');
		OFFSET_E		<=(others=>'0');
		M1_in			<=(others=>'0');
		M2_in 		<=(others=>'0');
		tmp1			<='0';
		tmp2			<=(others=>'0');
		tmp3			<=(others=>'0');
		tmp_norm		<=(others=>'0');
		tmp_exp_adj	<=(others=>'0');
		tmp_ALU		<=(others=>'0');
		S_out			<='0';
		E_out			<=(others=>'0');
		M_out			<=(others=>'0');
		
		--clock
		elsif (CLK'event and CLK ='1') then
		
		--STAGE 1
		S1:	FirstStageTOP
			port map(
				INPUT1	=> INPUT1,	
				INPUT2	=> INPUT2,	
				OP_IN		=> OP_IN,
				
				GRT_MAN	=> 
				SML_MAN	
				GRT_EXP	

				OP_OUT	
				
				OFF		
				
				ERR
				);
			S_in		<= S_grt;
			E_in		<= E_grt;
			OFFSET_E <= OFFSET_rslt; --signal offset_rslt is obtained internally
			M1_in		<= M1;
			M2_in		<= M2;
			
		--stage 2
			tmp1		<= S_in;
			tmp2		<= E_in;
			tmp3     <= tmp_ALU; --signal from ALU is obtained at previous clock with OFFSET_E, M1_in and M2_in
			
		--stage 3
			S_out		<= tmp1;
			E_out	   <= tmp_exp_adj; --signal from adjuster is obtained at previous clock
			M_out 	<= tmp_norm; --signal from normalizer is obtained at previous clock
			
		end if;
		end process;

end RTL;