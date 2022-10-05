
entity myDMux is 
	port(data, sel : in bit; a, b : out bit); 

end myDMux;


architecture myDMux_arch of myDMux is
signal c : bit_vector(2 downto 1);
begin 

	c(1) <= (data Nand (sel Nand sel));
	a <= (c(1) Nand c(1));
	c(2) <= data Nand sel;
	b <= c(2) Nand c(2);
end myDMux_arch;