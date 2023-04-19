
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ExponentPicker is

	port(
		E1 : in std_logic_vector(7 downto 0);
		E2 : in std_logic_vector(7 downto 0);
		E_grt : out std_logic_vector(7 downto 0);
		E_sml : out std_logic_vector(7 downto 0)
		); 
		
end ExponentPicker;

architecture RTL of ExponentPicker is

signal comp_rslt: std_logic;

component ExponentComparator is

	port(
	E1    : in std_logic_vector(7 downto 0); 
	E2    : in std_logic_vector(7 downto 0);
	SML   : out std_logic;
	EQ    : out std_logic;
	GRT   : out std_logic);
	end component;

begin

	--wire component
	COMP0:ExponentComparator port map(
			E1 => E1,
			E2 => E2,
			GRT => comp_rslt);

	--mux for grt
	with comp_rslt	select
	E_grt <= E1 when '1',
				E2 when '0';
				
	--mux for sml
	with comp_rslt select
	E_sml <= E2 when '1',
			   E1 when '0';
end RTL;

