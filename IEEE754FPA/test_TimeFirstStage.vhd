
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_TimeFirstStage IS
END test_TimeFirstStage;
 
ARCHITECTURE behavior OF test_TimeFirstStage IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TimeFirstStage
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic;
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
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '1';
   signal INPUT1 : std_logic_vector(31 downto 0) ;
   signal INPUT2 : std_logic_vector(31 downto 0) ;
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

   -- Clock period definitions
   constant CLK_period : time := 10 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TimeFirstStage PORT MAP (
          CLK => CLK,
          RESET => RESET,
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

     --CASE SKIP 001
		RESET	<='0';
		INPUT1 <= "01000001100010011001100110011010"; -- 17.2
		INPUT2 <= "00000000000000000000000000000000"; -- 0
		OP_IN  <= '0';
		wait for CLK_period;
		
		RESET	<='0';
		INPUT1 <= "00000000000000000000000000000000"; -- 0
		INPUT2 <= "01000001100010011001100110011010"; -- 17.2
		OP_IN  <= '0';
		wait for CLK_period;
		
		--CASE ZERO 010
		RESET	<='0';
		INPUT1 <= "00000000000000000000000000000000"; -- 0
		INPUT2 <= "00000000000000000000000000000000"; -- 0
		OP_IN  <= '0';
		wait for CLK_period;
		
		--CASE NaN 011
		RESET	<='0';
		INPUT1 <= "01111111100000000000000000100000"; -- NaN
		INPUT2 <= "01000001100010011001100110011010"; -- 17.2
		OP_IN  <= '0';
		wait for CLK_period;
		
		RESET	<='0';
		INPUT1 <= "11111111100000000000000000100000"; -- NaN
		INPUT2 <= "01000001100010011001100110011010"; -- 17.2
		OP_IN  <= '0';
		wait for CLK_period;
		
		--CASE +INF 100
		RESET	<='0';
		INPUT1 <= "01000001100010011001100110011010"; -- 17.2
		INPUT2 <= "01111111100000000000000000000000"; -- +inf
		OP_IN  <= '0';
		wait for CLK_period;
		
		--CASE -INF 101
		RESET	<='0';
		INPUT1 <= "01000001100010011001100110011010"; -- 17.2
		INPUT2 <= "11111111100000000000000000000000"; -- -inf
		OP_IN  <= '0';
		wait for CLK_period;

		--CASE 0 - NUM
		RESET	<='0';
		INPUT1	<= "00000000000000000000000000000000"; -- ZERO
		INPUT2	<= "01000010000011001110101110000101"; -- 35.23
		OP_IN		<= '1'; --diff
		wait for CLK_period;
		
		--TEST 9: (biggest + biggest)
		--Expected binary:	"?"
		--Expected decimal:	
		INPUT1	<= "01111111011111111111111111111111"; -- biggest
		INPUT2	<= "01111111011111111111111111111111"; -- biggest
		OP_IN		<= '0'; --sum
		wait for CLK_period;
		
		--TEST 10: (bigger number + big number)
		--Expected binary:	"?"
		--Expected decimal:	
		
		INPUT1	<= "01111101011111110001000000000000"; -- 2.11897634797 × 10^37
		INPUT2	<= "01110001111111110001000000000000"; -- 2.5260167 × 10^30
		OP_IN		<= '0'; --sum
		wait for CLK_period;

      wait;
   end process;

END;
