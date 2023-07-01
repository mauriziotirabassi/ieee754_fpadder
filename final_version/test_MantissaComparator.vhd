library ieee;
use ieee.std_logic_1164.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_MantissaComparator IS
END test_MantissaComparator;
 
ARCHITECTURE behavior OF test_MantissaComparator IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MantissaComparator
    PORT(
         M1 : IN  std_logic_vector(22 downto 0);
         M2 : IN  std_logic_vector(22 downto 0);
         GRT : OUT  std_logic;
         EQ : OUT  std_logic;
         SML : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal M1 : std_logic_vector(22 downto 0) := (others => '0');
   signal M2 : std_logic_vector(22 downto 0) := (others => '0');

 	--Outputs
   signal GRT : std_logic;
   signal EQ : std_logic;
   signal SML : std_logic;
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MantissaComparator PORT MAP (
          M1 => M1,
          M2 => M2,
          GRT => GRT,
          EQ => EQ,
          SML => SML
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

     M1 <= "01111111111111111111111"; --TODO ERRORE
     M2 <= "11111111111111101111111";
	  
	 wait for 50 ns;

    M1 <= "11111111111111111101111";
    M2 <= "01111111111111111111111";
	 wait for 50 ns;
	 M1 <= "01111111111111111111111";  --TODO ERRRORE
    M2 <= "11111111111111101111111";
	 wait for 50 ns;

    M1 <= "11111111111111111101111";
    M2 <= "11111111111111101111111";
	 wait for 50 ns;

    M1 <= "01111111111111111101111";
    M2 <= "01111111111111101111111";
	 wait for 50 ns;

    M1 <= "11111111111111111101111";
    M2 <= "11111111111111111101111";
	 
      wait;
		
   end process;

END;
