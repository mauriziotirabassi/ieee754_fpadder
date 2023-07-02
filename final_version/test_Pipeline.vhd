library ieee;
use ieee.std_logic_1164.all;
 
ENTITY test_Pipeline IS
END test_Pipeline;
 
ARCHITECTURE behavior OF test_Pipeline IS 
 
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
   signal CLK : std_logic;
   signal RESET : std_logic;
   signal INPUT1 : std_logic_vector(31 downto 0);
   signal INPUT2 : std_logic_vector(31 downto 0);
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
      -- hold reset state for 100 ns.
      wait for 50 ns;	
		
		--REGION SPECIAL CASES
		
		--TEST 1: (+INF + ZERO)
		--Expected binary:	"01111111100000000000000000000000"
		--Expected decimal:	+INF
		RESET		<= '0';
		INPUT1	<= "00000000000000000000000000000000"; -- ZERO
		INPUT2	<= "01111111100000000000000000000000"; -- +INF
		OP_IN		<= '0'; --sum
		wait for CLK_period;
		
		--TEST 2: (+INF + -INF)
		--Expected binary:	"01111111111111111111111111111111"
		--Expected decimal:	NaN
		RESET		<= '0';
		INPUT1	<= "01111111100000000000000000000000"; -- +INF
		INPUT2	<= "11111111100000000000000000000000"; -- -INF
		OP_IN		<= '0'; --sum
		wait for CLK_period;
		
		--TEST 3: (ZERO + ZERO)
		--Expected binary:	"00000000000000000000000000000000"
		--Expected decimal:	ZERO
		RESET		<= '0';
		INPUT1	<= "00000000000000000000000000000000"; -- ZERO
		INPUT2	<= "00000000000000000000000000000000"; -- ZERO
		OP_IN		<= '0'; --sum
		wait for CLK_period;
		
		--TEST 4: (+INF + -INF)
		--Expected binary:	"01111111111111111111111111111111"
		--Expected decimal:	NaN
		RESET		<= '0';
		INPUT1	<= "01111111100000000000000000000000"; -- +INF
		INPUT2	<= "11111111100000000000000000000000"; -- -INF
		OP_IN		<= '0'; --sum
		wait for CLK_period;
		
		--TEST 5: (NaN + 17.2)
		--Expected binary:	"01111111111111111111111111111111"
		--Expected decimal:	NaN
		RESET		<= '0';
		INPUT1	<= "01111111111111111111111111111111"; -- NaN
		INPUT2	<= "01000001100010011001100110011010"; -- 17.2
		OP_IN		<= '0'; --sum
		wait for CLK_period;
		
		--TEST 6: (+INF - +INF)
		--Expected binary:	"01111111111111111111111111111111"
		--Expected decimal:	NaN
		RESET		<= '0';
		INPUT1	<= "01111111100000000000000000000000"; -- +INF
		INPUT2	<= "01111111100000000000000000000000"; -- +INF
		OP_IN		<= '1'; --diff
		wait for CLK_period;
		
		--ENDREGION
		
		--REGION NORMAL CASES
		
		--TEST 1: (2.8 + 17.2)
		--Expected binary:	"01000001101000000000000000000000"
		--Expected decimal:	20.0
		RESET		<= '0';
		INPUT1	<= "01000000001100110011001100110011"; -- 2.8
		INPUT2	<= "01000001100010011001100110011010"; -- 17.2
		OP_IN		<= '0'; --sum
		wait for CLK_period;
		
		
		--TEST 3: (ZERO + 35.23)
		--Expected binary:	"11000010000011001110101110000101"
		--Expected decimal:	-35.23
		RESET		<= '0';
		INPUT1	<= "00000000000000000000000000000000"; -- ZERO
		INPUT2	<= "01000010000011001110101110000101"; -- 35.23
		OP_IN		<= '1'; --diff
		wait for CLK_period;
		
		--ENDREGION

      --wait;
   end process;

END;
