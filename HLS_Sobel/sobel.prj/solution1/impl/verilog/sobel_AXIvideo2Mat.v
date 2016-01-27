// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module sobel_AXIvideo2Mat (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        INPUT_STREAM_TDATA,
        INPUT_STREAM_TVALID,
        INPUT_STREAM_TREADY,
        INPUT_STREAM_TKEEP,
        INPUT_STREAM_TSTRB,
        INPUT_STREAM_TUSER,
        INPUT_STREAM_TLAST,
        INPUT_STREAM_TID,
        INPUT_STREAM_TDEST,
        img_rows_V_read,
        img_cols_V_read,
        img_data_stream_0_V_din,
        img_data_stream_0_V_full_n,
        img_data_stream_0_V_write,
        img_data_stream_1_V_din,
        img_data_stream_1_V_full_n,
        img_data_stream_1_V_write,
        img_data_stream_2_V_din,
        img_data_stream_2_V_full_n,
        img_data_stream_2_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 7'b1;
parameter    ap_ST_st2_fsm_1 = 7'b10;
parameter    ap_ST_st3_fsm_2 = 7'b100;
parameter    ap_ST_st4_fsm_3 = 7'b1000;
parameter    ap_ST_pp1_stg0_fsm_4 = 7'b10000;
parameter    ap_ST_st7_fsm_5 = 7'b100000;
parameter    ap_ST_st8_fsm_6 = 7'b1000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv12_0 = 12'b000000000000;
parameter    ap_const_lv12_1 = 12'b1;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_F = 32'b1111;
parameter    ap_const_lv32_10 = 32'b10000;
parameter    ap_const_lv32_17 = 32'b10111;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] INPUT_STREAM_TDATA;
input   INPUT_STREAM_TVALID;
output   INPUT_STREAM_TREADY;
input  [3:0] INPUT_STREAM_TKEEP;
input  [3:0] INPUT_STREAM_TSTRB;
input  [0:0] INPUT_STREAM_TUSER;
input  [0:0] INPUT_STREAM_TLAST;
input  [0:0] INPUT_STREAM_TID;
input  [0:0] INPUT_STREAM_TDEST;
input  [11:0] img_rows_V_read;
input  [11:0] img_cols_V_read;
output  [7:0] img_data_stream_0_V_din;
input   img_data_stream_0_V_full_n;
output   img_data_stream_0_V_write;
output  [7:0] img_data_stream_1_V_din;
input   img_data_stream_1_V_full_n;
output   img_data_stream_1_V_write;
output  [7:0] img_data_stream_2_V_din;
input   img_data_stream_2_V_full_n;
output   img_data_stream_2_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg INPUT_STREAM_TREADY;
reg img_data_stream_0_V_write;
reg img_data_stream_1_V_write;
reg img_data_stream_2_V_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm = 7'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_26;
reg   [0:0] eol_1_reg_184;
reg   [31:0] axi_data_V_1_reg_195;
reg   [11:0] p_1_reg_206;
reg   [0:0] eol_reg_217;
reg   [0:0] axi_last_V_2_reg_229;
reg   [31:0] p_Val2_s_reg_241;
reg   [0:0] eol_2_reg_253;
reg    ap_sig_bdd_75;
reg   [31:0] tmp_data_V_reg_402;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_87;
reg   [0:0] tmp_last_V_reg_410;
wire   [0:0] exitcond1_fu_319_p2;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_bdd_101;
wire   [11:0] i_V_fu_324_p2;
reg   [11:0] i_V_reg_426;
wire   [0:0] exitcond2_fu_330_p2;
reg   [0:0] exitcond2_reg_431;
reg    ap_sig_cseq_ST_pp1_stg0_fsm_4;
reg    ap_sig_bdd_112;
wire   [0:0] brmerge_fu_344_p2;
reg    ap_sig_bdd_120;
reg    ap_reg_ppiten_pp1_it0 = 1'b0;
reg    ap_sig_bdd_133;
reg    ap_reg_ppiten_pp1_it1 = 1'b0;
wire   [11:0] j_V_fu_335_p2;
wire   [7:0] tmp_60_fu_363_p1;
reg   [7:0] tmp_60_reg_444;
reg   [7:0] tmp_12_reg_449;
reg   [7:0] tmp_14_reg_454;
reg    ap_sig_cseq_ST_st7_fsm_5;
reg    ap_sig_bdd_158;
reg    ap_sig_bdd_163;
reg   [0:0] axi_last_V_3_reg_264;
reg   [0:0] axi_last_V1_reg_153;
reg    ap_sig_cseq_ST_st8_fsm_6;
reg    ap_sig_bdd_181;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_bdd_188;
reg   [31:0] axi_data_V_3_reg_276;
reg   [31:0] axi_data_V1_reg_163;
reg   [11:0] p_s_reg_173;
reg   [0:0] eol_1_phi_fu_187_p4;
reg   [31:0] axi_data_V_1_phi_fu_198_p4;
reg   [0:0] eol_phi_fu_221_p4;
wire   [0:0] ap_reg_phiprechg_axi_last_V_2_reg_229pp1_it0;
wire   [31:0] ap_reg_phiprechg_p_Val2_s_reg_241pp1_it0;
reg   [31:0] p_Val2_s_phi_fu_245_p4;
wire   [0:0] ap_reg_phiprechg_eol_2_reg_253pp1_it0;
wire   [0:0] axi_last_V_1_mux_fu_356_p2;
reg   [0:0] eol_3_reg_288;
reg   [0:0] sof_1_fu_98;
wire   [0:0] not_sof_2_fu_350_p2;
wire   [0:0] tmp_user_V_fu_310_p1;
reg   [6:0] ap_NS_fsm;
reg    ap_sig_bdd_119;
reg    ap_sig_bdd_211;
reg    ap_sig_bdd_144;
reg    ap_sig_bdd_229;




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
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & ~(exitcond1_fu_319_p2 == ap_const_lv1_0))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp1_it0 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp1_it0
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp1_it0 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_4) & ~((ap_sig_bdd_120 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_133 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))) & ~(exitcond2_fu_330_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp1_it0 <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & (exitcond1_fu_319_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp1_it0 <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp1_it1 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp1_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp1_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_4) & (exitcond2_fu_330_p2 == ap_const_lv1_0) & ~((ap_sig_bdd_120 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_133 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))))) begin
            ap_reg_ppiten_pp1_it1 <= ap_const_logic_1;
        end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & (exitcond1_fu_319_p2 == ap_const_lv1_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_4) & ~((ap_sig_bdd_120 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_133 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))) & ~(exitcond2_fu_330_p2 == ap_const_lv1_0)))) begin
            ap_reg_ppiten_pp1_it1 <= ap_const_logic_0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        axi_data_V1_reg_163 <= tmp_data_V_reg_402;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st8_fsm_6)) begin
        axi_data_V1_reg_163 <= axi_data_V_3_reg_276;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_4) & (exitcond2_reg_431 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1) & ~((ap_sig_bdd_120 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_133 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))))) begin
        axi_data_V_1_reg_195 <= p_Val2_s_reg_241;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & (exitcond1_fu_319_p2 == ap_const_lv1_0))) begin
        axi_data_V_1_reg_195 <= axi_data_V1_reg_163;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_4) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0) & ~((ap_sig_bdd_120 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_133 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))) & ~(exitcond2_fu_330_p2 == ap_const_lv1_0))) begin
        axi_data_V_3_reg_276 <= axi_data_V_1_phi_fu_198_p4;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_5) & (ap_const_lv1_0 == eol_3_reg_288) & ~ap_sig_bdd_163)) begin
        axi_data_V_3_reg_276 <= INPUT_STREAM_TDATA;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        axi_last_V1_reg_153 <= tmp_last_V_reg_410;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st8_fsm_6)) begin
        axi_last_V1_reg_153 <= axi_last_V_3_reg_264;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (ap_sig_bdd_144) begin
        if (ap_sig_bdd_211) begin
            axi_last_V_2_reg_229 <= eol_1_phi_fu_187_p4;
        end else if (ap_sig_bdd_119) begin
            axi_last_V_2_reg_229 <= INPUT_STREAM_TLAST;
        end else if ((ap_true == ap_true)) begin
            axi_last_V_2_reg_229 <= ap_reg_phiprechg_axi_last_V_2_reg_229pp1_it0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_4) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0) & ~((ap_sig_bdd_120 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_133 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))) & ~(exitcond2_fu_330_p2 == ap_const_lv1_0))) begin
        axi_last_V_3_reg_264 <= eol_1_phi_fu_187_p4;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_5) & (ap_const_lv1_0 == eol_3_reg_288) & ~ap_sig_bdd_163)) begin
        axi_last_V_3_reg_264 <= INPUT_STREAM_TLAST;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_4) & (exitcond2_reg_431 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1) & ~((ap_sig_bdd_120 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_133 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))))) begin
        eol_1_reg_184 <= axi_last_V_2_reg_229;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & (exitcond1_fu_319_p2 == ap_const_lv1_0))) begin
        eol_1_reg_184 <= axi_last_V1_reg_153;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (ap_sig_bdd_144) begin
        if (ap_sig_bdd_211) begin
            eol_2_reg_253 <= axi_last_V_1_mux_fu_356_p2;
        end else if (ap_sig_bdd_119) begin
            eol_2_reg_253 <= INPUT_STREAM_TLAST;
        end else if ((ap_true == ap_true)) begin
            eol_2_reg_253 <= ap_reg_phiprechg_eol_2_reg_253pp1_it0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_4) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0) & ~((ap_sig_bdd_120 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_133 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))) & ~(exitcond2_fu_330_p2 == ap_const_lv1_0))) begin
        eol_3_reg_288 <= eol_phi_fu_221_p4;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_5) & (ap_const_lv1_0 == eol_3_reg_288) & ~ap_sig_bdd_163)) begin
        eol_3_reg_288 <= INPUT_STREAM_TLAST;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_4) & (exitcond2_reg_431 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1) & ~((ap_sig_bdd_120 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_133 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))))) begin
        eol_reg_217 <= eol_2_reg_253;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & (exitcond1_fu_319_p2 == ap_const_lv1_0))) begin
        eol_reg_217 <= ap_const_lv1_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_4) & (exitcond2_fu_330_p2 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0) & ~((ap_sig_bdd_120 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_133 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))))) begin
        p_1_reg_206 <= j_V_fu_335_p2;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & (exitcond1_fu_319_p2 == ap_const_lv1_0))) begin
        p_1_reg_206 <= ap_const_lv12_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (ap_sig_bdd_144) begin
        if (ap_sig_bdd_211) begin
            p_Val2_s_reg_241 <= axi_data_V_1_phi_fu_198_p4;
        end else if (ap_sig_bdd_119) begin
            p_Val2_s_reg_241 <= INPUT_STREAM_TDATA;
        end else if ((ap_true == ap_true)) begin
            p_Val2_s_reg_241 <= ap_reg_phiprechg_p_Val2_s_reg_241pp1_it0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        p_s_reg_173 <= ap_const_lv12_0;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st8_fsm_6)) begin
        p_s_reg_173 <= i_V_reg_426;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_4) & (exitcond2_fu_330_p2 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0) & ~((ap_sig_bdd_120 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_133 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))))) begin
        sof_1_fu_98 <= ap_const_lv1_0;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        sof_1_fu_98 <= ap_const_lv1_1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_4) & ~((ap_sig_bdd_120 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_133 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))))) begin
        exitcond2_reg_431 <= exitcond2_fu_330_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        i_V_reg_426 <= i_V_fu_324_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_4) & (exitcond2_fu_330_p2 == ap_const_lv1_0) & ~((ap_sig_bdd_120 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_133 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))))) begin
        tmp_12_reg_449 <= {{p_Val2_s_phi_fu_245_p4[ap_const_lv32_F : ap_const_lv32_8]}};
        tmp_14_reg_454 <= {{p_Val2_s_phi_fu_245_p4[ap_const_lv32_17 : ap_const_lv32_10]}};
        tmp_60_reg_444 <= tmp_60_fu_363_p1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(INPUT_STREAM_TVALID == ap_const_logic_0))) begin
        tmp_data_V_reg_402 <= INPUT_STREAM_TDATA;
        tmp_last_V_reg_410 <= INPUT_STREAM_TLAST;
    end
