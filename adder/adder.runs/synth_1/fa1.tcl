# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/KIIT0001/fpga/adder/adder.cache/wt [current_project]
set_property parent.project_path C:/Users/KIIT0001/fpga/adder/adder.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
set_property ip_output_repo c:/Users/KIIT0001/fpga/adder/adder.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib C:/Users/KIIT0001/fpga/adder/adder.srcs/sources_1/new/fa1.v
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/KIIT0001/fpga/adder/adder.srcs/constrs_1/new/fa1.xdc
set_property used_in_implementation false [get_files C:/Users/KIIT0001/fpga/adder/adder.srcs/constrs_1/new/fa1.xdc]


synth_design -top fa1 -part xc7a100tcsg324-1


write_checkpoint -force -noxdef fa1.dcp

catch { report_utilization -file fa1_utilization_synth.rpt -pb fa1_utilization_synth.pb }
