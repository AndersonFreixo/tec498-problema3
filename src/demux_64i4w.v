module demux_64i4w (
   input wire [3:0] in,     
   input wire [5:0] address,     
	output reg [3:0] out_00,out_01,out_02,out_03,out_04,out_05,out_06,out_07,
	output reg [3:0] out_08,out_09,out_10,out_11,out_12,out_13,out_14,out_15,
	output reg [3:0] out_16,out_17,out_18,out_19,out_20,out_21,out_22,out_23,
	output reg [3:0] out_24,out_25,out_26,out_27,out_28,out_29,out_30,out_31,
	output reg [3:0] out_32,out_33,out_34,out_35,out_36,out_37,out_38,out_39,
	output reg [3:0] out_40,out_41,out_42,out_43,out_44,out_45,out_46,out_47,
	output reg [3:0] out_48,out_49,out_50,out_51,out_52,out_53,out_54,out_55,
	output reg [3:0] out_56,out_57,out_58,out_59,out_60,out_61,out_62,out_63
);


    always @(*) begin
        // Reseta todas as saídas para zero (evita latches)
        out_00= 4'b0000; out_01= 4'b0000; out_02= 4'b0000; out_03= 4'b0000;
        out_04= 4'b0000; out_05= 4'b0000; out_06= 4'b0000; out_07= 4'b0000;
        out_08= 4'b0000; out_09= 4'b0000; out_10=4'b0000; out_11=4'b0000;
        out_12=4'b0000; out_13=4'b0000; out_14=4'b0000; out_15=4'b0000;
        out_16=4'b0000; out_17=4'b0000; out_18=4'b0000; out_19=4'b0000;
        out_20=4'b0000; out_21=4'b0000; out_22=4'b0000; out_23=4'b0000;
        out_24=4'b0000; out_25=4'b0000; out_26=4'b0000; out_27=4'b0000;
        out_28=4'b0000; out_29=4'b0000; out_30=4'b0000; out_31=4'b0000;
        out_32=4'b0000; out_33=4'b0000; out_34=4'b0000; out_35=4'b0000;
        out_36=4'b0000; out_37=4'b0000; out_38=4'b0000; out_39=4'b0000;
        out_40=4'b0000; out_41=4'b0000; out_42=4'b0000; out_43=4'b0000;
        out_44=4'b0000; out_45=4'b0000; out_46=4'b0000; out_47=4'b0000;
        out_48=4'b0000; out_49=4'b0000; out_50=4'b0000; out_51=4'b0000;
        out_52=4'b0000; out_53=4'b0000; out_54=4'b0000; out_55=4'b0000;
        out_56=4'b0000; out_57=4'b0000; out_58=4'b0000; out_59=4'b0000;
        out_60=4'b0000; out_61=4'b0000; out_62=4'b0000; out_63=4'b0000;

        case (address)
            6'd0:  out_00=in;
            6'd1:  out_01=in;
            6'd2:  out_02=in;
            6'd3:  out_03=in;
            6'd4:  out_04=in;
            6'd5:  out_05=in;
            6'd6:  out_06=in;
            6'd7:  out_07=in;
            6'd8:  out_08=in;
            6'd9:  out_09=in;
            6'd10: out_10=in;
            6'd11: out_11=in;
            6'd12: out_12=in;
            6'd13: out_13=in;
            6'd14: out_14=in;
            6'd15: out_15=in;
            6'd16: out_16=in;
            6'd17: out_17=in;
            6'd18: out_18=in;
            6'd19: out_19=in;
            6'd20: out_20=in;
            6'd21: out_21=in;
            6'd22: out_22=in;
            6'd23: out_23=in;
            6'd24: out_24=in;
            6'd25: out_25=in;
            6'd26: out_26=in;
            6'd27: out_27=in;
            6'd28: out_28=in;
            6'd29: out_29=in;
            6'd30: out_30=in;
            6'd31: out_31=in;
            6'd32: out_32=in;
            6'd33: out_33=in;
            6'd34: out_34=in;
            6'd35: out_35=in;
            6'd36: out_36=in;
            6'd37: out_37=in;
            6'd38: out_38=in;
            6'd39: out_39=in;
            6'd40: out_40=in;
            6'd41: out_41=in;
            6'd42: out_42=in;
            6'd43: out_43=in;
            6'd44: out_44=in;
            6'd45: out_45=in;
            6'd46: out_46=in;
            6'd47: out_47=in;
            6'd48: out_48=in;
            6'd49: out_49=in;
            6'd50: out_50=in;
            6'd51: out_51=in;
            6'd52: out_52=in;
            6'd53: out_53=in;
            6'd54: out_54=in;
            6'd55: out_55=in;
            6'd56: out_56=in;
            6'd57: out_57=in;
            6'd58: out_58=in;
            6'd59: out_59=in;
            6'd60: out_60=in;
            6'd61: out_61=in;
            6'd62: out_62=in;
            6'd63: out_63=in;
            default: out_00=in;
        endcase
    end
endmodule