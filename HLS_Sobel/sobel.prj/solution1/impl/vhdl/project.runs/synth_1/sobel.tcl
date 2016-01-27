# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

create_project -in_memory -part xc7z010clg400-1
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/Users/Manu/Desktop/VersionesProyecto/HLS_Sobel/sobel.prj/solution1/impl/vhdl/project.cache/wt [current_project]
set_property parent.project_path D:/Users/Manu/Desktop/VersionesProyecto/HLS_Sobel/sobel.prj/solution1/impl/vhdl/project.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
read_vhdl -library xil_defaultlib {
  D:/Users/Manu/Desktop/VersionesProyecto/HLS_Sobel/sobel.prj/solution1/impl/vhdl/sobel_borderInterpolate.vhd
  D:/Users/Manu/Desktop/VersionesProyecto/HLS_Sobel/sobel.prj/solution1/impl/vhdl/sobel_Filter2D_k_buf_0_val_0.vhd
  D:/Users/Manu/Desktop/VersionesProyecto/HLS_Sobel/sobel.prj/solution1/impl/vhdl/sobel_Filter2D.vhd
  D:/Users/Manu/Desktop/VersionesProyecto/HLS_Sobel/sobel.prj/solution1/impl/vhdl/FIFO_sobel_img_0_cols_V_channel.vhd
  D:/Users/Manu/Desktop/VersionesProyecto/HLS_Sobel/sobel.prj/solution1/impl/vhdl/FIFO_sobel_img_0_cols_V_channel1.vhd
  D:/Users/Manu/Desktop/VersionesProyecto/HLS_Sobel/sobel.prj/solution1/impl/vhdl/FIFO_sobel_img_0_data_stream_0_V.vhd
  D:/Users/Manu/Desktop/VersionesProyecto/HLS_Sobel/sobel.prj/solution1/impl/vhdl/FIFO_sobel_img_0_data_stream_1_V.vhd
  D:/Users/Manu/Desktop/VersionesProyecto/HLS_Sobel/sobel.prj/solution1/impl/vhdl/FIFO_sobel_img_0_data_stream_2_V.vhd
  D:/Users/Manu/Desktop/VersionesProyecto/HLS_Sobel/sobel.prj/solution1/impl/vhdl/FIFO_sobel_img_0_rows_V_channel.vhd
  D:/Users/Manu/Desktop/VersionesProyecto/HLS_Sobel/sobel.prj/solution1/impl/vhdl/FIFO_sobel_img_0_rows_V_channel1.vhd
  D:/Users/Manu/Desktop/VersionesProyecto/HLS_Sobel/sobel.prj/solution1/impl/vhdl/FIFO_sobel_img_1_cols_V.vhd
  D:/Users/Manu/Desktop/VersionesProyecto/HLS_Sobel/sobel.prj/solution1/impl/vhdl/FIFO_sobel_img_1_data_stream_0_V.vhd
  D:/Users/Manu/Desktop/VersionesProyecto/HLS_Sobel/sobel.prj/solution1/impl/vhdl/FIFO_sobel_img_1_data_stream_1_V.vhd
  D:/Users/Manu/Desktop/VersionesProyecto/HLS_Sobel/sobel.prj/solution1/impl/vhdl/FIFO_sobel_img_1_data_stream_2_V.vhd
  D:/Users/Manu/Desktop/VersionesProyecto/HLS_Sobel/sobel.prj/solution1/impl/vhdl/FIFO_sobel_img_1_rows_V.vhd
  D:/Users/Manu/Desktop/VersionesProyecto/HLS_Sobel/sobel.prj/solution1/impl/vhdl/sobel_AXIvideo2Mat.vhd
  D:/Users/Manu/Desktop/VersionesProyecto/HLS_Sobel/sobel.prj/solution1/impl/vhdl/sobel_Block_proc.vhd
  D:/Users/Manu/Desktop/VersionesProyecto/HLS_Sobel/sobel.prj/solution1/impl/vhdl/sobel_Mat2AXIvideo.vhd
  D:/Users/Manu/Desktop/VersionesProyecto/HLS_Sobel/sobel.prj/solution1/impl/vhdl/sobel_Sobel.vhd
  D:/Users/Manu/Desktop/VersionesProyecto/HLS_Sobel/sobel.prj/solution1/impl/vhdl/sobel.vhd
}
read_xdc D:/Users/Manu/Desktop/VersionesProyecto/HLS_Sobel/sobel.prj/solution1/impl/vhdl/sobel.xdc
set_property used_in_implementation false [get_files D:/Users/Manu/Desktop/VersionesProyecto/HLS_Sobel/sobel.prj/solution1/impl/vhdl/sobel.xdc]

catch { write_hwdef -file sobel.hwdef }
synth_design -top sobel -part xc7z010clg400-1 -no_iobuf -mode out_of_context
write_checkpoint -noxdef sobel.dcp
catch { report_utilization -file sobel_utilization_synth.rpt -pb sobel_utilization_synth.pb }