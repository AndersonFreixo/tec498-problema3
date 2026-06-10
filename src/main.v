module main (
		input clk, 
		input reset, 
		output v, h, 
		output [3:0] r, 
		output [3:0] g, 
		output [3:0] b	
	);
	
	wire [5:0] address;
	wire clk25mhz;
   wire nrst;
	not (nrst, reset);
	
//clock da vga
div2_freq df (
	.clk(clk),
	.rst(nrst),
	.q(clk25mhz)
);

_6bit_counter c6 (
	.clk(clk25mhz),
	.rst(nrst),
	.counter(address)
);		
		
VGA_interface 
	u(
		//INPUT
		.clk_25mhz(clk25mhz), 
		.reset(nrst), 
		.write_enable(clk25mhz),
		.data(2'b01),
		.address(address),
	
		//OUTPUT
		.v_sync(v), 
		.h_sync(h),
		.R(r),
		.G(g),
		.B(b)
	);
	
endmodule