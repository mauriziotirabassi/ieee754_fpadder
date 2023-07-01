
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY test_pipeline IS
END test_pipeline;
 
ARCHITECTURE behavior OF test_pipeline IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Pipeline
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic;
         INPUT1 : IN  std_logic_vector(31 downto 0);
         INPUT2 : IN  std_logic_vector(31 downto 0);
         OP_IN : IN  std_logic;
         OUTPUT : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic ;
   signal RESET : std_logic ;
   signal INPUT1 : std_logic_vector(31 downto 0) ;
   signal INPUT2 : std_logic_vector(31 downto 0) ;
   signal OP_IN : std_logic := '0';

 	--Outputs
   signal OUTPUT : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Pipeline PORT MAP (
          CLK => CLK,
          RESET => RESET,
          INPUT1 => INPUT1,
          INPUT2 => INPUT2,
          OP_IN => OP_IN,
          OUTPUT => OUTPUT
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
		RESET <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      --wait for CLK_period*10;

      -- insert stimulus here 
		RESET  <= '0';
		INPUT1 <= "11101111101111111111110111111111";
		INPUT2 <= "11101111111111111111111101111111";
		OP_IN  <= '0';
		

      wait;
   end process;

END;
