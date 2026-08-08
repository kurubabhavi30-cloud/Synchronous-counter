`timescale 1ns/1ps

module synchronous_counter_tb;

    reg clk;
    reg reset;

    wire [3:0] count;

    // Instantiate the synchronous counter
    synchronous_counter uut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        $monitor("Time=%0t | Reset=%b | Count=%b",
                 $time, reset, count);

        // Initial values
        clk   = 1'b0;
        reset = 1'b1;

        // Keep reset active
        #10;

        // Release reset
        reset = 1'b0;

        // Allow counter to count
        #100;

        // Reset counter again
        reset = 1'b1;
        #10;

        reset = 1'b0;

        #30;

        $finish;
    end

endmodule