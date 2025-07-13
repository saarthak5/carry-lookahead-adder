module cla(output [3:0] S, output Cout, input [3:0] A, input [3:0] B, input Cin);
	wire [3:0] P, G;
	wire [4:0] C;
	assign C[0] = Cin;
	
	assign P[3:0] = A[3:0] ^ B[3:0];
	assign G[3:0] = A[3:0] & B[3:0];

	assign C[1] = P[0]&C[0] | G[0];
	assign C[2] = P[1]&P[0]&C[0] | P[1]&G[0] | G[1];
	assign C[3] = P[2]&P[1]&P[0]&C[0] | P[2]&P[1]&G[0] | P[2]&G[1] | G[2];
	assign C[4] = P[3]&P[2]&P[1]&P[0]&C[0] | P[3]&P[2]&P[1]&G[0] | P[3]&P[2]&G[1] | P[3]&G[2] | G[3];

	assign S[3:0] = P[3:0] ^ C[3:0];
	assign Cout = C[4];
endmodule
