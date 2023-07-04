library ieee;
use ieee.std_logic_1164.all;


entity MantissaComparator is
	port(
		M1		: in	std_logic_vector(22 downto 0);
		M2		: in	std_logic_vector(22 downto 0);
		GRT	: out	std_logic;	--M1 > M2
		EQ		: out	std_logic;	--M1 = M2
		SML	: out	std_logic	--M1 < M2
	);
end MantissaComparator;

architecture RTL of MantissaComparator is

	--REGION SIGNALS

	--signal between 8bit comparators and 4 bit comparator
	signal C: std_logic_vector(5 downto 0);

	--ENDREGION	

	--REGION COMPONENTS	
	
	component FourBitComparator is
		port(
			A     : in  std_logic_vector(3 downto 0);
			B     : in  std_logic_vector(3 downto 0);
			SMLIN : in std_logic;
			EQIN  : in std_logic;
			GRTIN : in std_logic;
			SML   : out std_logic;
			EQ    : out std_logic;
			GRT   : out std_logic
		);	  
	end component;

	component EightBitComparator is
		port(
			E1    : in std_logic_vector(7 downto 0); 
			E2    : in std_logic_vector(7 downto 0);
			SML   : out std_logic;
			EQ    : out std_logic;
			GRT   : out std_logic
		);
	end component;
	
	--ENDREGION

begin

	--generate first two complete 8BitComparator
	G_1: for I in 0 to 1 generate
		U: EightBitComparator 
			port map(
				E1(7 downto 0) => M1((14+(8*I)) downto ((8*I)+7)),
				E2(7 downto 0) => M2((14+(8*I)) downto ((8*I)+7)),
				GRT => C(I*2),
				SML => C(I*2+1),
				EQ => open
			);
	end generate;

	--generate last 8BitComparator (7 bit of mantissa)
	U3: EightBitComparator 
		port map(
			E1(7 downto 1) => M1(6 downto 0),
			E1(0) => '0',
			E2(7 downto 1) => M2(6 downto 0),
			E2(0) => '0',
			GRT => C(4),
			EQ => open,
			SML => C(5)
		);

	--generate 4BitComparator 
	U4: FourBitComparator 
		port map(
			A(3) => C(2), 
			A(2) => C(0),
			A(1) => C(4),
			A(0) => '0',

			B(3) => C(3), 
			B(2) => C(1),
			B(1) => C(5),
			B(0) => '0', 

			SMLIN => '0', --default values
			EQIN => '1',
			GRTIN => '0',

			SML => SML, --output to top level
			EQ => EQ,
			GRT => GRT
		);

end RTL;