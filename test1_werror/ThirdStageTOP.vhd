library ieee;
use ieee.std_logic_1164.all;

--Terzo stadio della pipeline si occupa di:
--1. Correggere il risultato
--2. Gestire casi eccezionali come (?)

entity ThirdStageTOP is
	port(
		MAN_IN	: in	std_logic_vector(23 downto 0);
		EXP_IN	: in	std_logic_vector(7 downto 0);
		
		FINAL		: out	std_logic_vector(31 downto 0)
		);
end ThirdStageTOP;

architecture RTL of ThirdStageTOP is

	--REGION SIGNALS
	--ENDREGION
	
	--REGION COMPONENTS
	component Normalizer is
		port(
			MAN_IN	: in	std_logic_vector(23 downto 0);
			EXP_IN	: in	std_logic_vector(7 downto 0);
			
			MAN_OUT	: out	std_logic_vector(23 downto 0);
			EXP_OUT	: out	std_logic_vector(7 downto 0)
		);
		
	end component;
	--ENDREGION

begin


end RTL;

