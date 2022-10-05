
entity myXor is 
	port(a, b : in bit; c : out bit); 

end myXor;

architecture myxor_arch of myxor is
signal d : bit_vector(1 to 2);
	begin
		d(1) <= (a Nand (b Nand b));
		d(2) <= ((a Nand a) Nand b);
		c <= d(1) Nand d(2);
end myXor_arch;