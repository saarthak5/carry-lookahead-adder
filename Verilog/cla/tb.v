`timescale 1ns / 1ps

module cla_test;
	reg [3:0] A, B;
	reg Cin;
	wire [3:0] S;
	wire Cout;
	
	cla uut (S, Cout, A, B, Cin);
	initial begin
		$dumpfile("out.vcd");
		$dumpvars(0, cla_test);
		{A[0], A[1], A[2], A[3], B[0], B[1], B[2], B[3], Cin} = 0; #10

		$monitor("A = %d\tB = %d\tCin = %d\nS = %d\tCout = %d", A, B, Cin, S, Cout);
		
		A = 4'b0111; B = 4'b1010; #50
		$finish;
	end
endmodule
