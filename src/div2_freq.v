module div2_freq (
    input  clk,   // Clock principal de entrada
    input  rst,      // Reset síncrono (ou assíncrono)
    output reg q // Frequência dividida por 2
);    
	 
    always @(posedge clk or posedge rst) begin
        if (rst) q <= 1'b0;
        else q <= !q;         
    end
endmodule
    