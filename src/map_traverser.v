module map_traverser (
    input wire clk,
    input wire rst,
    output reg [2:0] col,
	 output reg [2:0] row,
	 output done
);
	
	wire row_trigger;	
	wire ncol2, ncol1, ncol0, nclk;
	wire true_clk;
	wire not_done;
	
	not(ncol2, col[2]);
	not(ncol1, col[1]);
	not(ncol0, col[0]);
	not(nclk, clk); //trigger ativado depois que o clock desce
	not(not_done, done); //done = 1 quando contagem termina. 
	
	and (true_clk, clk, not_done); //o clock so deve funcionar ate done = 1
	and (row_trigger, ncol2, ncol1, ncol0);
	and (done, col[2], col[1], col[0], row[2], row[1], row[0], nclk);
	
	
   always @(posedge true_clk or posedge rst) begin
       if (rst) begin
           col <= 3'b000;
			  row <= 3'b000;	
       end else begin
           col <= col + 1; 
       end
    end
	 
   always @(posedge row_trigger) begin
       row <= row + 1; 
   end

endmodule