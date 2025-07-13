`timescale 1ns / 1ps

module dff_test;
	reg D, clk, reset;
	wire Q;

	dff uut(Q, D, clk);
	initial begin
		$dumpfile("out.vcd");
		$dumpvars(0, dff_test);
		clk = 0;
		reset=1;
		D <= 0; #100
		reset=0;
		D <= 1; #100
		D <= 0; #100
		D <= 1; #100
		$finish;
	end

	always #10 clk = ~clk;  
endmodule
