--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:51:46 05/24/2023
-- Design Name:   
-- Module Name:   /home/ale/Desktop/VHDL/proj-reti-2023-main/test1/test_stage3.vhd
-- Project Name:  test1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ThirdStageTOP
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_stage3 IS
END test_stage3;
 
ARCHITECTURE behavior OF test_stage3 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ThirdStageTOP
    PORT(
         SIG_IN : IN  std_logic;
         MAN_IN : IN  std_logic_vector(23 downto 0);
         EXP_IN : IN  std_logic_vector(7 downto 0);
         SKIP : IN  std_logic_vector(31 downto 0);
         ERR : IN  std_logic_vector(2 downto 0);
         FINAL : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal SIG_IN : std_logic := '0';
   signal MAN_IN : std_logic_vector(23 downto 0);
   signal EXP_IN : std_logic_vector(7 downto 0) ;
   signal SKIP : std_logic_vector(31 downto 0);
   signal ERR : std_logic_vector(2 downto 0);

 	--Outputs
   signal FINAL : std_logic_vector(31 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ThirdStageTOP PORT MAP (
          SIG_IN => SIG_IN,
          MAN_IN => MAN_IN,
          EXP_IN => EXP_IN,
          SKIP => SKIP,
          ERR => ERR,
          FINAL => FINAL
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		SIG_IN	<= '1';
		MAN_IN	<= "010000000000000110000000";
		EXP_IN	<= "11011111";
		SKIP		<= "11101111111111111111111101111111";
		ERR		<= "000";

      -- insert stimulus here 

      wait;
   end process;

END;
