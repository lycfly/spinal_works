// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vcal_phase.h for the primary calling header

#include "Vcal_phase_cal_phase.h"
#include "Vcal_phase__Syms.h"

#include "verilated_dpi.h"

//==========

VL_INLINE_OPT void Vcal_phase_cal_phase::_combo__TOP__cal_phase__1(Vcal_phase__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+      Vcal_phase_cal_phase::_combo__TOP__cal_phase__1\n"); );
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v1gtv2 
        = VL_LTS_III(1,8,8, (IData)(vlTOPp->vin2), (IData)(vlTOPp->vin1));
}

VL_INLINE_OPT void Vcal_phase_cal_phase::_sequent__TOP__cal_phase__4(Vcal_phase__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+      Vcal_phase_cal_phase::_sequent__TOP__cal_phase__4\n"); );
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_en_regNext 
        = vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_en;
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_en_regNext 
        = vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_en;
}

VL_INLINE_OPT void Vcal_phase_cal_phase::_sequent__TOP__cal_phase__6(Vcal_phase__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+      Vcal_phase_cal_phase::_sequent__TOP__cal_phase__6\n"); );
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__psum1 
        = vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1;
    vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__psum2 
        = vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2;
    vlSymsp->TOP__cal_phase.__Vdly__calvn__DOT__min_v 
        = vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__min_v;
    vlSymsp->TOP__cal_phase.__Vdly__calvn__DOT__max_v 
        = vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__max_v;
    vlSymsp->TOP__cal_phase.__Vdly__calvn__DOT__v_cnt 
        = vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt;
    vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_cos__DOT__cal_en 
        = vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_en;
    vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_cos__DOT__cal_cnt 
        = vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_cnt;
    vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__mac_cnt 
        = vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt;
    vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_sin__DOT__cal_cnt 
        = vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_cnt;
    vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_cos__DOT__shiftReg 
        = vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg;
    vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_sin__DOT__cal_en 
        = vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_en;
    vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_sin__DOT__shiftReg 
        = vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg;
    vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__nozero_flg 
        = vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__nozero_flg;
    vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__res_rg 
        = vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_rg;
    vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__yn 
        = vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn;
    vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__xn 
        = vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn;
    vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__cal_cnt 
        = vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt;
    if (vlTOPp->reset) {
        vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_out = 0U;
        vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__finish = 0U;
    } else {
        if (vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_finish_delay) {
            vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_out 
                = (0x3ffU & ((0x400U & (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_rg))
                              ? ((3U != (3U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_rg) 
                                               >> 9U)))
                                  ? 0x200U : (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_rg))
                              : ((0x200U & (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_rg))
                                  ? 0x1ffU : (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_rg))));
        }
        if (vlTOPp->rg_calphase_en) {
            vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__finish 
                = vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_finish_delay;
        }
    }
    if (vlTOPp->reset) {
        vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_3 = 0U;
    } else {
        if (((IData)(vlTOPp->rg_calphase_en) & (IData)(vlTOPp->vin_vld))) {
            if ((8U & ((IData)(1U) << (7U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                                             << 1U))))) {
                vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_3 
                    = vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_8;
            }
            if ((8U & ((IData)(1U) << (7U & ((IData)(1U) 
                                             + ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                                                << 1U)))))) {
                vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_3 
                    = vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_12;
            }
        }
    }
    if (vlTOPp->reset) {
        vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_2 = 0U;
    } else {
        if (((IData)(vlTOPp->rg_calphase_en) & (IData)(vlTOPp->vin_vld))) {
            if ((4U & ((IData)(1U) << (7U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                                             << 1U))))) {
                vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_2 
                    = vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_8;
            }
            if ((4U & ((IData)(1U) << (7U & ((IData)(1U) 
                                             + ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                                                << 1U)))))) {
                vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_2 
                    = vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_12;
            }
        }
    }
    if (vlTOPp->reset) {
        vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_1 = 0U;
    } else {
        if (((IData)(vlTOPp->rg_calphase_en) & (IData)(vlTOPp->vin_vld))) {
            if ((2U & ((IData)(1U) << (7U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                                             << 1U))))) {
                vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_1 
                    = vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_8;
            }
            if ((2U & ((IData)(1U) << (7U & ((IData)(1U) 
                                             + ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                                                << 1U)))))) {
                vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_1 
                    = vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_12;
            }
        }
    }
    if (vlTOPp->reset) {
        vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_5 = 0U;
    } else {
        if (((IData)(vlTOPp->rg_calphase_en) & (IData)(vlTOPp->vin_vld))) {
            if ((0x20U & ((IData)(1U) << (7U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                                                << 1U))))) {
                vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_5 
                    = vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_8;
            }
            if ((0x20U & ((IData)(1U) << (7U & ((IData)(1U) 
                                                + ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                                                   << 1U)))))) {
                vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_5 
                    = vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_12;
            }
        }
    }
    if (vlTOPp->reset) {
        vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_4 = 0U;
    } else {
        if (((IData)(vlTOPp->rg_calphase_en) & (IData)(vlTOPp->vin_vld))) {
            if ((0x10U & ((IData)(1U) << (7U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                                                << 1U))))) {
                vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_4 
                    = vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_8;
            }
            if ((0x10U & ((IData)(1U) << (7U & ((IData)(1U) 
                                                + ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                                                   << 1U)))))) {
                vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_4 
                    = vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_12;
            }
        }
    }
    if (vlTOPp->reset) {
        vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_0 = 0U;
    } else {
        if (((IData)(vlTOPp->rg_calphase_en) & (IData)(vlTOPp->vin_vld))) {
            if ((1U & ((IData)(1U) << (7U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                                             << 1U))))) {
                vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_0 
                    = vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_8;
            }
            if ((1U & ((IData)(1U) << (7U & ((IData)(1U) 
                                             + ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                                                << 1U)))))) {
                vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_0 
                    = vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_12;
            }
        }
    }
    if (vlTOPp->reset) {
        vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_6 = 0U;
    } else {
        if (((IData)(vlTOPp->rg_calphase_en) & (IData)(vlTOPp->vin_vld))) {
            if ((0x40U & ((IData)(1U) << (7U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                                                << 1U))))) {
                vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_6 
                    = vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_8;
            }
            if ((0x40U & ((IData)(1U) << (7U & ((IData)(1U) 
                                                + ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                                                   << 1U)))))) {
                vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_6 
                    = vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_12;
            }
        }
    }
    if (vlTOPp->reset) {
        vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_7 = 0U;
    } else {
        if (((IData)(vlTOPp->rg_calphase_en) & (IData)(vlTOPp->vin_vld))) {
            if ((0x80U & ((IData)(1U) << (7U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                                                << 1U))))) {
                vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_7 
                    = vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_8;
            }
            if ((0x80U & ((IData)(1U) << (7U & ((IData)(1U) 
                                                + ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                                                   << 1U)))))) {
                vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_7 
                    = vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_12;
            }
        }
    }
    if (vlTOPp->reset) {
        vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__psum1 = 0U;
    } else {
        if (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_start) {
            vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__psum1 
                = vlSymsp->TOP__cal_phase.__PVT__dot__DOT__s1;
        } else {
            if (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin_io_dout_vld) {
                vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__psum1 
                    = (0x7ffffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1 
                                   + vlSymsp->TOP__cal_phase.__PVT__dot__DOT__s1));
            }
        }
    }
    if (vlTOPp->reset) {
        vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__psum2 = 0U;
    } else {
        if (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_start) {
            vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__psum2 
                = vlSymsp->TOP__cal_phase.__PVT__dot__DOT__s2;
        } else {
            if (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin_io_dout_vld) {
                vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__psum2 
                    = (0x7ffffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2 
                                   + vlSymsp->TOP__cal_phase.__PVT__dot__DOT__s2));
            }
        }
    }
    if (vlTOPp->reset) {
        vlSymsp->TOP__cal_phase.__Vdly__calvn__DOT__v_cnt = 0U;
        vlSymsp->TOP__cal_phase.__Vdly__calvn__DOT__max_v = 0U;
        vlSymsp->TOP__cal_phase.__Vdly__calvn__DOT__min_v = 0U;
    } else {
        if (((IData)(vlTOPp->rg_calphase_en) & (IData)(vlTOPp->vin_vld))) {
            vlSymsp->TOP__cal_phase.__Vdly__calvn__DOT__v_cnt 
                = ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__data_load_finish)
                    ? 0U : (7U & ((IData)(1U) + (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt))));
            if (vlTOPp->rg_bypass_mean) {
                vlSymsp->TOP__cal_phase.__Vdly__calvn__DOT__max_v = 0U;
                vlSymsp->TOP__cal_phase.__Vdly__calvn__DOT__min_v = 0U;
            } else {
                if ((0U == (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt))) {
                    vlSymsp->TOP__cal_phase.__Vdly__calvn__DOT__max_v 
                        = vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__bigger;
                    vlSymsp->TOP__cal_phase.__Vdly__calvn__DOT__min_v 
                        = vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__smaller;
                } else {
                    if (VL_LTS_III(1,8,8, (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__max_v), (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__bigger))) {
                        vlSymsp->TOP__cal_phase.__Vdly__calvn__DOT__max_v 
                            = vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__bigger;
                    }
                    if (VL_LTS_III(1,8,8, (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__smaller), (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__min_v))) {
                        vlSymsp->TOP__cal_phase.__Vdly__calvn__DOT__min_v 
                            = vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__smaller;
                    }
                }
            }
        }
    }
}

