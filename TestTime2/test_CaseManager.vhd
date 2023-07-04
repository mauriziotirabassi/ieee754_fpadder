library ieee;
use ieee.std_logic_1164.all;
 
ENTITY test_CaseManager IS
END test_CaseManager;
 
ARCHITECTURE behavior OF test_CaseManager IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CaseManager
    PORT(
         INPUT1 : IN  std_logic_vector(31 downto 0);
         INPUT2 : IN  std_logic_vector(31 downto 0);
         OP : IN  std_logic;
         ERR : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal INPUT1 : std_logic_vector(31 downto 0);
   signal INPUT2 : std_logic_vector(31 downto 0);
   signal OP : std_logic;

 	--Outputs
   signal ERR : std_logic_vector(2 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CaseManager PORT MAP (
          INPUT1 => INPUT1,
          INPUT2 => INPUT2,
          OP => OP,
          ERR => ERR
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		--CASE SKIP
		INPUT1 <= "01000001100010011001100110011010"; -- 17.2
		INPUT2 <= "00000000000000000000000000000000"; -- 0
		OP  <= '0';
		wait for 50 ns;
		
		INPUT1 <= "00000000000000000000000000000000"; -- 0
		INPUT2 <= "01000001100010011001100110011010"; -- 17.2
		OP  <= '0';
		wait for 50 ns;
		
		--CASE ZERO
		INPUT1 <= "00000000000000000000000000000000"; -- 0
		INPUT2 <= "00000000000000000000000000000000"; -- 0
		OP  <= '0';
		wait for 50 ns;
		
		--CASE NaN
		INPUT1 <= "01111111100000000000000000100000"; -- NaN
		INPUT2 <= "01000001100010011001100110011010"; -- 17.2
		OP  <= '0';
		wait for 50 ns;
		
		INPUT1 <= "11111111100000000000000000100000"; -- NaN
		INPUT2 <= "01000001100010011001100110011010"; -- 17.2
		OP  <= '0';
		wait for 50 ns;
		
		--CASE +INF
		INPUT1 <= "01000001100010011001100110011010"; -- 17.2
		INPUT2 <= "01111111100000000000000000000000"; -- +inf
		OP  <= '0';
		wait for 50 ns;
		
		--CASE -INF
		INPUT1 <= "01000001100010011001100110011010"; -- 17.2
		INPUT2 <= "11111111100000000000000000000000"; -- -inf
		OP  <= '0';

      wait;
   end process;

END;
