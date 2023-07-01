library ieee;
use ieee.std_logic_1164.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_ReversePriorityEncoder IS
END test_ReversePriorityEncoder;
 
ARCHITECTURE behavior OF test_ReversePriorityEncoder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ReversePriorityEncoder
    PORT(
         INPUT : IN  std_logic_vector(23 downto 0);
         OUTPUT : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal INPUT : std_logic_vector(23 downto 0) := (others => '0');

 	--Outputs
   signal OUTPUT : std_logic_vector(4 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ReversePriorityEncoder PORT MAP (
          INPUT => INPUT,
          OUTPUT => OUTPUT
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		INPUT	<= "010000000000000110000000";

      wait;
   end process;

END;