end

/// INPUT_STREAM_TREADY assign process. ///
always @ (INPUT_STREAM_TVALID or ap_sig_cseq_ST_st2_fsm_1 or exitcond2_fu_330_p2 or ap_sig_cseq_ST_pp1_stg0_fsm_4 or brmerge_fu_344_p2 or ap_sig_bdd_120 or ap_reg_ppiten_pp1_it0 or ap_sig_bdd_133 or ap_reg_ppiten_pp1_it1 or ap_sig_cseq_ST_st7_fsm_5 or ap_sig_bdd_163 or eol_3_reg_288)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(INPUT_STREAM_TVALID == ap_const_logic_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_5) & (ap_const_lv1_0 == eol_3_reg_288) & ~ap_sig_bdd_163) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_4) & (exitcond2_fu_330_p2 == ap_const_lv1_0) & (ap_const_lv1_0 == brmerge_fu_344_p2) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0) & ~((ap_sig_bdd_120 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_133 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1)))))) begin
        INPUT_STREAM_TREADY = ap_const_logic_1;
    end else begin
        INPUT_STREAM_TREADY = ap_const_logic_0;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or exitcond1_fu_319_p2 or ap_sig_cseq_ST_st4_fsm_3)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & ~(exitcond1_fu_319_p2 == ap_const_lv1_0)))) begin
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
always @ (exitcond1_fu_319_p2 or ap_sig_cseq_ST_st4_fsm_3)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & ~(exitcond1_fu_319_p2 == ap_const_lv1_0))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp1_stg0_fsm_4 assign process. ///
always @ (ap_sig_bdd_112)
begin
    if (ap_sig_bdd_112) begin
        ap_sig_cseq_ST_pp1_stg0_fsm_4 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp1_stg0_fsm_4 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_26)
