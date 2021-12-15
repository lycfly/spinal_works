set date 0304_0923
set top_design oct_top
source -e -v ./outputs/${date}/dc_setup_subset.tcl
#source ./scripts/dc_setup.tcl
read_ddc ./outputs/${date}/${top_design}.ddc
set upf_create_implicit_supply_sets false
#load_upf ./outputs/${date}/${top_design}.upf 
link
source -e -v "/home/soc/luyc18/1_On_chip_learn-v2/5-PT/fix_hold_in_dc.tcl"
write -format verilog -hierarchy -output ./outputs/${date}/${top_design}_no_hold.v

