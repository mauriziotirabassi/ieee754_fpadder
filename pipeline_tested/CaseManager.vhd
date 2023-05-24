library ieee;
use ieee.std_logic_1164.all;

--Modulo per la gestione di input particolari (non serve propagare i segnali, si ha già l'output)
entity CaseManager is
	port(
		INPUT1	: in	std_logic_vector(31 downto 0);
		INPUT2	: in	std_logic_vector(31 downto 0);
		OP			: in	std_logic;
		
		SKIP		: out	std_logic_vector(31 downto 0); --TODO: Decidere se spostare direttamente in first stage

		ERR		: out	std_logic_vector(2 downto 0) 

	);

	--Codifica:
	--000: Nessun errore
	--001: Stampare "skip" ovvero uno dei due numeri perché l'altro è 0
	--010: Stampare "0"
	--011: Stampare NaN
	--100: Stampare +inf
	--101: Stampare -inf

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

	--Identificazione input speciali
	MAN1_ZERO	<=	'1' when MAN1	= "00000000000000000000000"	else '0';
	MAN2_ZERO	<=	'1' when MAN2	= "00000000000000000000000"	else '0';
	
	EXP1_ZERO	<= '1' when EXP1	= "00000000"	else '0';
	EXP2_ZERO	<= '1' when EXP2	= "00000000"	else '0';
	EXP1_ONE		<= '1' when EXP1	= "11111111"	else '0';
	EXP2_ONE		<= '1' when EXP2	= "11111111"	else '0';
	
	--TODO: Problema sequenzialità se uso segnali precedentemente attribuiti?
	--Identificazione casi zero
	ZERO1			<= '1' when (EXP1	= "00000000" and MAN1 = "00000000000000000000000") else '0';
	ZERO2			<= '1' when (EXP2	= "00000000" and MAN2 = "00000000000000000000000") else '0';
	
	--Identificazione casi infinito
	INF1			<= '1' when (EXP1 = "11111111" and MAN1 = "00000000000000000000000") else '0';
	INF2			<= '1' when (EXP2 = "11111111" and MAN2 = "00000000000000000000000") else '0';
	
	PLUS_INF1	<= '1' when (SIG1 = '0' and EXP1 = "11111111" and MAN1 = "00000000000000000000000") else '0';
	PLUS_INF2	<= '1' when (SIG2 = '0' and EXP2 = "11111111" and MAN2 = "00000000000000000000000") else '0';
	MINUS_INF1	<= '1' when (SIG1 = '1' and EXP1 = "11111111" and MAN1 = "00000000000000000000000") else '0';
	MINUS_INF2	<= '1' when (SIG2 = '1' and EXP2 = "11111111" and MAN2 = "00000000000000000000000") else '0';

	--Codifica segnale di errore
	ERR	<=	"001" when ((ZERO1 and not(ZERO2))	or		(ZERO2 and not(ZERO1)))	= '1' --uno dei due numeri è 0 --TODO: decidere se ignorare caso in cui uno dei due sia uguale a 0
		else	"010" when (ZERO1	and	ZERO2)	= '1' --entrambi i numeri sono 0 --TODO: Ridondante?
		else	"011" when ((PLUS_INF1 and MINUS_INF2 and (not OP))	or	(MINUS_INF1	and PLUS_INF2 and (not OP)))	= '1' --caso +inf op -inf e viceversa
		else	"100" when ((PLUS_INF1 and (not INF2))	or ((not INF1) and PLUS_INF2) or (PLUS_INF1 and PLUS_INF2 and (not OP)) or (PLUS_INF1 and MINUS_INF2 and OP))	= '1' --caso uno dei due è +inf ma non l'altro
		else	"101" when ((MINUS_INF1 and (not INF2))or ((not INF1) and MINUS_INF2) or (MINUS_INF1 and MINUS_INF2 and (not OP)) or (MINUS_INF1 and PLUS_INF2 and OP))	= '1' --caso uno dei due è -inf ma non l'altro
		else	"000"; --Nessun errore nel caso in cui nessuna condizione venga verificata
	
	--Set dello SKIP: non serve gestire altri casi perché già verificati nella selezione della flag di errore
	SKIP	<= INPUT2	when ZERO1	= '1' else	INPUT1;
	
end RTL;