begin
    if (ap_sig_bdd_26) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st2_fsm_1 assign process. ///
always @ (ap_sig_bdd_87)
begin
    if (ap_sig_bdd_87) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st3_fsm_2 assign process. ///
always @ (ap_sig_bdd_188)
begin
    if (ap_sig_bdd_188) begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st4_fsm_3 assign process. ///
always @ (ap_sig_bdd_101)
begin
    if (ap_sig_bdd_101) begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st7_fsm_5 assign process. ///
always @ (ap_sig_bdd_158)
begin
    if (ap_sig_bdd_158) begin
        ap_sig_cseq_ST_st7_fsm_5 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_5 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st8_fsm_6 assign process. ///
always @ (ap_sig_bdd_181)
begin
    if (ap_sig_bdd_181) begin
        ap_sig_cseq_ST_st8_fsm_6 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st8_fsm_6 = ap_const_logic_0;
    end
end

/// axi_data_V_1_phi_fu_198_p4 assign process. ///
always @ (axi_data_V_1_reg_195 or p_Val2_s_reg_241 or exitcond2_reg_431 or ap_sig_cseq_ST_pp1_stg0_fsm_4 or ap_reg_ppiten_pp1_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_4) & (exitcond2_reg_431 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))) begin
        axi_data_V_1_phi_fu_198_p4 = p_Val2_s_reg_241;
    end else begin
        axi_data_V_1_phi_fu_198_p4 = axi_data_V_1_reg_195;
    end
