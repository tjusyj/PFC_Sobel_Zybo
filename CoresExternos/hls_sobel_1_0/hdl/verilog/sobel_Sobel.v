// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module sobel_Sobel (
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
        p_dst_data_stream_V_din,
        p_dst_data_stream_V_full_n,
        p_dst_data_stream_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 2'b1;
parameter    ap_ST_st2_fsm_1 = 2'b10;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv3_6 = 3'b110;
parameter    ap_const_lv2_3 = 2'b11;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv2_1 = 2'b1;
parameter    ap_const_lv4_2 = 4'b10;
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
output  [7:0] p_dst_data_stream_V_din;
input   p_dst_data_stream_V_full_n;
output   p_dst_data_stream_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_src_data_stream_V_read;
reg p_dst_data_stream_V_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm = 2'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_21;
reg    ap_sig_bdd_43;
wire    grp_sobel_Filter2D_fu_49_ap_start;
wire    grp_sobel_Filter2D_fu_49_ap_done;
wire    grp_sobel_Filter2D_fu_49_ap_idle;
wire    grp_sobel_Filter2D_fu_49_ap_ready;
wire   [11:0] grp_sobel_Filter2D_fu_49_p_src_rows_V_read;
wire   [11:0] grp_sobel_Filter2D_fu_49_p_src_cols_V_read;
wire   [7:0] grp_sobel_Filter2D_fu_49_p_src_data_stream_V_dout;
wire    grp_sobel_Filter2D_fu_49_p_src_data_stream_V_empty_n;
wire    grp_sobel_Filter2D_fu_49_p_src_data_stream_V_read;
wire   [7:0] grp_sobel_Filter2D_fu_49_p_dst_data_stream_V_din;
wire    grp_sobel_Filter2D_fu_49_p_dst_data_stream_V_full_n;
wire    grp_sobel_Filter2D_fu_49_p_dst_data_stream_V_write;
wire   [2:0] grp_sobel_Filter2D_fu_49_p_kernel_val_0_V_1_read;
wire   [1:0] grp_sobel_Filter2D_fu_49_p_kernel_val_0_V_2_read;
wire   [1:0] grp_sobel_Filter2D_fu_49_p_kernel_val_1_V_0_read;
wire   [2:0] grp_sobel_Filter2D_fu_49_p_kernel_val_1_V_2_read;
wire   [1:0] grp_sobel_Filter2D_fu_49_p_kernel_val_2_V_0_read;
wire   [3:0] grp_sobel_Filter2D_fu_49_p_kernel_val_2_V_1_read;
reg    grp_sobel_Filter2D_fu_49_ap_start_ap_start_reg = 1'b0;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_75;
reg   [1:0] ap_NS_fsm;


sobel_Filter2D grp_sobel_Filter2D_fu_49(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst ),
    .ap_start( grp_sobel_Filter2D_fu_49_ap_start ),
    .ap_done( grp_sobel_Filter2D_fu_49_ap_done ),
    .ap_idle( grp_sobel_Filter2D_fu_49_ap_idle ),
    .ap_ready( grp_sobel_Filter2D_fu_49_ap_ready ),
    .p_src_rows_V_read( grp_sobel_Filter2D_fu_49_p_src_rows_V_read ),
    .p_src_cols_V_read( grp_sobel_Filter2D_fu_49_p_src_cols_V_read ),
    .p_src_data_stream_V_dout( grp_sobel_Filter2D_fu_49_p_src_data_stream_V_dout ),
    .p_src_data_stream_V_empty_n( grp_sobel_Filter2D_fu_49_p_src_data_stream_V_empty_n ),
    .p_src_data_stream_V_read( grp_sobel_Filter2D_fu_49_p_src_data_stream_V_read ),
    .p_dst_data_stream_V_din( grp_sobel_Filter2D_fu_49_p_dst_data_stream_V_din ),
    .p_dst_data_stream_V_full_n( grp_sobel_Filter2D_fu_49_p_dst_data_stream_V_full_n ),
    .p_dst_data_stream_V_write( grp_sobel_Filter2D_fu_49_p_dst_data_stream_V_write ),
    .p_kernel_val_0_V_1_read( grp_sobel_Filter2D_fu_49_p_kernel_val_0_V_1_read ),
    .p_kernel_val_0_V_2_read( grp_sobel_Filter2D_fu_49_p_kernel_val_0_V_2_read ),
    .p_kernel_val_1_V_0_read( grp_sobel_Filter2D_fu_49_p_kernel_val_1_V_0_read ),
    .p_kernel_val_1_V_2_read( grp_sobel_Filter2D_fu_49_p_kernel_val_1_V_2_read ),
    .p_kernel_val_2_V_0_read( grp_sobel_Filter2D_fu_49_p_kernel_val_2_V_0_read ),
    .p_kernel_val_2_V_1_read( grp_sobel_Filter2D_fu_49_p_kernel_val_2_V_1_read )
);



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
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_const_logic_0 == grp_sobel_Filter2D_fu_49_ap_done))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// grp_sobel_Filter2D_fu_49_ap_start_ap_start_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_grp_sobel_Filter2D_fu_49_ap_start_ap_start_reg
    if (ap_rst == 1'b1) begin
        grp_sobel_Filter2D_fu_49_ap_start_ap_start_reg <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_43)) begin
            grp_sobel_Filter2D_fu_49_ap_start_ap_start_reg <= ap_const_logic_1;
        end else if ((ap_const_logic_1 == grp_sobel_Filter2D_fu_49_ap_ready)) begin
            grp_sobel_Filter2D_fu_49_ap_start_ap_start_reg <= ap_const_logic_0;
        end
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or grp_sobel_Filter2D_fu_49_ap_done or ap_sig_cseq_ST_st2_fsm_1)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_const_logic_0 == grp_sobel_Filter2D_fu_49_ap_done)))) begin
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
always @ (grp_sobel_Filter2D_fu_49_ap_done or ap_sig_cseq_ST_st2_fsm_1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_const_logic_0 == grp_sobel_Filter2D_fu_49_ap_done))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_21)
begin
    if (ap_sig_bdd_21) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st2_fsm_1 assign process. ///
