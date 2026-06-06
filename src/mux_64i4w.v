module mux_64i4w (
	input wire [3:0] in_00,in_01,in_02,in_03,in_04,in_05,in_06,in_07,
	input wire [3:0] in_08,in_09,in_10,in_11,in_12,in_13,in_14,in_15,
	input wire [3:0] in_16,in_17,in_18,in_19,in_20,in_21,in_22,in_23,
	input wire [3:0] in_24,in_25,in_26,in_27,in_28,in_29,in_30,in_31,
	input wire [3:0] in_32,in_33,in_34,in_35,in_36,in_37,in_38,in_39,
	input wire [3:0] in_40,in_41,in_42,in_43,in_44,in_45,in_46,in_47,
	input wire [3:0] in_48,in_49,in_50,in_51,in_52,in_53,in_54,in_55,
	input wire [3:0] in_56,in_57,in_58,in_59,in_60,in_61,in_62,in_63,

   input wire [5:0] address,      
   output reg [3:0] out      
);

    always @(*) begin
        case (address)     
            6'd0:  out = in_00;
            6'd1:  out = in_01;
            6'd2:  out = in_02;
            6'd3:  out = in_03;
            6'd4:  out = in_04;
            6'd5:  out = in_05;
            6'd6:  out = in_06;
            6'd7:  out = in_07;
            6'd8:  out = in_08;
            6'd9:  out = in_09;
            6'd10: out = in_10;
            6'd11: out = in_11;
            6'd12: out = in_12;
            6'd13: out = in_13;
            6'd14: out = in_14;
            6'd15: out = in_15;
            6'd16: out = in_16;
            6'd17: out = in_17;
            6'd18: out = in_18;
            6'd19: out = in_19;
            6'd20: out = in_20;
            6'd21: out = in_21;
            6'd22: out = in_22;
            6'd23: out = in_23;
            6'd24: out = in_24;
            6'd25: out = in_25;
            6'd26: out = in_26;
            6'd27: out = in_27;
            6'd28: out = in_28;
            6'd29: out = in_29;
            6'd30: out = in_30;
            6'd31: out = in_31;
            6'd32: out = in_32;
            6'd33: out = in_33;
            6'd34: out = in_34;
            6'd35: out = in_35;
            6'd36: out = in_36;
            6'd37: out = in_37;
            6'd38: out = in_38;
            6'd39: out = in_39;
            6'd40: out = in_40;
            6'd41: out = in_41;
            6'd42: out = in_42;
            6'd43: out = in_43;
            6'd44: out = in_44;
            6'd45: out = in_45;
            6'd46: out = in_46;
            6'd47: out = in_47;
            6'd48: out = in_48;
            6'd49: out = in_49;
            6'd50: out = in_50;
            6'd51: out = in_51;
            6'd52: out = in_52;
            6'd53: out = in_53;
            6'd54: out = in_54;
            6'd55: out = in_55;
            6'd56: out = in_56;
            6'd57: out = in_57;
            6'd58: out = in_58;
            6'd59: out = in_59;
            6'd60: out = in_60;
            6'd61: out = in_61;
            6'd62: out = in_62;
            6'd63: out = in_63;
            default: out = 4'b0000; 
        endcase
    end
endmodule