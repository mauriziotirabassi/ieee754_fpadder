
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY test_Comparator IS
END test_Comparator;
 
ARCHITECTURE behavior OF test_Comparator IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Comparator
    PORT(
         M1_IN : IN  std_logic_vector(22 downto 0);
         M2_IN : IN  std_logic_vector(22 downto 0);
         E1_IN : IN  std_logic_vector(7 downto 0);
         E2_IN : IN  std_logic_vector(7 downto 0);
         S1_IN : IN  std_logic;
         S2_IN : IN  std_logic;
         OP_IN : IN  std_logic;
         SWAP : OUT  std_logic;
         
         GRT_MAN : OUT  std_logic_vector(22 downto 0);
         SML_MAN : OUT  std_logic_vector(22 downto 0);
         GRT_EXP : OUT  std_logic_vector(7 downto 0);
         SML_EXP : OUT  std_logic_vector(7 downto 0);
         OUT_SIG : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal M1_IN : std_logic_vector(22 downto 0);
   signal M2_IN : std_logic_vector(22 downto 0);
   signal E1_IN : std_logic_vector(7 downto 0);
   signal E2_IN : std_logic_vector(7 downto 0);
   signal S1_IN : std_logic;
   signal S2_IN : std_logic;
   signal OP_IN : std_logic;

 	--Outputs
   signal SWAP : std_logic;
   
   signal GRT_MAN : std_logic_vector(22 downto 0);
   signal SML_MAN : std_logic_vector(22 downto 0);
   signal GRT_EXP : std_logic_vector(7 downto 0);
   signal SML_EXP : std_logic_vector(7 downto 0);
   signal OUT_SIG : std_logic;
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Comparator PORT MAP (
          M1_IN => M1_IN,
          M2_IN => M2_IN,
          E1_IN => E1_IN,
          E2_IN => E2_IN,
          S1_IN => S1_IN,
          S2_IN => S2_IN,
          OP_IN => OP_IN,
          SWAP => SWAP,
          
          GRT_MAN => GRT_MAN,
          SML_MAN => SML_MAN,
          GRT_EXP => GRT_EXP,
          SML_EXP => SML_EXP,
          OUT_SIG => OUT_SIG
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

			M1_IN <= "01111111111111111111111";
         M2_IN <= "11111111111111101111111";
         E1_IN <= "11011111";
         E2_IN <= "10011111";
         S1_IN <= '1';
         S2_IN <= '1';
         OP_IN <= '0';
		wait for 50 ns;
			M1_IN <= "01111111111111111111111";
         M2_IN <= "11111111111111101111111";
         E1_IN <= "11011111";
         E2_IN <= "01011111";
         S1_IN <= '1';
         S2_IN <= '1';
         OP_IN <= '0';
		wait for 50 ns;
			M1_IN <= "11111111111111111101111";
         M2_IN <= "11111111111111101111111";
         E1_IN <= "01011111";
         E2_IN <= "11011111";
         S1_IN <= '1';
         S2_IN <= '1';
         OP_IN <= '0';
			wait for 50 ns;
			M1_IN <= "11111111111111111101111";
         M2_IN <= "11111111111111101111111";
         E1_IN <= "11011111";
         E2_IN <= "01011111";
         S1_IN <= '1';
         S2_IN <= '1';
         OP_IN <= '0';

      -- insert stimulus here 

      wait;
   end process;

END;
