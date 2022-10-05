library IEEE;
use IEEE.std_logic_1164.all;

entity myNot is 
	port(a: in bit; c : out bit); 
end myNot;

architecture myNotArch of myNot is
	begin
		c <= a Nand a ;
end myNotArch;