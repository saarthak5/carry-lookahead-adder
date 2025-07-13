// Master-slave configuration
module dff(output Q, input D, input clk);
	wire cbar, a, b, Dbar, Qbar;
	not(cbar, clk);
	not(Dbar, D);
	nand(a, clk, D);
	nand(b, clk, Dbar);
	nand(Q, Qbar, b);
	nand(Qbar, Q, a);
endmodule;
