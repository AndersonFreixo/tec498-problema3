module mem_blk (
    input clk,      
    input reset,     
    input [3:0] data_in,         
    output [3:0] data_out,
	 input [5:0] address
);

wire rst_n;
not (rst_n, reset);

wire [63:0] clk_bus;

//fios de entradas para cada registrador de 4 bits
wire [3:0] data_in_00,data_in_01,data_in_02,data_in_03,data_in_04,data_in_05,data_in_06,data_in_07;
wire [3:0] data_in_08,data_in_09,data_in_10,data_in_11,data_in_12,data_in_13,data_in_14,data_in_15;
wire [3:0] data_in_16,data_in_17,data_in_18,data_in_19,data_in_20,data_in_21,data_in_22,data_in_23;
wire [3:0] data_in_24,data_in_25,data_in_26,data_in_27,data_in_28,data_in_29,data_in_30,data_in_31;
wire [3:0] data_in_32,data_in_33,data_in_34,data_in_35,data_in_36,data_in_37,data_in_38,data_in_39;
wire [3:0] data_in_40,data_in_41,data_in_42,data_in_43,data_in_44,data_in_45,data_in_46,data_in_47;
wire [3:0] data_in_48,data_in_49,data_in_50,data_in_51,data_in_52,data_in_53,data_in_54,data_in_55;
wire [3:0] data_in_56,data_in_57,data_in_58,data_in_59,data_in_60,data_in_61,data_in_62,data_in_63;

//fios de saida para cada registrador de 4 bits
wire [3:0] data_out_00, data_out_01, data_out_02, data_out_03, data_out_04, data_out_05, data_out_06, data_out_07;
wire [3:0] data_out_08, data_out_09, data_out_10, data_out_11, data_out_12, data_out_13, data_out_14, data_out_15;
wire [3:0] data_out_16, data_out_17, data_out_18, data_out_19, data_out_20, data_out_21, data_out_22, data_out_23;
wire [3:0] data_out_24, data_out_25, data_out_26, data_out_27, data_out_28, data_out_29, data_out_30, data_out_31;
wire [3:0] data_out_32, data_out_33, data_out_34, data_out_35, data_out_36, data_out_37, data_out_38, data_out_39;
wire [3:0] data_out_40, data_out_41, data_out_42, data_out_43, data_out_44, data_out_45, data_out_46, data_out_47;
wire [3:0] data_out_48, data_out_49, data_out_50, data_out_51, data_out_52, data_out_53, data_out_54, data_out_55;
wire [3:0] data_out_56, data_out_57, data_out_58, data_out_59, data_out_60, data_out_61, data_out_62, data_out_63;

_4bit_reg reg00 (
	.clk(clk_bus[0]),
	.rst_n(rst_n),     
	.data_in(data_in_00),         
	.data_out(data_out_00)
);

_4bit_reg reg01 (
	.clk(clk_bus[1]),
	.rst_n(rst_n),     
	.data_in(data_in_01),         
	.data_out(data_out_01)
);

_4bit_reg reg02 (
	.clk(clk_bus[2]),
	.rst_n(rst_n),     
	.data_in(data_in_02),         
	.data_out(data_out_02)
);

_4bit_reg reg03 (
	.clk(clk_bus[3]),
	.rst_n(rst_n),     
	.data_in(data_in_03),         
	.data_out(data_out_03)
);

_4bit_reg reg04 (
	.clk(clk_bus[4]),
	.rst_n(rst_n),     
	.data_in(data_in_04),         
	.data_out(data_out_04)
);

_4bit_reg reg05 (
	.clk(clk_bus[5]),
	.rst_n(rst_n),     
	.data_in(data_in_05),         
	.data_out(data_out_05)
);

_4bit_reg reg06 (
	.clk(clk_bus[6]),
	.rst_n(rst_n),     
	.data_in(data_in_06),         
	.data_out(data_out_06)
);

_4bit_reg reg07 (
	.clk(clk_bus[7]),
	.rst_n(rst_n),     
	.data_in(data_in_07),         
	.data_out(data_out_07)
);

_4bit_reg reg08 (
	.clk(clk_bus[8]),
	.rst_n(rst_n),     
	.data_in(data_in_08),         
	.data_out(data_out_08)
);

_4bit_reg reg09 (
	.clk(clk_bus[9]),
	.rst_n(rst_n),     
	.data_in(data_in_09),         
	.data_out(data_out_09)
);

_4bit_reg reg10 (
	.clk(clk_bus[10]),
	.rst_n(rst_n),     
	.data_in(data_in_10),         
	.data_out(data_out_10)
);

