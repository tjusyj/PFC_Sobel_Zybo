// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module sobel_CvtColor_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        p_src_rows_V_read,
        p_src_cols_V_read,
        p_src_data_stream_V_dout,
        p_src_data_stream_V_empty_n,
        p_src_data_stream_V_read,
        p_dst_data_stream_0_V_din,
        p_dst_data_stream_0_V_full_n,
        p_dst_data_stream_0_V_write,
        p_dst_data_stream_1_V_din,
        p_dst_data_stream_1_V_full_n,
        p_dst_data_stream_1_V_write,
        p_dst_data_stream_2_V_din,
        p_dst_data_stream_2_V_full_n,
        p_dst_data_stream_2_V_write
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
parameter    ap_const_lv10_0 = 10'b0000000000;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv11_0 = 11'b00000000000;
parameter    ap_const_lv10_1 = 10'b1;
parameter    ap_const_lv11_1 = 11'b1;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [11:0] p_src_rows_V_read;
input  [11:0] p_src_cols_V_read;
input  [7:0] p_src_data_stream_V_dout;
input   p_src_data_stream_V_empty_n;
output   p_src_data_stream_V_read;
output  [7:0] p_dst_data_stream_0_V_din;
input   p_dst_data_stream_0_V_full_n;
output   p_dst_data_stream_0_V_write;
output  [7:0] p_dst_data_stream_1_V_din;
input   p_dst_data_stream_1_V_full_n;
output   p_dst_data_stream_1_V_write;
output  [7:0] p_dst_data_stream_2_V_din;
input   p_dst_data_stream_2_V_full_n;
output   p_dst_data_stream_2_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_src_data_stream_V_read;
reg p_dst_data_stream_0_V_write;
reg p_dst_data_stream_1_V_write;
reg p_dst_data_stream_2_V_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm = 4'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_23;
reg   [10:0] j_reg_129;
reg    ap_sig_bdd_55;
wire   [10:0] tmp_fu_141_p1;
reg   [10:0] tmp_reg_180;
wire   [0:0] exitcond2_fu_149_p2;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_67;
wire   [9:0] i_2_fu_154_p2;
reg   [9:0] i_2_reg_189;
wire   [0:0] exitcond_fu_164_p2;
reg   [0:0] exitcond_reg_194;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_2;
reg    ap_sig_bdd_78;
reg    ap_reg_ppiten_pp0_it0 = 1'b0;
reg    ap_sig_bdd_95;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
wire   [10:0] j_2_fu_169_p2;
reg   [9:0] i_reg_118;
reg    ap_sig_cseq_ST_st5_fsm_3;
reg    ap_sig_bdd_120;
wire   [10:0] i_cast_fu_145_p1;
wire   [11:0] j_cast_fu_160_p1;
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

/// ap_done_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond2_fu_149_p2 == ap_const_lv1_0))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it0 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it0
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(ap_sig_bdd_95 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~(exitcond_fu_164_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond2_fu_149_p2 == ap_const_lv1_0))) begin
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
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(ap_sig_bdd_95 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & (exitcond_fu_164_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
        end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond2_fu_149_p2 == ap_const_lv1_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(ap_sig_bdd_95 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~(exitcond_fu_164_p2 == ap_const_lv1_0)))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_3)) begin
        i_reg_118 <= i_2_reg_189;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_55)) begin
        i_reg_118 <= ap_const_lv10_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_sig_bdd_95 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & (exitcond_fu_164_p2 == ap_const_lv1_0))) begin
        j_reg_129 <= j_2_fu_169_p2;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond2_fu_149_p2 == ap_const_lv1_0))) begin
        j_reg_129 <= ap_const_lv11_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(ap_sig_bdd_95 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        exitcond_reg_194 <= exitcond_fu_164_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        i_2_reg_189 <= i_2_fu_154_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_55)) begin
        tmp_reg_180 <= tmp_fu_141_p1;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or exitcond2_fu_149_p2 or ap_sig_cseq_ST_st2_fsm_1)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond2_fu_149_p2 == ap_const_lv1_0)))) begin
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
always @ (exitcond2_fu_149_p2 or ap_sig_cseq_ST_st2_fsm_1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond2_fu_149_p2 == ap_const_lv1_0))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg0_fsm_2 assign process. ///
always @ (ap_sig_bdd_78)
begin
    if (ap_sig_bdd_78) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_23)
