`timescale 1ns/1ps
module Tb_Sum4b;

reg [3:0] A;
reg [3:0] B;
reg [1:0] AC;
wire [5:0] C;

// instancia EXACTA del módulo
Sum_com4b uut (
    .A(A),
    .B(B),
    .AC(AC),
    .C(C)
);

initial begin

$display(" A   B   AC  |   C");
$monitor("%b + %b + %b = %b", A, B, AC, C);

// pruebas
A=0; B=0; AC=0; #10;
A=1; B=2; AC=0; #10;
A=5; B=3; AC=1; #10;
A=10; B=5; AC=2; #10;
A=15; B=15; AC=3; #10;

$finish;
end

endmodule