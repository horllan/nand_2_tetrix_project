library IEEE;
use IEEE.std_logic_1164.all;

entity myAnd is 
	port(a, b : in std_logic; c : out std_logic); 

end myAnd;

architecture myAndArch of myAnd is
signal out1, out2 : std_logic;
	begin
		out1 <= a Nand b;
		out2 <= a Nand b;
		c <= out1 Nand out2;
end myAndArch;