library ieee;
use ieee.std_logic_1164.all;

--Il primo stadio della pipeline prende in ingresso i due numeri da sommare e si occupa di:
--1. Gestire caso speciale in cui un operando sia 0
--2. Restituire le due mantisse tale che M1 > M2
--3. Restituire la differenza tra gli esponenti delle due mantisse il cui valore è l'offset dello shift di M2
--4. Gestire caso speciale per cui la differenza degli esponenti ecceda 23 (in quanto i segnali di offset per gli shifter sono di 5 bit)

entity FirstStageTOP is
	port(
		INPUT1	: in	std_logic_vector(31 downto 0);
		INPUT2	: in	std_logic_vector(31 downto 0);
		OP_IN		: in	std_logic; --0 se somma, 1 se sottrazione
		MAN1		: out	std_logic_vector(23 downto 0); --TODO: Decidere se la mantissa più grande già consideri il significant esplicitamente
		MAN2		: out std_logic_vector(22 downto 0); --la mantissa più piccola verrà shiftata ed estesa di un bit da ShifterMANT
		OP_OUT	: out std_logic; 
		OFF		: out std_logic_vector(4 downto 0); --differenza tra gli esponenti (offset per lo shift in stage 2)
		ERR		: out std_logic --1 se la differenza tra gli esponenti eccede 24
	);
end FirstStageTOP;

architecture RTL of FirstStageTOP is

	--REGION SIGNALS
	--ENDREGION
	
	--REGION COMPONENTS
	--Definisce che operazione implementerà effettivamente l'RCA
	component OpPicker is
		port(
			S1: 	in  std_logic; --0: positive, 1: negative
			S2: 	in  std_logic; --0: positive, 1: negative
			OP: 	in  std_logic; --1: SUB, 0: ADD
			SUB:	out std_logic  --1: SUB, 0: ADD
		);
	end component;
	
	--ENREGION
	
begin

	--OpPicker calcola l'operazione che l'RCA dovrà effettivamente eseguire
	OP: OpPicker
		port map(
			S1	=> INPUT1(31 downto 30),
			S2	=> INPUT2(31 downto 30),
			OP	=> OP_IN,
			SUB	=> OP_OUT
		);

	--Calcolo differenza esponenti e il più grande, gestione caso in cui la differenza sia maggiore di 23 (si pone mantissa più piccola
	--nulla e si gestisce il caso come se l'input fosse nullo(?)

	--Paragone numeri così che vengano date in putput le mantisse in ordine
	

end RTL;

