--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:45:59 05/24/2023
-- Design Name:   
-- Module Name:   /home/kryzha/Documents/proj-reti-2023/test1/TB_CaseManager.vhd
-- Project Name:  test1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CaseManager
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
 
ENTITY TB_CaseManager IS
END TB_CaseManager;
 
ARCHITECTURE behavior OF TB_CaseManager IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CaseManager
    PORT(
         INPUT1 : IN  std_logic_vector(31 downto 0);
         INPUT2 : IN  std_logic_vector(31 downto 0);
         OP : IN  std_logic;
         SKIP : OUT  std_logic_vector(31 downto 0);
         ERR : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal INPUT1 : std_logic_vector(31 downto 0) := (others => '0');
   signal INPUT2 : std_logic_vector(31 downto 0) := (others => '0');
   signal OP : std_logic := '0';

 	--Outputs
   signal SKIP : std_logic_vector(31 downto 0);
   signal ERR : std_logic_vector(2 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CaseManager PORT MAP (
          INPUT1 => INPUT1,
          INPUT2 => INPUT2,
          OP => OP,
          SKIP => SKIP,
          ERR => ERR
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		INPUT1	<= "01111111100000000000000000000000";
		INPUT2	<= "11111111100000000000000000000000";
		OP			<= '1';

      wait;
   end process;

END;
