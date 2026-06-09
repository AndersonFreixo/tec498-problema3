module main (
		input clk, 
		input reset, 
		output v, h, 
		output [3:0] r, 
		output [3:0] g, 
		output [3:0] b	
	);
	
	wire [5:0] address;
	wire write;	
	wire clk25mhz, clk12_5mhz;
	wire done, not_done, enabled_clk;
	not (not_done, done);
	//congela o contador se done = 1, ou seja 
	//se contador atingiu endereco 111111
	and (enabled_clk, clk12_5mhz, not_done);
	
//clock da vga
div2_freq df (
	.clk(clk),
	.clk_div2(clk25mhz)
);

//clock da iteracao
div4_freq df2 (
	.clk(clk25mhz),
	.clk_div2(enabled_clk)
);
//contador que itera os enderecos
//usa clock mais lento p garantir que a
//interface vga identifique os pulsos
//do write_enable

_6bit_counter c6 (
	.clk(clk12_5mhz),
	.rst(reset),
	.counter(address),
	.done(done)
);		
		
VGA_interface 
	u(
		//INPUT
		.clk_25mhz(clk25mhz), 
		.reset(reset), 
		.write_enable(enabled_clk),
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