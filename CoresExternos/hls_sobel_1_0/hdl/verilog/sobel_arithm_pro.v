// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module sobel_arithm_pro (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        src1_data_stream_V_dout,
        src1_data_stream_V_empty_n,
        src1_data_stream_V_read,
        src2_data_stream_V_dout,
        src2_data_stream_V_empty_n,
        src2_data_stream_V_read,
        dst_rows_V_read,
        dst_cols_V_read,
        dst_data_stream_V_din,
        dst_data_stream_V_full_n,
        dst_data_stream_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 4'b1;
parameter    ap_ST_st2_fsm_1 = 4'b10;
parameter    ap_ST_pp0_stg0_fsm_2 = 4'b100;
parameter    ap_ST_st5_fsm_3 = 4'b1000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv10_0 = 10'b0000000000;
parameter    ap_const_lv11_0 = 11'b00000000000;
parameter    ap_const_lv10_1 = 10'b1;
parameter    ap_const_lv11_1 = 11'b1;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv8_FF = 8'b11111111;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] src1_data_stream_V_dout;
input   src1_data_stream_V_empty_n;
output   src1_data_stream_V_read;
input  [7:0] src2_data_stream_V_dout;
input   src2_data_stream_V_empty_n;
output   src2_data_stream_V_read;
input  [11:0] dst_rows_V_read;
input  [11:0] dst_cols_V_read;
output  [7:0] dst_data_stream_V_din;
input   dst_data_stream_V_full_n;
output   dst_data_stream_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg src1_data_stream_V_read;
reg src2_data_stream_V_read;
reg dst_data_stream_V_write;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm = 4'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_22;
reg   [10:0] p_5_reg_120;
wire   [10:0] tmp_fu_132_p1;
reg   [10:0] tmp_reg_206;
wire   [0:0] exitcond6_fu_140_p2;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_57;
wire   [9:0] i_V_fu_145_p2;
reg   [9:0] i_V_reg_215;
wire   [0:0] exitcond_fu_155_p2;
reg   [0:0] exitcond_reg_220;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_2;
reg    ap_sig_bdd_68;
reg    ap_reg_ppiten_pp0_it0 = 1'b0;
reg    ap_sig_bdd_82;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
wire   [10:0] j_V_fu_160_p2;
reg   [9:0] p_s_reg_109;
reg    ap_sig_cseq_ST_st5_fsm_3;
reg    ap_sig_bdd_106;
wire   [10:0] p_cast_fu_136_p1;
wire   [11:0] p_5_cast_fu_151_p1;
wire   [8:0] tmp_20_cast_fu_170_p1;
wire   [8:0] tmp_19_cast_fu_166_p1;
wire   [8:0] p_Val2_s_fu_174_p2;
wire   [0:0] overflow_fu_184_p3;
wire   [7:0] p_Val2_1_fu_180_p1;
reg   [3:0] ap_NS_fsm;




/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_reg_ppiten_pp0_it0 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it0
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(ap_sig_bdd_82 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~(exitcond_fu_155_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond6_fu_140_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it1 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(ap_sig_bdd_82 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & (exitcond_fu_155_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
        end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond6_fu_140_p2 == ap_const_lv1_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(ap_sig_bdd_82 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~(exitcond_fu_155_p2 == ap_const_lv1_0)))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_sig_bdd_82 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & (exitcond_fu_155_p2 == ap_const_lv1_0))) begin
        p_5_reg_120 <= j_V_fu_160_p2;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond6_fu_140_p2 == ap_const_lv1_0))) begin
        p_5_reg_120 <= ap_const_lv11_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        p_s_reg_109 <= ap_const_lv10_0;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_3)) begin
        p_s_reg_109 <= i_V_reg_215;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(ap_sig_bdd_82 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        exitcond_reg_220 <= exitcond_fu_155_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        i_V_reg_215 <= i_V_fu_145_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        tmp_reg_206 <= tmp_fu_132_p1;
    end
end

/// ap_done assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0 or exitcond6_fu_140_p2 or ap_sig_cseq_ST_st2_fsm_1)
begin
    if (((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond6_fu_140_p2 == ap_const_lv1_0)))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (exitcond6_fu_140_p2 or ap_sig_cseq_ST_st2_fsm_1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond6_fu_140_p2 == ap_const_lv1_0))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg0_fsm_2 assign process. ///
