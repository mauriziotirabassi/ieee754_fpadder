
library ieee;
use ieee.std_logic_1164.ALL;

entity comparator4bit_RTL is
    Port ( A     : in  std_logic_vector(3 downto 0);
           B     : in  std_logic_vector(3 downto 0);
			  SMLIN : in std_logic;
			  EQIN  : in std_logic;
			  GRTIN : in std_logic;
			  SML   : out std_logic;
			  EQ    : out std_logic;
			  GRT   : out std_logic);
			  
end comparator4bit_RTL;

architecture RTL of comparator4bit_RTL is
-- local signals
signal TE1,TE2,TE3,TE0,TMP1,TMP2,TMP3,TMP4,TMP5,TMP6,TMP7,TMP8: std_logic;

begin
--A_greater_than_B
TMP1 <= A(3) and (not B(3));
TMP2 <= A(2) and (not B(2)) and TE3;
TMP3 <= A(1) and (not B(1)) and TE3 and TE2;
TMP4 <= A(0) and (not B(0)) and TE3 and TE2 and TE1;
GRT <= TMP1 or TMP2 or TMP3 or TMP4 or (TE3 and TE2 and TE1 and TE0 and GRTIN); 
--A_equal_to_B
TE3 <= A(3) xnor B(3);
TE2 <= A(2) xnor B(2);
TE1 <= A(1) xnor B(1);
TE0 <= A(0) xnor B(0);
EQ  <= TE3 and TE2 and TE1 and TE0 and EQIN;
--A_smaller_than_B
TMP5 <= B(3) and (not A(3));
TMP6 <= B(2) and (not A(2)) and TE3;
TMP7 <= B(1) and (not A(1)) and TE3 and TE2;
TMP8 <= B(0) and (not A(0)) and TE3 and TE2 and TE1;
SML <= TMP5 or TMP6 or TMP7 or TMP8 or (TE3 and TE2 and TE1 and TE0 and SMLIN) ;


end RTL;