_4bit_reg reg11 (
	.clk(clk_bus[11]),
	.rst_n(rst_n),     
	.data_in(data_in_11),         
	.data_out(data_out_11)
);

_4bit_reg reg12 (
	.clk(clk_bus[12]),
	.rst_n(rst_n),     
	.data_in(data_in_12),         
	.data_out(data_out_12)
);

_4bit_reg reg13 (
	.clk(clk_bus[13]),
	.rst_n(rst_n),     
	.data_in(data_in_13),         
	.data_out(data_out_13)
);

_4bit_reg reg14 (
	.clk(clk_bus[14]),
	.rst_n(rst_n),     
	.data_in(data_in_14),         
	.data_out(data_out_14)
);

_4bit_reg reg15 (
	.clk(clk_bus[15]),
	.rst_n(rst_n),     
	.data_in(data_in_15),         
	.data_out(data_out_15)
);

_4bit_reg reg16 (
	.clk(clk_bus[16]),
	.rst_n(rst_n),     
	.data_in(data_in_16),         
	.data_out(data_out_16)
);

_4bit_reg reg17 (
	.clk(clk_bus[17]),
	.rst_n(rst_n),     
	.data_in(data_in_17),         
	.data_out(data_out_17)
);

_4bit_reg reg18 (
	.clk(clk_bus[18]),
	.rst_n(rst_n),     
	.data_in(data_in_18),         
	.data_out(data_out_18)
);

_4bit_reg reg19 (
	.clk(clk_bus[19]),
	.rst_n(rst_n),     
	.data_in(data_in_19),         
	.data_out(data_out_19)
);

_4bit_reg reg20 (
	.clk(clk_bus[20]),
	.rst_n(rst_n),     
	.data_in(data_in_20),         
	.data_out(data_out_20)
);

_4bit_reg reg21 (
	.clk(clk_bus[21]),
	.rst_n(rst_n),     
	.data_in(data_in_21),         
	.data_out(data_out_21)
);

_4bit_reg reg22 (
	.clk(clk_bus[22]),
	.rst_n(rst_n),     
	.data_in(data_in_22),         
	.data_out(data_out_22)
);

_4bit_reg reg23 (
	.clk(clk_bus[23]),
	.rst_n(rst_n),     
	.data_in(data_in_23),         
	.data_out(data_out_23)
);

_4bit_reg reg24 (
	.clk(clk_bus[24]),
	.rst_n(rst_n),     
	.data_in(data_in_24),         
	.data_out(data_out_24)
);

_4bit_reg reg25 (
	.clk(clk_bus[25]),
	.rst_n(rst_n),     
	.data_in(data_in_25),         
	.data_out(data_out_25)
);

_4bit_reg reg26 (
	.clk(clk_bus[26]),
	.rst_n(rst_n),     
	.data_in(data_in_26),         
	.data_out(data_out_26)
);

_4bit_reg reg27 (
	.clk(clk_bus[27]),
	.rst_n(rst_n),     
	.data_in(data_in_27),         
	.data_out(data_out_27)
);

_4bit_reg reg28 (
	.clk(clk_bus[28]),
	.rst_n(rst_n),     
	.data_in(data_in_28),         
	.data_out(data_out_28)
);

_4bit_reg reg29 (
	.clk(clk_bus[29]),
	.rst_n(rst_n),     
	.data_in(data_in_29),         
	.data_out(data_out_29)
);

_4bit_reg reg30 (
	.clk(clk_bus[30]),
	.rst_n(rst_n),     
	.data_in(data_in_30),         
	.data_out(data_out_30)
);

_4bit_reg reg31 (
	.clk(clk_bus[31]),
	.rst_n(rst_n),     
	.data_in(data_in_31),         
	.data_out(data_out_31)
);

_4bit_reg reg32 (
	.clk(clk_bus[32]),
	.rst_n(rst_n),     
	.data_in(data_in_32),         
	.data_out(data_out_32)
);

_4bit_reg reg33 (
	.clk(clk_bus[33]),
	.rst_n(rst_n),     
	.data_in(data_in_33),         
	.data_out(data_out_33)
);

_4bit_reg reg34 (
	.clk(clk_bus[34]),
	.rst_n(rst_n),     
	.data_in(data_in_34),         
	.data_out(data_out_34)
);

_4bit_reg reg35 (
	.clk(clk_bus[35]),
	.rst_n(rst_n),     
	.data_in(data_in_35),         
	.data_out(data_out_35)
);

_4bit_reg reg36 (
	.clk(clk_bus[36]),
	.rst_n(rst_n),     
	.data_in(data_in_36),         
	.data_out(data_out_36)
);

