--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:33:30 05/24/2023
-- Design Name:   
-- Module Name:   /home/ale/Desktop/VHDL/proj-reti-2023-main/test1/test_stage2.vhd
-- Project Name:  test1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SecondStageTOP
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
 
ENTITY test_stage2 IS
END test_stage2;
 
ARCHITECTURE behavior OF test_stage2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SecondStageTOP
    PORT(
         GRT_MAN : IN  std_logic_vector(22 downto 0);
         SML_MAN : IN  std_logic_vector(22 downto 0);
         GRT_EXP 	: IN  std_logic_vector(7 downto 0);
         OP_IN 	: IN  std_logic;
         OFF 		: IN  std_logic_vector(4 downto 0);
         ERR_IN : IN  std_logic_vector(2 downto 0);
         MAN_OUT : OUT  std_logic_vector(23 downto 0);
         EXP_OUT : OUT  std_logic_vector(7 downto 0);
         ERR_OUT : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal GRT_MAN : std_logic_vector(22 downto 0) := (others => '0');
   signal SML_MAN : std_logic_vector(22 downto 0) := (others => '0');
   signal GRT_EXP : std_logic_vector(7 downto 0) := (others => '0');
   signal OP_IN : std_logic := '0';
   signal OFF : std_logic_vector(4 downto 0) := (others => '0');
   signal ERR_IN : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal MAN_OUT : std_logic_vector(23 downto 0);
   signal EXP_OUT : std_logic_vector(7 downto 0);
   signal ERR_OUT : std_logic_vector(2 downto 0);
	
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SecondStageTOP PORT MAP (
          GRT_MAN => GRT_MAN,
          SML_MAN => SML_MAN,
          GRT_EXP => GRT_EXP,
          OP_IN => OP_IN,
          OFF => OFF,
          ERR_IN => ERR_IN,
          MAN_OUT => MAN_OUT,
          EXP_OUT => EXP_OUT,
          ERR_OUT => ERR_OUT
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		GRT_MAN	<= "11111111111111101111111";
		SML_MAN	<= "01111111111110111111111";
		GRT_EXP	<= "11011111";
		OP_IN		<= '1';
		OFF		<= "00000";
		ERR_IN	<= "000";
		
		


      wait;
   end process;

END;
