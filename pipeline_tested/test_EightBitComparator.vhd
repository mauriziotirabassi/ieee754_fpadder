
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_EightBitComparator IS
END test_EightBitComparator;
 
ARCHITECTURE behavior OF test_EightBitComparator IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT EightBitComparator
    PORT(
         E1 : IN  std_logic_vector(7 downto 0);
         E2 : IN  std_logic_vector(7 downto 0);
         SML : OUT  std_logic;
         EQ : OUT  std_logic;
         GRT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal E1 : std_logic_vector(7 downto 0) := (others => '0');
   signal E2 : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal SML : std_logic;
   signal EQ : std_logic;
   signal GRT : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: EightBitComparator PORT MAP (
          E1 => E1,
          E2 => E2,
          SML => SML,
          EQ => EQ,
          GRT => GRT
        );

  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      E1 <= "11011111";
		E2 <= "10011111";

      -- insert stimulus here 

      wait;
   end process;

END;
