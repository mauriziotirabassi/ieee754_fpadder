
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SecondStageTOP is
port(
	M1: in std_logic_vector(22 downto 0);
	M2: in std_logic_vector(22 downto 0);
	OFFSET: in std_logic_vector(7 downto 0);
	SUB: in std_logic;
	RESULT: out std_logic_vector(23 downto 0);
	Cout: out std_logic);
end SecondStageTOP;

architecture RTL of SecondStageTOP is

signal M1_in:std_logic_vector(22 downto 0);
signal M2_in:std_logic_vector(22 downto 0);
signal OFFSET_in: std_logic_vector(7 downto 0);
signal SUB_in: std_logic;
signal M2_shifted_tmp, M1_tmp:std_logic_vector(23 downto 0); --for operation


component ShifterMANT
	port(
	M: in std_logic_vector(22 downto 0);
	OFFSET: in std_logic_vector(7 downto 0);
	M_SHIFTED: out std_logic_vector(23 downto 0)
	);
	end component;
	
component add_subMANT
	port(
	A: in std_logic_vector(23 downto 0);
	B: in std_logic_vector(23 downto 0);
	SUB: in std_logic; --1 if sub operation
	S: out std_logic_vector(23 downto 0);
	Cout: out std_logic); --sgn control for overflow of mantissa module shift R 
	end component;
	
begin

--top level connections
M1_in<=M1;
M2_in<=M2;
OFFSET_in<=OFFSET;
SUB_in<=SUB;
--directly connect out of adder to out of toplevel

M1_tmp<= '1' & M1_in;

SHIFTER_RIGHT: ShifterMANT port map(
	M => M2_in,
	OFFSET => OFFSET_in,
	M_SHIFTED => M2_shifted_tmp
	);
	
SUB_ADDER: add_subMANT port map(
	A => M1_tmp,
	B => M2_shifted_tmp,
	SUB => SUB_in,
	S => RESULT,
	Cout => Cout
	);

end RTL;

