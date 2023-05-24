LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_Normalizer IS
END TB_Normalizer;
 
ARCHITECTURE behavior OF TB_Normalizer IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Normalizer
    PORT(
         MAN_IN : IN  std_logic_vector(23 downto 0);
         EXP_IN : IN  std_logic_vector(7 downto 0);
         MAN_OUT : OUT  std_logic_vector(23 downto 0);
         EXP_OUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal MAN_IN : std_logic_vector(23 downto 0) := (others => '0');
   signal EXP_IN : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal MAN_OUT : std_logic_vector(23 downto 0);
   signal EXP_OUT : std_logic_vector(7 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Normalizer PORT MAP (
          MAN_IN => MAN_IN,
          EXP_IN => EXP_IN,
          MAN_OUT => MAN_OUT,
          EXP_OUT => EXP_OUT
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 20 ns;	

      --Caso normale
		MAN_IN	<= "000001110000000000000000";
		EXP_IN	<=	"00100000";
      wait for 20 ns;
		
		--Caso underflow
		MAN_IN	<= "000000000010000000100000";
		EXP_IN	<= "00000010";
   end process;

END;
