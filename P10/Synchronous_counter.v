// 4-bit Synchronous Up Counter
// All flip-flops are triggered by the same clock

module synchronous_counter (
    input        clk,
    input        reset,
    output reg [3:0] count
);

    always @(posedge clk) begin
        if (reset)
            count <= 4'b0000;
        else
            count <= count + 1'b1;
    end

endmodule