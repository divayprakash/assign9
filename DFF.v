`timescale 1ns / 1ps

module DFF(input d, output reg q, input clk, input reset);
	
	always @(posedge clk) begin
		if (reset) begin
			q <= 1'b0;
		end else begin
			q <= d;
		end
	end
	
endmodule