always @ (ap_sig_bdd_75)
begin
    if (ap_sig_bdd_75) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

/// p_dst_data_stream_V_write assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or grp_sobel_Filter2D_fu_49_p_dst_data_stream_V_write or ap_sig_cseq_ST_st2_fsm_1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) | (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1))) begin
        p_dst_data_stream_V_write = grp_sobel_Filter2D_fu_49_p_dst_data_stream_V_write;
    end else begin
        p_dst_data_stream_V_write = ap_const_logic_0;
    end
end

/// p_src_data_stream_V_read assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or grp_sobel_Filter2D_fu_49_p_src_data_stream_V_read or ap_sig_cseq_ST_st2_fsm_1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) | (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1))) begin
        p_src_data_stream_V_read = grp_sobel_Filter2D_fu_49_p_src_data_stream_V_read;
    end else begin
        p_src_data_stream_V_read = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_CS_fsm or ap_sig_bdd_43 or grp_sobel_Filter2D_fu_49_ap_done)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~ap_sig_bdd_43) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : 
        begin
            if (~(ap_const_logic_0 == grp_sobel_Filter2D_fu_49_ap_done)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end


/// ap_sig_bdd_21 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_21 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_43 assign process. ///
always @ (ap_start or ap_done_reg)
begin
    ap_sig_bdd_43 = ((ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_75 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_75 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end
assign grp_sobel_Filter2D_fu_49_ap_start = grp_sobel_Filter2D_fu_49_ap_start_ap_start_reg;
assign grp_sobel_Filter2D_fu_49_p_dst_data_stream_V_full_n = p_dst_data_stream_V_full_n;
assign grp_sobel_Filter2D_fu_49_p_kernel_val_0_V_1_read = ap_const_lv3_6;
assign grp_sobel_Filter2D_fu_49_p_kernel_val_0_V_2_read = ap_const_lv2_3;
assign grp_sobel_Filter2D_fu_49_p_kernel_val_1_V_0_read = ap_const_lv2_0;
assign grp_sobel_Filter2D_fu_49_p_kernel_val_1_V_2_read = ap_const_lv3_0;
assign grp_sobel_Filter2D_fu_49_p_kernel_val_2_V_0_read = ap_const_lv2_1;
assign grp_sobel_Filter2D_fu_49_p_kernel_val_2_V_1_read = ap_const_lv4_2;
assign grp_sobel_Filter2D_fu_49_p_src_cols_V_read = p_src_cols_V_read;
assign grp_sobel_Filter2D_fu_49_p_src_data_stream_V_dout = p_src_data_stream_V_dout;
assign grp_sobel_Filter2D_fu_49_p_src_data_stream_V_empty_n = p_src_data_stream_V_empty_n;
assign grp_sobel_Filter2D_fu_49_p_src_rows_V_read = p_src_rows_V_read;
assign p_dst_data_stream_V_din = grp_sobel_Filter2D_fu_49_p_dst_data_stream_V_din;


endmodule //sobel_Sobel

