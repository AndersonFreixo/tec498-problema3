module init_screen (
	input clk,
	output done);
	
	reg [2:0] row, col;
	wire trav_done;
	
    map_traverser trav (
	    .clk(clk),
		 .row(row),
		 .col(col),
		 .done(trav_done)
		);
		 
	

endmodule