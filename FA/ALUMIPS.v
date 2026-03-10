module ALUMIPS(
input [31:0]A,
input [31:0]B,
input [3:0]Sel,
output [31:0]Resultado
);

wire c1[31:0];
wire c2[31:0];
wire c3[31:0];
wire c4[31:0];
wire c5[31:0];

S32Comp S32Comp(.So1(A), .So2(B), .Rs(c1));

OR32Comp OR32Comp(.Oo1(A), .Oo2(B), .RO(c2));

And32Comp And32Comp(.Ao1(A), .Ao2(B), .AR(c3));

R32Comp R32Comp(.Ro1(A), .Ro2(B), .RR(c4));

SLT32 SLT32(.SLTo1(A), . SLTo2(B), .RSLT(c5));

mux5a1 mux5a1(.suma(c1), ._or(c2), ._and(c3), .resta(c4), .slt(c5), .ALUctl(Sel), .R(Resultado));

endmodule