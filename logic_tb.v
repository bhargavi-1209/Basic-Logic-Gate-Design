`timescale 1ns/1ps

module logic_tb;

reg A,B;

wire AND1,OR1,NOT1,XOR1;

logic_gates uut(
    .A(A),
    .B(B),
    .AND1(AND1),
    .OR1(OR1),
    .NOT1(NOT1),
    .XOR1(XOR1)
);

initial
begin

$display("A B | AND OR NOT XOR");

A=0; B=0;
#10;
$display("%b %b | %b %b %b %b",
          A,B,AND1,OR1,NOT1,XOR1);

A=0; B=1;
#10;
$display("%b %b | %b %b %b %b",
          A,B,AND1,OR1,NOT1,XOR1);

A=1; B=0;
#10;
$display("%b %b | %b %b %b %b",
          A,B,AND1,OR1,NOT1,XOR1);

A=1; B=1;
#10;
$display("%b %b | %b %b %b %b",
          A,B,AND1,OR1,NOT1,XOR1);

$finish;

end

endmodule
