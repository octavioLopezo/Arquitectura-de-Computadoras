//1. creacion de un modulo y i/o
module HA (
	input e1, 
	input e2,
	output s,
	output A);
	
//2. declaracion de wires y registros
//na
//wire salsa;
//3. assign:na, instancias:si, bloques secuenciales:na.

assign A = e1 & e2;

assign s = e1 ^ e2;

endmodule
