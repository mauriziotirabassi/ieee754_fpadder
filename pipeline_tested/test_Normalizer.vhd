--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:11:05 05/24/2023
-- Design Name:   
-- Module Name:   /home/ale/Desktop/VHDL/proj-reti-2023-main/test1/test_Normalizer.vhd
-- Project Name:  test1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Normalizer
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
 
ENTITY test_Normalizer IS
END test_Normalizer;
 
ARCHITECTURE behavior OF test_Normalizer IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Normalizer
    PORT(
         MAN_IN : IN  std_logic_vector(23 downto 0);
         EXP_IN : IN  std_logic_vector(7 downto 0);
         MAN_OUT : OUT  std_logic_vector(23 downto 0);
         EXP_OUT : OUT  std_logic_vector(7 downto 0);
         EXP_UF : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal MAN_IN : std_logic_vector(23 downto 0) := (others => '0');
   signal EXP_IN : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal MAN_OUT : std_logic_vector(23 downto 0);
   signal EXP_OUT : std_logic_vector(7 downto 0);
   signal EXP_UF : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Normalizer PORT MAP (
          MAN_IN => MAN_IN,
          EXP_IN => EXP_IN,
          MAN_OUT => MAN_OUT,
          EXP_OUT => EXP_OUT,
          EXP_UF => EXP_UF
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		MAN_IN	<= "010000000000000110000000";
      EXP_IN	<= "11011111";
			 
      wait;
   end process;

END;
