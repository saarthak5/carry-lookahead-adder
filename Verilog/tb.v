module top_test;
	reg [3:0] A, B;
	reg Cin, clk;
	wire [3:0] S;
	wire Cout;

	top uut(S, Cout, A, B, Cin, clk);
	
