`timescale 1ns/100ps

module top #(
) (
    input  logic a,
    input  logic b,
    output logic and,
    output logic xor
);
    assign and = a & b;
    assign xor = a ^ b;
endmodule