VL_INLINE_OPT void Vcal_phase_cal_phase::_sequent__TOP__cal_phase__7(Vcal_phase__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+      Vcal_phase_cal_phase::_sequent__TOP__cal_phase__7\n"); );
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (vlTOPp->reset) {
        vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_cos__DOT__shiftReg = 0U;
        vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_cos__DOT__cal_cnt = 0U;
        vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_cos__DOT__cal_en = 0U;
    } else {
        if (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_start) {
            vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_cos__DOT__cal_en = 1U;
        } else {
            if ((7U == (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_cnt))) {
                vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_cos__DOT__cal_en = 0U;
            }
        }
        if (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_en) {
            vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_cos__DOT__cal_cnt 
                = (7U & ((IData)(1U) + (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_cnt)));
        } else {
            if (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_start) {
                vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_cos__DOT__cal_cnt = 0U;
            }
        }
        if (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_start) {
            vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_cos__DOT__shiftReg 
                = ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__vin_minus_mean) 
                   << 1U);
        } else {
            if (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_en) {
                vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_cos__DOT__shiftReg 
                    = (((0U == (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__flag_bits)) 
                        | (3U == (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__flag_bits)))
                        ? ((0x10000U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT___zz_3) 
                           | (0xffffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                         >> 1U))) : 
                       ((0x10000U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT___zz_1) 
                                     << 9U)) | (((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT___zz_1) 
                                                 << 8U) 
                                                | (0xffU 
                                                   & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                      >> 1U)))));
            }
        }
    }
    if (vlTOPp->reset) {
        vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_sin__DOT__shiftReg = 0U;
        vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_sin__DOT__cal_cnt = 0U;
        vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_sin__DOT__cal_en = 0U;
    } else {
        if (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_start) {
            vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_sin__DOT__cal_en = 1U;
        } else {
            if ((7U == (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_cnt))) {
                vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_sin__DOT__cal_en = 0U;
            }
        }
        if (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_en) {
            vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_sin__DOT__cal_cnt 
                = (7U & ((IData)(1U) + (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_cnt)));
        } else {
            if (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_start) {
                vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_sin__DOT__cal_cnt = 0U;
            }
        }
        if (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_start) {
            vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_sin__DOT__shiftReg 
                = ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__vin_minus_mean) 
                   << 1U);
        } else {
            if (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_en) {
                vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_sin__DOT__shiftReg 
                    = (((0U == (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__flag_bits)) 
                        | (3U == (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__flag_bits)))
                        ? ((0x10000U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT___zz_3) 
                           | (0xffffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                         >> 1U))) : 
                       ((0x10000U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT___zz_1) 
                                     << 9U)) | (((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT___zz_1) 
                                                 << 8U) 
                                                | (0xffU 
                                                   & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                      >> 1U)))));
            }
        }
    }
    if (vlTOPp->reset) {
        vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__xn = 0U;
        vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__yn = 0U;
        vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__res_rg = 0U;
        vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__cal_cnt = 0U;
        vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__nozero_flg = 1U;
        vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en_regNext = 0U;
    } else {
        if (vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en) {
            if (vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_start) {
                vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__cal_cnt = 0U;
                if (((0U == (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_1)) 
                     | (0U == (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_2)))) {
                    vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__res_rg = 0U;
                    vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__nozero_flg = 0U;
                } else {
                    vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__nozero_flg = 1U;
                    if (VL_GTS_III(1,16,16, 0U, (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_1))) {
                        if (VL_GTS_III(1,16,16, 0U, (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_2))) {
                            vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__xn 
                                = (0x7ffffU & (- vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__y_ext));
                            vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__yn 
                                = vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__x_ext;
                            vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__res_rg = 0x7c0U;
                        } else {
                            vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__xn 
                                = vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__y_ext;
                            vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__yn 
                                = (0x7ffffU & (- vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__x_ext));
                            vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__res_rg = 0x40U;
                        }
                    } else {
                        vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__xn 
                            = vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__x_ext;
                        vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__yn 
                            = vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__y_ext;
                        vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__res_rg = 0U;
                    }
                }
            } else {
                if (vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__nozero_flg) {
                    vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__cal_cnt 
                        = (7U & ((IData)(1U) + (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt)));
                    if (VL_GTS_III(1,19,19, 0U, vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn)) {
                        vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__xn 
                            = (0x7ffffU & (vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn 
                                           - vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn_rightshift));
                        vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__yn 
                            = (0x7ffffU & (vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn 
                                           + vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn_rightshift));
                        vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__res_rg 
                            = (0x7ffU & ((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_rg) 
                                         - ((0x780U 
                                             & ((- (IData)(
                                                           (1U 
                                                            & ((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_7) 
                                                               >> 6U)))) 
                                                << 7U)) 
                                            | (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_7))));
                    } else {
                        vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__xn 
                            = (0x7ffffU & (vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn 
                                           + vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn_rightshift));
                        vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__yn 
                            = (0x7ffffU & (vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn 
                                           - vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn_rightshift));
                        vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__res_rg 
                            = (0x7ffU & ((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_rg) 
                                         + ((0x780U 
                                             & ((- (IData)(
                                                           (1U 
                                                            & ((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_7) 
                                                               >> 6U)))) 
                                                << 7U)) 
                                            | (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_7))));
                    }
                }
            }
        }
        vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en_regNext 
            = vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en;
    }
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1 
        = vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__psum1;
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2 
        = vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__psum2;
    vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__max_v 
        = vlSymsp->TOP__cal_phase.__Vdly__calvn__DOT__max_v;
    vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__min_v 
        = vlSymsp->TOP__cal_phase.__Vdly__calvn__DOT__min_v;
    vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt 
        = vlSymsp->TOP__cal_phase.__Vdly__calvn__DOT__v_cnt;
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_cnt 
        = vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_cos__DOT__cal_cnt;
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_en 
        = vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_cos__DOT__cal_en;
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
        = vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_cos__DOT__shiftReg;
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_cnt 
        = vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_sin__DOT__cal_cnt;
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_en 
        = vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_sin__DOT__cal_en;
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
        = vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__booth_sin__DOT__shiftReg;
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__nozero_flg 
        = vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__nozero_flg;
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_rg 
        = vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__res_rg;
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn 
        = vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__xn;
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn 
        = vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__yn;
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt 
        = vlSymsp->TOP__cal_phase.__Vdly__cordic__DOT__cal_cnt;
    vlSymsp->TOP__cal_phase.ph_vld = vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__finish;
    if (vlTOPp->reset) {
        vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_finish_delay = 0U;
    } else {
        if (vlTOPp->rg_calphase_en) {
            vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_finish_delay 
                = vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_finish;
        }
    }
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_1 
        = (0xffffU & ((0x40000U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1)
                       ? ((0xfU != (0xfU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1 
                                            >> 0xfU)))
                           ? 0x8000U : vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1)
                       : ((0U != (7U & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1 
                                        >> 0xfU))) ? 0x7fffU
                           : vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_2 
        = (0xffffU & ((0x40000U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2)
                       ? ((0xfU != (0xfU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2 
                                            >> 0xfU)))
                           ? 0x8000U : vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2)
                       : ((0U != (7U & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2 
                                        >> 0xfU))) ? 0x7fffU
                           : vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2)));
    vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_3 
        = (0x1ffU & (((0x100U & (VL_SHIFTRS_III(8,8,32, (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__max_v), 1U) 
                                 << 1U)) | (0xffU & 
                                            VL_SHIFTRS_III(8,8,32, (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__max_v), 1U))) 
                     + ((0x100U & (VL_SHIFTRS_III(8,8,32, (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__min_v), 1U) 
                                   << 1U)) | (0xffU 
                                              & VL_SHIFTRS_III(8,8,32, (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__min_v), 1U)))));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__s2 = (
                                                   (0x7c000U 
                                                    & ((- (IData)(
                                                                  (1U 
                                                                   & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                                      >> 0x10U)))) 
                                                       << 0xeU)) 
                                                   | (0x3fffU 
                                                      & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                         >> 3U)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT___zz_3 
        = vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg;
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__flag_bits 
        = (3U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg);
}

