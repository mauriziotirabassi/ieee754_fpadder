
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_TimeSecondStage IS
END test_TimeSecondStage;
 
ARCHITECTURE behavior OF test_TimeSecondStage IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TimeSecondStage
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic;
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
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '1';
   signal GRT_EXP : std_logic_vector(7 downto 0);
   signal GRT_MAN : std_logic_vector(22 downto 0);
   signal SML_MAN : std_logic_vector(22 downto 0);
   signal OP_IN : std_logic;
   signal OFF : std_logic_vector(4 downto 0);
   signal ERR_IN : std_logic_vector(2 downto 0);

 	--Outputs
   signal MAN_OUT : std_logic_vector(23 downto 0);
   signal EXP_OUT : std_logic_vector(7 downto 0);
   signal ERR_OUT : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TimeSecondStage PORT MAP (
          CLK => CLK,
          RESET => RESET,
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

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
