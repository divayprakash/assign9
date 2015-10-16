`timescale 1ns / 1ps

module stimulus;
	reg clk, reset;
	wire q;
	
	TFF tff0(q, clk, reset);
	
	initial begin
		clk = 1'b0;
	end
	
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
