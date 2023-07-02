library ieee;
use ieee.std_logic_1164.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_Comparator IS
END test_Comparator;
 
ARCHITECTURE behavior OF test_Comparator IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Comparator
    PORT(
         INPUT1 : IN  std_logic_vector(31 downto 0);
         INPUT2 : IN  std_logic_vector(31 downto 0);
         OP_IN : IN  std_logic;
         GRT_IN : OUT  std_logic_vector(31 downto 0);
         SML_IN : OUT  std_logic_vector(31 downto 0);
         OUT_SIG : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal INPUT1 : std_logic_vector(31 downto 0) := (others => '0');
   signal INPUT2 : std_logic_vector(31 downto 0) := (others => '0');
   signal OP_IN : std_logic := '0';

 	--Outputs
   signal GRT_IN : std_logic_vector(31 downto 0);
   signal SML_IN : std_logic_vector(31 downto 0);
   signal OUT_SIG : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Comparator PORT MAP (
          INPUT1 => INPUT1,
          INPUT2 => INPUT2,
          OP_IN => OP_IN,
          GRT_IN => GRT_IN,
          SML_IN => SML_IN,
          OUT_SIG => OUT_SIG
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		
		INPUT1	<= "00000000000000000000000000000000"; -- ZERO
		INPUT2	<= "01000010000011001110101110000101"; -- 35.23
		OP_IN		<= '1'; --diff
		wait for 50 ns;

      wait;
   end process;

END;