end

/// eol_1_phi_fu_187_p4 assign process. ///
always @ (eol_1_reg_184 or axi_last_V_2_reg_229 or exitcond2_reg_431 or ap_sig_cseq_ST_pp1_stg0_fsm_4 or ap_reg_ppiten_pp1_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_4) & (exitcond2_reg_431 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))) begin
        eol_1_phi_fu_187_p4 = axi_last_V_2_reg_229;
    end else begin
        eol_1_phi_fu_187_p4 = eol_1_reg_184;
    end
end

/// eol_phi_fu_221_p4 assign process. ///
always @ (eol_reg_217 or eol_2_reg_253 or exitcond2_reg_431 or ap_sig_cseq_ST_pp1_stg0_fsm_4 or ap_reg_ppiten_pp1_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_4) & (exitcond2_reg_431 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))) begin
        eol_phi_fu_221_p4 = eol_2_reg_253;
    end else begin
        eol_phi_fu_221_p4 = eol_reg_217;
    end
end

/// img_data_stream_0_V_write assign process. ///
always @ (exitcond2_reg_431 or ap_sig_cseq_ST_pp1_stg0_fsm_4 or ap_sig_bdd_120 or ap_reg_ppiten_pp1_it0 or ap_sig_bdd_133 or ap_reg_ppiten_pp1_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_4) & (exitcond2_reg_431 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1) & ~((ap_sig_bdd_120 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_133 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))))) begin
        img_data_stream_0_V_write = ap_const_logic_1;
    end else begin
        img_data_stream_0_V_write = ap_const_logic_0;
    end
end

/// img_data_stream_1_V_write assign process. ///
always @ (exitcond2_reg_431 or ap_sig_cseq_ST_pp1_stg0_fsm_4 or ap_sig_bdd_120 or ap_reg_ppiten_pp1_it0 or ap_sig_bdd_133 or ap_reg_ppiten_pp1_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_4) & (exitcond2_reg_431 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1) & ~((ap_sig_bdd_120 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_133 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))))) begin
        img_data_stream_1_V_write = ap_const_logic_1;
    end else begin
        img_data_stream_1_V_write = ap_const_logic_0;
    end
