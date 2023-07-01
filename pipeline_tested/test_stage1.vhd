
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY test_stage1 IS
END test_stage1;
 
ARCHITECTURE behavior OF test_stage1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FirstStageTOP
    PORT(
         INPUT1 : IN  std_logic_vector(31 downto 0);
         INPUT2 : IN  std_logic_vector(31 downto 0);
         OP_IN : IN  std_logic;
         GRT_MAN : OUT  std_logic_vector(22 downto 0);
         SML_MAN : OUT  std_logic_vector(22 downto 0);
         GRT_EXP : OUT  std_logic_vector(7 downto 0);
         OP_OUT : OUT  std_logic;
         SIG_OUT : OUT  std_logic;
         OFF : OUT  std_logic_vector(4 downto 0);
         SKIP : OUT  std_logic_vector(31 downto 0);
         ERR : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal INPUT1 : std_logic_vector(31 downto 0);
   signal INPUT2 : std_logic_vector(31 downto 0);
   signal OP_IN : std_logic;

 	--Outputs
   signal GRT_MAN : std_logic_vector(22 downto 0);
   signal SML_MAN : std_logic_vector(22 downto 0);
   signal GRT_EXP : std_logic_vector(7 downto 0);
   signal OP_OUT : std_logic;
   signal SIG_OUT : std_logic;
   signal OFF : std_logic_vector(4 downto 0);
   signal SKIP : std_logic_vector(31 downto 0);
   signal ERR : std_logic_vector(2 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FirstStageTOP PORT MAP (
          INPUT1 => INPUT1,
          INPUT2 => INPUT2,
          OP_IN => OP_IN,
          GRT_MAN => GRT_MAN,
          SML_MAN => SML_MAN,
          GRT_EXP => GRT_EXP,
          OP_OUT => OP_OUT,
          SIG_OUT => SIG_OUT,
          OFF => OFF,
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
		OP_IN  <= '0';
		wait for 50 ns;
		INPUT1 <= "10000000101111111111000111111111";
		INPUT2 <= "10000011111111111111111101111111";
		OP_IN  <= '0';
		wait for 50 ns;
		INPUT1 <= "10000000101111111111110101111111";
		INPUT2 <= "10000000000000000000000000000000";
		OP_IN  <= '0';
		wait for 50 ns;
		INPUT1 <= "11101111101111111111000111111111";
		INPUT2 <= "11101111111111111111111101111111";
		OP_IN  <= '0';
		wait for 50 ns;
		INPUT1 <= "11101111101111111111111111111111";
		INPUT2 <= "11101111111111111111111101111111";
		OP_IN  <= '0';
		wait for 50 ns;
		INPUT1 <= "11101111101111111111110111111111";
		INPUT2 <= "11101111111111111111111101111111";
		OP_IN  <= '0';


      wait;
   end process;

END;
