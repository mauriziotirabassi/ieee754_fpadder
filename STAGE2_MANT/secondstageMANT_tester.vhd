
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY secondstageMANT_tester IS
END secondstageMANT_tester;
 
ARCHITECTURE behavior OF secondstageMANT_tester IS 
 
 
    COMPONENT SecondStageTOP
    PORT(
         M1 : IN  std_logic_vector(22 downto 0);
         M2 : IN  std_logic_vector(22 downto 0);
         OFFSET : IN  std_logic_vector(7 downto 0);
         SUB : IN  std_logic;
         RESULT : OUT  std_logic_vector(23 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal M1 : std_logic_vector(22 downto 0) ;
   signal M2 : std_logic_vector(22 downto 0) ;
   signal OFFSET : std_logic_vector(7 downto 0) ;
   signal SUB : std_logic ;

 	--Outputs
   signal RESULT : std_logic_vector(23 downto 0);
   signal Cout : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SecondStageTOP PORT MAP (
          M1 => M1,
          M2 => M2,
          OFFSET => OFFSET,
          SUB => SUB,
          RESULT => RESULT,
          Cout => Cout
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
		--add 
		M1<="11000111100000000000000";
		M2<="10000111100000000000000";
		OFFSET<="00000000";
		SUB<='0';
		wait for 20ns;
		M1<="11000111100000000000000";
		M2<="10000111100000000000000";
		OFFSET<="00000011";
		SUB<='0';
		wait for 20ns;
		
		--sub
		M1<="10000111100000000000000";
		M2<="10000111100000000000000";
		OFFSET<="00000000";
		SUB<='1';
		wait for 20ns;
		M1<="11000111100000000000000";
		M2<="10000111100000000000000";
		OFFSET<="00000011";
		SUB<='1';
		wait for 20ns;
      wait;
   end process;

END;
