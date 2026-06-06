module _3bit_counter (
    input wire clk,
    input wire rst,
    output reg [2:0] q
);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            q <= 3'b000; 
        end else begin
            q <= q + 1;  
        end
    end

endmodule