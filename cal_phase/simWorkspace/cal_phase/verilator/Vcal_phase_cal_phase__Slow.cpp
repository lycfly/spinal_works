// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vcal_phase.h for the primary calling header

#include "Vcal_phase_cal_phase.h"
#include "Vcal_phase__Syms.h"

#include "verilated_dpi.h"

//==========

VL_CTOR_IMP(Vcal_phase_cal_phase) {
    // Reset internal values
    // Reset structure values
    _ctor_var_reset();
}

void Vcal_phase_cal_phase::__Vconfigure(Vcal_phase__Syms* vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
    if (false && this->__VlSymsp) {}  // Prevent unused
}

Vcal_phase_cal_phase::~Vcal_phase_cal_phase() {
}

void Vcal_phase_cal_phase::_settle__TOP__cal_phase__2(Vcal_phase__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+      Vcal_phase_cal_phase::_settle__TOP__cal_phase__2\n"); );
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
    vlSymsp->TOP__cal_phase.ph_vld = vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__finish;
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_8 
        = (7U & ((IData)(5U) - (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt)));
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_start 
        = (0U == (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt));
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
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn_rightshift 
        = (0x3fffffU & VL_SHIFTRS_III(22,22,3, vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn, 
                                      (7U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt) 
                                             - (IData)(1U)))));
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn_rightshift 
        = (0x3fffffU & VL_SHIFTRS_III(22,22,3, vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn, 
                                      (7U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt) 
                                             - (IData)(1U)))));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_start 
        = (0U == (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt));
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
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__x_ext 
        = (((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_2) 
            << 0x14U) | (0xffff0U & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1 
                                     << 2U)));
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__y_ext 
        = (((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_4) 
            << 0x14U) | (0xffff0U & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2 
                                     << 2U)));
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
}

