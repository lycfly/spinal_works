###################################################################

# Created by write_sdc on Sun Nov 28 20:51:37 2021

###################################################################
set sdc_version 2.0

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
