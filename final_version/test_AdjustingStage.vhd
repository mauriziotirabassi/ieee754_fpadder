library ieee;
use ieee.std_logic_1164.all;
 
ENTITY test_AdjustingStage IS
END test_AdjustingStage;
 
ARCHITECTURE behavior OF test_AdjustingStage IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT AdjustingStage
    PORT(
         SIG_IN : IN  std_logic;
         EXP_IN : IN  std_logic_vector(7 downto 0);
         MAN_IN : IN  std_logic_vector(23 downto 0);
         SKIP : IN  std_logic_vector(31 downto 0);
         ERR : IN  std_logic_vector(2 downto 0);
         FINAL : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal SIG_IN : std_logic := '0';
   signal EXP_IN : std_logic_vector(7 downto 0) := (others => '0');
   signal MAN_IN : std_logic_vector(23 downto 0) := (others => '0');
   signal SKIP : std_logic_vector(31 downto 0) := (others => '0');
   signal ERR : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal FINAL : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: AdjustingStage PORT MAP (
          SIG_IN => SIG_IN,
          EXP_IN => EXP_IN,
          MAN_IN => MAN_IN,
          SKIP => SKIP,
          ERR => ERR,
          FINAL => FINAL
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 

      wait;
   end process;

END;
