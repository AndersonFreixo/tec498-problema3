module display_letterA_H(
    input [2:0] letter,       
    output reg [6:0] display
);

    always @(*) begin
        case(letter)
            3'b000: display = 7'b0001000; // A
            3'b001: display = 7'b0000011; // b
            3'b010: display = 7'b1000110; // C
            3'b011: display = 7'b0100001; // d
            3'b100: display = 7'b0000110; // E
            3'b101: display = 7'b0001110; // F
            3'b110: display = 7'b1000010; // G
            3'b111: display = 7'b0001001; // H
            default: display = 7'b1111111; 
        endcase
    end
endmodule