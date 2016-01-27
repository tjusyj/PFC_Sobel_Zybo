// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module sobel_borderInterpolate (
        ap_clk,
        ap_rst,
        p,
        len,
        ap_return,
        ap_ce
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_lv32_B = 32'b1011;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv12_1 = 12'b1;
parameter    ap_const_lv13_0 = 13'b0000000000000;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv14_3FFE = 14'b11111111111110;
parameter    ap_const_logic_0 = 1'b0;

input   ap_clk;
input   ap_rst;
input  [11:0] p;
input  [11:0] len;
output  [13:0] ap_return;
input   ap_ce;

reg   [11:0] len_read_reg_195;
reg   [11:0] p_read_reg_200;
wire   [0:0] or_cond_58_fu_63_p2;
reg   [0:0] or_cond_58_reg_205;
wire   [0:0] tmp_1_fu_69_p2;
reg   [0:0] tmp_1_reg_211;
wire   [12:0] p_p2_fu_89_p3;
reg   [12:0] p_p2_reg_217;
wire   [0:0] tmp_3_fu_97_p2;
reg   [0:0] tmp_3_reg_223;
wire   [0:0] sel_tmp1_fu_109_p2;
reg   [0:0] sel_tmp1_reg_228;
wire   [0:0] tmp_fu_39_p3;
wire  signed [12:0] p_cast1_fu_35_p1;
wire   [12:0] len_cast4_cast_fu_53_p1;
wire   [0:0] tmp_s_fu_57_p2;
wire   [0:0] rev_fu_47_p2;
wire   [0:0] tmp_63_fu_75_p3;
wire  signed [12:0] p_assign_fu_83_p2;
wire   [0:0] tmp_not_fu_103_p2;
wire   [12:0] tmp_4_fu_121_p3;
wire   [13:0] tmp_4_cast_cast_fu_128_p1;
wire   [13:0] tmp_5_fu_132_p2;
wire   [13:0] p_p2_cast_cast_fu_118_p1;
wire   [0:0] sel_tmp6_demorgan_fu_148_p2;
wire   [0:0] sel_tmp6_fu_152_p2;
wire   [0:0] sel_tmp7_fu_158_p2;
wire   [12:0] newSel_fu_163_p3;
wire   [0:0] sel_tmp2_fu_144_p2;
wire  signed [13:0] p_cast_cast_fu_115_p1;
wire   [13:0] p_assign_1_fu_138_p2;
wire   [0:0] or_cond_fu_174_p2;
wire   [13:0] newSel_cast_fu_170_p1;
wire   [13:0] newSel9_fu_180_p3;




/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_ce)) begin
        len_read_reg_195 <= len;
        or_cond_58_reg_205 <= or_cond_58_fu_63_p2;
        p_p2_reg_217 <= p_p2_fu_89_p3;
        p_read_reg_200 <= p;
        sel_tmp1_reg_228 <= sel_tmp1_fu_109_p2;
        tmp_1_reg_211 <= tmp_1_fu_69_p2;
        tmp_3_reg_223 <= tmp_3_fu_97_p2;
    end
end
assign ap_return = ((or_cond_fu_174_p2)? newSel_cast_fu_170_p1: newSel9_fu_180_p3);
assign len_cast4_cast_fu_53_p1 = len;
assign newSel9_fu_180_p3 = ((or_cond_58_reg_205)? p_cast_cast_fu_115_p1: p_assign_1_fu_138_p2);
assign newSel_cast_fu_170_p1 = newSel_fu_163_p3;
assign newSel_fu_163_p3 = ((sel_tmp7_fu_158_p2)? p_p2_reg_217: ap_const_lv13_0);
assign or_cond_58_fu_63_p2 = (tmp_s_fu_57_p2 & rev_fu_47_p2);
assign or_cond_fu_174_p2 = (sel_tmp7_fu_158_p2 | sel_tmp2_fu_144_p2);
assign p_assign_1_fu_138_p2 = (tmp_5_fu_132_p2 - p_p2_cast_cast_fu_118_p1);
assign p_assign_fu_83_p2 = ($signed(ap_const_lv13_0) - $signed(p_cast1_fu_35_p1));
assign p_cast1_fu_35_p1 = $signed(p);
assign p_cast_cast_fu_115_p1 = $signed(p_read_reg_200);
assign p_p2_cast_cast_fu_118_p1 = p_p2_reg_217;
assign p_p2_fu_89_p3 = ((tmp_63_fu_75_p3)? p_assign_fu_83_p2: p_cast1_fu_35_p1);
assign rev_fu_47_p2 = (tmp_fu_39_p3 ^ ap_const_lv1_1);
assign sel_tmp1_fu_109_p2 = (tmp_fu_39_p3 | tmp_not_fu_103_p2);
assign sel_tmp2_fu_144_p2 = (tmp_1_reg_211 & sel_tmp1_reg_228);
assign sel_tmp6_demorgan_fu_148_p2 = (or_cond_58_reg_205 | tmp_1_reg_211);
assign sel_tmp6_fu_152_p2 = (sel_tmp6_demorgan_fu_148_p2 ^ ap_const_lv1_1);
assign sel_tmp7_fu_158_p2 = (tmp_3_reg_223 & sel_tmp6_fu_152_p2);
assign tmp_1_fu_69_p2 = (len == ap_const_lv12_1? 1'b1: 1'b0);
assign tmp_3_fu_97_p2 = (p_p2_fu_89_p3 < len_cast4_cast_fu_53_p1? 1'b1: 1'b0);
assign tmp_4_cast_cast_fu_128_p1 = tmp_4_fu_121_p3;
assign tmp_4_fu_121_p3 = {{len_read_reg_195}, {ap_const_lv1_0}};
assign tmp_5_fu_132_p2 = ($signed(tmp_4_cast_cast_fu_128_p1) + $signed(ap_const_lv14_3FFE));
assign tmp_63_fu_75_p3 = p[ap_const_lv32_B];
assign tmp_fu_39_p3 = p[ap_const_lv32_B];
assign tmp_not_fu_103_p2 = (tmp_s_fu_57_p2 ^ ap_const_lv1_1);
assign tmp_s_fu_57_p2 = ($signed(p_cast1_fu_35_p1) < $signed(len_cast4_cast_fu_53_p1)? 1'b1: 1'b0);


endmodule //sobel_borderInterpolate

