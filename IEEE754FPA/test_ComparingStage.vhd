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
   signal INPUT1 : std_logic_vector(31 downto 0) ;
   signal INPUT2 : std_logic_vector(31 downto 0) ;
   signal OP_IN : std_logic ;

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

      --CASE SKIP 001
		INPUT1 <= "01000001100010011001100110011010"; -- 17.2
		INPUT2 <= "00000000000000000000000000000000"; -- 0
		OP_IN  <= '0';
		wait for 50 ns;
		
		INPUT1 <= "00000000000000000000000000000000"; -- 0
		INPUT2 <= "01000001100010011001100110011010"; -- 17.2
		OP_IN  <= '0';
		wait for 50 ns;
		
		--CASE ZERO 010
		INPUT1 <= "00000000000000000000000000000000"; -- 0
		INPUT2 <= "00000000000000000000000000000000"; -- 0
		OP_IN  <= '0';
		wait for 50 ns;
		
		--CASE NaN 011
		INPUT1 <= "01111111100000000000000000100000"; -- NaN
		INPUT2 <= "01000001100010011001100110011010"; -- 17.2
		OP_IN  <= '0';
		wait for 50 ns;
		
		INPUT1 <= "11111111100000000000000000100000"; -- NaN
		INPUT2 <= "01000001100010011001100110011010"; -- 17.2
		OP_IN  <= '0';
		wait for 50 ns;
		
		--CASE +INF 100
		INPUT1 <= "01000001100010011001100110011010"; -- 17.2
		INPUT2 <= "01111111100000000000000000000000"; -- +inf
		OP_IN  <= '0';
		wait for 50 ns;
		
		--CASE -INF 101
		INPUT1 <= "01000001100010011001100110011010"; -- 17.2
		INPUT2 <= "11111111100000000000000000000000"; -- -inf
		OP_IN  <= '0';
		wait for 50 ns;
		
		--CASE 0 - NUM 001
		INPUT1	<= "00000000000000000000000000000000"; -- ZERO
		INPUT2	<= "01000010000011001110101110000101"; -- 35.23
		OP_IN		<= '1'; --diff
		wait for 50 ns;

		--TEST 9: (biggest + biggest)
		--Expected binary:	"?"
		--Expected decimal:	
		INPUT1	<= "01111111011111111111111111111111"; -- biggest
		INPUT2	<= "01111111011111111111111111111111"; -- biggest
		OP_IN		<= '0'; --sum
		wait for 50ns;
		
		--TEST 10: (bigger number + big number)
		--Expected binary:	"?"
		--Expected decimal:	
		
		INPUT1	<= "01111101011111110001000000000000"; -- 2.11897634797 × 10^37
		INPUT2	<= "01110001111111110001000000000000"; -- 2.5260167 × 10^30
		OP_IN		<= '0'; --sum
		wait for 50ns;
		
      wait;
   end process;

END;