end

/// img_data_stream_2_V_write assign process. ///
always @ (exitcond2_reg_431 or ap_sig_cseq_ST_pp1_stg0_fsm_4 or ap_sig_bdd_120 or ap_reg_ppiten_pp1_it0 or ap_sig_bdd_133 or ap_reg_ppiten_pp1_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_4) & (exitcond2_reg_431 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1) & ~((ap_sig_bdd_120 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_133 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))))) begin
        img_data_stream_2_V_write = ap_const_logic_1;
    end else begin
        img_data_stream_2_V_write = ap_const_logic_0;
    end
end

/// p_Val2_s_phi_fu_245_p4 assign process. ///
always @ (INPUT_STREAM_TDATA or brmerge_fu_344_p2 or axi_data_V_1_phi_fu_198_p4 or ap_reg_phiprechg_p_Val2_s_reg_241pp1_it0 or ap_sig_bdd_229)
begin
    if (ap_sig_bdd_229) begin
        if (~(ap_const_lv1_0 == brmerge_fu_344_p2)) begin
            p_Val2_s_phi_fu_245_p4 = axi_data_V_1_phi_fu_198_p4;
        end else if ((ap_const_lv1_0 == brmerge_fu_344_p2)) begin
            p_Val2_s_phi_fu_245_p4 = INPUT_STREAM_TDATA;
        end else begin
            p_Val2_s_phi_fu_245_p4 = ap_reg_phiprechg_p_Val2_s_reg_241pp1_it0;
        end
    end else begin
        p_Val2_s_phi_fu_245_p4 = ap_reg_phiprechg_p_Val2_s_reg_241pp1_it0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_CS_fsm or INPUT_STREAM_TVALID or ap_sig_bdd_75 or exitcond1_fu_319_p2 or exitcond2_fu_330_p2 or ap_sig_bdd_120 or ap_reg_ppiten_pp1_it0 or ap_sig_bdd_133 or ap_reg_ppiten_pp1_it1 or ap_sig_bdd_163 or eol_3_reg_288 or tmp_user_V_fu_310_p1)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~ap_sig_bdd_75) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : 
        begin
            if ((~(INPUT_STREAM_TVALID == ap_const_logic_0) & (ap_const_lv1_0 == tmp_user_V_fu_310_p1))) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else if ((~(INPUT_STREAM_TVALID == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_user_V_fu_310_p1))) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        ap_ST_st3_fsm_2 : 
        begin
            ap_NS_fsm = ap_ST_st4_fsm_3;
        end
        ap_ST_st4_fsm_3 : 
        begin
            if (~(exitcond1_fu_319_p2 == ap_const_lv1_0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_pp1_stg0_fsm_4;
            end
        end
        ap_ST_pp1_stg0_fsm_4 : 
        begin
            if (~((ap_const_logic_1 == ap_reg_ppiten_pp1_it0) & ~((ap_sig_bdd_120 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_133 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))) & ~(exitcond2_fu_330_p2 == ap_const_lv1_0))) begin
                ap_NS_fsm = ap_ST_pp1_stg0_fsm_4;
            end else if (((ap_const_logic_1 == ap_reg_ppiten_pp1_it0) & ~((ap_sig_bdd_120 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_133 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))) & ~(exitcond2_fu_330_p2 == ap_const_lv1_0))) begin
                ap_NS_fsm = ap_ST_st7_fsm_5;
            end else begin
                ap_NS_fsm = ap_ST_pp1_stg0_fsm_4;
            end
        end
        ap_ST_st7_fsm_5 : 
        begin
            if (((ap_const_lv1_0 == eol_3_reg_288) & ~ap_sig_bdd_163)) begin
                ap_NS_fsm = ap_ST_st7_fsm_5;
            end else if ((~ap_sig_bdd_163 & ~(ap_const_lv1_0 == eol_3_reg_288))) begin
                ap_NS_fsm = ap_ST_st8_fsm_6;
            end else begin
                ap_NS_fsm = ap_ST_st7_fsm_5;
            end
        end
        ap_ST_st8_fsm_6 : 
        begin
            ap_NS_fsm = ap_ST_st4_fsm_3;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_reg_phiprechg_axi_last_V_2_reg_229pp1_it0 = 'bx;
assign ap_reg_phiprechg_eol_2_reg_253pp1_it0 = 'bx;
assign ap_reg_phiprechg_p_Val2_s_reg_241pp1_it0 = 'bx;

/// ap_sig_bdd_101 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_101 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end

