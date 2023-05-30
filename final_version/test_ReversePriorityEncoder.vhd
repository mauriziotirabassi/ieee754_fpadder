--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:14:23 05/24/2023
-- Design Name:   
-- Module Name:   /home/ale/Desktop/VHDL/proj-reti-2023-main/test1/test_ReversePriorityEncoder.vhd
-- Project Name:  test1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ReversePriorityEncoder
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
 
ENTITY test_ReversePriorityEncoder IS
END test_ReversePriorityEncoder;
 
ARCHITECTURE behavior OF test_ReversePriorityEncoder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ReversePriorityEncoder
    PORT(
         INPUT : IN  std_logic_vector(23 downto 0);
         OUTPUT : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal INPUT : std_logic_vector(23 downto 0) := (others => '0');

 	--Outputs
   signal OUTPUT : std_logic_vector(4 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ReversePriorityEncoder PORT MAP (
          INPUT => INPUT,
          OUTPUT => OUTPUT
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		INPUT	<= "010000000000000110000000";

      wait;
   end process;

END;
