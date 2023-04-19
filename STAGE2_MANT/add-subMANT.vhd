
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity add_subMANT is
generic(N:integer := 24); 

port( 
A: in std_logic_vector(N-1 downto 0);
B: in std_logic_vector(N-1 downto 0);
SUB: in std_logic; --1 if sub operation
S: out std_logic_vector(N-1 downto 0);
Cout: out std_logic); --sgn control for overflow of mantissa module shift R 
end add_subMANT;

architecture RTL of add_subMANT is
signal C: std_logic_vector(N downto 0);
signal B_C2: std_logic_vector(N-1 downto 0);

component FullAdder
	port(
	A: in std_logic;
	B: in std_logic;
	Cin: in std_logic;
	S: out std_logic;
	Cout: out std_logic);
end component;

begin
--complement 2 of B if operation is sub
xor_gen: for J in 0 to N-1 generate
B_C2(J) <= SUB xor B(J);
end generate;

--top level connections
Cout<=C(24);
C(0)<=SUB;



GEN: for I in 0 to N-1 generate
	U: FullAdder port map(
	A => A(I),
	B => B_C2(I),
	Cin => C(I),
	S => S(I),
	Cout => C(I+1)
	);
end generate;



end RTL;