VL_INLINE_OPT void Vcal_phase_cal_phase::_sequent__TOP__cal_phase__8(Vcal_phase__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+      Vcal_phase_cal_phase::_sequent__TOP__cal_phase__8\n"); );
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__s1 = (
                                                   (0x7c000U 
                                                    & ((- (IData)(
                                                                  (1U 
                                                                   & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                                      >> 0x10U)))) 
                                                       << 0xeU)) 
                                                   | (0x3fffU 
                                                      & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                         >> 3U)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT___zz_3 
        = vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg;
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__flag_bits 
        = (3U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg);
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn_rightshift 
        = (0x7ffffU & VL_SHIFTRS_III(19,19,3, vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn, (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt)));
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn_rightshift 
        = (0x7ffffU & VL_SHIFTRS_III(19,19,3, vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn, (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt)));
    vlSymsp->TOP__cal_phase.__Vtableidx1 = vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt;
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_7 
        = vlSymsp->TOP__cal_phase.__Vtable1___PVT__cordic__DOT___zz_7
        [vlSymsp->TOP__cal_phase.__Vtableidx1];
    if (vlTOPp->reset) {
        vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en = 0U;
    } else {
        if (vlTOPp->rg_calphase_en) {
            if (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__finish) {
                vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en = 1U;
            } else {
                if (vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_finish) {
                    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en = 0U;
                }
            }
        } else {
            vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en = 0U;
        }
    }
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_2 
        = ((3U & (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_2)) 
           | (4U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_1) 
                    >> 0xdU)));
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_2 
        = ((5U & (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_2)) 
           | (2U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_1) 
                    >> 0xeU)));
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_2 
        = ((6U & (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_2)) 
           | (1U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_1) 
                    >> 0xfU)));
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_4 
        = ((3U & (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_4)) 
           | (4U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_2) 
                    >> 0xdU)));
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_4 
        = ((5U & (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_4)) 
           | (2U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_2) 
                    >> 0xeU)));
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_4 
        = ((6U & (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_4)) 
           | (1U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_2) 
                    >> 0xfU)));
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__x_ext 
        = (((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_2) 
            << 0x10U) | (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_1));
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__y_ext 
        = (((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_4) 
            << 0x10U) | (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_2));
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_start 
        = ((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en) 
           & (~ (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en_regNext)));
    if (vlTOPp->reset) {
        vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__mac_cnt = 0U;
        vlSymsp->TOP__cal_phase.__PVT__dot__DOT__finish = 0U;
        vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_start = 0U;
    } else {
        if (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin_io_dout_vld) {
            vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__mac_cnt 
                = ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_en)
                    ? (7U & ((IData)(1U) + (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt)))
                    : 0U);
        }
        vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_start 
            = ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__mean_finish_regNext) 
               | ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_en) 
                  & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin_io_dout_vld)));
        vlSymsp->TOP__cal_phase.__PVT__dot__DOT__finish 
            = ((IData)(vlTOPp->rg_calphase_en) & (((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt) 
                                                   == 
                                                   (7U 
                                                    & ((0xfU 
                                                        & ((IData)(vlTOPp->valid_num) 
                                                           << 1U)) 
                                                       - (IData)(1U)))) 
                                                  & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin_io_dout_vld)));
    }
    if (vlTOPp->reset) {
        vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_en = 0U;
    } else {
        if (vlTOPp->rg_calphase_en) {
            if (vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__mean_finish_regNext) {
                vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_en = 1U;
            } else {
                if ((((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt) 
                      == (7U & (((0xfU & ((IData)(vlTOPp->valid_num) 
                                          << 1U)) - (IData)(1U)) 
                                - (IData)(1U)))) & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin_io_dout_vld))) {
                    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_en = 0U;
                }
            }
        } else {
            vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_en = 0U;
        }
    }
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin_io_dout_vld 
        = ((~ (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_en)) 
           & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_en_regNext));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt 
        = vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__mac_cnt;
    vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__mean_finish_regNext 
        = ((~ (IData)(vlTOPp->reset)) & (((IData)(vlTOPp->rg_calphase_en) 
                                          & (IData)(vlTOPp->vin_vld)) 
                                         & (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__data_load_finish)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_start 
        = ((0U == (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt)) 
           & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin_io_dout_vld));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__vin_minus_mean 
        = (0xffU & (((4U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                      ? ((2U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                          ? ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                              ? (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_7)
                              : (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_6))
                          : ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                              ? (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_5)
                              : (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_4)))
                      : ((2U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                          ? ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                              ? (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_3)
                              : (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_2))
                          : ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                              ? (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_1)
                              : (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_0)))) 
                    - ((0x100U & (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_3))
                        ? ((3U != (3U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_3) 
                                         >> 7U))) ? 0x80U
                            : (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_3))
                        : ((0x80U & (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_3))
                            ? 0x7fU : (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_3)))));
}

