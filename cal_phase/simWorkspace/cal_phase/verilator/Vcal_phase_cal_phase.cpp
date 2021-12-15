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
    vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_1 
        = (0x1ffU & (((0x100U & ((IData)(vlTOPp->v_in_0) 
                                 << 1U)) | (IData)(vlTOPp->v_in_0)) 
                     + ((0x100U & ((IData)(vlTOPp->v_in_1) 
                                   << 1U)) | (IData)(vlTOPp->v_in_1))));
    vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_2 
        = (0x1ffU & (((0x100U & ((IData)(vlTOPp->v_in_2) 
                                 << 1U)) | (IData)(vlTOPp->v_in_2)) 
                     + ((0x100U & ((IData)(vlTOPp->v_in_3) 
                                   << 1U)) | (IData)(vlTOPp->v_in_3))));
    vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_3 
        = (0x1ffU & (((0x100U & ((IData)(vlTOPp->v_in_4) 
                                 << 1U)) | (IData)(vlTOPp->v_in_4)) 
                     + ((0x100U & ((IData)(vlTOPp->v_in_5) 
                                   << 1U)) | (IData)(vlTOPp->v_in_5))));
    vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_4 
        = (0x1ffU & (((0x100U & ((IData)(vlTOPp->v_in_6) 
                                 << 1U)) | (IData)(vlTOPp->v_in_6)) 
                     + ((0x100U & ((IData)(vlTOPp->v_in_7) 
                                   << 1U)) | (IData)(vlTOPp->v_in_7))));
}

