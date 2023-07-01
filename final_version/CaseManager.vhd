library ieee;
use ieee.std_logic_1164.all;

--Behavior of the module:
--1. Identifying special cases dependent on the input

entity CaseManager is
	port(
		INPUT1	: in	std_logic_vector(31 downto 0);
		INPUT2	: in	std_logic_vector(31 downto 0);
		OP			: in	std_logic;
		
		SKIP		: out	std_logic_vector(31 downto 0); --TODO: Decidere se spostare direttamente in first stage
		ERR		: out	std_logic_vector(2 downto 0) 
	);

	--Encoding:
	--000: No abnormalities
	--001: Generate SKIP (one of the two inputs because the other one is null)
	--010: Generate zero
	--011: Generate NaN
	--100: Generate +inf
	--101: Generate -inf

end CaseManager;

architecture RTL of CaseManager is

	--REGION SIGNALS
	signal SIG1, SIG2		: std_logic;
	signal EXP1, EXP2		: std_logic_vector(7 downto 0);
	signal MAN1, MAN2		: std_logic_vector(22 downto 0);
	
	signal ZERO1, ZERO2	: std_logic;
	signal MAN1_ZERO, MAN2_ZERO	: std_logic;
	signal EXP1_ZERO, EXP2_ZERO	: std_logic;
	signal EXP1_ONE, EXP2_ONE		: std_logic;
	
	signal INF1,INF2, PLUS_INF1, PLUS_INF2, MINUS_INF1, MINUS_INF2	: std_logic;
	--ENDREGION

begin

	--Parsing the inputs
    SIG1  <= INPUT1(31);
    SIG2  <= INPUT2(31);
    EXP1  <= INPUT1(30 downto 23);
    EXP2  <= INPUT2(30 downto 23);
	 MAN1  <= INPUT1(22 downto 0);
	 MAN2  <= INPUT2(22 downto 0);
	
	--Identifying zero
	ZERO1			<= '1' when (EXP1	= "00000000" and MAN1 = "00000000000000000000000") else '0';
	ZERO2			<= '1' when (EXP2	= "00000000" and MAN2 = "00000000000000000000000") else '0';
	
	--Identifying infinity
	INF1			<= '1' when (EXP1 = "11111111" and MAN1 = "00000000000000000000000") else '0';
	INF2			<= '1' when (EXP2 = "11111111" and MAN2 = "00000000000000000000000") else '0';
	
	PLUS_INF1	<= '1' when (SIG1 = '0' and EXP1 = "11111111" and MAN1 = "00000000000000000000000") else '0';
	PLUS_INF2	<= '1' when (SIG2 = '0' and EXP2 = "11111111" and MAN2 = "00000000000000000000000") else '0';
	MINUS_INF1	<= '1' when (SIG1 = '1' and EXP1 = "11111111" and MAN1 = "00000000000000000000000") else '0';
	MINUS_INF2	<= '1' when (SIG2 = '1' and EXP2 = "11111111" and MAN2 = "00000000000000000000000") else '0';

	--Encoding the signal identifying the special case
	ERR	<=	
				--One of the two inputs is zero
				"001" when ((ZERO1 and not(ZERO2))	or		(ZERO2 and not(ZERO1)))	= '1'
				
				--Both inputs are zero
		else	"010" when (ZERO1	and	ZERO2)	= '1' --TODO: Ridondante?
		
				--Both inputs are infinite but with different sign
		else	"011" when ((PLUS_INF1 and MINUS_INF2 and (not OP))	or	(MINUS_INF1	and PLUS_INF2 and (not OP)))	= '1'
		
				--Cases for which the result is +inf
		else	"100" when ((PLUS_INF1 and (not INF2))	or ((not INF1) and PLUS_INF2) or (PLUS_INF1 and PLUS_INF2 and (not OP)) or (PLUS_INF1 and MINUS_INF2 and OP))	= '1'
		
				--Cases for which the result is -inf
		else	"101" when ((MINUS_INF1 and (not INF2))or ((not INF1) and MINUS_INF2) or (MINUS_INF1 and MINUS_INF2 and (not OP)) or (MINUS_INF1 and PLUS_INF2 and OP))	= '1'
		
				--No abnormalities
		else	"000";
	
	--Setting the SKIP signal to one of the inputs if the other one is zero. If that is not the case, setting it to the greater one of the two.
	SKIP	<= INPUT2	when ZERO1	= '1' else	INPUT1;
	
end RTL;