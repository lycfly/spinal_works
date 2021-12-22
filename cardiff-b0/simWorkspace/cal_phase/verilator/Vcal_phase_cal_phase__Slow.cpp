// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vcal_phase.h for the primary calling header

#include "Vcal_phase_cal_phase.h"
#include "Vcal_phase__Syms.h"

#include "verilated_dpi.h"

//==========
CData/*6:0*/ Vcal_phase_cal_phase::__Vtable1___PVT__cordic__DOT___zz_7[8];

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
    vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v1gtv2 
        = VL_LTS_III(1,8,8, (IData)(vlTOPp->vin2), (IData)(vlTOPp->vin1));
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
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn_rightshift 
        = (0x7ffffU & VL_SHIFTRS_III(19,19,3, vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn, (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt)));
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn_rightshift 
        = (0x7ffffU & VL_SHIFTRS_III(19,19,3, vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn, (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt)));
    vlSymsp->TOP__cal_phase.__Vtableidx1 = vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt;
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_7 
        = vlSymsp->TOP__cal_phase.__Vtable1___PVT__cordic__DOT___zz_7
        [vlSymsp->TOP__cal_phase.__Vtableidx1];
    vlSymsp->TOP__cal_phase.ph_vld = vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__finish;
    vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_3 
        = (0x1ffU & (((0x100U & (VL_SHIFTRS_III(8,8,32, (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__max_v), 1U) 
                                 << 1U)) | (0xffU & 
                                            VL_SHIFTRS_III(8,8,32, (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__max_v), 1U))) 
                     + ((0x100U & (VL_SHIFTRS_III(8,8,32, (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__min_v), 1U) 
                                   << 1U)) | (0xffU 
                                              & VL_SHIFTRS_III(8,8,32, (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__min_v), 1U)))));
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
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_finish 
        = ((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt) 
           == (7U & ((IData)(vlTOPp->rg_cordic_iternum) 
                     - (IData)(1U))));
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_start 
        = ((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en) 
           & (~ (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en_regNext)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin_io_dout_vld 
        = ((~ (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_en)) 
           & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_en_regNext));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__PositiveB 
        = ((0x100U & (((4U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                        ? ((2U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                            ? ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                ? (IData)(vlTOPp->rg_sin_table_7)
                                : (IData)(vlTOPp->rg_sin_table_6))
                            : ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                ? (IData)(vlTOPp->rg_sin_table_5)
                                : (IData)(vlTOPp->rg_sin_table_4)))
                        : ((2U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                            ? ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                ? (IData)(vlTOPp->rg_sin_table_3)
                                : (IData)(vlTOPp->rg_sin_table_2))
                            : ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                ? (IData)(vlTOPp->rg_sin_table_1)
                                : (IData)(vlTOPp->rg_sin_table_0)))) 
                      << 1U)) | ((4U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                  ? ((2U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                      ? ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                          ? (IData)(vlTOPp->rg_sin_table_7)
                                          : (IData)(vlTOPp->rg_sin_table_6))
                                      : ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                          ? (IData)(vlTOPp->rg_sin_table_5)
                                          : (IData)(vlTOPp->rg_sin_table_4)))
                                  : ((2U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                      ? ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                          ? (IData)(vlTOPp->rg_sin_table_3)
                                          : (IData)(vlTOPp->rg_sin_table_2))
                                      : ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                          ? (IData)(vlTOPp->rg_sin_table_1)
                                          : (IData)(vlTOPp->rg_sin_table_0)))));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__PositiveB 
        = ((0x100U & (((4U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                        ? ((2U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                            ? ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                ? (IData)(vlTOPp->rg_cos_table_7)
                                : (IData)(vlTOPp->rg_cos_table_6))
                            : ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                ? (IData)(vlTOPp->rg_cos_table_5)
                                : (IData)(vlTOPp->rg_cos_table_4)))
                        : ((2U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                            ? ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                ? (IData)(vlTOPp->rg_cos_table_3)
                                : (IData)(vlTOPp->rg_cos_table_2))
                            : ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                ? (IData)(vlTOPp->rg_cos_table_1)
                                : (IData)(vlTOPp->rg_cos_table_0)))) 
                      << 1U)) | ((4U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                  ? ((2U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                      ? ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                          ? (IData)(vlTOPp->rg_cos_table_7)
                                          : (IData)(vlTOPp->rg_cos_table_6))
                                      : ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                          ? (IData)(vlTOPp->rg_cos_table_5)
                                          : (IData)(vlTOPp->rg_cos_table_4)))
                                  : ((2U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                      ? ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                          ? (IData)(vlTOPp->rg_cos_table_3)
                                          : (IData)(vlTOPp->rg_cos_table_2))
                                      : ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                          ? (IData)(vlTOPp->rg_cos_table_1)
                                          : (IData)(vlTOPp->rg_cos_table_0)))));
    vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__data_load_finish 
        = ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
           == (7U & ((IData)(vlTOPp->valid_num) - (IData)(1U))));
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