VL_INLINE_OPT void Vcal_phase_cal_phase::_sequent__TOP__cal_phase__5(Vcal_phase__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+      Vcal_phase_cal_phase::_sequent__TOP__cal_phase__5\n"); );
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    CData/*0:0*/ __Vdly__LastA2stZero;
    CData/*7:0*/ __Vdly__cordic__DOT__res_rg;
    CData/*2:0*/ __Vdly__cordic__DOT__cal_cnt;
    CData/*0:0*/ __Vdly__cordic__DOT__nozero_flg;
    IData/*18:0*/ __Vdly__dot__DOT__psum1;
    IData/*18:0*/ __Vdly__dot__DOT__psum2;
    IData/*21:0*/ __Vdly__cordic__DOT__xn;
    IData/*21:0*/ __Vdly__cordic__DOT__yn;
    // Body
    __Vdly__LastA2stZero = vlSymsp->TOP__cal_phase.__PVT__LastA2stZero;
    __Vdly__cordic__DOT__nozero_flg = vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__nozero_flg;
    __Vdly__cordic__DOT__res_rg = vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_rg;
    __Vdly__cordic__DOT__yn = vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn;
    __Vdly__cordic__DOT__xn = vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn;
    __Vdly__cordic__DOT__cal_cnt = vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt;
    __Vdly__dot__DOT__psum2 = vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2;
    __Vdly__dot__DOT__psum1 = vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1;
    vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__mac_cnt 
        = vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt;
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__finish 
        = ((~ (IData)(vlTOPp->reset)) & ((IData)(vlTOPp->en) 
                                         & (5U == (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt))));
    if (vlTOPp->reset) {
        vlSymsp->TOP__cal_phase.__PVT__ph_last = 0U;
    } else {
        if (vlSymsp->TOP__cal_phase.ph_vld) {
            vlSymsp->TOP__cal_phase.__PVT__ph_last 
                = vlSymsp->TOP__cal_phase.__PVT__ph_now;
        }
    }
    if (vlTOPp->reset) {
        __Vdly__LastA2stZero = 0U;
        vlSymsp->TOP__cal_phase.__PVT__res_last = 0U;
        vlSymsp->TOP__cal_phase.__PVT__res_last_vld = 0U;
    } else {
        vlSymsp->TOP__cal_phase.__PVT__res_last_vld 
            = vlSymsp->TOP__cal_phase.ph_vld_dly1;
        if (vlSymsp->TOP__cal_phase.ph_vld_dly1) {
            vlSymsp->TOP__cal_phase.__PVT__res_last 
                = (0x3ffU & ((0x40U < (0x1ffU & (((0x100U 
                                                   & (IData)(vlSymsp->TOP__cal_phase.__PVT__ph_delta))
                                                   ? 
                                                  (~ (IData)(vlSymsp->TOP__cal_phase.__PVT__ph_delta))
                                                   : (IData)(vlSymsp->TOP__cal_phase.__PVT__ph_delta)) 
                                                 + 
                                                 (1U 
                                                  & ((IData)(vlSymsp->TOP__cal_phase.__PVT__ph_delta) 
                                                     >> 8U)))))
                              ? ((IData)(vlSymsp->TOP__cal_phase.__PVT__LastA2stZero)
                                  ? (((0x200U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__ph_delta) 
                                                 << 1U)) 
                                      | (IData)(vlSymsp->TOP__cal_phase.__PVT__ph_delta)) 
                                     - (IData)(0x80U))
                                  : ((IData)(0x80U) 
                                     + ((0x200U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__ph_delta) 
                                                   << 1U)) 
                                        | (IData)(vlSymsp->TOP__cal_phase.__PVT__ph_delta))))
                              : ((0x200U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__ph_delta) 
                                            << 1U)) 
                                 | (IData)(vlSymsp->TOP__cal_phase.__PVT__ph_delta))));
            __Vdly__LastA2stZero = (1U & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2 
                                          >> 0x11U));
        }
    }
    if (vlTOPp->reset) {
        __Vdly__cordic__DOT__xn = 0U;
        __Vdly__cordic__DOT__yn = 0U;
        __Vdly__cordic__DOT__res_rg = 0U;
        __Vdly__cordic__DOT__cal_cnt = 0U;
        __Vdly__cordic__DOT__nozero_flg = 1U;
    } else {
        if (vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en) {
            __Vdly__cordic__DOT__cal_cnt = (7U & ((IData)(1U) 
                                                  + (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt)));
            __Vdly__cordic__DOT__nozero_flg = 1U;
            if (vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_start) {
                if ((0U == (0xffffU & ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1 
                                        | vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2) 
                                       >> 2U)))) {
                    __Vdly__cordic__DOT__res_rg = 0U;
                    __Vdly__cordic__DOT__nozero_flg = 0U;
                } else {
                    if (VL_LTS_III(1,16,16, 0U, (0xffffU 
                                                 & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1 
                                                    >> 2U)))) {
                        __Vdly__cordic__DOT__xn = vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__x_ext;
                        __Vdly__cordic__DOT__yn = vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__y_ext;
                        __Vdly__cordic__DOT__res_rg = 0U;
                    } else {
                        if (VL_GTS_III(1,16,16, 0U, 
                                       (0xffffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2 
                                                   >> 2U)))) {
                            __Vdly__cordic__DOT__xn 
                                = (0x3fffffU & (- vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__x_ext));
                            __Vdly__cordic__DOT__yn 
                                = (0x3fffffU & (- vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__y_ext));
                            __Vdly__cordic__DOT__res_rg = 0xc0U;
                        } else {
                            __Vdly__cordic__DOT__xn 
                                = (0x3fffffU & (- vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__x_ext));
                            __Vdly__cordic__DOT__yn 
                                = (0x3fffffU & (- vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__y_ext));
                            __Vdly__cordic__DOT__res_rg = 0x40U;
                        }
                    }
                }
            } else {
                if (vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__nozero_flg) {
                    if (VL_GTS_III(1,22,22, 0U, vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn)) {
                        __Vdly__cordic__DOT__xn = (0x3fffffU 
                                                   & (vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn 
                                                      - vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn_rightshift));
                        __Vdly__cordic__DOT__yn = (0x3fffffU 
                                                   & (vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn 
                                                      + vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn_rightshift));
                        __Vdly__cordic__DOT__res_rg 
                            = (0xffU & ((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_rg) 
                                        - ((IData)(1U) 
                                           << (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_8))));
                    } else {
                        __Vdly__cordic__DOT__xn = (0x3fffffU 
                                                   & (vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn 
                                                      + vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn_rightshift));
                        __Vdly__cordic__DOT__yn = (0x3fffffU 
                                                   & (vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn 
                                                      - vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn_rightshift));
                        __Vdly__cordic__DOT__res_rg 
                            = (0xffU & ((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_rg) 
                                        + ((IData)(1U) 
                                           << (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_8))));
                    }
                }
            }
        } else {
            __Vdly__cordic__DOT__cal_cnt = 0U;
        }
    }
    if (vlTOPp->reset) {
        __Vdly__dot__DOT__psum1 = 0U;
        __Vdly__dot__DOT__psum2 = 0U;
        vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__mac_cnt = 0U;
    } else {
        if (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_en) {
            vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__mac_cnt 
                = (7U & ((IData)(1U) + (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt)));
            if (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_start) {
                __Vdly__dot__DOT__psum1 = vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1_s1;
                __Vdly__dot__DOT__psum2 = vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1_s2;
            } else {
                __Vdly__dot__DOT__psum1 = (0x7ffffU 
                                           & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1 
                                              + vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1_s1));
                __Vdly__dot__DOT__psum2 = (0x7ffffU 
                                           & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2 
                                              + vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1_s2));
            }
        } else {
            vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__mac_cnt = 0U;
        }
    }
    vlSymsp->TOP__cal_phase.__PVT__LastA2stZero = __Vdly__LastA2stZero;
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__nozero_flg 
        = __Vdly__cordic__DOT__nozero_flg;
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn 
        = __Vdly__cordic__DOT__xn;
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn 
        = __Vdly__cordic__DOT__yn;
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1 
        = __Vdly__dot__DOT__psum1;
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2 
        = __Vdly__dot__DOT__psum2;
    if (vlTOPp->reset) {
        vlSymsp->TOP__cal_phase.__PVT__ph_now = 0U;
    } else {
        if (vlSymsp->TOP__cal_phase.ph_vld) {
            vlSymsp->TOP__cal_phase.__PVT__ph_now = vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_rg;
        }
    }
    vlSymsp->TOP__cal_phase.ph_vld_dly1 = ((~ (IData)(vlTOPp->reset)) 
                                           & (IData)(vlSymsp->TOP__cal_phase.ph_vld));
    if (vlTOPp->reset) {
        vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en = 0U;
    } else {
        if (vlTOPp->en) {
            if (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__finish) {
                vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en = 1U;
            } else {
                if ((5U == (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt))) {
                    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en = 0U;
                }
            }
        } else {
            vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en = 0U;
        }
    }
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_2 
        = ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_2)) 
           | (2U & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1 
                    >> 0x10U)));
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_2 
        = ((2U & (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_2)) 
           | (1U & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1 
                    >> 0x11U)));
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_4 
        = ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_4)) 
           | (2U & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2 
                    >> 0x10U)));
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_4 
        = ((2U & (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_4)) 
           | (1U & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2 
                    >> 0x11U)));
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_rg 
        = __Vdly__cordic__DOT__res_rg;
    vlSymsp->TOP__cal_phase.ph_vld = vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__finish;
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt 
        = __Vdly__cordic__DOT__cal_cnt;
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__x_ext 
        = (((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_2) 
            << 0x14U) | (0xffff0U & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1 
                                     << 2U)));
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__y_ext 
        = (((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_4) 
            << 0x14U) | (0xffff0U & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2 
                                     << 2U)));
    vlSymsp->TOP__cal_phase.__PVT__ph_delta = (0x1ffU 
                                               & (((0x100U 
                                                    & ((IData)(vlSymsp->TOP__cal_phase.__PVT__ph_now) 
                                                       << 1U)) 
                                                   | (IData)(vlSymsp->TOP__cal_phase.__PVT__ph_now)) 
                                                  - 
                                                  ((0x100U 
                                                    & ((IData)(vlSymsp->TOP__cal_phase.__PVT__ph_last) 
                                                       << 1U)) 
                                                   | (IData)(vlSymsp->TOP__cal_phase.__PVT__ph_last))));
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_8 
        = (7U & ((IData)(5U) - (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt)));
}

