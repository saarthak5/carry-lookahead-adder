`include "cla/cla.v"
`include "dff/dff.v"

module top(output [3:0] S, output Cout, input [3:0] A, input [3:0] B, input Cin, input clk);
	wire [3:0] Aout, Bout, Sin;
	wire Cinout, Coutin;
	dff in1(Aout[0], A[0], clk);
	dff in2(Aout[1], A[1], clk);
	dff in3(Aout[2], A[2], clk);
	dff in4(Aout[3], A[3], clk);
	dff in5(Bout[0], B[0], clk);
	dff in6(Bout[1], B[1], clk);
	dff in7(Bout[2], B[2], clk);
	dff in8(Bout[3], B[3], clk);
	dff in9(Cinout, Cin, clk);
	cla cla1(Sin, Coutin, Aout, Bout, Cinout);
	dff out1(S[0], Sin[0], clk);
	dff out2(S[1], Sin[1], clk);
	dff out3(S[2], Sin[2], clk);
	dff out4(S[3], Sin[3], clk);
	dff out1(Cout, Coutin, clk);
endmodule
