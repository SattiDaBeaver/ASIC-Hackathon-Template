`timescale 1ns/100ps

module tb;
    logic a;
    logic b;
    logic and;
    logic xor;

    // Instantiate the AND gate
    top uut (
        .a(a),
        .b(b),
        .and(and),
        .xor(xor)
    );

    initial begin
        $dumpfile("obj_dir_sv/wave.vcd");
        $dumpvars(0, tb);
    end

    // Clock not needed, just stimulus
    initial begin
        
        // Print header
        $display("Time\t a b | AND XOR");
        $display("----------------");

        // Test all combinations
        a = 0; b = 0; #10 $display("%0t\t %b %b | %b", $time, a, b, and, xor);
        a = 0; b = 1; #10 $display("%0t\t %b %b | %b", $time, a, b, and, xor);
        a = 1; b = 0; #10 $display("%0t\t %b %b | %b", $time, a, b, and, xor);
        a = 1; b = 1; #10 $display("%0t\t %b %b | %b", $time, a, b, and, xor);
        a = 0; b = 0; #10 $display("%0t\t %b %b | %b", $time, a, b, and, xor);
        a = 0; b = 1; #10 $display("%0t\t %b %b | %b", $time, a, b, and, xor);
        a = 1; b = 0; #10 $display("%0t\t %b %b | %b", $time, a, b, and, xor);
        a = 1; b = 1; #10 $display("%0t\t %b %b | %b", $time, a, b, and, xor);

        $display("Testbench finished!");
        $finish;
    end
endmodule