void Vcal_phase_cal_phase::_settle__TOP__cal_phase__3(Vcal_phase__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+      Vcal_phase_cal_phase::_settle__TOP__cal_phase__3\n"); );
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
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
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_start 
        = ((0U == (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt)) 
           & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin_io_dout_vld));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__AddB 
        = (0x1ffU & ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                      >> 9U) + (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__PositiveB)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__MinusB 
        = (0x1ffU & ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                      >> 9U) + (- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__PositiveB))));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__AddB 
        = (0x1ffU & ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                      >> 9U) + (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__PositiveB)));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__MinusB 
        = (0x1ffU & ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                      >> 9U) + (- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__PositiveB))));
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
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__x_ext 
        = (((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_2) 
            << 0x10U) | (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_1));
    vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__y_ext 
        = (((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT___zz_4) 
            << 0x10U) | (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_2));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT___zz_2 
        = ((0x3fe00U & (((4U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                          ? ((2U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                              ? ((1U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                  ? (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                     >> 9U) : (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__MinusB))
                              : ((1U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                  ? (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__MinusB)
                                  : ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                      >> 9U) + ((- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__PositiveB)) 
                                                << 1U))))
                          : ((2U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                              ? ((1U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                  ? ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                      >> 9U) + ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__PositiveB) 
                                                << 1U))
                                  : (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__AddB))
                              : ((1U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                  ? (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__AddB)
                                  : (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                     >> 9U)))) << 9U)) 
           | (0x1ffU & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg));
    vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT___zz_2 
        = ((0x3fe00U & (((4U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                          ? ((2U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                              ? ((1U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                  ? (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                     >> 9U) : (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__MinusB))
                              : ((1U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                  ? (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__MinusB)
                                  : ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                      >> 9U) + ((- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__PositiveB)) 
                                                << 1U))))
                          : ((2U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                              ? ((1U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                  ? ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                      >> 9U) + ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__PositiveB) 
                                                << 1U))
                                  : (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__AddB))
                              : ((1U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                  ? (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__AddB)
                                  : (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                     >> 9U)))) << 9U)) 
           | (0x1ffU & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg));
}