VL_INLINE_OPT void Vcal_phase_cal_phase::_sequent__TOP__cal_phase__6(Vcal_phase__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+      Vcal_phase_cal_phase::_sequent__TOP__cal_phase__6\n"); );
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_start 
        = (0U == (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt));
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn_rightshift 
        = (0x3fffffU & VL_SHIFTRS_III(22,22,3, vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn, 
                                      (7U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt) 
                                             - (IData)(1U)))));
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn_rightshift 
        = (0x3fffffU & VL_SHIFTRS_III(22,22,3, vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn, 
                                      (7U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt) 
                                             - (IData)(1U)))));
}

VL_INLINE_OPT void Vcal_phase_cal_phase::_sequent__TOP__cal_phase__7(Vcal_phase__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+      Vcal_phase_cal_phase::_sequent__TOP__cal_phase__7\n"); );
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__finish 
        = ((IData)(vlTOPp->en) & ((7U == (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt)) 
                                  & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_en)));
}

VL_INLINE_OPT void Vcal_phase_cal_phase::_sequent__TOP__cal_phase__8(Vcal_phase__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+      Vcal_phase_cal_phase::_sequent__TOP__cal_phase__8\n"); );
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (vlTOPp->reset) {
        vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_en = 0U;
    } else {
        if (vlTOPp->en) {
            if (vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__in_vld_dly2) {
                vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_en = 1U;
            } else {
                if ((7U == (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))) {
                    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_en = 0U;
                }
            }
        } else {
            vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_en = 0U;
        }
    }
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt 
        = vlSymsp->TOP__cal_phase.__Vdly__dot__DOT__mac_cnt;
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_start 
        = (0U == (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt));
    if (vlTOPp->reset) {
        vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__in_vld_dly2 = 0U;
        vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_0 = 0U;
        vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_1 = 0U;
        vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_2 = 0U;
        vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_3 = 0U;
        vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_4 = 0U;
        vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_5 = 0U;
        vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_6 = 0U;
        vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_7 = 0U;
    } else {
        vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__in_vld_dly2 
            = ((IData)(vlTOPp->en) & (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__in_vld_dly1));
        if (vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__in_vld_dly1) {
            vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_0 
                = (0xffU & ((((0x800U & ((IData)(vlTOPp->v_in_0) 
                                         << 4U)) | 
                              ((IData)(vlTOPp->v_in_0) 
                               << 3U)) - ((0x800U & 
                                           ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                            << 1U)) 
                                          | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))) 
                            >> 3U));
            vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_1 
                = (0xffU & ((((0x800U & ((IData)(vlTOPp->v_in_1) 
                                         << 4U)) | 
                              ((IData)(vlTOPp->v_in_1) 
                               << 3U)) - ((0x800U & 
                                           ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                            << 1U)) 
                                          | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))) 
                            >> 3U));
            vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_2 
                = (0xffU & ((((0x800U & ((IData)(vlTOPp->v_in_2) 
                                         << 4U)) | 
                              ((IData)(vlTOPp->v_in_2) 
                               << 3U)) - ((0x800U & 
                                           ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                            << 1U)) 
                                          | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))) 
                            >> 3U));
            vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_3 
                = (0xffU & ((((0x800U & ((IData)(vlTOPp->v_in_3) 
                                         << 4U)) | 
                              ((IData)(vlTOPp->v_in_3) 
                               << 3U)) - ((0x800U & 
                                           ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                            << 1U)) 
                                          | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))) 
                            >> 3U));
            vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_4 
                = (0xffU & ((((0x800U & ((IData)(vlTOPp->v_in_4) 
                                         << 4U)) | 
                              ((IData)(vlTOPp->v_in_4) 
                               << 3U)) - ((0x800U & 
                                           ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                            << 1U)) 
                                          | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))) 
                            >> 3U));
            vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_5 
                = (0xffU & ((((0x800U & ((IData)(vlTOPp->v_in_5) 
                                         << 4U)) | 
                              ((IData)(vlTOPp->v_in_5) 
                               << 3U)) - ((0x800U & 
                                           ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                            << 1U)) 
                                          | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))) 
                            >> 3U));
            vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_6 
                = (0xffU & ((((0x800U & ((IData)(vlTOPp->v_in_6) 
                                         << 4U)) | 
                              ((IData)(vlTOPp->v_in_6) 
                               << 3U)) - ((0x800U & 
                                           ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                            << 1U)) 
                                          | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))) 
                            >> 3U));
            vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_7 
                = (0xffU & ((((0x800U & ((IData)(vlTOPp->v_in_7) 
                                         << 4U)) | 
                              ((IData)(vlTOPp->v_in_7) 
                               << 3U)) - ((0x800U & 
                                           ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                            << 1U)) 
                                          | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))) 
                            >> 3U));
        }
    }
    vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__in_vld_dly1 
        = ((~ (IData)(vlTOPp->reset)) & ((IData)(vlTOPp->en) 
                                         & (IData)(vlTOPp->vin_vld)));
    if (vlTOPp->reset) {
        vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg = 0U;
    } else {
        if (((IData)(vlTOPp->en) & (IData)(vlTOPp->vin_vld))) {
            vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg 
                = (0x7ffU & (((0x400U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_5) 
                                         << 1U)) | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_5)) 
                             + ((0x400U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_6) 
                                           << 1U)) 
                                | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_6))));
        }
    }
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4 
        = ((4U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
            ? ((2U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                ? ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                    ? (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_7)
                    : (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_6))
                : ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                    ? (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_5)
                    : (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_4)))
            : ((2U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                ? ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                    ? (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_3)
                    : (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_2))
                : ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                    ? (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_1)
                    : (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_0))));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coefm128 
        = ((0x70000U & ((- (IData)((1U & ((- ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                                              << 8U)) 
                                          >> 0xfU)))) 
                        << 0x10U)) | (0xffffU & (- 
                                                 ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                                                  << 8U))));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_3 
        = ((7U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_3)) 
           | (8U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                    >> 4U)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_3 
        = ((0xbU & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_3)) 
           | (4U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                    >> 5U)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_3 
        = ((0xdU & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_3)) 
           | (2U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                    >> 6U)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_3 
        = ((0xeU & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_3)) 
           | (1U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                    >> 7U)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_5 
        = ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_5)) 
           | (2U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                    >> 6U)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_5 
        = ((2U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_5)) 
           | (1U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                    >> 7U)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m2 
        = ((0x8000U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                       << 8U)) | ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                                  << 7U));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_4 
        = ((3U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_4)) 
           | (4U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                    >> 5U)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_4 
        = ((5U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_4)) 
           | (2U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                    >> 6U)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_4 
        = ((6U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_4)) 
           | (1U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                    >> 7U)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_2 
        = ((0xfU & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_2)) 
           | (0x10U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                       >> 3U)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_2 
        = ((0x17U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_2)) 
           | (8U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                    >> 4U)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_2 
        = ((0x1bU & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_2)) 
           | (4U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                    >> 5U)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_2 
        = ((0x1dU & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_2)) 
           | (2U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                    >> 6U)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_2 
        = ((0x1eU & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_2)) 
           | (1U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                    >> 7U)));
}