/// ap_sig_bdd_112 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_112 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_4]);
end

/// ap_sig_bdd_119 assign process. ///
always @ (exitcond2_fu_330_p2 or brmerge_fu_344_p2)
begin
    ap_sig_bdd_119 = ((exitcond2_fu_330_p2 == ap_const_lv1_0) & (ap_const_lv1_0 == brmerge_fu_344_p2));
end

/// ap_sig_bdd_120 assign process. ///
always @ (INPUT_STREAM_TVALID or exitcond2_fu_330_p2 or brmerge_fu_344_p2)
begin
    ap_sig_bdd_120 = ((INPUT_STREAM_TVALID == ap_const_logic_0) & (exitcond2_fu_330_p2 == ap_const_lv1_0) & (ap_const_lv1_0 == brmerge_fu_344_p2));
end

/// ap_sig_bdd_133 assign process. ///
always @ (img_data_stream_0_V_full_n or img_data_stream_1_V_full_n or img_data_stream_2_V_full_n or exitcond2_reg_431)
begin
    ap_sig_bdd_133 = (((img_data_stream_0_V_full_n == ap_const_logic_0) & (exitcond2_reg_431 == ap_const_lv1_0)) | ((exitcond2_reg_431 == ap_const_lv1_0) & (img_data_stream_1_V_full_n == ap_const_logic_0)) | ((exitcond2_reg_431 == ap_const_lv1_0) & (img_data_stream_2_V_full_n == ap_const_logic_0)));
end

/// ap_sig_bdd_144 assign process. ///
always @ (ap_sig_cseq_ST_pp1_stg0_fsm_4 or ap_sig_bdd_120 or ap_reg_ppiten_pp1_it0 or ap_sig_bdd_133 or ap_reg_ppiten_pp1_it1)
begin
    ap_sig_bdd_144 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_4) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0) & ~((ap_sig_bdd_120 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_133 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))));
end

/// ap_sig_bdd_158 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_158 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_5]);
end

/// ap_sig_bdd_163 assign process. ///
always @ (INPUT_STREAM_TVALID or eol_3_reg_288)
begin
    ap_sig_bdd_163 = ((INPUT_STREAM_TVALID == ap_const_logic_0) & (ap_const_lv1_0 == eol_3_reg_288));
end

/// ap_sig_bdd_181 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_181 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_6]);
end

/// ap_sig_bdd_188 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_188 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end

/// ap_sig_bdd_211 assign process. ///
always @ (exitcond2_fu_330_p2 or brmerge_fu_344_p2)
begin
    ap_sig_bdd_211 = ((exitcond2_fu_330_p2 == ap_const_lv1_0) & ~(ap_const_lv1_0 == brmerge_fu_344_p2));
end

/// ap_sig_bdd_229 assign process. ///
always @ (exitcond2_fu_330_p2 or ap_sig_cseq_ST_pp1_stg0_fsm_4 or ap_reg_ppiten_pp1_it0)
begin
    ap_sig_bdd_229 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_4) & (exitcond2_fu_330_p2 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0));
end

/// ap_sig_bdd_26 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_26 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_75 assign process. ///
always @ (ap_start or ap_done_reg)
begin
    ap_sig_bdd_75 = ((ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_87 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_87 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end
assign axi_last_V_1_mux_fu_356_p2 = (eol_1_phi_fu_187_p4 | not_sof_2_fu_350_p2);
assign brmerge_fu_344_p2 = (sof_1_fu_98 | eol_phi_fu_221_p4);
assign exitcond1_fu_319_p2 = (p_s_reg_173 == img_rows_V_read? 1'b1: 1'b0);
assign exitcond2_fu_330_p2 = (p_1_reg_206 == img_cols_V_read? 1'b1: 1'b0);
assign i_V_fu_324_p2 = (p_s_reg_173 + ap_const_lv12_1);
assign img_data_stream_0_V_din = tmp_60_reg_444;
assign img_data_stream_1_V_din = tmp_12_reg_449;
assign img_data_stream_2_V_din = tmp_14_reg_454;
assign j_V_fu_335_p2 = (p_1_reg_206 + ap_const_lv12_1);
assign not_sof_2_fu_350_p2 = (sof_1_fu_98 ^ ap_const_lv1_1);
assign tmp_60_fu_363_p1 = p_Val2_s_phi_fu_245_p4[7:0];
assign tmp_user_V_fu_310_p1 = INPUT_STREAM_TUSER;


endmodule //sobel_AXIvideo2Mat

