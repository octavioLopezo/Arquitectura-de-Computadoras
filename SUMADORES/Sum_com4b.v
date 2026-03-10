module Sum_com4b (
	input [3:0]A,
	input [3:0]B,
	input Ci,
	output [4:0]C);
	
assign C = A+B+Ci;

endmodule