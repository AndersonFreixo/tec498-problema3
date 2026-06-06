module _4bit_reg (
    input clk,      
    input rst_n,     
    input [3:0] data_in,         
    output [3:0] data_out 
);
   
d_ff bit3(
	.clk(clk),
	.rst_n(rst_n),
	.d(data_in[3]),
	.q(data_out[3])
);

d_ff bit2(
	.clk(clk),
	.rst_n(rst_n),
	.d(data_in[2]),
	.q(data_out[2])
);

d_ff bit1(
	.clk(clk),
	.rst_n(rst_n),
	.d(data_in[1]),
	.q(data_out[1])
);

d_ff bit0(
	.clk(clk),
	.rst_n(rst_n),
	.d(data_in[0]),
	.q(data_out[0])
);		 
   
endmodule