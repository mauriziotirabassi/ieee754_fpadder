library ieee;
use ieee.std_logic_1164.all;
 
ENTITY test_ComparingStage IS
END test_ComparingStage;
 
ARCHITECTURE behavior OF test_ComparingStage IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ComparingStage
    PORT(
         INPUT1 : IN  std_logic_vector(31 downto 0);
         INPUT2 : IN  std_logic_vector(31 downto 0);
         OP_IN : IN  std_logic;
         GRT_EXP : OUT  std_logic_vector(7 downto 0);
         GRT_MAN : OUT  std_logic_vector(22 downto 0);
         SML_MAN : OUT  std_logic_vector(22 downto 0);
         OFF : OUT  std_logic_vector(4 downto 0);
         OP_OUT : OUT  std_logic;
         SIG_OUT : OUT  std_logic;
         SKIP : OUT  std_logic_vector(31 downto 0);
         ERR : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal INPUT1 : std_logic_vector(31 downto 0) := (others => '0');
   signal INPUT2 : std_logic_vector(31 downto 0) := (others => '0');
   signal OP_IN : std_logic := '0';

 	--Outputs
   signal GRT_EXP : std_logic_vector(7 downto 0);
   signal GRT_MAN : std_logic_vector(22 downto 0);
   signal SML_MAN : std_logic_vector(22 downto 0);
   signal OFF : std_logic_vector(4 downto 0);
   signal OP_OUT : std_logic;
   signal SIG_OUT : std_logic;
   signal SKIP : std_logic_vector(31 downto 0);
   signal ERR : std_logic_vector(2 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ComparingStage PORT MAP (
          INPUT1 => INPUT1,
          INPUT2 => INPUT2,
          OP_IN => OP_IN,
          GRT_EXP => GRT_EXP,
          GRT_MAN => GRT_MAN,
          SML_MAN => SML_MAN,
          OFF => OFF,
          OP_OUT => OP_OUT,
          SIG_OUT => SIG_OUT,
          SKIP => SKIP,
          ERR => ERR
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