_4bit_reg reg37 (
	.clk(clk_bus[37]),
	.rst_n(rst_n),     
	.data_in(data_in_37),         
	.data_out(data_out_37)
);

_4bit_reg reg38 (
	.clk(clk_bus[38]),
	.rst_n(rst_n),     
	.data_in(data_in_38),         
	.data_out(data_out_38)
);

_4bit_reg reg39 (
	.clk(clk_bus[39]),
	.rst_n(rst_n),     
	.data_in(data_in_39),         
	.data_out(data_out_39)
);

_4bit_reg reg40 (
	.clk(clk_bus[40]),
	.rst_n(rst_n),     
	.data_in(data_in_40),         
	.data_out(data_out_40)
);

_4bit_reg reg41 (
	.clk(clk_bus[41]),
	.rst_n(rst_n),     
	.data_in(data_in_41),         
	.data_out(data_out_41)
);

_4bit_reg reg42 (
	.clk(clk_bus[42]),
	.rst_n(rst_n),     
	.data_in(data_in_42),         
	.data_out(data_out_42)
);

_4bit_reg reg43 (
	.clk(clk_bus[43]),
	.rst_n(rst_n),     
	.data_in(data_in_43),         
	.data_out(data_out_43)
);

_4bit_reg reg44 (
	.clk(clk_bus[44]),
	.rst_n(rst_n),     
	.data_in(data_in_44),         
	.data_out(data_out_44)
);

_4bit_reg reg45 (
	.clk(clk_bus[45]),
	.rst_n(rst_n),     
	.data_in(data_in_45),         
	.data_out(data_out_45)
);

_4bit_reg reg46 (
	.clk(clk_bus[46]),
	.rst_n(rst_n),     
	.data_in(data_in_46),         
	.data_out(data_out_46)
);

_4bit_reg reg47 (
	.clk(clk_bus[47]),
	.rst_n(rst_n),     
	.data_in(data_in_47),         
	.data_out(data_out_47)
);

_4bit_reg reg48 (
	.clk(clk_bus[48]),
	.rst_n(rst_n),     
	.data_in(data_in_48),         
	.data_out(data_out_48)
);

_4bit_reg reg49 (
	.clk(clk_bus[49]),
	.rst_n(rst_n),     
	.data_in(data_in_49),         
	.data_out(data_out_49)
);

_4bit_reg reg50 (
	.clk(clk_bus[50]),
	.rst_n(rst_n),     
	.data_in(data_in_50),         
	.data_out(data_out_50)
);

_4bit_reg reg51 (
	.clk(clk_bus[51]),
	.rst_n(rst_n),     
	.data_in(data_in_51),         
	.data_out(data_out_51)
);

_4bit_reg reg52 (
	.clk(clk_bus[52]),
	.rst_n(rst_n),     
	.data_in(data_in_52),         
	.data_out(data_out_52)
);

_4bit_reg reg53 (
	.clk(clk_bus[53]),
	.rst_n(rst_n),     
	.data_in(data_in_53),         
	.data_out(data_out_53)
);

_4bit_reg reg54 (
	.clk(clk_bus[54]),
	.rst_n(rst_n),     
	.data_in(data_in_54),         
	.data_out(data_out_54)
);

_4bit_reg reg55 (
	.clk(clk_bus[55]),
	.rst_n(rst_n),     
	.data_in(data_in_55),         
	.data_out(data_out_55)
);

_4bit_reg reg56 (
	.clk(clk_bus[56]),
	.rst_n(rst_n),     
	.data_in(data_in_56),         
	.data_out(data_out_56)
);

_4bit_reg reg57 (
	.clk(clk_bus[57]),
	.rst_n(rst_n),     
	.data_in(data_in_57),         
	.data_out(data_out_57)
);

_4bit_reg reg58 (
	.clk(clk_bus[58]),
	.rst_n(rst_n),     
	.data_in(data_in_58),         
	.data_out(data_out_58)
);

_4bit_reg reg59 (
	.clk(clk_bus[59]),
	.rst_n(rst_n),     
	.data_in(data_in_59),         
	.data_out(data_out_59)
);

_4bit_reg reg60 (
	.clk(clk_bus[60]),
	.rst_n(rst_n),     
	.data_in(data_in_60),         
	.data_out(data_out_60)
);

_4bit_reg reg61 (
	.clk(clk_bus[61]),
	.rst_n(rst_n),     
	.data_in(data_in_61),         
	.data_out(data_out_61)
);

_4bit_reg reg62 (
	.clk(clk_bus[62]),
	.rst_n(rst_n),     
	.data_in(data_in_62),         
	.data_out(data_out_62)
);

