# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param chipscope.maxJobs 2
create_project -in_memory -part xc7s100fgga676-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.cache/wt [current_project]
set_property parent.project_path C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
set_property include_dirs {
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/inc/trigger_src
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/bundles/mDOM_trig_bundle
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/bundles/mDOM_wvb_conf_bundle
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/bundles/mDOM_wvb_hdr_bundle_0
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/bundles/mDOM_wvb_hdr_bundle_1
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/bundles/mDOM_wvb_hdr_bundle_2
} [current_fileset]
read_verilog -library xil_defaultlib {
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/DDR3/DDR3_DPRAM_transfer.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/DDR3/DDR3_pg_transfer_ctrl.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/DDR3/DDR3_pg_transfer_mux.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/adc3424_clk_IO/adc3424_clk_IO.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/adc_discr_channel/adc_discr_channel.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/afe_pulser/afe_pulser.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/cmp/cmp.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/crc16_64b_parallel/crc16_64b_parallel.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/crc16_8b_parallel/crc16_8b_parallel.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/crs_master/crs_master.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/discr_scaler/discr_scaler.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/err_mngr/err_mngr.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/ft232r_hs/ft232r_hs.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/ft232r_proc_buffered/ft232r_proc_buffered.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/hbuf_ctrl/hbuf_ctrl.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/icm_time_transfer/icm_ltc_des.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/icm_time_transfer/icm_time_transfer.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/discr_scaler/inhibit_generator_1b.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/discr_scaler/inhibit_generator_8b.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/iter_integer_linear_cal/iter_integer_linear_calc.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/knight_rider/knight_rider.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/local_time_counter/local_time_counter.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/bundles/mDOM_trig_bundle/mDOM_trig_bundle_fan_in.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/bundles/mDOM_trig_bundle/mDOM_trig_bundle_fan_out.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/bundles/mDOM_wvb_conf_bundle/mDOM_wvb_conf_bundle_fan_in.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/bundles/mDOM_wvb_conf_bundle/mDOM_wvb_conf_bundle_fan_out.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/bundles/mDOM_wvb_hdr_bundle_1/mDOM_wvb_hdr_bundle_1_fan_in.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/bundles/mDOM_wvb_hdr_bundle_1/mDOM_wvb_hdr_bundle_1_fan_out.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/bundles/mDOM_wvb_hdr_bundle_2/mDOM_wvb_hdr_bundle_2_fan_in.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/bundles/mDOM_wvb_hdr_bundle_2/mDOM_wvb_hdr_bundle_2_fan_out.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/mdom_trigger/mdom_trigger.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/n_channel_mux/n_channel_mux.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/negedge_detector/negedge_detector.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/one_shot/one_shot.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/periodic_trigger_gen/periodic_trigger_gen.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/posedge_detector/posedge_detector.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/pretrigger_buffer/pretrigger_buffer.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/rs232_des/rs232_des.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/rs232_ser/rs232_ser.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/serial_ck/serial_ck.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/serial_rx/serial_rx.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/serial_tx/serial_tx.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/spi_master/spi_master.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/sync/sync.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/task_reg/task_reg.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/uart_proc_hs/uart_proc_hs.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/waveform_acquisition/waveform_acquisition.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/waveform_buffer/waveform_buffer.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/waveform_buffer_storage/waveform_buffer_storage.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/waveform_buffer/wvb_overflow_ctrl.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/waveform_buffer/wvb_rd_addr_ctrl.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/wvb_rd_ctrl/wvb_rd_ctrl_fmt_0.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/wvb_reader/wvb_reader.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/wvb_wr_ctrl/wvb_wr_ctrl.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/xdom/xdom.v
  C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/hdl/mdommb_fw_rev1_top.v
}
read_ip -quiet C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/BUFFER_1024_22/BUFFER_1024_22.xci
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/BUFFER_1024_22/BUFFER_1024_22_ooc.xdc]

read_ip -quiet C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/DIRECT_RDOUT_DPRAM/DIRECT_RDOUT_DPRAM.xci
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/DIRECT_RDOUT_DPRAM/DIRECT_RDOUT_DPRAM_ooc.xdc]