void Vcal_phase_cal_phase::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+      Vcal_phase_cal_phase::_ctor_var_reset\n"); );
    // Body
    rg_calphase_en = VL_RAND_RESET_I(1);
    rg_bypass_mean = VL_RAND_RESET_I(1);
    rg_cordic_iternum = VL_RAND_RESET_I(3);
    rg_leakage_table_0 = VL_RAND_RESET_I(8);
    rg_leakage_table_1 = VL_RAND_RESET_I(8);
    rg_leakage_table_2 = VL_RAND_RESET_I(8);
    rg_leakage_table_3 = VL_RAND_RESET_I(8);
    rg_leakage_table_4 = VL_RAND_RESET_I(8);
    rg_leakage_table_5 = VL_RAND_RESET_I(8);
    rg_leakage_table_6 = VL_RAND_RESET_I(8);
    rg_leakage_table_7 = VL_RAND_RESET_I(8);
    rg_sin_table_0 = VL_RAND_RESET_I(8);
    rg_sin_table_1 = VL_RAND_RESET_I(8);
    rg_sin_table_2 = VL_RAND_RESET_I(8);
    rg_sin_table_3 = VL_RAND_RESET_I(8);
    rg_sin_table_4 = VL_RAND_RESET_I(8);
    rg_sin_table_5 = VL_RAND_RESET_I(8);
    rg_sin_table_6 = VL_RAND_RESET_I(8);
    rg_sin_table_7 = VL_RAND_RESET_I(8);
    rg_cos_table_0 = VL_RAND_RESET_I(8);
    rg_cos_table_1 = VL_RAND_RESET_I(8);
    rg_cos_table_2 = VL_RAND_RESET_I(8);
    rg_cos_table_3 = VL_RAND_RESET_I(8);
    rg_cos_table_4 = VL_RAND_RESET_I(8);
    rg_cos_table_5 = VL_RAND_RESET_I(8);
    rg_cos_table_6 = VL_RAND_RESET_I(8);
    rg_cos_table_7 = VL_RAND_RESET_I(8);
    valid_num = VL_RAND_RESET_I(3);
    vin_vld = VL_RAND_RESET_I(1);
    vin1 = VL_RAND_RESET_I(8);
    vin2 = VL_RAND_RESET_I(8);
    phase_vld = VL_RAND_RESET_I(1);
    phase = VL_RAND_RESET_I(10);
    clk = VL_RAND_RESET_I(1);
    reset = VL_RAND_RESET_I(1);
    ph_vld = VL_RAND_RESET_I(1);
    __PVT__calvn__DOT___zz_13 = VL_RAND_RESET_I(8);
    __PVT__calvn__DOT___zz_14 = VL_RAND_RESET_I(8);
    __PVT__calvn__DOT__Vins_0 = VL_RAND_RESET_I(8);
    __PVT__calvn__DOT__Vins_1 = VL_RAND_RESET_I(8);
    __PVT__calvn__DOT__Vins_2 = VL_RAND_RESET_I(8);
    __PVT__calvn__DOT__Vins_3 = VL_RAND_RESET_I(8);
    __PVT__calvn__DOT__Vins_4 = VL_RAND_RESET_I(8);
    __PVT__calvn__DOT__Vins_5 = VL_RAND_RESET_I(8);
    __PVT__calvn__DOT__Vins_6 = VL_RAND_RESET_I(8);
    __PVT__calvn__DOT__Vins_7 = VL_RAND_RESET_I(8);
    __PVT__calvn__DOT__v_cnt = VL_RAND_RESET_I(3);
    __PVT__calvn__DOT__bigger = VL_RAND_RESET_I(8);
    __PVT__calvn__DOT__smaller = VL_RAND_RESET_I(8);
    __PVT__calvn__DOT__max_v = VL_RAND_RESET_I(8);
    __PVT__calvn__DOT__min_v = VL_RAND_RESET_I(8);
    __PVT__calvn__DOT__v1gtv2 = VL_RAND_RESET_I(1);
    __PVT__calvn__DOT__data_load_finish = VL_RAND_RESET_I(1);
    __PVT__calvn__DOT___zz_3 = VL_RAND_RESET_I(9);
    __PVT__calvn__DOT__mean_finish_regNext = VL_RAND_RESET_I(1);
    __PVT__calvn__DOT___zz_7 = VL_RAND_RESET_I(9);
    __PVT__calvn__DOT___zz_8 = VL_RAND_RESET_I(8);
    __PVT__calvn__DOT___zz_11 = VL_RAND_RESET_I(9);
    __PVT__calvn__DOT___zz_12 = VL_RAND_RESET_I(8);
    __PVT__dot__DOT__booth_sin_io_dout_vld = VL_RAND_RESET_I(1);
    __PVT__dot__DOT__s1 = VL_RAND_RESET_I(19);
    __PVT__dot__DOT__s2 = VL_RAND_RESET_I(19);
    __PVT__dot__DOT__psum1 = VL_RAND_RESET_I(19);
    __PVT__dot__DOT__psum2 = VL_RAND_RESET_I(19);
    __PVT__dot__DOT__vin_minus_mean = VL_RAND_RESET_I(8);
    __PVT__dot__DOT__mac_cnt = VL_RAND_RESET_I(3);
    __PVT__dot__DOT__mac_en = VL_RAND_RESET_I(1);
    __PVT__dot__DOT__mac_start = VL_RAND_RESET_I(1);
    __PVT__dot__DOT__finish = VL_RAND_RESET_I(1);
    __PVT__dot__DOT__booth_start = VL_RAND_RESET_I(1);
    __PVT__dot__DOT___zz_1 = VL_RAND_RESET_I(16);
    __PVT__dot__DOT___zz_2 = VL_RAND_RESET_I(16);
    __PVT__dot__DOT__booth_sin__DOT___zz_2 = VL_RAND_RESET_I(18);
    __PVT__dot__DOT__booth_sin__DOT__shiftReg = VL_RAND_RESET_I(18);
    __PVT__dot__DOT__booth_sin__DOT__PositiveB = VL_RAND_RESET_I(9);
    __PVT__dot__DOT__booth_sin__DOT__AddB = VL_RAND_RESET_I(9);
    __PVT__dot__DOT__booth_sin__DOT__MinusB = VL_RAND_RESET_I(9);
    __PVT__dot__DOT__booth_sin__DOT__cal_cnt = VL_RAND_RESET_I(2);
    __PVT__dot__DOT__booth_sin__DOT__cal_en = VL_RAND_RESET_I(1);
    __PVT__dot__DOT__booth_sin__DOT__cal_en_regNext = VL_RAND_RESET_I(1);
    __PVT__dot__DOT__booth_cos__DOT___zz_2 = VL_RAND_RESET_I(18);
    __PVT__dot__DOT__booth_cos__DOT__shiftReg = VL_RAND_RESET_I(18);
    __PVT__dot__DOT__booth_cos__DOT__PositiveB = VL_RAND_RESET_I(9);
    __PVT__dot__DOT__booth_cos__DOT__AddB = VL_RAND_RESET_I(9);
    __PVT__dot__DOT__booth_cos__DOT__MinusB = VL_RAND_RESET_I(9);
    __PVT__dot__DOT__booth_cos__DOT__cal_cnt = VL_RAND_RESET_I(2);
    __PVT__dot__DOT__booth_cos__DOT__cal_en = VL_RAND_RESET_I(1);
    __PVT__dot__DOT__booth_cos__DOT__cal_en_regNext = VL_RAND_RESET_I(1);
    __PVT__cordic__DOT___zz_7 = VL_RAND_RESET_I(7);
    __PVT__cordic__DOT__xn = VL_RAND_RESET_I(19);
    __PVT__cordic__DOT__yn = VL_RAND_RESET_I(19);
    __PVT__cordic__DOT__res_rg = VL_RAND_RESET_I(11);
    __PVT__cordic__DOT__res_out = VL_RAND_RESET_I(10);
    __PVT__cordic__DOT__x_ext = VL_RAND_RESET_I(19);
    __PVT__cordic__DOT__y_ext = VL_RAND_RESET_I(19);
    __PVT__cordic__DOT___zz_2 = VL_RAND_RESET_I(3);
    __PVT__cordic__DOT___zz_4 = VL_RAND_RESET_I(3);
    __PVT__cordic__DOT__cal_cnt = VL_RAND_RESET_I(3);
    __PVT__cordic__DOT__cal_en = VL_RAND_RESET_I(1);
    __PVT__cordic__DOT__cal_start = VL_RAND_RESET_I(1);
    __PVT__cordic__DOT__cal_finish = VL_RAND_RESET_I(1);
    __PVT__cordic__DOT__finish = VL_RAND_RESET_I(1);
    __PVT__cordic__DOT__nozero_flg = VL_RAND_RESET_I(1);
    __PVT__cordic__DOT__cal_en_regNext = VL_RAND_RESET_I(1);
    __PVT__cordic__DOT__xn_rightshift = VL_RAND_RESET_I(19);
    __PVT__cordic__DOT__yn_rightshift = VL_RAND_RESET_I(19);
    __PVT__cordic__DOT__cal_finish_delay = VL_RAND_RESET_I(1);
    __Vtableidx1 = 0;
    __Vtable1___PVT__cordic__DOT___zz_7[0] = 0x20U;
    __Vtable1___PVT__cordic__DOT___zz_7[1] = 0x13U;
    __Vtable1___PVT__cordic__DOT___zz_7[2] = 0xaU;
    __Vtable1___PVT__cordic__DOT___zz_7[3] = 5U;
    __Vtable1___PVT__cordic__DOT___zz_7[4] = 3U;
    __Vtable1___PVT__cordic__DOT___zz_7[5] = 1U;
    __Vtable1___PVT__cordic__DOT___zz_7[6] = 1U;
    __Vtable1___PVT__cordic__DOT___zz_7[7] = 1U;
    __Vdly__calvn__DOT__v_cnt = VL_RAND_RESET_I(3);
    __Vdly__calvn__DOT__max_v = VL_RAND_RESET_I(8);
    __Vdly__calvn__DOT__min_v = VL_RAND_RESET_I(8);
    __Vdly__dot__DOT__mac_cnt = VL_RAND_RESET_I(3);
    __Vdly__dot__DOT__psum2 = VL_RAND_RESET_I(19);
    __Vdly__dot__DOT__psum1 = VL_RAND_RESET_I(19);
    __Vdly__dot__DOT__booth_sin__DOT__cal_cnt = VL_RAND_RESET_I(2);
    __Vdly__dot__DOT__booth_sin__DOT__cal_en = VL_RAND_RESET_I(1);
    __Vdly__dot__DOT__booth_cos__DOT__cal_cnt = VL_RAND_RESET_I(2);
    __Vdly__dot__DOT__booth_cos__DOT__cal_en = VL_RAND_RESET_I(1);
    __Vdly__cordic__DOT__xn = VL_RAND_RESET_I(19);
    __Vdly__cordic__DOT__yn = VL_RAND_RESET_I(19);
    __Vdly__cordic__DOT__res_rg = VL_RAND_RESET_I(11);
    __Vdly__cordic__DOT__cal_cnt = VL_RAND_RESET_I(3);
    __Vdly__cordic__DOT__nozero_flg = VL_RAND_RESET_I(1);
}
