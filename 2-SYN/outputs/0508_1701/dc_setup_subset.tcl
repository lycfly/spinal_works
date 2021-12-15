define_design_lib work -path ./elab
history keep 500
set enable_page_mode false
set sh_enable_page_mode false
set compile_seqmap_identify_shift_registers false
set compile_seqmap_identify_shift_registers_with_synchronous_logic false
set timing_enable_multiple_clocks_per_reg true

set lib_path "/projects/soc/TECHLIB/TSMC/28nm/T28/tcbn28hpcplusbwp7t35p140_180b/TSMCHOME/digital/Front_End/timing_power_noise/CCS/tcbn28hpcplusbwp7t35p140_180a \
							/projects/soc/TECHLIB/TSMC/28nm/T28/tcbn28hpcplusbwp7t40p140ehvt_170a/TSMCHOME/digital/Front_End/timing_power_noise/CCS/tcbn28hpcplusbwp7t40p140ehvt_170a \
              /home/soc/lumy17/2020-03-29_debug/bcwj/bc_0413/lib_setup_KWS/db/std/wcl_ud \
				  		/home/soc/wucj/2020-01-KWS_AVS_v1-Backend/lib_setup/db/pmk/wcl_ud \
              /home/soc/wucj/2020-11-Graduation/0-lib_setup/7t30p_hvt \
							/home/soc/wucj/2020-11-Graduation/0-lib_setup/7t35p_svt \
							/home/soc/wucj/2020-11-Graduation/0-lib_setup/7t40p_ehvt \
              /home/soc/luyc18/1_On_chip_learn-v2/2-SYN/sram_libs
              "



set search_path       ". $lib_path"

################   ssg0p81v      ################
#set target_library   "tcbn28hpcplusbwp7t35p140ssg0p81v125c_ccs.db \
                         "    



################   ssg0p5v 0p72v ################
set target_library   "  \
	tcbn28hpcplusbwp7t35p140ssg0p5v0c_ccs.db \
	tcbn28hpcplusbwp7t35p140ssg0p72v0c_ccs.db \
	tcbn28hpcplusbwp7t35p140ssg0p5v0p72v0c_ccs.db  \
	tcbn28hpcplusbwp7t40p140ehvttt0p5v0c_ccs.db \
"    

#	tcbn28hpcplusbwp7t40p140ehvttt0p5v0c_ccs.db \

################   sram ssg0p81v ################
#set synthetic_library "dw_foundation.sldb"
#set link_library      " * \
	           	$target_library \
              sram_sp_hsd_ssg_0p81v_0p81v_125c.db \
	         	  $synthetic_library  "





################   sram ssg0p72v ################
set synthetic_library "dw_foundation.sldb"
set link_library      " * \
	           	$target_library \
              $synthetic_library \
              sram_sp_hsd_ssg_0p72v_0p72v_0c.db \
              "

