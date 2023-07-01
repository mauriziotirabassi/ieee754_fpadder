library ieee;
use ieee.std_logic_1164.all;
 
ENTITY test_SummingStage IS
END test_SummingStage;
 
ARCHITECTURE behavior OF test_SummingStage IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SummingStage
    PORT(
         GRT_EXP : IN  std_logic_vector(7 downto 0);
         GRT_MAN : IN  std_logic_vector(22 downto 0);
         SML_MAN : IN  std_logic_vector(22 downto 0);
         OP_IN : IN  std_logic;
         OFF : IN  std_logic_vector(4 downto 0);
         ERR_IN : IN  std_logic_vector(2 downto 0);
         MAN_OUT : OUT  std_logic_vector(23 downto 0);
         EXP_OUT : OUT  std_logic_vector(7 downto 0);
         ERR_OUT : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal GRT_EXP : std_logic_vector(7 downto 0) := (others => '0');
   signal GRT_MAN : std_logic_vector(22 downto 0) := (others => '0');
   signal SML_MAN : std_logic_vector(22 downto 0) := (others => '0');
   signal OP_IN : std_logic := '0';
   signal OFF : std_logic_vector(4 downto 0) := (others => '0');
   signal ERR_IN : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal MAN_OUT : std_logic_vector(23 downto 0);
   signal EXP_OUT : std_logic_vector(7 downto 0);
   signal ERR_OUT : std_logic_vector(2 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SummingStage PORT MAP (
          GRT_EXP => GRT_EXP,
          GRT_MAN => GRT_MAN,
          SML_MAN => SML_MAN,
          OP_IN => OP_IN,
          OFF => OFF,
          ERR_IN => ERR_IN,
          MAN_OUT => MAN_OUT,
          EXP_OUT => EXP_OUT,
          ERR_OUT => ERR_OUT
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
