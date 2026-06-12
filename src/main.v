module main (
		input clk, 
		input reset, 
		output v, h, 
		output [3:0] r, 
		output [3:0] g, 
		output [3:0] b	
	);
	
	wire [5:0] address0, address1, out_address;
	wire [1:0] data0, data1, out_data;
	wire [1:0] s;

	assign s = address0 == 6'b111111;
	assign data0 = 2'b01;
	assign data1 = 2'b11;
		
	wire clk25mhz;
   wire nrst;
	not (nrst, reset);
	
//mux das entradas da vga
mux_fsm mfsm (
	.address0(address0),
	.address1(address1),
	.data0(data0),
	.data1(data1)
	.out_address(out_address),
	.out_data(out_data),
	.selector(s)
);

//clock da vga
div2_freq df (
	.clk(clk),
	.rst(nrst),
	.q(clk25mhz)
);

_6bit_counter c6 (
	.clk(clk25mhz),
	.rst(nrst),
	.counter(address0)
);		
		
VGA_interface 
	u(
		//INPUT
		.clk_25mhz(clk25mhz), 
		.reset(nrst), 
		.write_enable(clk25mhz),
		.data(out_data),
		.address(out_address),
	
		//OUTPUT
		.v_sync(v), 
		.h_sync(h),
		.R(r),
		.G(g),
		.B(b)
	);
	
endmodule