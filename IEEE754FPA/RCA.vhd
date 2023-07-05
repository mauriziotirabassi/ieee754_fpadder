library ieee;
use ieee.std_logic_1164.all;

entity RCA is
	generic(
		N	: integer := 24
	);

	port( 
		INPUT1	: in	std_logic_vector(N-1 downto 0);
		INPUT2	: in	std_logic_vector(N-1 downto 0);
		OP			: in	std_logic; --0 sum, 1 diff
		OUTPUT	: out	std_logic_vector(N-1 downto 0);
		COUT		: out	std_logic
	);
end RCA;

architecture RTL of RCA is

	--REGION SIGNALS
	signal C				: std_logic_vector(N downto 0);
	signal INPUT2_C2	: std_logic_vector(N-1 downto 0);
	--ENDREGION

	--REGION COMPONENTS
	component FullAdder
		port(
			A		: in	std_logic;
			B		: in	std_logic;
			Cin	: in	std_logic;
			S		: out	std_logic;
			Cout	: out	std_logic
		);
	end component;
	--ENDREGION

begin

	--complement 2 of B if operation is sub
	xor_gen: for J in 0 to N-1 generate
		INPUT2_C2(J) <= OP xor INPUT2(J);
	end generate;

	--top level connections
	COUT	<= C(N) when OP ='0' else '0' ;
	C(0)	<= OP;

	GEN: for I in 0 to N-1 generate
		U: FullAdder 
			port map(
				A		=> INPUT1(I),
				B		=> INPUT2_C2(I),
				Cin	=> C(I),
				S		=> OUTPUT(I),
				Cout	=> C(I+1)
			);
	end generate;

end RTL;
