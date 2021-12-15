
    #define_design_lib work -path ./elab
    history keep 500
    set enable_page_mode false
    set sh_enable_page_mode false
    set compile_seqmap_identify_shift_registers false
    set compile_seqmap_identify_shift_registers_with_synchronous_logic false
    set timing_enable_multiple_clocks_per_reg true
    
    set lib_path          "/mnt/mydata/spinal_works/18um/Technology/TSMC/core/synopsys/db/nopower"
    set search_path       ". $lib_path"

    set target_library    "core_slow.db \
                            "
    set synthetic_library "dw_foundation.sldb"

    set link_library      " * \
                           $target_library \
                           $synthetic_library"
    