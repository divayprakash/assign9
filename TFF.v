`timescale 1ns / 1ps

module TFF(output q, input clk, input reset);
	DFF dff0(d, q, clk, reset);
	not n1(d, q);
endmodule
