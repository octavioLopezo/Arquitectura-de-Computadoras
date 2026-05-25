module S8b_Com(
input [7:0]e1,
input [7:0]e2,
input Ci,
output [8:0]c
);

wire c1;


S4b_Com S4b_Com1(.A(e1[3:0]), .B(e2[3:0]), .Ac(0), .C({c1,c[3:0]}));

S4b_Com S4b_Com2(.A(e1[7:4]), .B(e2[7:4]), .Ac(c1), .C(c[9:4]));


endmodule