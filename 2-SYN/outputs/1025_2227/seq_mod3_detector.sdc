###################################################################

# Created by write_sdc on Mon Oct 25 22:30:14 2021

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_max_transition 2 [current_design]
set_max_fanout 20 [current_design]
set_max_capacitance 0.4 [current_design]
set_load -pin_load 0.05 [get_ports success]
create_clock [get_ports clk]  -period 10  -waveform {0 5}
set_clock_latency 1  [get_clocks clk]
set_clock_latency -source 1  [get_clocks clk]
set_clock_uncertainty 1  [get_clocks clk]
set_clock_transition -max -rise 1 [get_clocks clk]
set_clock_transition -max -fall 1 [get_clocks clk]
set_clock_transition -min -rise 1 [get_clocks clk]
set_clock_transition -min -fall 1 [get_clocks clk]
group_path -name INPUT_GROUP  -from [list [get_ports clk] [get_ports rst_n] [get_ports data]]
group_path -name OUTPUT_GROUP  -to [get_ports success]
set_input_delay -clock clk  4  [get_ports rst_n]
set_input_delay -clock clk  4  [get_ports data]
set_output_delay -clock clk  6  [get_ports success]
set_input_transition -max 1  [get_ports rst_n]
set_input_transition -min 1  [get_ports rst_n]
set_input_transition -max 1  [get_ports data]
set_input_transition -min 1  [get_ports data]
