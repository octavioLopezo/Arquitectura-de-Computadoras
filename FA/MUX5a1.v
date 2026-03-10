//creacion del modulo y sus IO
module mux5a1(
input [31:0]suma,
input [31:0]resta,
input [31:0]_or,
input [31:0]_and,
input [31:0]slt,
input [3:0]ALUctl,
output reg[31:0]R
);
//2. declaracion de wires: NA, regs: SI

//3. cuerpo del modulo, instancias:NA. assign:NA, bloque secuencia:SI
always @(ALUctl) 
//cualquier asignacion dentro de un bloque secuencial
//es de tipo Reg
	begin
		case(ALUctl)
		
			4'b0000:R=suma;
			4'b0001:R=resta;
			4'b0010:R=_or;
			4'b0011:R=_and;
			4'b0100:R=slt;
		endcase
	end


endmodule
