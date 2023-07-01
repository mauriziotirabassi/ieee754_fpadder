--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:51:52 05/24/2023
-- Design Name:   
-- Module Name:   /home/kryzha/Documents/proj-reti-2023/test1/TB_FirstStageTOP.vhd
-- Project Name:  test1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FirstStageTOP
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
 
ENTITY TB_FirstStageTOP IS
END TB_FirstStageTOP;
 
ARCHITECTURE behavior OF TB_FirstStageTOP IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FirstStageTOP
    PORT(
         INPUT1 : IN  std_logic_vector(31 downto 0);
         INPUT2 : IN  std_logic_vector(31 downto 0);
         OP_IN : IN  std_logic;
         GRT_MAN : OUT  std_logic_vector(22 downto 0);
         SML_MAN : OUT  std_logic_vector(22 downto 0);
         GRT_EXP : OUT  std_logic_vector(7 downto 0);
         OP_OUT : OUT  std_logic;
         SIG_OUT : OUT  std_logic;
         OFF : OUT  std_logic_vector(4 downto 0);
         SKIP : OUT  std_logic_vector(31 downto 0);
         ERR : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal INPUT1 : std_logic_vector(31 downto 0) := (others => '0');
   signal INPUT2 : std_logic_vector(31 downto 0) := (others => '0');
   signal OP_IN : std_logic := '0';

 	--Outputs
   signal GRT_MAN : std_logic_vector(22 downto 0);
   signal SML_MAN : std_logic_vector(22 downto 0);
   signal GRT_EXP : std_logic_vector(7 downto 0);
   signal OP_OUT : std_logic;
   signal SIG_OUT : std_logic;
   signal OFF : std_logic_vector(4 downto 0);
   signal SKIP : std_logic_vector(31 downto 0);
   signal ERR : std_logic_vector(2 downto 0);
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FirstStageTOP PORT MAP (
          INPUT1 => INPUT1,
          INPUT2 => INPUT2,
          OP_IN => OP_IN,
          GRT_MAN => GRT_MAN,
          SML_MAN => SML_MAN,
          GRT_EXP => GRT_EXP,
          OP_OUT => OP_OUT,
          SIG_OUT => SIG_OUT,
          OFF => OFF,
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
		OP_IN		<= '1';

      wait;
   end process;

END;
