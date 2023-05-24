
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY test_CaseManager IS
END test_CaseManager;
 
ARCHITECTURE behavior OF test_CaseManager IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CaseManager
    PORT(
         INPUT1 : IN  std_logic_vector(31 downto 0); --greater of input2 by design
         INPUT2 : IN  std_logic_vector(31 downto 0); --smaller of input1 by design
         OP : IN  std_logic;
         SKIP : OUT  std_logic_vector(31 downto 0);
         ERR : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal INPUT1 : std_logic_vector(31 downto 0);
   signal INPUT2 : std_logic_vector(31 downto 0);
   signal OP : std_logic;

 	--Outputs
   signal SKIP : std_logic_vector(31 downto 0);
   signal ERR : std_logic_vector(2 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CaseManager PORT MAP (
          INPUT1 => INPUT1,
          INPUT2 => INPUT2,
          OP => OP,
          SKIP => SKIP,
          ERR => ERR
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		INPUT1 <= "01101111101111111111110111111111";
		INPUT2 <= "11101111111111111111111101111111";
		OP  <= '0';
		wait for 50 ns;
		INPUT1 <= "11111111101111111111000111111111";
		INPUT2 <= "10000000000000000000000000000000";
		OP  <= '0';
		wait for 50 ns;
		INPUT1 <= "11111111101111111111110101111111";
		INPUT2 <= "11101111111111111111111101111111";
		OP  <= '0';
		wait for 50 ns;
		INPUT1 <= "11111111101111111111000111111111";
		INPUT2 <= "11101101111111111111111101111111";
		OP  <= '0';
		wait for 50 ns;
		INPUT1 <= "11101111101111111111111111111111";
		INPUT2 <= "11101111111111111111111101111111";
		OP  <= '0';

      wait;
   end process;

END;
