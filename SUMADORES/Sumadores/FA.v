module FA (
	input a,
	input b,
	input c,
	output S,
	output A);
	
wire c1;
wire c2;
wire c3;

HA HA1 (.e1(a),.e2(b),.s(c1),.A(c2));

HA HA2 (.e1(c),.e2(c2),.s(S),.A(c3));

assign A = c1 | c3;

endmodule 
	