_4bit_reg reg63 (
	.clk(clk_bus[63]),
	.rst_n(rst_n),     
	.data_in(data_in_63),         
	.data_out(data_out_63)
);



//Instanciaçao do mux de saida
mux_64i4w mux(
		   .address(address),
		   .out(data_out),
        .in_00(data_out_00),
        .in_01(data_out_01),
        .in_02(data_out_02),
        .in_03(data_out_03),
        .in_04(data_out_04),
        .in_05(data_out_05),
        .in_06(data_out_06),
        .in_07(data_out_07),
        .in_08(data_out_08),
        .in_09(data_out_09),
        .in_10(data_out_10),
        .in_11(data_out_11),
        .in_12(data_out_12),
        .in_13(data_out_13),
        .in_14(data_out_14),
        .in_15(data_out_15),
        .in_16(data_out_16),
        .in_17(data_out_17),
        .in_18(data_out_18),
        .in_19(data_out_19),
        .in_20(data_out_20),
        .in_21(data_out_21),
        .in_22(data_out_22),
        .in_23(data_out_23),
        .in_24(data_out_24),
        .in_25(data_out_25),
        .in_26(data_out_26),
        .in_27(data_out_27),
        .in_28(data_out_28),
        .in_29(data_out_29),
        .in_30(data_out_30),
        .in_31(data_out_31),
        .in_32(data_out_32),
        .in_33(data_out_33),
        .in_34(data_out_34),
        .in_35(data_out_35),
        .in_36(data_out_36),
        .in_37(data_out_37),
        .in_38(data_out_38),
        .in_39(data_out_39),
        .in_40(data_out_40),
        .in_41(data_out_41),
        .in_42(data_out_42),
        .in_43(data_out_43),
        .in_44(data_out_44),
        .in_45(data_out_45),
        .in_46(data_out_46),
        .in_47(data_out_47),
        .in_48(data_out_48),
        .in_49(data_out_49),
        .in_50(data_out_50),
        .in_51(data_out_51),
        .in_52(data_out_52),
        .in_53(data_out_53),
        .in_54(data_out_54),
        .in_55(data_out_55),
        .in_56(data_out_56),
        .in_57(data_out_57),
        .in_58(data_out_58),
        .in_59(data_out_59),
        .in_60(data_out_60),
        .in_61(data_out_61),
        .in_62(data_out_62),
        .in_63(data_out_63)      
);

demux_64i4w demux(
        .in(data_in),
		  .address(address),
		  .out_00(data_in_00),
        .out_01(data_in_01),
        .out_02(data_in_02),
        .out_03(data_in_03),
        .out_04(data_in_04),
        .out_05(data_in_05),
        .out_06(data_in_06),
        .out_07(data_in_07),
        .out_08(data_in_08),
        .out_09(data_in_09),
        .out_10(data_in_10),
        .out_11(data_in_11),
        .out_12(data_in_12),
        .out_13(data_in_13),
        .out_14(data_in_14),
        .out_15(data_in_15),
        .out_16(data_in_16),
        .out_17(data_in_17),
        .out_18(data_in_18),
        .out_19(data_in_19),
        .out_20(data_in_20),
        .out_21(data_in_21),
        .out_22(data_in_22),
        .out_23(data_in_23),
        .out_24(data_in_24),
        .out_25(data_in_25),
        .out_26(data_in_26),
        .out_27(data_in_27),
        .out_28(data_in_28),
        .out_29(data_in_29),
        .out_30(data_in_30),
        .out_31(data_in_31),
        .out_32(data_in_32),
        .out_33(data_in_33),
        .out_34(data_in_34),
        .out_35(data_in_35),
        .out_36(data_in_36),
        .out_37(data_in_37),
        .out_38(data_in_38),
        .out_39(data_in_39),
        .out_40(data_in_40),
        .out_41(data_in_41),
        .out_42(data_in_42),
        .out_43(data_in_43),
        .out_44(data_in_44),
        .out_45(data_in_45),
        .out_46(data_in_46),
        .out_47(data_in_47),
        .out_48(data_in_48),
        .out_49(data_in_49),
        .out_50(data_in_50),
        .out_51(data_in_51),
        .out_52(data_in_52),
        .out_53(data_in_53),
        .out_54(data_in_54),
        .out_55(data_in_55),
        .out_56(data_in_56),
        .out_57(data_in_57),
        .out_58(data_in_58),
        .out_59(data_in_59),
        .out_60(data_in_60),
        .out_61(data_in_61),
        .out_62(data_in_62),
        .out_63(data_in_63)
);

demux64i1w demux_clk(
        .in(clk),
		  .address(address),
		  .out(clk_bus)
);
endmodule