void Vcal_phase_cal_phase::_settle__TOP__cal_phase__3(Vcal_phase__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+      Vcal_phase_cal_phase::_settle__TOP__cal_phase__3\n"); );
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
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

void Vcal_phase_cal_phase::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+      Vcal_phase_cal_phase::_ctor_var_reset\n"); );
    // Body
    en = VL_RAND_RESET_I(1);
    vin_vld = VL_RAND_RESET_I(1);
    v_in_0 = VL_RAND_RESET_I(8);
    v_in_1 = VL_RAND_RESET_I(8);
    v_in_2 = VL_RAND_RESET_I(8);
    v_in_3 = VL_RAND_RESET_I(8);
    v_in_4 = VL_RAND_RESET_I(8);
    v_in_5 = VL_RAND_RESET_I(8);
    v_in_6 = VL_RAND_RESET_I(8);
    v_in_7 = VL_RAND_RESET_I(8);
    res_vld = VL_RAND_RESET_I(1);
    res = VL_RAND_RESET_I(10);
    clk = VL_RAND_RESET_I(1);
    reset = VL_RAND_RESET_I(1);
    ph_vld = VL_RAND_RESET_I(1);
    __PVT__LastA2stZero = VL_RAND_RESET_I(1);
    __PVT__ph_now = VL_RAND_RESET_I(8);
    __PVT__ph_last = VL_RAND_RESET_I(8);
    ph_vld_dly1 = VL_RAND_RESET_I(1);
    __PVT__ph_delta = VL_RAND_RESET_I(9);
    __PVT__res_last = VL_RAND_RESET_I(10);
    __PVT__res_last_vld = VL_RAND_RESET_I(1);
    __PVT__calvn__DOT__in_vld_dly1 = VL_RAND_RESET_I(1);
    __PVT__calvn__DOT__in_vld_dly2 = VL_RAND_RESET_I(1);
    __PVT__calvn__DOT__SumXinReg = VL_RAND_RESET_I(11);
    __PVT__calvn__DOT___zz_1 = VL_RAND_RESET_I(9);
    __PVT__calvn__DOT___zz_2 = VL_RAND_RESET_I(9);
    __PVT__calvn__DOT___zz_3 = VL_RAND_RESET_I(9);
    __PVT__calvn__DOT___zz_4 = VL_RAND_RESET_I(9);
    __PVT__calvn__DOT___zz_5 = VL_RAND_RESET_I(10);
    __PVT__calvn__DOT___zz_6 = VL_RAND_RESET_I(10);
    __PVT__calvn__DOT__VnReg_0 = VL_RAND_RESET_I(8);
    __PVT__calvn__DOT__VnReg_1 = VL_RAND_RESET_I(8);
    __PVT__calvn__DOT__VnReg_2 = VL_RAND_RESET_I(8);
    __PVT__calvn__DOT__VnReg_3 = VL_RAND_RESET_I(8);
    __PVT__calvn__DOT__VnReg_4 = VL_RAND_RESET_I(8);
    __PVT__calvn__DOT__VnReg_5 = VL_RAND_RESET_I(8);
    __PVT__calvn__DOT__VnReg_6 = VL_RAND_RESET_I(8);
    __PVT__calvn__DOT__VnReg_7 = VL_RAND_RESET_I(8);
    __PVT__dot__DOT___zz_4 = VL_RAND_RESET_I(8);
    __PVT__dot__DOT__table_1_s1 = VL_RAND_RESET_I(19);
    __PVT__dot__DOT__table_1_s2 = VL_RAND_RESET_I(19);
    __PVT__dot__DOT__psum1 = VL_RAND_RESET_I(19);
    __PVT__dot__DOT__psum2 = VL_RAND_RESET_I(19);
    __PVT__dot__DOT__mac_cnt = VL_RAND_RESET_I(3);
    __PVT__dot__DOT__mac_en = VL_RAND_RESET_I(1);
    __PVT__dot__DOT__mac_start = VL_RAND_RESET_I(1);
    __PVT__dot__DOT__finish = VL_RAND_RESET_I(1);
    __PVT__dot__DOT__table_1__DOT___zz_14 = VL_RAND_RESET_I(17);
    __PVT__dot__DOT__table_1__DOT___zz_16 = VL_RAND_RESET_I(17);
    __PVT__dot__DOT__table_1__DOT___zz_19 = VL_RAND_RESET_I(19);
    __PVT__dot__DOT__table_1__DOT___zz_23 = VL_RAND_RESET_I(17);
    __PVT__dot__DOT__table_1__DOT___zz_28 = VL_RAND_RESET_I(18);
    __PVT__dot__DOT__table_1__DOT___zz_30 = VL_RAND_RESET_I(17);
    __PVT__dot__DOT__table_1__DOT___zz_32 = VL_RAND_RESET_I(20);
    __PVT__dot__DOT__table_1__DOT___zz_38 = VL_RAND_RESET_I(20);
    __PVT__dot__DOT__table_1__DOT__S_table_0 = VL_RAND_RESET_I(19);
    __PVT__dot__DOT__table_1__DOT__S_table_1 = VL_RAND_RESET_I(19);
    __PVT__dot__DOT__table_1__DOT__S_table_2 = VL_RAND_RESET_I(19);
    __PVT__dot__DOT__table_1__DOT__S_table_3 = VL_RAND_RESET_I(19);
    __PVT__dot__DOT__table_1__DOT__S_table_4 = VL_RAND_RESET_I(19);
    __PVT__dot__DOT__table_1__DOT__S_table_5 = VL_RAND_RESET_I(19);
    __PVT__dot__DOT__table_1__DOT__S_table_6 = VL_RAND_RESET_I(19);
    __PVT__dot__DOT__table_1__DOT__S_table_7 = VL_RAND_RESET_I(19);
    __PVT__dot__DOT__table_1__DOT__m128 = VL_RAND_RESET_I(16);
    __PVT__dot__DOT__table_1__DOT__m32 = VL_RAND_RESET_I(16);
    __PVT__dot__DOT__table_1__DOT__m16 = VL_RAND_RESET_I(16);
    __PVT__dot__DOT__table_1__DOT__m8 = VL_RAND_RESET_I(16);
    __PVT__dot__DOT__table_1__DOT__m4 = VL_RAND_RESET_I(16);
    __PVT__dot__DOT__table_1__DOT__m2 = VL_RAND_RESET_I(16);
    __PVT__dot__DOT__table_1__DOT___zz_1 = VL_RAND_RESET_I(7);
    __PVT__dot__DOT__table_1__DOT___zz_2 = VL_RAND_RESET_I(5);
    __PVT__dot__DOT__table_1__DOT___zz_3 = VL_RAND_RESET_I(4);
    __PVT__dot__DOT__table_1__DOT___zz_4 = VL_RAND_RESET_I(3);
    __PVT__dot__DOT__table_1__DOT___zz_5 = VL_RAND_RESET_I(2);
    __PVT__dot__DOT__table_1__DOT__tmp1 = VL_RAND_RESET_I(18);
    __PVT__dot__DOT__table_1__DOT___zz_7 = VL_RAND_RESET_I(17);
    __PVT__dot__DOT__table_1__DOT__Coef12 = VL_RAND_RESET_I(19);
    __PVT__dot__DOT__table_1__DOT__Coef127 = VL_RAND_RESET_I(19);
    __PVT__dot__DOT__table_1__DOT__Coef81 = VL_RAND_RESET_I(19);
    __PVT__dot__DOT__table_1__DOT__Coefm100 = VL_RAND_RESET_I(19);
    __PVT__dot__DOT__table_1__DOT__Coefm128 = VL_RAND_RESET_I(19);
    __PVT__dot__DOT__table_1__DOT___zz_8 = VL_RAND_RESET_I(17);
    __PVT__cordic__DOT___zz_8 = VL_RAND_RESET_I(3);
    __PVT__cordic__DOT__xn = VL_RAND_RESET_I(22);
    __PVT__cordic__DOT__yn = VL_RAND_RESET_I(22);
    __PVT__cordic__DOT__res_rg = VL_RAND_RESET_I(8);
    __PVT__cordic__DOT__x_ext = VL_RAND_RESET_I(22);
    __PVT__cordic__DOT__y_ext = VL_RAND_RESET_I(22);
    __PVT__cordic__DOT___zz_2 = VL_RAND_RESET_I(2);
    __PVT__cordic__DOT___zz_4 = VL_RAND_RESET_I(2);
    __PVT__cordic__DOT__cal_cnt = VL_RAND_RESET_I(3);
    __PVT__cordic__DOT__cal_en = VL_RAND_RESET_I(1);
    __PVT__cordic__DOT__cal_start = VL_RAND_RESET_I(1);
    __PVT__cordic__DOT__finish = VL_RAND_RESET_I(1);
    __PVT__cordic__DOT__nozero_flg = VL_RAND_RESET_I(1);
    __PVT__cordic__DOT__xn_rightshift = VL_RAND_RESET_I(22);
    __PVT__cordic__DOT__yn_rightshift = VL_RAND_RESET_I(22);
    __Vdly__dot__DOT__mac_cnt = VL_RAND_RESET_I(3);
}
