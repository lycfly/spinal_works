###################################################################

# Created by write_sdc on Sun Nov 28 21:05:56 2021

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_max_capacitance 0.4 [current_design]
set_max_fanout 20 [current_design]
set_max_transition 2 [current_design]
set_load -pin_load 0.05 [get_ports res_vld]
set_load -pin_load 0.05 [get_ports {res[9]}]
set_load -pin_load 0.05 [get_ports {res[8]}]
set_load -pin_load 0.05 [get_ports {res[7]}]
set_load -pin_load 0.05 [get_ports {res[6]}]
set_load -pin_load 0.05 [get_ports {res[5]}]
set_load -pin_load 0.05 [get_ports {res[4]}]
set_load -pin_load 0.05 [get_ports {res[3]}]
set_load -pin_load 0.05 [get_ports {res[2]}]
set_load -pin_load 0.05 [get_ports {res[1]}]
set_load -pin_load 0.05 [get_ports {res[0]}]
create_clock [get_ports clk]  -period 10  -waveform {0 5}
set_clock_latency 1  [get_clocks clk]
set_clock_latency -source 1  [get_clocks clk]
set_clock_uncertainty 1  [get_clocks clk]
set_clock_transition -min -fall 1 [get_clocks clk]
set_clock_transition -min -rise 1 [get_clocks clk]
set_clock_transition -max -fall 1 [get_clocks clk]
set_clock_transition -max -rise 1 [get_clocks clk]
group_path -name INPUT_GROUP  -from [list [get_ports en] [get_ports vin_vld] [get_ports {v_in_0[7]}]        \
[get_ports {v_in_0[6]}] [get_ports {v_in_0[5]}] [get_ports {v_in_0[4]}]        \
[get_ports {v_in_0[3]}] [get_ports {v_in_0[2]}] [get_ports {v_in_0[1]}]        \
[get_ports {v_in_0[0]}] [get_ports {v_in_1[7]}] [get_ports {v_in_1[6]}]        \
[get_ports {v_in_1[5]}] [get_ports {v_in_1[4]}] [get_ports {v_in_1[3]}]        \
[get_ports {v_in_1[2]}] [get_ports {v_in_1[1]}] [get_ports {v_in_1[0]}]        \
[get_ports {v_in_2[7]}] [get_ports {v_in_2[6]}] [get_ports {v_in_2[5]}]        \
[get_ports {v_in_2[4]}] [get_ports {v_in_2[3]}] [get_ports {v_in_2[2]}]        \
[get_ports {v_in_2[1]}] [get_ports {v_in_2[0]}] [get_ports {v_in_3[7]}]        \
[get_ports {v_in_3[6]}] [get_ports {v_in_3[5]}] [get_ports {v_in_3[4]}]        \
[get_ports {v_in_3[3]}] [get_ports {v_in_3[2]}] [get_ports {v_in_3[1]}]        \
[get_ports {v_in_3[0]}] [get_ports {v_in_4[7]}] [get_ports {v_in_4[6]}]        \
[get_ports {v_in_4[5]}] [get_ports {v_in_4[4]}] [get_ports {v_in_4[3]}]        \
[get_ports {v_in_4[2]}] [get_ports {v_in_4[1]}] [get_ports {v_in_4[0]}]        \
[get_ports {v_in_5[7]}] [get_ports {v_in_5[6]}] [get_ports {v_in_5[5]}]        \
[get_ports {v_in_5[4]}] [get_ports {v_in_5[3]}] [get_ports {v_in_5[2]}]        \
[get_ports {v_in_5[1]}] [get_ports {v_in_5[0]}] [get_ports {v_in_6[7]}]        \
[get_ports {v_in_6[6]}] [get_ports {v_in_6[5]}] [get_ports {v_in_6[4]}]        \
[get_ports {v_in_6[3]}] [get_ports {v_in_6[2]}] [get_ports {v_in_6[1]}]        \
[get_ports {v_in_6[0]}] [get_ports {v_in_7[7]}] [get_ports {v_in_7[6]}]        \
[get_ports {v_in_7[5]}] [get_ports {v_in_7[4]}] [get_ports {v_in_7[3]}]        \
[get_ports {v_in_7[2]}] [get_ports {v_in_7[1]}] [get_ports {v_in_7[0]}]        \
[get_ports clk] [get_ports resetn]]
group_path -name OUTPUT_GROUP  -to [list [get_ports res_vld] [get_ports {res[9]}] [get_ports {res[8]}]       \
[get_ports {res[7]}] [get_ports {res[6]}] [get_ports {res[5]}] [get_ports      \
{res[4]}] [get_ports {res[3]}] [get_ports {res[2]}] [get_ports {res[1]}]       \
[get_ports {res[0]}]]
set_input_delay -clock clk  4  [get_ports en]
set_input_delay -clock clk  4  [get_ports vin_vld]
set_input_delay -clock clk  4  [get_ports {v_in_0[7]}]
set_input_delay -clock clk  4  [get_ports {v_in_0[6]}]
set_input_delay -clock clk  4  [get_ports {v_in_0[5]}]
set_input_delay -clock clk  4  [get_ports {v_in_0[4]}]
set_input_delay -clock clk  4  [get_ports {v_in_0[3]}]
set_input_delay -clock clk  4  [get_ports {v_in_0[2]}]
set_input_delay -clock clk  4  [get_ports {v_in_0[1]}]
set_input_delay -clock clk  4  [get_ports {v_in_0[0]}]
set_input_delay -clock clk  4  [get_ports {v_in_1[7]}]
set_input_delay -clock clk  4  [get_ports {v_in_1[6]}]
set_input_delay -clock clk  4  [get_ports {v_in_1[5]}]
set_input_delay -clock clk  4  [get_ports {v_in_1[4]}]
set_input_delay -clock clk  4  [get_ports {v_in_1[3]}]
set_input_delay -clock clk  4  [get_ports {v_in_1[2]}]
set_input_delay -clock clk  4  [get_ports {v_in_1[1]}]
set_input_delay -clock clk  4  [get_ports {v_in_1[0]}]
set_input_delay -clock clk  4  [get_ports {v_in_2[7]}]
set_input_delay -clock clk  4  [get_ports {v_in_2[6]}]
set_input_delay -clock clk  4  [get_ports {v_in_2[5]}]
set_input_delay -clock clk  4  [get_ports {v_in_2[4]}]
set_input_delay -clock clk  4  [get_ports {v_in_2[3]}]
set_input_delay -clock clk  4  [get_ports {v_in_2[2]}]
set_input_delay -clock clk  4  [get_ports {v_in_2[1]}]
set_input_delay -clock clk  4  [get_ports {v_in_2[0]}]
set_input_delay -clock clk  4  [get_ports {v_in_3[7]}]
set_input_delay -clock clk  4  [get_ports {v_in_3[6]}]
set_input_delay -clock clk  4  [get_ports {v_in_3[5]}]
set_input_delay -clock clk  4  [get_ports {v_in_3[4]}]
set_input_delay -clock clk  4  [get_ports {v_in_3[3]}]
set_input_delay -clock clk  4  [get_ports {v_in_3[2]}]
set_input_delay -clock clk  4  [get_ports {v_in_3[1]}]
set_input_delay -clock clk  4  [get_ports {v_in_3[0]}]
set_input_delay -clock clk  4  [get_ports {v_in_4[7]}]
set_input_delay -clock clk  4  [get_ports {v_in_4[6]}]
set_input_delay -clock clk  4  [get_ports {v_in_4[5]}]
set_input_delay -clock clk  4  [get_ports {v_in_4[4]}]
set_input_delay -clock clk  4  [get_ports {v_in_4[3]}]
set_input_delay -clock clk  4  [get_ports {v_in_4[2]}]
set_input_delay -clock clk  4  [get_ports {v_in_4[1]}]
set_input_delay -clock clk  4  [get_ports {v_in_4[0]}]
set_input_delay -clock clk  4  [get_ports {v_in_5[7]}]
set_input_delay -clock clk  4  [get_ports {v_in_5[6]}]
set_input_delay -clock clk  4  [get_ports {v_in_5[5]}]
set_input_delay -clock clk  4  [get_ports {v_in_5[4]}]
set_input_delay -clock clk  4  [get_ports {v_in_5[3]}]
set_input_delay -clock clk  4  [get_ports {v_in_5[2]}]
set_input_delay -clock clk  4  [get_ports {v_in_5[1]}]
set_input_delay -clock clk  4  [get_ports {v_in_5[0]}]
set_input_delay -clock clk  4  [get_ports {v_in_6[7]}]
set_input_delay -clock clk  4  [get_ports {v_in_6[6]}]
set_input_delay -clock clk  4  [get_ports {v_in_6[5]}]
set_input_delay -clock clk  4  [get_ports {v_in_6[4]}]
set_input_delay -clock clk  4  [get_ports {v_in_6[3]}]
set_input_delay -clock clk  4  [get_ports {v_in_6[2]}]
set_input_delay -clock clk  4  [get_ports {v_in_6[1]}]
set_input_delay -clock clk  4  [get_ports {v_in_6[0]}]
set_input_delay -clock clk  4  [get_ports {v_in_7[7]}]
set_input_delay -clock clk  4  [get_ports {v_in_7[6]}]
set_input_delay -clock clk  4  [get_ports {v_in_7[5]}]
set_input_delay -clock clk  4  [get_ports {v_in_7[4]}]
set_input_delay -clock clk  4  [get_ports {v_in_7[3]}]
set_input_delay -clock clk  4  [get_ports {v_in_7[2]}]
set_input_delay -clock clk  4  [get_ports {v_in_7[1]}]
set_input_delay -clock clk  4  [get_ports {v_in_7[0]}]
set_input_delay -clock clk  4  [get_ports resetn]
set_output_delay -clock clk  6  [get_ports res_vld]
set_output_delay -clock clk  6  [get_ports {res[9]}]
set_output_delay -clock clk  6  [get_ports {res[8]}]
set_output_delay -clock clk  6  [get_ports {res[7]}]
set_output_delay -clock clk  6  [get_ports {res[6]}]
set_output_delay -clock clk  6  [get_ports {res[5]}]
set_output_delay -clock clk  6  [get_ports {res[4]}]
set_output_delay -clock clk  6  [get_ports {res[3]}]
set_output_delay -clock clk  6  [get_ports {res[2]}]
set_output_delay -clock clk  6  [get_ports {res[1]}]
set_output_delay -clock clk  6  [get_ports {res[0]}]
set_input_transition -max 1  [get_ports en]
set_input_transition -min 1  [get_ports en]
set_input_transition -max 1  [get_ports vin_vld]
set_input_transition -min 1  [get_ports vin_vld]
set_input_transition -max 1  [get_ports {v_in_0[7]}]
set_input_transition -min 1  [get_ports {v_in_0[7]}]
set_input_transition -max 1  [get_ports {v_in_0[6]}]
set_input_transition -min 1  [get_ports {v_in_0[6]}]
set_input_transition -max 1  [get_ports {v_in_0[5]}]
set_input_transition -min 1  [get_ports {v_in_0[5]}]
set_input_transition -max 1  [get_ports {v_in_0[4]}]
set_input_transition -min 1  [get_ports {v_in_0[4]}]
set_input_transition -max 1  [get_ports {v_in_0[3]}]
set_input_transition -min 1  [get_ports {v_in_0[3]}]
set_input_transition -max 1  [get_ports {v_in_0[2]}]
set_input_transition -min 1  [get_ports {v_in_0[2]}]
set_input_transition -max 1  [get_ports {v_in_0[1]}]
set_input_transition -min 1  [get_ports {v_in_0[1]}]
set_input_transition -max 1  [get_ports {v_in_0[0]}]
set_input_transition -min 1  [get_ports {v_in_0[0]}]
set_input_transition -max 1  [get_ports {v_in_1[7]}]
set_input_transition -min 1  [get_ports {v_in_1[7]}]
set_input_transition -max 1  [get_ports {v_in_1[6]}]
set_input_transition -min 1  [get_ports {v_in_1[6]}]
set_input_transition -max 1  [get_ports {v_in_1[5]}]
set_input_transition -min 1  [get_ports {v_in_1[5]}]
set_input_transition -max 1  [get_ports {v_in_1[4]}]
set_input_transition -min 1  [get_ports {v_in_1[4]}]
set_input_transition -max 1  [get_ports {v_in_1[3]}]
set_input_transition -min 1  [get_ports {v_in_1[3]}]
set_input_transition -max 1  [get_ports {v_in_1[2]}]
set_input_transition -min 1  [get_ports {v_in_1[2]}]
set_input_transition -max 1  [get_ports {v_in_1[1]}]
set_input_transition -min 1  [get_ports {v_in_1[1]}]
set_input_transition -max 1  [get_ports {v_in_1[0]}]
set_input_transition -min 1  [get_ports {v_in_1[0]}]
set_input_transition -max 1  [get_ports {v_in_2[7]}]
set_input_transition -min 1  [get_ports {v_in_2[7]}]
set_input_transition -max 1  [get_ports {v_in_2[6]}]
set_input_transition -min 1  [get_ports {v_in_2[6]}]
set_input_transition -max 1  [get_ports {v_in_2[5]}]
set_input_transition -min 1  [get_ports {v_in_2[5]}]
set_input_transition -max 1  [get_ports {v_in_2[4]}]
set_input_transition -min 1  [get_ports {v_in_2[4]}]
set_input_transition -max 1  [get_ports {v_in_2[3]}]
set_input_transition -min 1  [get_ports {v_in_2[3]}]
set_input_transition -max 1  [get_ports {v_in_2[2]}]
set_input_transition -min 1  [get_ports {v_in_2[2]}]
set_input_transition -max 1  [get_ports {v_in_2[1]}]
set_input_transition -min 1  [get_ports {v_in_2[1]}]
set_input_transition -max 1  [get_ports {v_in_2[0]}]
set_input_transition -min 1  [get_ports {v_in_2[0]}]
set_input_transition -max 1  [get_ports {v_in_3[7]}]
set_input_transition -min 1  [get_ports {v_in_3[7]}]
set_input_transition -max 1  [get_ports {v_in_3[6]}]
set_input_transition -min 1  [get_ports {v_in_3[6]}]
set_input_transition -max 1  [get_ports {v_in_3[5]}]
set_input_transition -min 1  [get_ports {v_in_3[5]}]
set_input_transition -max 1  [get_ports {v_in_3[4]}]
set_input_transition -min 1  [get_ports {v_in_3[4]}]
set_input_transition -max 1  [get_ports {v_in_3[3]}]
set_input_transition -min 1  [get_ports {v_in_3[3]}]
set_input_transition -max 1  [get_ports {v_in_3[2]}]
set_input_transition -min 1  [get_ports {v_in_3[2]}]
set_input_transition -max 1  [get_ports {v_in_3[1]}]
set_input_transition -min 1  [get_ports {v_in_3[1]}]
set_input_transition -max 1  [get_ports {v_in_3[0]}]
set_input_transition -min 1  [get_ports {v_in_3[0]}]
set_input_transition -max 1  [get_ports {v_in_4[7]}]
set_input_transition -min 1  [get_ports {v_in_4[7]}]
set_input_transition -max 1  [get_ports {v_in_4[6]}]
set_input_transition -min 1  [get_ports {v_in_4[6]}]
set_input_transition -max 1  [get_ports {v_in_4[5]}]
set_input_transition -min 1  [get_ports {v_in_4[5]}]
set_input_transition -max 1  [get_ports {v_in_4[4]}]
set_input_transition -min 1  [get_ports {v_in_4[4]}]
set_input_transition -max 1  [get_ports {v_in_4[3]}]
set_input_transition -min 1  [get_ports {v_in_4[3]}]
set_input_transition -max 1  [get_ports {v_in_4[2]}]
set_input_transition -min 1  [get_ports {v_in_4[2]}]
set_input_transition -max 1  [get_ports {v_in_4[1]}]
set_input_transition -min 1  [get_ports {v_in_4[1]}]
set_input_transition -max 1  [get_ports {v_in_4[0]}]
set_input_transition -min 1  [get_ports {v_in_4[0]}]
set_input_transition -max 1  [get_ports {v_in_5[7]}]
set_input_transition -min 1  [get_ports {v_in_5[7]}]
set_input_transition -max 1  [get_ports {v_in_5[6]}]
set_input_transition -min 1  [get_ports {v_in_5[6]}]
set_input_transition -max 1  [get_ports {v_in_5[5]}]
set_input_transition -min 1  [get_ports {v_in_5[5]}]
set_input_transition -max 1  [get_ports {v_in_5[4]}]
set_input_transition -min 1  [get_ports {v_in_5[4]}]
set_input_transition -max 1  [get_ports {v_in_5[3]}]
set_input_transition -min 1  [get_ports {v_in_5[3]}]
set_input_transition -max 1  [get_ports {v_in_5[2]}]
set_input_transition -min 1  [get_ports {v_in_5[2]}]
set_input_transition -max 1  [get_ports {v_in_5[1]}]
set_input_transition -min 1  [get_ports {v_in_5[1]}]
set_input_transition -max 1  [get_ports {v_in_5[0]}]
set_input_transition -min 1  [get_ports {v_in_5[0]}]
set_input_transition -max 1  [get_ports {v_in_6[7]}]
set_input_transition -min 1  [get_ports {v_in_6[7]}]
set_input_transition -max 1  [get_ports {v_in_6[6]}]
set_input_transition -min 1  [get_ports {v_in_6[6]}]
set_input_transition -max 1  [get_ports {v_in_6[5]}]
set_input_transition -min 1  [get_ports {v_in_6[5]}]
set_input_transition -max 1  [get_ports {v_in_6[4]}]
set_input_transition -min 1  [get_ports {v_in_6[4]}]
set_input_transition -max 1  [get_ports {v_in_6[3]}]
set_input_transition -min 1  [get_ports {v_in_6[3]}]
set_input_transition -max 1  [get_ports {v_in_6[2]}]
set_input_transition -min 1  [get_ports {v_in_6[2]}]
set_input_transition -max 1  [get_ports {v_in_6[1]}]
set_input_transition -min 1  [get_ports {v_in_6[1]}]
set_input_transition -max 1  [get_ports {v_in_6[0]}]
set_input_transition -min 1  [get_ports {v_in_6[0]}]
set_input_transition -max 1  [get_ports {v_in_7[7]}]
set_input_transition -min 1  [get_ports {v_in_7[7]}]
set_input_transition -max 1  [get_ports {v_in_7[6]}]
set_input_transition -min 1  [get_ports {v_in_7[6]}]
set_input_transition -max 1  [get_ports {v_in_7[5]}]
set_input_transition -min 1  [get_ports {v_in_7[5]}]
set_input_transition -max 1  [get_ports {v_in_7[4]}]
set_input_transition -min 1  [get_ports {v_in_7[4]}]
set_input_transition -max 1  [get_ports {v_in_7[3]}]
set_input_transition -min 1  [get_ports {v_in_7[3]}]
set_input_transition -max 1  [get_ports {v_in_7[2]}]
set_input_transition -min 1  [get_ports {v_in_7[2]}]
set_input_transition -max 1  [get_ports {v_in_7[1]}]
set_input_transition -min 1  [get_ports {v_in_7[1]}]
set_input_transition -max 1  [get_ports {v_in_7[0]}]
set_input_transition -min 1  [get_ports {v_in_7[0]}]
set_input_transition -max 1  [get_ports resetn]
set_input_transition -min 1  [get_ports resetn]
set_clock_gating_check -rise -setup 0 [get_cells clk_gate_ph_now_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells clk_gate_ph_now_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells clk_gate_ph_now_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells clk_gate_ph_now_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
clk_gate_LastA2stZero_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
clk_gate_LastA2stZero_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
clk_gate_LastA2stZero_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
clk_gate_LastA2stZero_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
cordic/clk_gate_res_rg_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
cordic/clk_gate_res_rg_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
cordic/clk_gate_res_rg_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
cordic/clk_gate_res_rg_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
cordic/clk_gate_xn_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
cordic/clk_gate_xn_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
cordic/clk_gate_xn_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
cordic/clk_gate_xn_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
dot/clk_gate_psum2_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
dot/clk_gate_psum2_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
dot/clk_gate_psum2_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
dot/clk_gate_psum2_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
calvn/clk_gate_SumXinReg_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
calvn/clk_gate_SumXinReg_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
calvn/clk_gate_SumXinReg_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
calvn/clk_gate_SumXinReg_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
calvn/clk_gate_VnReg_4_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
calvn/clk_gate_VnReg_4_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
calvn/clk_gate_VnReg_4_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
calvn/clk_gate_VnReg_4_reg/main_gate]