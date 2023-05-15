library ieee;
use ieee.std_logic_1164.all;

--Modulo per la gestione di input particolari (non serve propagare i segnali, si ha già l'output)
entity SpecialInputs is
	port(
		SIG1_IN	: in	std_logic;
		SIG2_IN	: in	std_logic;
		EXP1_IN	: in	std_logic_vector(7 downto 0);
		EXP2_IN	: in	std_logic_vector(7 downto 0);
		MAN1_IN	: in	std_logic_vector(22 downto 0);
		MAN2_IN	: in	std_logic_vector(22 downto 0);
		
		ERR		: out	std_logic_vector(2 downto 0)
		
	);
	
	--Codifica:
	--000: Nessun errore
	--001: Stampare il primo numero perché il secondo è 0
	--010: Stampare il secondo numero perché il primo è 0
	--011: Stampare 0 perché i due numeri sono uguali e l'operazione è la sottrazione
	--100: Stampre NaN perché uno dei due esponenti è tutti 1 e la mantassia è diversa da 0 e ...
	--101: Stampare +inf perché uno dei due esponenti è tutti 1 e la mantissa è 0 (segno 0)
	--110: Stampare -inf perché uno dei due esponenti è tutti 1 e la mantissa è 0 (segno 1)
	
end SpecialInputs;

architecture Behavioral of SpecialInputs is
	--REGION SIGNALS
	signal IN1_PLUS_INF, IN2_PLUS_INF, IN1_MINUS_INF, IN2_MINUS_INF	: std_logic;
	--ENDREGION

begin

	--Identificazione input infiniti
	IN1_PLUS_INF	<= '1' when (SIG1_IN = '0' and EXP1_IN = "11111111" and MAN1_IN = "00000000000000000000000") else '0';
	IN2_PLUS_INF	<= '1' when (SIG2_IN = '0' and EXP2_IN = "11111111" and MAN2_IN = "00000000000000000000000") else '0';
	IN1_MINUS_INF	<= '1' when (SIG1_IN = '1' and EXP1_IN = "11111111" and MAN1_IN = "00000000000000000000000") else '0';
	IN2_MINUS_INF	<= '1' when (SIG2_IN = '1' and EXP2_IN = "11111111" and MAN2_IN = "00000000000000000000000") else '0';

	ERR	<= "001" when (SIG1_IN = '0' and EXP1_IN = "000000000" and MAN1_IN = "00000000000000000000000")
				else "010" when (SIG2_IN = '0' and EXP2_IN = "000000000" and MAN2_IN = "00000000000000000000000")
				else "011" when ((SIG1_IN xnor SIG2_IN) = '1' and (EXP1_IN(7 downto 0) xnor EXP2_IN(7 downto 0)) = "11111111" and (MAN1_IN(22 downto 0) xnor MAN2_IN(22 downto 0)) = "111111111111111111111")
				else "---";
				--else "100" when (
				--else "101" when 	P_INF
				--TODO: Completare

	


end Behavioral;