library IEEE;
use IEEE.std_logic_1164.all;

entity myOr is 
	port(a, b : in std_logic; c : out std_logic); 
end myOr;

architecture myOrArc of myOr is
	begin
		c <= (a Nand a) Nand (b Nand b);

end myOrArc;