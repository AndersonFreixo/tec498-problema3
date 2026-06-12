module mux_fsm ( 
 input [5:0] address0,      
 input [1:0] data0,
 input [5:0] address1,      
 input [1:0] data1,
 input [1:0] selector,
 
 output reg [5:0] out_address,
 output reg [1:0] out_data
 );
 
     always @(*) begin
        case (selector)     
            2'b00: 
					begin
						out_address <= address0;
						out_data <= data0;
					end
            2'b00: 
					begin
						out_address <= address1;
						out_data <= data1;
					end		
			   default:
					begin
						out_address <= address0;
						out_data <= data0;
					end				    
			endcase
		end
 
 
 
 endmodule