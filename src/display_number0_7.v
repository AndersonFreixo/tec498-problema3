module display_number0_7(
    input [3:0] number,
    output reg [6:0] display
);
    always @(*) begin
        case (number)
            3'b000: display = 7'b0000001; // 0
            3'b001: display = 7'b1001111; // 1
            3'b010: display = 7'b0010010; // 2
            3'b011: display = 7'b0000110; // 3
            3'b100: display = 7'b1001100; // 4
            3'b101: display = 7'b0100100; // 5
            3'b110: display = 7'b0100000; // 6
            3'b111: display = 7'b0001111; // 7
            default: display = 7'b1111111;
        endcase
    end
endmodule