begin
    if (ap_sig_bdd_23) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st2_fsm_1 assign process. ///
always @ (ap_sig_bdd_67)
begin
    if (ap_sig_bdd_67) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st5_fsm_3 assign process. ///
always @ (ap_sig_bdd_120)
begin
    if (ap_sig_bdd_120) begin
        ap_sig_cseq_ST_st5_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_3 = ap_const_logic_0;
    end
end

/// p_dst_data_stream_0_V_write assign process. ///
always @ (exitcond_reg_194 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_95 or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond_reg_194 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_95 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        p_dst_data_stream_0_V_write = ap_const_logic_1;
    end else begin
        p_dst_data_stream_0_V_write = ap_const_logic_0;
    end
end

/// p_dst_data_stream_1_V_write assign process. ///
always @ (exitcond_reg_194 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_95 or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond_reg_194 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_95 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        p_dst_data_stream_1_V_write = ap_const_logic_1;
    end else begin
        p_dst_data_stream_1_V_write = ap_const_logic_0;
    end
end

/// p_dst_data_stream_2_V_write assign process. ///
always @ (exitcond_reg_194 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_95 or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond_reg_194 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_95 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        p_dst_data_stream_2_V_write = ap_const_logic_1;
    end else begin
        p_dst_data_stream_2_V_write = ap_const_logic_0;
    end
end

/// p_src_data_stream_V_read assign process. ///
always @ (exitcond_reg_194 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_95 or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond_reg_194 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_95 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        p_src_data_stream_V_read = ap_const_logic_1;
    end else begin
        p_src_data_stream_V_read = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_CS_fsm or ap_sig_bdd_55 or exitcond2_fu_149_p2 or exitcond_fu_164_p2 or ap_reg_ppiten_pp0_it0 or ap_sig_bdd_95 or ap_reg_ppiten_pp0_it1)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~ap_sig_bdd_55) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : 
        begin
            if (~(exitcond2_fu_149_p2 == ap_const_lv1_0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        end
        ap_ST_pp0_stg0_fsm_2 : 
        begin
            if (~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_sig_bdd_95 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~(exitcond_fu_164_p2 == ap_const_lv1_0))) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_sig_bdd_95 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~(exitcond_fu_164_p2 == ap_const_lv1_0))) begin
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


/// ap_sig_bdd_120 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_120 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end

/// ap_sig_bdd_23 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_23 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_55 assign process. ///
always @ (ap_start or ap_done_reg)
begin
    ap_sig_bdd_55 = ((ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_67 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_67 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end

/// ap_sig_bdd_78 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_78 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end

/// ap_sig_bdd_95 assign process. ///
always @ (p_src_data_stream_V_empty_n or p_dst_data_stream_0_V_full_n or p_dst_data_stream_1_V_full_n or p_dst_data_stream_2_V_full_n or exitcond_reg_194)
begin
    ap_sig_bdd_95 = (((p_src_data_stream_V_empty_n == ap_const_logic_0) & (exitcond_reg_194 == ap_const_lv1_0)) | ((exitcond_reg_194 == ap_const_lv1_0) & (p_dst_data_stream_0_V_full_n == ap_const_logic_0)) | ((exitcond_reg_194 == ap_const_lv1_0) & (p_dst_data_stream_1_V_full_n == ap_const_logic_0)) | ((exitcond_reg_194 == ap_const_lv1_0) & (p_dst_data_stream_2_V_full_n == ap_const_logic_0)));
end
assign exitcond2_fu_149_p2 = (i_cast_fu_145_p1 == tmp_reg_180? 1'b1: 1'b0);
assign exitcond_fu_164_p2 = (j_cast_fu_160_p1 == p_src_cols_V_read? 1'b1: 1'b0);
assign i_2_fu_154_p2 = (i_reg_118 + ap_const_lv10_1);
assign i_cast_fu_145_p1 = i_reg_118;
assign j_2_fu_169_p2 = (j_reg_129 + ap_const_lv11_1);
assign j_cast_fu_160_p1 = j_reg_129;
assign p_dst_data_stream_0_V_din = p_src_data_stream_V_dout;
assign p_dst_data_stream_1_V_din = p_src_data_stream_V_dout;
assign p_dst_data_stream_2_V_din = p_src_data_stream_V_dout;
assign tmp_fu_141_p1 = p_src_rows_V_read[10:0];


endmodule //sobel_CvtColor_1

