library ieee;
use ieee.std_logic_1164.all;

entity OpPicker is
	port(
		S1: 	in  std_logic; --0: positive, 1: negative
		S2: 	in  std_logic; --0: positive, 1: negative
		OP: 	in  std_logic; --1: SUB, 0: ADD
		SUB:	out std_logic  --1: SUB, 0: ADD
	);

end OpPicker;

architecture RTL of OpPicker is
begin

	SUB <= S1 xor S2 xor OP;

end RTL;