read_ip -quiet C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/DIST_BUFFER_32_22/DIST_BUFFER_32_22.xci
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/DIST_BUFFER_32_22/DIST_BUFFER_32_22_ooc.xdc]

read_ip -quiet C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/FIFO_2048_32/FIFO_2048_32.xci
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/FIFO_2048_32/FIFO_2048_32.xdc]
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/FIFO_2048_32/FIFO_2048_32_ooc.xdc]

read_ip -quiet C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/FIFO_256_72/FIFO_256_72.xci
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/FIFO_256_72/FIFO_256_72.xdc]
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/FIFO_256_72/FIFO_256_72_ooc.xdc]

read_ip -quiet C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/XDOM_DDR3_PG/XDOM_DDR3_PG.xci
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/XDOM_DDR3_PG/XDOM_DDR3_PG_ooc.xdc]

read_ip -quiet C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/lclk_adcclk_wiz/lclk_adcclk_wiz.xci
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/lclk_adcclk_wiz/lclk_adcclk_wiz_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/lclk_adcclk_wiz/lclk_adcclk_wiz.xdc]
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/lclk_adcclk_wiz/lclk_adcclk_wiz_late.xdc]
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/lclk_adcclk_wiz/lclk_adcclk_wiz_ooc.xdc]

read_ip -quiet C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/idelay_discr_clk_wiz/idelay_discr_clk_wiz.xci
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/idelay_discr_clk_wiz/idelay_discr_clk_wiz_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/idelay_discr_clk_wiz/idelay_discr_clk_wiz.xdc]
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/idelay_discr_clk_wiz/idelay_discr_clk_wiz_late.xdc]
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/idelay_discr_clk_wiz/idelay_discr_clk_wiz_ooc.xdc]

read_ip -quiet C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/ADC_SERDES/ADC_SERDES.xci
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/ADC_SERDES/ADC_SERDES_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/ADC_SERDES/ADC_SERDES.xdc]

read_ip -quiet C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/DISCR_SERDES/DISCR_SERDES.xci
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/DISCR_SERDES/DISCR_SERDES_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/DISCR_SERDES/DISCR_SERDES.xdc]

read_ip -quiet C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/AFE_PULSER_OUTPUT/AFE_PULSER_OUTPUT.xci
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/AFE_PULSER_OUTPUT/AFE_PULSER_OUTPUT_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/AFE_PULSER_OUTPUT/AFE_PULSER_OUTPUT.xdc]

read_ip -quiet C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/mig_7series_0/mig_7series_0.xci
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/constraints/mig_7series_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/constraints/mig_7series_0_ooc.xdc]

read_ip -quiet C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/HBUF_RDOUT_DPRAM/HBUF_RDOUT_DPRAM.xci
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/HBUF_RDOUT_DPRAM/HBUF_RDOUT_DPRAM_ooc.xdc]

read_ip -quiet C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/HBUF_DDR3_PG/HBUF_DDR3_PG.xci
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/HBUF_DDR3_PG/HBUF_DDR3_PG_ooc.xdc]

read_ip -quiet C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/ddr3_idelay_clk_wiz/ddr3_idelay_clk_wiz.xci
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/ddr3_idelay_clk_wiz/ddr3_idelay_clk_wiz_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/ddr3_idelay_clk_wiz/ddr3_idelay_clk_wiz.xdc]
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/ddr3_idelay_clk_wiz/ddr3_idelay_clk_wiz_ooc.xdc]

read_ip -quiet C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/FIFO_512_108/FIFO_512_108.xci
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/FIFO_512_108/FIFO_512_108.xdc]
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/FIFO_512_108/FIFO_512_108_ooc.xdc]

read_ip -quiet C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/BUFFER_2048_22/BUFFER_2048_22.xci
set_property used_in_implementation false [get_files -all c:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/BUFFER_2048_22/BUFFER_2048_22_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/constrs/clocks.xdc
set_property used_in_implementation false [get_files C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/constrs/clocks.xdc]

read_xdc C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/constrs/io.xdc
set_property used_in_implementation false [get_files C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/constrs/io.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top top -part xc7s100fgga676-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
