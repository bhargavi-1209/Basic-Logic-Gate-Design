module logic_gates(
    input A,
    input B,
    output AND1,
    output OR1,
    output NOT1,
    output XOR1
);

assign AND1 = A & B;
assign OR1  = A | B;
assign NOT1 = ~A;
assign XOR1 = A ^ B;

endmodule
