`timescale 1ns / 1ps

module DFF_test;

	reg d;
	reg clk;
	reg reset;
	wire q;

	DFF dff_0(d,q,clk,reset);
      
	always begin
		#5 clk = ~clk;
	end
	
	initial begin
		reset = 1'b1;
		#20 reset = 1'b0;
		#200 $finish;
	end
	
	initial begin
		$monitor($time, "Output q=%d", q);
	end
	
endmodule