VL_INLINE_OPT void Vcal_phase_cal_phase::_sequent__TOP__cal_phase__9(Vcal_phase__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+      Vcal_phase_cal_phase::_sequent__TOP__cal_phase__9\n"); );
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_1 
        = ((0x3fU & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_1)) 
           | (0x40U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                       >> 1U)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_1 
        = ((0x5fU & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_1)) 
           | (0x20U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                       >> 2U)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_1 
        = ((0x6fU & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_1)) 
           | (0x10U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                       >> 3U)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_1 
        = ((0x77U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_1)) 
           | (8U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                    >> 4U)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_1 
        = ((0x7bU & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_1)) 
           | (4U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                    >> 5U)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_1 
        = ((0x7dU & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_1)) 
           | (2U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                    >> 6U)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_1 
        = ((0x7eU & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_1)) 
           | (1U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                    >> 7U)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m16 
        = (((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_3) 
            << 0xcU) | ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                        << 4U));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m4 
        = (((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_5) 
            << 0xeU) | ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                        << 6U));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m8 
        = (((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_4) 
            << 0xdU) | ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                        << 5U));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m32 
        = (((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_2) 
            << 0xbU) | ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                        << 3U));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m128 
        = (((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_1) 
            << 9U) | ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                      << 1U));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_7 
        = (0x1ffffU & (((0x10000U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m2) 
                                     << 1U)) | (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m2)) 
                       + ((0x10000U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m4) 
                                       << 1U)) | (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m4))));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_8 
        = (0x1ffffU & (((0x10000U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m2) 
                                     << 1U)) | (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m2)) 
                       + ((0x10000U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m8) 
                                       << 1U)) | (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m8))));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_16 
        = (0x1ffffU & (((0x10000U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m32) 
                                     << 1U)) | (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m32)) 
                       + ((0x10000U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m16) 
                                       << 1U)) | (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m16))));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_14 
        = ((0x10000U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m32) 
                        << 1U)) | (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m32));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_23 
        = (0x1ffffU & (((0x10000U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                                     << 9U)) | ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                                                << 8U)) 
                       - ((0x10000U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m128) 
                                       << 1U)) | (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m128))));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_30 
        = ((0x10000U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m128) 
                        << 1U)) | (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m128));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef12 
        = ((0x60000U & ((- (IData)((1U & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_16 
                                          >> 0x10U)))) 
                        << 0x11U)) | vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_16);
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__tmp1 
        = (0x3ffffU & (((0x20000U & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_7 
                                     << 1U)) | vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_7) 
                       + ((0x20000U & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_14 
                                       << 1U)) | vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_14)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef127 
        = ((0x60000U & ((- (IData)((1U & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_23 
                                          >> 0x10U)))) 
                        << 0x11U)) | vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_23);
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_28 
        = (0x3ffffU & (((0x20000U & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_8 
                                     << 1U)) | vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_8) 
                       + ((0x20000U & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_30 
                                       << 1U)) | vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_30)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_32 
        = (0xfffffU & (((0x80000U & ((- vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef12) 
                                     << 1U)) | (0x7ffffU 
                                                & (- vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef12))) 
                       - ((0xe0000U & ((- (IData)((1U 
                                                   & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_30 
                                                      >> 0x10U)))) 
                                       << 0x11U)) | vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_30)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coefm100 
        = ((0x40000U & ((- vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__tmp1) 
                        << 1U)) | (0x3ffffU & (- vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__tmp1)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_19 
        = (0x7ffffU & (((0x40000U & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__tmp1 
                                     << 1U)) | vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__tmp1) 
                       - ((0x60000U & ((- (IData)((1U 
                                                   & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_30 
                                                      >> 0x10U)))) 
                                       << 0x11U)) | vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_30)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef81 
        = ((0x40000U & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_28 
                        << 1U)) | vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_28);
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_38 
        = (0xfffffU & (((0x80000U & ((- vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef81) 
                                     << 1U)) | (0x7ffffU 
                                                & (- vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef81))) 
                       - ((0xe0000U & ((- (IData)((1U 
                                                   & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_30 
                                                      >> 0x10U)))) 
                                       << 0x11U)) | vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_30)));
    if ((4U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))) {
        vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1_s1 
            = (0x7ffffU & ((2U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                            ? ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                ? vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_38
                                : vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coefm128)
                            : ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                ? vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coefm100
                                : vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_32)));
        vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1_s2 
            = (0x7ffffU & ((2U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                            ? ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                ? vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_19
                                : vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef12)
                            : ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                ? vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_38
                                : vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coefm128)));
    } else {
        vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1_s1 
            = (0x7ffffU & ((2U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                            ? ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                ? vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef81
                                : vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef127)
                            : ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                ? vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_19
                                : vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef12)));
        vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1_s2 
            = (0x7ffffU & ((2U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                            ? ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                ? vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coefm100
                                : vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_32)
                            : ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                ? vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef81
                                : vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef127)));
    }
}

VL_INLINE_OPT void Vcal_phase_cal_phase::_combo__TOP__cal_phase__10(Vcal_phase__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+      Vcal_phase_cal_phase::_combo__TOP__cal_phase__10\n"); );
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_5 
        = (0x3ffU & (((0x200U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_1) 
                                 << 1U)) | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_1)) 
                     + ((0x200U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_2) 
                                   << 1U)) | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_2))));
    vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_6 
        = (0x3ffU & (((0x200U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_3) 
                                 << 1U)) | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_3)) 
                     + ((0x200U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_4) 
                                   << 1U)) | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_4))));
}
