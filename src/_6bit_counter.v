module _6bit_counter
    input  clk,   // Clock principal de entrada
    input  rst,      // Reset síncrono (ou assíncrono)
    output reg [5:0] counter,
	 output done
);    
	 
    always @(posedge clk or posedge rst) begin
        if (rst) counter <= 6'b000000;
        else if (counter == 6'b111111) counter <= 6'b000000;
		  else counter <= counter + 1;	
	 end
	 assign done = (counter == 6'b111111);
	 
endmodule
    