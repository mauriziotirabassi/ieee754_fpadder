
-- VHDL Instantiation Created from source file Normalizer.vhd -- 11:58:43 05/30/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Normalizer
	PORT(
		MAN_IN : IN std_logic_vector(23 downto 0);
		EXP_IN : IN std_logic_vector(7 downto 0);          
		MAN_OUT : OUT std_logic_vector(23 downto 0);
		EXP_OUT : OUT std_logic_vector(7 downto 0);
		EXP_UF : OUT std_logic
		);
	END COMPONENT;

	Inst_Normalizer: Normalizer PORT MAP(
		MAN_IN => ,
		EXP_IN => ,
		MAN_OUT => ,
		EXP_OUT => ,
		EXP_UF => 
	);


