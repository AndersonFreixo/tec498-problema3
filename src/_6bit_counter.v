module _6bit_counter(
    input  clk,   // Clock principal de entrada
    input  rst,      // Reset síncrono (ou assíncrono)
    output reg [5:0] counter
);    
	 
    always @(posedge clk or posedge rst) begin
        if (rst) counter <= 6'b000000;
		  else if (counter < 6'b111111) counter <= (counter + 1'b1);	
	 end
	 
endmodule
    