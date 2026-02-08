`timescale 1ns/100ps

module top #(
) (
    input  logic a,
    input  logic b,
    output logic and_o,
    output logic xor_o
);
    assign and_o = a & b;
    assign xor_o = a ^ b;
endmodule