module fsm_position_choice ( 
	input clk,
	input reset, 
	input record,  //grava	
	input no_over, //sem sobreposicao
	output [2:0] y 
	);
	reg [4:0] state , nextstate ;
	wire [1:0] ipt;
	assign ipt[1] = record;
	assign ipt[0] = no_over;
	
// state code
parameter S0 =  4'b00000 ; //submarino 00
parameter S1 =  4'b00100 ; //submarino 00
parameter S2 =  4'b00001 ; //corveta   01
parameter S3 =  4'b00101 ; //coverta   01
parameter S4 =  4'b01001 ; //coverta   01
parameter S5 =  4'b00010 ;  //fragada  10
parameter S6 =  4'b00110 ;  //fragada  10
parameter S7 =  4'b01010 ;  //fragada  10
parameter S8 =  4'b01110 ;  //fragada  10
parameter S9 =  4'b00011 ;  //porta avioes 11
parameter S10 = 4'b00111 ; //porta avioes 11
parameter S11 = 4'b01011 ; //porta avioes 11
parameter S12 = 4'b01111 ; //porta avioes 11
parameter S13 = 4'b10011 ; //porta avioes 11
parameter S14 = 4'b11111 ; //estado final

// state register
always @ ( 
	posedge clk , posedge reset )
if ( reset ) state <= S0 ;
else state <= nextstate ;
// next state logic
always @ (*)
	case ( state )
		S0 : if (ipt == 2'b11) nextstate = S1 ;
			  else nextstate = S0 ;
		S1 : if (ipt == 2'b11) nextstate = S2 ;
           else nextstate = S1 ;
		S2 : if (ipt == 2'b11) nextstate = S3 ;
           else nextstate = S2 ;
		S3 : if (ipt == 2'b11) nextstate = S4 ;
			  else nextstate = S3 ;
		S4 : if (ipt == 2'b11) nextstate = S5 ;
			  else nextstate = S4 ;
		S5 : if (ipt == 2'b11) nextstate = S6 ;
           else nextstate = S5 ;
		S6 : if (ipt == 2'b11) nextstate = S7 ;
           else nextstate = S6 ;
		S7 : if (ipt == 2'b11) nextstate = S8 ;
			  else nextstate = S7 ;
		S8 : if (ipt == 2'b11) nextstate = S9 ;
			  else nextstate = S8 ;
		S9 : if (ipt == 2'b11) nextstate = S10 ;
           else nextstate = S9 ;
		S10 : if (ipt == 2'b11) nextstate = S11 ;
           else nextstate = S10 ;
		S11 : if (ipt == 2'b11) nextstate = S12 ;
			  else nextstate = S11 ;
		S12 : if (ipt == 2'b11) nextstate = S13 ;
			  else nextstate = S12 ;
		S13 : if (ipt == 2'b11) nextstate = S14 ;
           else nextstate = S13 ;
		S14 : if (ipt == 2'b11) nextstate = S14 ;
           else nextstate = S14 ;
		default : nextstate = S0 ;
	endcase
	// output logic
	assign y[0] = record && no_over && (state != 4'b1110);
	assign y[2:1] = state[1:0];
endmodule