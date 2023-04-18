
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY sub_add_EXP_tester IS
END sub_add_EXP_tester;
 
ARCHITECTURE behavior OF sub_add_EXP_tester IS 
 
 
    COMPONENT add_sub_EXP
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         SUB : IN  std_logic;
         S : OUT  std_logic_vector(7 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) ;
   signal B : std_logic_vector(7 downto 0) ;
   signal SUB : std_logic ;

 	--Outputs
   signal S : std_logic_vector(7 downto 0);
   signal Cout : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: add_sub_EXP PORT MAP (
          A => A,
          B => B,
          SUB => SUB,
          S => S,
          Cout => Cout
        );

   -- Stimulus process
   stim_proc: process
   begin		
	--add 
		A<="00001111";
		B<="00001111";
		SUB<='0';
		wait for 20ns;
		A<="01001111";
		B<="00001111";
		SUB<='0';
		wait for 20ns;
		A<="10001111";
		B<="10001111";
		SUB<='0';
		wait for 20ns;
		A<="00000000";
		B<="00000000";
		SUB<='0';
		wait for 20ns;
		A<="11111111";
		B<="11111111";
		SUB<='0';
		wait for 20ns;
	--sub
		A<="10001111";
		B<="00011111";
		SUB<='1';
		wait for 20ns;
		A<="01001111";
		B<="00001111";
		SUB<='1';
		wait for 20ns;
		A<="10001111";
		B<="10001111"; --when equal cout is 1, must be ignored??
		SUB<='1';
		wait for 20ns;
		A<="00000000";
		B<="00000001";
		SUB<='1';
		wait for 20ns;
		A<="11111111";
		B<="11111111"; --when equal cout is 1, must be ignored??
		SUB<='1';
		wait for 20ns;
	
      wait;
   end process;

END;
