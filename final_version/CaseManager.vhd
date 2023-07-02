library ieee;
use ieee.std_logic_1164.all;

--Behavior of the module:
--1. Identifying special cases dependent on the input

entity CaseManager is
	port(
		INPUT1	: in	std_logic_vector(31 downto 0);
		INPUT2	: in	std_logic_vector(31 downto 0);
		OP			: in	std_logic;

		ERR		: out	std_logic_vector(2 downto 0) 
		
		--Encoding:
		--000: No abnormalities
		--001: Generate SKIP (one of the two inputs because the other one is null)
		--010: Generate ZERO
		--011: Generate NaN
		--100: Generate +INF
		--101: Generate -INF
	
	);
end CaseManager;

architecture RTL of CaseManager is

	--REGION SIGNALS
	signal SIG1, SIG2		: std_logic;
	signal EXP1, EXP2		: std_logic_vector(7 downto 0);
	signal MAN1, MAN2		: std_logic_vector(22 downto 0);
	
	signal E1_ZERO, E2_ZERO, E1_UNO, E2_UNO	: std_logic;
	signal M1_ZERO, M2_ZERO	: std_logic;
	
	signal ZERO1, ZERO2	: std_logic;
	signal INF1,INF2, PLUS_INF1, PLUS_INF2, MINUS_INF1, MINUS_INF2	: std_logic;
	signal NAN1, NAN2		: std_logic;
	signal NORM1, NORM2	: std_logic;
	--ENDREGION

begin

	--Parsing the inputs
   SIG1  <= INPUT1(31);
   SIG2  <= INPUT2(31);
   EXP1  <= INPUT1(30 downto 23);
   EXP2  <= INPUT2(30 downto 23);
	MAN1  <= INPUT1(22 downto 0);
	MAN2  <= INPUT2(22 downto 0);
	
	--Identifying special cases
	E1_ZERO	<= '1' when EXP1	= "00000000"	else '0';
	E2_ZERO	<= '1' when EXP2	= "00000000"	else '0';
	E1_UNO	<= '1' when EXP1	= "11111111"	else '0';
	E2_UNO	<= '1' when EXP2	= "11111111"	else '0';
	
	M1_ZERO	<= '1' when MAN1	= "00000000000000000000000"	else '0';
	M2_ZERO	<= '1' when MAN2	= "00000000000000000000000"	else '0';
	
	--Identifying zero
	ZERO1		<= '1' when (E1_ZERO and M1_ZERO)		= '1' else '0';
	ZERO2		<= '1' when (E2_ZERO and M2_ZERO)		= '1' else '0';
	
	--Identifying infinity
	INF1		<= '1' when (E1_UNO and M1_ZERO)			= '1' else '0';
	INF2		<= '1' when (E2_UNO and M2_ZERO)			= '1' else '0';
	
	PLUS_INF1	<= '1' when ((not SIG1) and INF1)	= '1' else '0';
	PLUS_INF2	<= '1' when ((not SIG2) and INF2)	= '1' else '0';
	MINUS_INF1	<= '1' when (SIG1 and INF1)			= '1' else '0';
	MINUS_INF2	<= '1' when (SIG2 and INF2)			= '1' else '0';
	
	--Identifying NaN
	NAN1		<= '1' when (E1_UNO and (not M1_ZERO))	= '1' else '0';
	NAN2		<= '1' when (E2_UNO and (not M2_ZERO))	= '1' else '0';
	
	--Making normal cases explicit
	NORM1		<= '1' when ((not NAN1) and (not INF1))	= '1' else '0';
	NORM2		<= '1' when ((not NAN2) and (not INF2))	= '1' else '0';
	
	--Encoding the signal identifying the special case
	ERR	<=	
				--Generate SKIP: one of the inputs is null
				"001" when (((not ZERO1) and ZERO2) or (ZERO1 and (not ZERO2))) = '1'
				
				--Generate ZERO: both inputs are null
		else	"010" when (ZERO1 and ZERO2) = '1'
		
				--Generate NaN: either one of the inputs is NaN or it's a sum between infinities with the same sign or a subtraction between infinities with different sign
		else	"011" when (NAN1 or NAN2 or (OP and ((PLUS_INF1 and PLUS_INF2) or (MINUS_INF1 and MINUS_INF2))) or ((not OP) and ((PLUS_INF1 and MINUS_INF2) or (MINUS_INF1 and PLUS_INF2))))	= '1'
		
				--Generate +INF: it's either a sum between positive infinities or a difference where the first operand is a nomal number and the second one is negative infinity
		else	"100" when (((not OP) and ((PLUS_INF1 and (PLUS_INF2 or NORM2)) or (NORM1 and PLUS_INF2))) or (OP and MINUS_INF2 and (NORM1 or PLUS_INF1))) = '1'
		
				--Generate -INF: it's either a sum between negative infinities or a difference where the first operand is a normal number and the second one is a positive infinity
		else	"101" when (((not OP) and ((MINUS_INF1 and (MINUS_INF2 or NORM2)) or (NORM1 and MINUS_INF2))) or (OP and PLUS_INF2 and (NORM1 or MINUS_INF1))) = '1'
		
				--No abnormalities
		else	"000";
	
end RTL;
