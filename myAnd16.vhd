
entity myAnd16 is 
	port(a, b : in bit_vector(0 to 15) ; c : out bit_vector(0 to 15)); 

end myAnd16;

architecture myAnd16_arch of myAnd16 is
signal d : bit_vector(0 to 15);
	begin
	process (a, b)
		begin
			for i in 0 to 15 loop
				d(i) <= (a(i) Nand b(i));
				c(i) <= (d(i) Nand d(i));
			end loop;
			report "loop finished";
		end process;

end myAnd16_arch;