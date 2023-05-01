library ieee;
use ieee.std_logic_1164.all;

entity ExponentComparator is
	port(
		E1    : in std_logic_vector(7 downto 0); 
		E2    : in std_logic_vector(7 downto 0);
		SML   : out std_logic;
		EQ    : out std_logic;
		GRT   : out std_logic
	);
end ExponentComparator;

architecture RTL of ExponentComparator is

    --signals between 4bit comparators
    signal C1,C2,C3,C4,C5,C6: std_logic;

	component comparator4bit_RTL is
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

begin

    --REGION COMPARATOR
	--LSB comparator
	COMP0: comparator4bit_RTL 
		port map(
			A(3 downto 0) => E1(3 downto 0),
			B(3 downto 0) => E2(3 downto 0),
			SMLIN => '0', 
			EQIN => '1',
			GRTIN => '0',
			SML => C1,
			EQ => C2,
			GRT => C3
	);

	--MSB comparator
	COMP1: comparator4bit_RTL 
		port map(
			A(3 downto 0) => E1(7 downto 4),
			B(3 downto 0) => E2(7 downto 4),
			SMLIN => C1,
			EQIN => C2,
			GRTIN => C3,
			SML => SML,
			EQ => EQ,
			GRT => GRT
		);
	--ENDREGION



end RTL;

