`timescale 1ns/1ns

module top #(
) (
    input  logic a,
    input  logic b,
    output logic c
);
    assign c = a & b;
endmodule