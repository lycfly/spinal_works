###################### clk_gating_ctrl
set_dont_touch [get_cells u_kws_top/u_clk_gating_ctrl/u_buffer]

###################### MFCC
set_dont_touch [get_cells u_kws_top/u_mfcc_top/u_FFT/SU1/DB1/genblk1*.u_mem64_32/u_DEL*]
set_dont_touch [get_cells u_kws_top/u_mfcc_top/u_FFT/SU1/DB1/genblk1*.u_mem64_32/memrow*]

set_dont_touch [get_cells u_kws_top/u_mfcc_top/u_FFT/SU1/DB2/genblk1*.u_mem32_32/u_DEL*]
set_dont_touch [get_cells u_kws_top/u_mfcc_top/u_FFT/SU1/DB2/genblk1*.u_mem32_32/memrow*]

set_dont_touch [get_cells u_kws_top/u_mfcc_top/u_FFT/SU2/DB1/genblk1*.u_mem16_32/u_DEL*]
set_dont_touch [get_cells u_kws_top/u_mfcc_top/u_FFT/SU2/DB1/genblk1*.u_mem16_32/memrow*]


set_dont_touch [get_cells u_kws_top/u_mfcc_top/u_mel_top/u_mem10_46_even/u_DEL*]
set_dont_touch [get_cells u_kws_top/u_mfcc_top/u_mel_top/u_mem10_46_even/memrow*]


set_dont_touch [get_cells u_kws_top/u_mfcc_top/u_mel_top/u_mem10_46_odd/u_DEL*]
set_dont_touch [get_cells u_kws_top/u_mfcc_top/u_mel_top/u_mem10_46_odd/memrow*]



set_dont_touch [get_cells u_kws_top/u_mfcc_top/u_mel_top/u_frame/u_mem10_32_odd/u_DEL*]
set_dont_touch [get_cells u_kws_top/u_mfcc_top/u_mel_top/u_frame/u_mem10_32_odd/memrow*]




set_dont_touch [get_cells u_kws_top/u_mfcc_top/u_mel_top/u_frame/u_mem10_32_even/u_DEL*]
set_dont_touch [get_cells u_kws_top/u_mfcc_top/u_mel_top/u_frame/u_mem10_32_even/memrow*]

################################ NN ######################################
set_dont_touch [get_cells u_kws_top/u_nn_top/u_mem110_8/u_DEL*]
set_dont_touch [get_cells u_kws_top/u_nn_top/u_mem110_8/memrow*]


set_dont_touch [get_cells u_kws_top/u_nn_top/u_mem116_48/u_DEL*]
set_dont_touch [get_cells u_kws_top/u_nn_top/u_mem116_48/memrow*]

set_dont_touch [get_cells u_kws_top/u_nn_top/u_mem192_15/u_DEL*]
set_dont_touch [get_cells u_kws_top/u_nn_top/u_mem192_15/memrow*]

set_dont_touch [get_cells u_kws_top/u_nn_top/u_mem280_48/u_DEL*]
set_dont_touch [get_cells u_kws_top/u_nn_top/u_mem280_48/memrow*]




########################### post #########################################
set_dont_touch [get_cells u_kws_top/u_post_top/u0_mem15_18/u_DEL*]
set_dont_touch [get_cells u_kws_top/u_post_top/u0_mem15_18/memrow*]

set_dont_touch [get_cells u_kws_top/u_post_top/u1_mem15_18/u_DEL*]
set_dont_touch [get_cells u_kws_top/u_post_top/u1_mem15_18/memrow*]

set_dont_touch [get_cells u_kws_top/u_post_top/u0_mem20_18/u_DEL*]
set_dont_touch [get_cells u_kws_top/u_post_top/u0_mem20_18/memrow*]

set_dont_touch [get_cells u_kws_top/u_post_top/u1_mem20_18/u_DEL*]
set_dont_touch [get_cells u_kws_top/u_post_top/u1_mem20_18/memrow*]



