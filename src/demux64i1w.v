module demux64i1w (
   input wire in,     
   input wire [5:0] address,  
   output reg [63:0] out 
);


    always @(*) begin
        // Reseta todas as saídas para zero (evita latches)
        out[00]= 1'b0; out[01]= 1'b0; out[02]= 1'b0; out[03]= 1'b0;
        out[04]= 1'b0; out[05]= 1'b0; out[06]= 1'b0; out[07]= 1'b0;
        out[08]= 1'b0; out[09]= 1'b0; out[10]= 1'b0; out[11]= 1'b0;
        out[12]= 1'b0; out[13]= 1'b0; out[14]= 1'b0; out[15]= 1'b0;
        out[16]= 1'b0; out[17]= 1'b0; out[18]= 1'b0; out[19]= 1'b0;
        out[20]= 1'b0; out[21]= 1'b0; out[22]= 1'b0; out[23]= 1'b0;
        out[24]= 1'b0; out[25]= 1'b0; out[26]= 1'b0; out[27]= 1'b0;
        out[28]= 1'b0; out[29]= 1'b0; out[30]= 1'b0; out[31]= 1'b0;
        out[32]= 1'b0; out[33]= 1'b0; out[34]= 1'b0; out[35]= 1'b0;
        out[36]= 1'b0; out[37]= 1'b0; out[38]= 1'b0; out[39]= 1'b0;
        out[40]= 1'b0; out[41]= 1'b0; out[42]= 1'b0; out[43]= 1'b0;
        out[44]= 1'b0; out[45]= 1'b0; out[46]= 1'b0; out[47]= 1'b0;
        out[48]= 1'b0; out[49]= 1'b0; out[50]= 1'b0; out[51]= 1'b0;
        out[52]= 1'b0; out[53]= 1'b0; out[54]= 1'b0; out[55]= 1'b0;
        out[56]= 1'b0; out[57]= 1'b0; out[58]= 1'b0; out[59]= 1'b0;
        out[60]= 1'b0; out[61]= 1'b0; out[62]= 1'b0; out[63]= 1'b0;

        case (address)
            6'd0:  out[00]=in;
            6'd1:  out[01]=in;
            6'd2:  out[02]=in;
            6'd3:  out[03]=in;
            6'd4:  out[04]=in;
            6'd5:  out[05]=in;
            6'd6:  out[06]=in;
            6'd7:  out[07]=in;
            6'd8:  out[08]=in;
            6'd9:  out[09]=in;
            6'd10: out[10]=in;
            6'd11: out[11]=in;
            6'd12: out[12]=in;
            6'd13: out[13]=in;
            6'd14: out[14]=in;
            6'd15: out[15]=in;
            6'd16: out[16]=in;
            6'd17: out[17]=in;
            6'd18: out[18]=in;
            6'd19: out[19]=in;
            6'd20: out[20]=in;
            6'd21: out[21]=in;
            6'd22: out[22]=in;
            6'd23: out[23]=in;
            6'd24: out[24]=in;
            6'd25: out[25]=in;
            6'd26: out[26]=in;
            6'd27: out[27]=in;
            6'd28: out[28]=in;
            6'd29: out[29]=in;
            6'd30: out[30]=in;
            6'd31: out[31]=in;
            6'd32: out[32]=in;
            6'd33: out[33]=in;
            6'd34: out[34]=in;
            6'd35: out[35]=in;
            6'd36: out[36]=in;
            6'd37: out[37]=in;
            6'd38: out[38]=in;
            6'd39: out[39]=in;
            6'd40: out[40]=in;
            6'd41: out[41]=in;
            6'd42: out[42]=in;
            6'd43: out[43]=in;
            6'd44: out[44]=in;
            6'd45: out[45]=in;
            6'd46: out[46]=in;
            6'd47: out[47]=in;
            6'd48: out[48]=in;
            6'd49: out[49]=in;
            6'd50: out[50]=in;
            6'd51: out[51]=in;
            6'd52: out[52]=in;
            6'd53: out[53]=in;
            6'd54: out[54]=in;
            6'd55: out[55]=in;
            6'd56: out[56]=in;
            6'd57: out[57]=in;
            6'd58: out[58]=in;
            6'd59: out[59]=in;
            6'd60: out[60]=in;
            6'd61: out[61]=in;
            6'd62: out[62]=in;
            6'd63: out[63]=in;
            default: out[00]=in;
        endcase
    end
endmodule