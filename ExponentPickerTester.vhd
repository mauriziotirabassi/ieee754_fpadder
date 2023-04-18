
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY ExponentPickerTester IS
END ExponentPickerTester;
 
ARCHITECTURE behavior OF ExponentPickerTester IS 

 
    COMPONENT ExponentPicker
    PORT(
         E1 : IN  std_logic_vector(7 downto 0);
         E2 : IN  std_logic_vector(7 downto 0);
         E_grt : OUT  std_logic_vector(7 downto 0);
			E_sml : OUT std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal E1 : std_logic_vector(7 downto 0) ;
   signal E2 : std_logic_vector(7 downto 0) ;
	
 	--Outputs
   signal E_grt : std_logic_vector(7 downto 0);
	signal E_sml : std_logic_vector(7 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ExponentPicker PORT MAP (
          E1 => E1,
          E2 => E2,
          E_grt => E_grt,
			 E_sml => E_sml
        );
 
   -- Stimulus process
   stim_proc: process
   begin		
	
     --grt
	   E1<="00001111";
	   E2<="00000111";
	   wait for 20ns;
	  --grt
	   E1<="10001111";
	   E2<="00000111";
		wait for 20ns;
		--eq
	   E1<="00001111";
	   E2<="00001111";
		wait for 20ns;
		--sml
	   E1<="00001111";
	   E2<="10011111";
		wait for 20ns;
		--sml
	   E1<="00000000";
	   E2<="00000111";
		wait for 20ns;

      wait;
   end process;

END;
