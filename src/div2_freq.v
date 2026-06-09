module div2_freq (
    input  clk,   // Clock principal de entrada
    input  rst,      // Reset síncrono (ou assíncrono)
    output clk_div2 // Frequência dividida por 2
);    
    reg q;
	 
    always @(posedge clk or posedge rst) begin
        if (rst) q <= 1'b0;
        else q <= q;         
    end

    assign clk_div2 = q;

endmodule
    