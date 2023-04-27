--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:07:56 04/18/2023
-- Design Name:   
-- Module Name:   /home/ale/Desktop/VHDL/OffsetCalculator/FullAdder_tester.vhd
-- Project Name:  OffsetCalculator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FullAdder
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
 
ENTITY FullAdder_tester IS
END FullAdder_tester;
 
ARCHITECTURE behavior OF FullAdder_tester IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FullAdder
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Cin : IN  std_logic;
         S : OUT  std_logic;
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Cin : std_logic := '0';

 	--Outputs
   signal S : std_logic;
   signal Cout : std_logic;
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FullAdder PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          S => S,
          Cout => Cout
        );


   -- Stimulus process
   stim_proc: process
   begin		
      A<='1';
		B<='0';
		wait for 20ns;
		
		A<='1';
		B<='1';
		wait for 20ns;
		
		A<='0';
		B<='1';
		wait for 20ns;
		
		A<='0';
		B<='0';
		wait for 20ns;
 

      wait;
   end process;

END;