always @ (ap_sig_bdd_68)
begin
    if (ap_sig_bdd_68) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_22)
begin
    if (ap_sig_bdd_22) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st2_fsm_1 assign process. ///
always @ (ap_sig_bdd_57)
begin
    if (ap_sig_bdd_57) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st5_fsm_3 assign process. ///
always @ (ap_sig_bdd_106)
begin
    if (ap_sig_bdd_106) begin
        ap_sig_cseq_ST_st5_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_3 = ap_const_logic_0;
    end
end

/// dst_data_stream_V_write assign process. ///
always @ (exitcond_reg_220 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_82 or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond_reg_220 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_82 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        dst_data_stream_V_write = ap_const_logic_1;
    end else begin
        dst_data_stream_V_write = ap_const_logic_0;
    end
end

/// src1_data_stream_V_read assign process. ///
always @ (exitcond_reg_220 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_82 or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond_reg_220 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_82 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        src1_data_stream_V_read = ap_const_logic_1;
    end else begin
        src1_data_stream_V_read = ap_const_logic_0;
    end
end

/// src2_data_stream_V_read assign process. ///
always @ (exitcond_reg_220 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_82 or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond_reg_220 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_82 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        src2_data_stream_V_read = ap_const_logic_1;
    end else begin
        src2_data_stream_V_read = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_start or ap_CS_fsm or exitcond6_fu_140_p2 or exitcond_fu_155_p2 or ap_reg_ppiten_pp0_it0 or ap_sig_bdd_82 or ap_reg_ppiten_pp0_it1)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~(ap_start == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : 
        begin
            if (~(exitcond6_fu_140_p2 == ap_const_lv1_0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        end
        ap_ST_pp0_stg0_fsm_2 : 
        begin
            if (~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_sig_bdd_82 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~(exitcond_fu_155_p2 == ap_const_lv1_0))) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_sig_bdd_82 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~(exitcond_fu_155_p2 == ap_const_lv1_0))) begin
                ap_NS_fsm = ap_ST_st5_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        end
        ap_ST_st5_fsm_3 : 
        begin
            ap_NS_fsm = ap_ST_st2_fsm_1;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end


/// ap_sig_bdd_106 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_106 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end

/// ap_sig_bdd_22 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_22 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_57 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_57 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end

/// ap_sig_bdd_68 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_68 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end

/// ap_sig_bdd_82 assign process. ///
always @ (src1_data_stream_V_empty_n or src2_data_stream_V_empty_n or dst_data_stream_V_full_n or exitcond_reg_220)
begin
    ap_sig_bdd_82 = (((src1_data_stream_V_empty_n == ap_const_logic_0) & (exitcond_reg_220 == ap_const_lv1_0)) | ((exitcond_reg_220 == ap_const_lv1_0) & (src2_data_stream_V_empty_n == ap_const_logic_0)) | ((exitcond_reg_220 == ap_const_lv1_0) & (dst_data_stream_V_full_n == ap_const_logic_0)));
end
assign dst_data_stream_V_din = ((overflow_fu_184_p3)? ap_const_lv8_FF: p_Val2_1_fu_180_p1);
assign exitcond6_fu_140_p2 = (p_cast_fu_136_p1 == tmp_reg_206? 1'b1: 1'b0);
assign exitcond_fu_155_p2 = (p_5_cast_fu_151_p1 == dst_cols_V_read? 1'b1: 1'b0);
assign i_V_fu_145_p2 = (p_s_reg_109 + ap_const_lv10_1);
assign j_V_fu_160_p2 = (p_5_reg_120 + ap_const_lv11_1);
assign overflow_fu_184_p3 = p_Val2_s_fu_174_p2[ap_const_lv32_8];
assign p_5_cast_fu_151_p1 = p_5_reg_120;
assign p_Val2_1_fu_180_p1 = p_Val2_s_fu_174_p2[7:0];
assign p_Val2_s_fu_174_p2 = (tmp_20_cast_fu_170_p1 + tmp_19_cast_fu_166_p1);
assign p_cast_fu_136_p1 = p_s_reg_109;
assign tmp_19_cast_fu_166_p1 = src1_data_stream_V_dout;
assign tmp_20_cast_fu_170_p1 = src2_data_stream_V_dout;
assign tmp_fu_132_p1 = dst_rows_V_read[10:0];


endmodule //sobel_arithm_pro
