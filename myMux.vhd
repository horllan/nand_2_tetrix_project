
entity myMux is 
	port(a, b, sel : in bit; c : out bit); 

end myMux;


architecture myMux_arch of myMux is
signal not_sel , out1, out2 : bit;
begin 
	
	not_sel <= sel Nand sel;
	out1 <= (a Nand not_sel);
	out2 <= (b Nand sel);
	c <= (out1 Nand out2);
end myMux_arch;