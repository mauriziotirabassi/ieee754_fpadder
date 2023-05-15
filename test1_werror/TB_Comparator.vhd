LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY TB_Comparator IS
END TB_Comparator;
 
ARCHITECTURE behavior OF TB_Comparator IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Comparator
    PORT(
         M1_IN : IN  std_logic_vector(22 downto 0);
         M2_IN : IN  std_logic_vector(22 downto 0);
         E1_IN : IN  std_logic_vector(7 downto 0);
         E2_IN : IN  std_logic_vector(7 downto 0);
         GRT_MAN : OUT  std_logic_vector(22 downto 0);
         SML_MAN : OUT  std_logic_vector(22 downto 0);
         GRT_EXP : OUT  std_logic_vector(7 downto 0);
         SML_EXP : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal M1_IN : std_logic_vector(22 downto 0) := (others => '0');
   signal M2_IN : std_logic_vector(22 downto 0) := (others => '0');
   signal E1_IN : std_logic_vector(7 downto 0) := (others => '0');
   signal E2_IN : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal GRT_MAN : std_logic_vector(22 downto 0);
   signal SML_MAN : std_logic_vector(22 downto 0);
   signal GRT_EXP : std_logic_vector(7 downto 0);
   signal SML_EXP : std_logic_vector(7 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Comparator PORT MAP (
          M1_IN => M1_IN,
          M2_IN => M2_IN,
          E1_IN => E1_IN,
          E2_IN => E2_IN,
          GRT_MAN => GRT_MAN,
          SML_MAN => SML_MAN,
          GRT_EXP => GRT_EXP,
          SML_EXP => SML_EXP
        );

   -- Stimulus process
   process
   begin		
	
      wait for 50 ns;	

      -- Caso M1 > M2, E1 = E2
		M1_IN		<= "10000000000000000000000";
		M2_IN		<= "01000000000000000000000";
		E1_IN		<= "01000000";
		E2_IN		<= "01000000";
      wait for 20 ns;
		
		-- Caso M1 < M2, E1 > E2
		M1_IN		<= "00000000000000010000000";
		M2_IN		<= "01000000000000000000000";
		E1_IN		<= "01000000";
		E2_IN		<= "00000100";
		wait;
		
   end process;

END;
