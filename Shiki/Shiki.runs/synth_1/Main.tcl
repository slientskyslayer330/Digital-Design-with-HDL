# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/Vi27_2/Shiki/Shiki.cache/wt [current_project]
set_property parent.project_path D:/Vi27_2/Shiki/Shiki.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_vhdl -library xil_defaultlib {
  D:/Vi27_2/Shiki/Shiki.srcs/sources_1/new/HextoDec.vhd
  D:/Vi27_2/Shiki/Shiki.srcs/sources_1/new/down_counter.vhd
  D:/Vi27_2/Shiki/Shiki.srcs/sources_1/new/clk_divider.vhd
  D:/Vi27_2/Shiki/Shiki.srcs/sources_1/new/Main.vhd
}
read_xdc {{D:/Vi27_2/Shiki/Shiki.srcs/constrs_1/imports/Vivado Cheat sheet/Ready.xdc}}
set_property used_in_implementation false [get_files {{D:/Vi27_2/Shiki/Shiki.srcs/constrs_1/imports/Vivado Cheat sheet/Ready.xdc}}]

synth_design -top Main -part xc7a100tcsg324-1
write_checkpoint -noxdef Main.dcp
catch { report_utilization -file Main_utilization_synth.rpt -pb Main_utilization_synth.pb }