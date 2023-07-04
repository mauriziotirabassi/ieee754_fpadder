
-- VHDL Instantiation Created from source file TimeFirstStage.vhd -- 10:30:37 07/03/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT TimeFirstStage
	PORT(
		CLK : IN std_logic;
		RESET : IN std_logic;
		INPUT1 : IN std_logic_vector(31 downto 0);
		INPUT2 : IN std_logic_vector(31 downto 0);
		OP_IN : IN std_logic;          
		GRT_EXP : OUT std_logic_vector(7 downto 0);
		GRT_MAN : OUT std_logic_vector(22 downto 0);
		SML_MAN : OUT std_logic_vector(22 downto 0);
		OFF : OUT std_logic_vector(4 downto 0);
		OP_OUT : OUT std_logic;
		SIG_OUT : OUT std_logic;
		SKIP : OUT std_logic_vector(31 downto 0);
		ERR : OUT std_logic_vector(2 downto 0)
		);
	END COMPONENT;

	Inst_TimeFirstStage: TimeFirstStage PORT MAP(
		CLK => ,
		RESET => ,
		INPUT1 => ,
		INPUT2 => ,
		OP_IN => ,
		GRT_EXP => ,
		GRT_MAN => ,
		SML_MAN => ,
		OFF => ,
		OP_OUT => ,
		SIG_OUT => ,
		SKIP => ,
		ERR => 
	);