VL_INLINE_OPT void Vcal_phase_cal_phase::_combo__TOP__cal_phase__9(Vcal_phase__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+      Vcal_phase_cal_phase::_combo__TOP__cal_phase__9\n"); );
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v1gtv2) {
        vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__bigger 
            = vlTOPp->vin1;
        vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__smaller 
            = vlTOPp->vin2;
    } else {
        vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__bigger 
            = vlTOPp->vin2;
        vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__smaller 
            = vlTOPp->vin1;
    }
    vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_13 
        = ((2U & (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt))
            ? ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt))
                ? ((1U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                          << 1U)) ? (IData)(vlTOPp->rg_leakage_table_7)
                    : (IData)(vlTOPp->rg_leakage_table_6))
                : ((1U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                          << 1U)) ? (IData)(vlTOPp->rg_leakage_table_5)
                    : (IData)(vlTOPp->rg_leakage_table_4)))
            : ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt))
                ? ((1U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                          << 1U)) ? (IData)(vlTOPp->rg_leakage_table_3)
                    : (IData)(vlTOPp->rg_leakage_table_2))
                : ((1U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                          << 1U)) ? (IData)(vlTOPp->rg_leakage_table_1)
                    : (IData)(vlTOPp->rg_leakage_table_0))));
    vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_14 
        = ((4U & ((IData)(1U) + ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                                 << 1U))) ? ((2U & 
                                              ((IData)(1U) 
                                               + ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                                                  << 1U)))
                                              ? ((1U 
                                                  & ((IData)(1U) 
                                                     + 
                                                     (7U 
                                                      & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                                                         << 1U))))
                                                  ? (IData)(vlTOPp->rg_leakage_table_7)
                                                  : (IData)(vlTOPp->rg_leakage_table_6))
                                              : ((1U 
                                                  & ((IData)(1U) 
                                                     + 
                                                     (7U 
                                                      & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                                                         << 1U))))
                                                  ? (IData)(vlTOPp->rg_leakage_table_5)
                                                  : (IData)(vlTOPp->rg_leakage_table_4)))
            : ((2U & ((IData)(1U) + ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                                     << 1U))) ? ((1U 
                                                  & ((IData)(1U) 
                                                     + 
                                                     (7U 
                                                      & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                                                         << 1U))))
                                                  ? (IData)(vlTOPp->rg_leakage_table_3)
                                                  : (IData)(vlTOPp->rg_leakage_table_2))
                : ((1U & ((IData)(1U) + (7U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                                               << 1U))))
                    ? (IData)(vlTOPp->rg_leakage_table_1)
                    : (IData)(vlTOPp->rg_leakage_table_0))));
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_finish 
        = ((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt) 
           == (7U & ((IData)(vlTOPp->rg_cordic_iternum) 
                     - (IData)(1U))));
    if ((4U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))) {
        vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_5 
            = ((2U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                ? ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                    ? (IData)(vlTOPp->rg_sin_table_7)
                    : (IData)(vlTOPp->rg_sin_table_6))
                : ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                    ? (IData)(vlTOPp->rg_sin_table_5)
                    : (IData)(vlTOPp->rg_sin_table_4)));
        vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_6 
            = ((2U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                ? ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                    ? (IData)(vlTOPp->rg_cos_table_7)
                    : (IData)(vlTOPp->rg_cos_table_6))
                : ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                    ? (IData)(vlTOPp->rg_cos_table_5)
                    : (IData)(vlTOPp->rg_cos_table_4)));
    } else {
        vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_5 
            = ((2U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                ? ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                    ? (IData)(vlTOPp->rg_sin_table_3)
                    : (IData)(vlTOPp->rg_sin_table_2))
                : ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                    ? (IData)(vlTOPp->rg_sin_table_1)
                    : (IData)(vlTOPp->rg_sin_table_0)));
        vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_6 
            = ((2U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                ? ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                    ? (IData)(vlTOPp->rg_cos_table_3)
                    : (IData)(vlTOPp->rg_cos_table_2))
                : ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                    ? (IData)(vlTOPp->rg_cos_table_1)
                    : (IData)(vlTOPp->rg_cos_table_0)));
    }
    vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__data_load_finish 
        = ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
           == (7U & ((IData)(vlTOPp->valid_num) - (IData)(1U))));
    vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_7 
        = (0x1ffU & (((0x100U & ((IData)(vlTOPp->vin1) 
                                 << 1U)) | (IData)(vlTOPp->vin1)) 
                     - ((0x100U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_13) 
                                   << 1U)) | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_13))));
    vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_11 
        = (0x1ffU & (((0x100U & ((IData)(vlTOPp->vin2) 
                                 << 1U)) | (IData)(vlTOPp->vin2)) 
                     - ((0x100U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_14) 
                                   << 1U)) | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_14))));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT___zz_1 
        = (0xffU & ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                     >> 9U) + ((1U & ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                       >> 1U) & (~ vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)))
                                ? (- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_5))
                                : (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_5))));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT___zz_1 
        = (0xffU & ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                     >> 9U) + ((1U & ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                       >> 1U) & (~ vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)))
                                ? (- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_6))
                                : (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_6))));
    vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_8 
        = (0xffU & ((0x100U & (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_7))
                     ? ((3U != (3U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_7) 
                                      >> 7U))) ? 0x80U
                         : (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_7))
                     : ((0x80U & (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_7))
                         ? 0x7fU : (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_7))));
    vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_12 
        = (0xffU & ((0x100U & (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_11))
                     ? ((3U != (3U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_11) 
                                      >> 7U))) ? 0x80U
                         : (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_11))
                     : ((0x80U & (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_11))
                         ? 0x7fU : (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_11))));
}
