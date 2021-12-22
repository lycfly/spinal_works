// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vcal_phase__Syms.h"


void Vcal_phase::traceChgTop0(void* userp, VerilatedVcd* tracep) {
    Vcal_phase__Syms* __restrict vlSymsp = static_cast<Vcal_phase__Syms*>(userp);
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    {
        vlTOPp->traceChgSub0(userp, tracep);
        vlTOPp->traceChgSub1(userp, tracep);
    }
}

void Vcal_phase::traceChgSub0(void* userp, VerilatedVcd* tracep) {
    Vcal_phase__Syms* __restrict vlSymsp = static_cast<Vcal_phase__Syms*>(userp);
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* const oldp = tracep->oldp(vlSymsp->__Vm_baseCode + 1);
    if (false && oldp) {}  // Prevent unused
    // Body
    {
        if (VL_UNLIKELY(vlTOPp->__Vm_traceActivity[1U])) {
            tracep->chgCData(oldp+0,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__bigger),8);
            tracep->chgCData(oldp+1,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__smaller),8);
            tracep->chgBit(oldp+2,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v1gtv2));
            tracep->chgBit(oldp+3,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__data_load_finish));
            tracep->chgSData(oldp+4,((0x1ffU & (- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__PositiveB)))),9);
            tracep->chgSData(oldp+5,((0x1ffU & ((- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__PositiveB)) 
                                                << 1U))),9);
            tracep->chgSData(oldp+6,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__PositiveB),9);
            tracep->chgSData(oldp+7,((0x1ffU & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__PositiveB) 
                                                << 1U))),9);
            tracep->chgSData(oldp+8,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__AddB),9);
            tracep->chgSData(oldp+9,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__MinusB),9);
            tracep->chgSData(oldp+10,((0x1ffU & (- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__PositiveB)))),9);
            tracep->chgSData(oldp+11,((0x1ffU & ((- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__PositiveB)) 
                                                 << 1U))),9);
            tracep->chgSData(oldp+12,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__PositiveB),9);
            tracep->chgSData(oldp+13,((0x1ffU & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__PositiveB) 
                                                 << 1U))),9);
            tracep->chgSData(oldp+14,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__AddB),9);
            tracep->chgSData(oldp+15,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__MinusB),9);
            tracep->chgBit(oldp+16,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_finish));
        }
        if (VL_UNLIKELY((vlTOPp->__Vm_traceActivity
                         [1U] | vlTOPp->__Vm_traceActivity
                         [2U]))) {
            tracep->chgSData(oldp+17,((0x1ffU & ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                  >> 9U) 
                                                 + 
                                                 ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__PositiveB) 
                                                  << 1U)))),9);
            tracep->chgSData(oldp+18,((0x1ffU & ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                  >> 9U) 
                                                 + 
                                                 ((- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__PositiveB)) 
                                                  << 1U)))),9);
            tracep->chgSData(oldp+19,((0x1ffU & ((4U 
                                                  & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                                  ? 
                                                 ((2U 
                                                   & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                                   ? 
                                                  ((1U 
                                                    & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                                    ? 
                                                   (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                    >> 9U)
                                                    : (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__MinusB))
                                                   : 
                                                  ((1U 
                                                    & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                                    ? (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__MinusB)
                                                    : 
                                                   ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                     >> 9U) 
                                                    + 
                                                    ((- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__PositiveB)) 
                                                     << 1U))))
                                                  : 
                                                 ((2U 
                                                   & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                                   ? 
                                                  ((1U 
                                                    & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                                    ? 
                                                   ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                     >> 9U) 
                                                    + 
                                                    ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__PositiveB) 
                                                     << 1U))
                                                    : (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__AddB))
                                                   : 
                                                  ((1U 
                                                    & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                                    ? (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__AddB)
                                                    : 
                                                   (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                    >> 9U)))))),9);
            tracep->chgIData(oldp+20,((0x3ffffU & VL_SHIFTRS_III(18,18,32, 
                                                                 ((0x3fe00U 
                                                                   & (((4U 
                                                                        & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                                                        ? 
                                                                       ((2U 
                                                                         & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                                                         ? 
                                                                        ((1U 
                                                                          & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                                                          ? 
                                                                         (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                                          >> 9U)
                                                                          : (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__MinusB))
                                                                         : 
                                                                        ((1U 
                                                                          & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                                                          ? (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__MinusB)
                                                                          : 
                                                                         ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                                           >> 9U) 
                                                                          + 
                                                                          ((- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__PositiveB)) 
                                                                           << 1U))))
                                                                        : 
                                                                       ((2U 
                                                                         & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                                                         ? 
                                                                        ((1U 
                                                                          & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                                                          ? 
                                                                         ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                                           >> 9U) 
                                                                          + 
                                                                          ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__PositiveB) 
                                                                           << 1U))
                                                                          : (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__AddB))
                                                                         : 
                                                                        ((1U 
                                                                          & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                                                          ? (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__AddB)
                                                                          : 
                                                                         (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                                          >> 9U)))) 
                                                                      << 9U)) 
                                                                  | (0x1ffU 
                                                                     & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)), 2U))),18);
            tracep->chgSData(oldp+21,((0x1ffU & ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                  >> 9U) 
                                                 + 
                                                 ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__PositiveB) 
                                                  << 1U)))),9);
            tracep->chgSData(oldp+22,((0x1ffU & ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                  >> 9U) 
                                                 + 
                                                 ((- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__PositiveB)) 
                                                  << 1U)))),9);
            tracep->chgSData(oldp+23,((0x1ffU & ((4U 
                                                  & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                                  ? 
                                                 ((2U 
                                                   & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                                   ? 
                                                  ((1U 
                                                    & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                                    ? 
                                                   (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                    >> 9U)
                                                    : (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__MinusB))
                                                   : 
                                                  ((1U 
                                                    & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                                    ? (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__MinusB)
                                                    : 
                                                   ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                     >> 9U) 
                                                    + 
                                                    ((- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__PositiveB)) 
                                                     << 1U))))
                                                  : 
                                                 ((2U 
                                                   & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                                   ? 
                                                  ((1U 
                                                    & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                                    ? 
                                                   ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                     >> 9U) 
                                                    + 
                                                    ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__PositiveB) 
                                                     << 1U))
                                                    : (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__AddB))
                                                   : 
                                                  ((1U 
                                                    & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                                    ? (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__AddB)
                                                    : 
                                                   (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                    >> 9U)))))),9);
            tracep->chgIData(oldp+24,((0x3ffffU & VL_SHIFTRS_III(18,18,32, 
                                                                 ((0x3fe00U 
                                                                   & (((4U 
                                                                        & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                                                        ? 
                                                                       ((2U 
                                                                         & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                                                         ? 
                                                                        ((1U 
                                                                          & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                                                          ? 
                                                                         (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                                          >> 9U)
                                                                          : (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__MinusB))
                                                                         : 
                                                                        ((1U 
                                                                          & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                                                          ? (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__MinusB)
                                                                          : 
                                                                         ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                                           >> 9U) 
                                                                          + 
                                                                          ((- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__PositiveB)) 
                                                                           << 1U))))
                                                                        : 
                                                                       ((2U 
                                                                         & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                                                         ? 
                                                                        ((1U 
                                                                          & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                                                          ? 
                                                                         ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                                           >> 9U) 
                                                                          + 
                                                                          ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__PositiveB) 
                                                                           << 1U))
                                                                          : (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__AddB))
                                                                         : 
                                                                        ((1U 
                                                                          & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                                                          ? (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__AddB)
                                                                          : 
                                                                         (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                                          >> 9U)))) 
                                                                      << 9U)) 
                                                                  | (0x1ffU 
                                                                     & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)), 2U))),18);
        }
        if (VL_UNLIKELY(vlTOPp->__Vm_traceActivity[2U])) {
            tracep->chgSData(oldp+25,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_out),10);
            tracep->chgCData(oldp+26,((0xffU & ((0x100U 
                                                 & (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_3))
                                                 ? 
                                                ((3U 
                                                  != 
                                                  (3U 
                                                   & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_3) 
                                                      >> 7U)))
                                                  ? 0x80U
                                                  : (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_3))
                                                 : 
                                                ((0x80U 
                                                  & (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_3))
                                                  ? 0x7fU
                                                  : (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_3))))),8);
            tracep->chgCData(oldp+27,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_0),8);
            tracep->chgCData(oldp+28,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_1),8);
            tracep->chgCData(oldp+29,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_2),8);
            tracep->chgCData(oldp+30,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_3),8);
            tracep->chgCData(oldp+31,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_4),8);
            tracep->chgCData(oldp+32,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_5),8);
            tracep->chgCData(oldp+33,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_6),8);
            tracep->chgCData(oldp+34,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_7),8);
            tracep->chgBit(oldp+35,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__mean_finish_regNext));
            tracep->chgSData(oldp+36,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_1),16);
            tracep->chgSData(oldp+37,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_2),16);
            tracep->chgBit(oldp+38,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__finish));
            tracep->chgBit(oldp+39,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__finish));
            tracep->chgCData(oldp+40,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt),3);
            tracep->chgCData(oldp+41,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__max_v),8);
            tracep->chgCData(oldp+42,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__min_v),8);
            tracep->chgBit(oldp+43,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin_io_dout_vld));
            tracep->chgSData(oldp+44,((0xffffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                  >> 1U))),16);
            tracep->chgSData(oldp+45,((0xffffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                  >> 1U))),16);
            tracep->chgIData(oldp+46,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__s1),19);
            tracep->chgIData(oldp+47,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__s2),19);
            tracep->chgIData(oldp+48,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1),19);
            tracep->chgIData(oldp+49,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2),19);
            tracep->chgCData(oldp+50,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__vin_minus_mean),8);
            tracep->chgCData(oldp+51,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt),3);
            tracep->chgBit(oldp+52,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_en));
            tracep->chgBit(oldp+53,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_start));
            tracep->chgBit(oldp+54,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_start));
            tracep->chgIData(oldp+55,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg),18);
            tracep->chgCData(oldp+56,((7U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)),3);
            tracep->chgCData(oldp+57,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_cnt),2);
            tracep->chgBit(oldp+58,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_en));
            tracep->chgSData(oldp+59,((0x1ffU & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)),9);
            tracep->chgSData(oldp+60,((0x1ffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                 >> 9U))),9);
            tracep->chgIData(oldp+61,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg),18);
            tracep->chgCData(oldp+62,((7U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)),3);
            tracep->chgCData(oldp+63,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_cnt),2);
            tracep->chgBit(oldp+64,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_en));
            tracep->chgSData(oldp+65,((0x1ffU & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)),9);
        }
    }
}

void Vcal_phase::traceChgSub1(void* userp, VerilatedVcd* tracep) {
    Vcal_phase__Syms* __restrict vlSymsp = static_cast<Vcal_phase__Syms*>(userp);
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* const oldp = tracep->oldp(vlSymsp->__Vm_baseCode + 67);
    if (false && oldp) {}  // Prevent unused
    // Body
    {
        if (VL_UNLIKELY(vlTOPp->__Vm_traceActivity[2U])) {
            tracep->chgSData(oldp+0,((0x1ffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                >> 9U))),9);
            tracep->chgIData(oldp+1,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn),19);
            tracep->chgIData(oldp+2,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn),19);
            tracep->chgSData(oldp+3,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_rg),11);
            tracep->chgIData(oldp+4,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__x_ext),19);
            tracep->chgIData(oldp+5,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__y_ext),19);
            tracep->chgIData(oldp+6,((0x7ffffU & (- vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__x_ext))),19);
            tracep->chgIData(oldp+7,((0x7ffffU & (- vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__y_ext))),19);
            tracep->chgCData(oldp+8,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt),3);
            tracep->chgBit(oldp+9,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en));
            tracep->chgBit(oldp+10,(((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en) 
                                     & (~ (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en_regNext)))));
            tracep->chgBit(oldp+11,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__nozero_flg));
            tracep->chgBit(oldp+12,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en_regNext));
            tracep->chgIData(oldp+13,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn_rightshift),19);
            tracep->chgIData(oldp+14,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn_rightshift),19);
            tracep->chgBit(oldp+15,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_finish_delay));
        }
        tracep->chgBit(oldp+16,(vlTOPp->rg_calphase_en));
        tracep->chgBit(oldp+17,(vlTOPp->rg_bypass_mean));
        tracep->chgCData(oldp+18,(vlTOPp->rg_cordic_iternum),3);
        tracep->chgCData(oldp+19,(vlTOPp->rg_leakage_table_0),8);
        tracep->chgCData(oldp+20,(vlTOPp->rg_leakage_table_1),8);
        tracep->chgCData(oldp+21,(vlTOPp->rg_leakage_table_2),8);
        tracep->chgCData(oldp+22,(vlTOPp->rg_leakage_table_3),8);
        tracep->chgCData(oldp+23,(vlTOPp->rg_leakage_table_4),8);
        tracep->chgCData(oldp+24,(vlTOPp->rg_leakage_table_5),8);
        tracep->chgCData(oldp+25,(vlTOPp->rg_leakage_table_6),8);
        tracep->chgCData(oldp+26,(vlTOPp->rg_leakage_table_7),8);
        tracep->chgCData(oldp+27,(vlTOPp->rg_sin_table_0),8);
        tracep->chgCData(oldp+28,(vlTOPp->rg_sin_table_1),8);
        tracep->chgCData(oldp+29,(vlTOPp->rg_sin_table_2),8);
        tracep->chgCData(oldp+30,(vlTOPp->rg_sin_table_3),8);
        tracep->chgCData(oldp+31,(vlTOPp->rg_sin_table_4),8);
        tracep->chgCData(oldp+32,(vlTOPp->rg_sin_table_5),8);
        tracep->chgCData(oldp+33,(vlTOPp->rg_sin_table_6),8);
        tracep->chgCData(oldp+34,(vlTOPp->rg_sin_table_7),8);
        tracep->chgCData(oldp+35,(vlTOPp->rg_cos_table_0),8);
        tracep->chgCData(oldp+36,(vlTOPp->rg_cos_table_1),8);
        tracep->chgCData(oldp+37,(vlTOPp->rg_cos_table_2),8);
        tracep->chgCData(oldp+38,(vlTOPp->rg_cos_table_3),8);
        tracep->chgCData(oldp+39,(vlTOPp->rg_cos_table_4),8);
        tracep->chgCData(oldp+40,(vlTOPp->rg_cos_table_5),8);
        tracep->chgCData(oldp+41,(vlTOPp->rg_cos_table_6),8);
        tracep->chgCData(oldp+42,(vlTOPp->rg_cos_table_7),8);
        tracep->chgCData(oldp+43,(vlTOPp->valid_num),3);
        tracep->chgBit(oldp+44,(vlTOPp->vin_vld));
        tracep->chgCData(oldp+45,(vlTOPp->vin1),8);
        tracep->chgCData(oldp+46,(vlTOPp->vin2),8);
        tracep->chgBit(oldp+47,(vlTOPp->phase_vld));
        tracep->chgSData(oldp+48,(vlTOPp->phase),10);
        tracep->chgBit(oldp+49,(vlTOPp->clk));
        tracep->chgBit(oldp+50,(vlTOPp->reset));
        tracep->chgBit(oldp+51,(vlSymsp->TOP__cal_phase.ph_vld));
        tracep->chgCData(oldp+52,((7U & ((0xfU & ((IData)(vlTOPp->valid_num) 
                                                  << 1U)) 
                                         - (IData)(1U)))),3);
        tracep->chgBit(oldp+53,((((IData)(vlTOPp->rg_calphase_en) 
                                  & (IData)(vlTOPp->vin_vld)) 
                                 & (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__data_load_finish))));
        tracep->chgBit(oldp+54,(((~ (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_en)) 
                                 & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_en_regNext))));
        tracep->chgBit(oldp+55,((((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt) 
                                  == (7U & (((0xfU 
                                              & ((IData)(vlTOPp->valid_num) 
                                                 << 1U)) 
                                             - (IData)(1U)) 
                                            - (IData)(1U)))) 
                                 & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin_io_dout_vld))));
        tracep->chgCData(oldp+56,(((4U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
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
                                            : (IData)(vlTOPp->rg_sin_table_0))))),8);
        tracep->chgBit(oldp+57,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_en_regNext));
        tracep->chgCData(oldp+58,(((4U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
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
                                            : (IData)(vlTOPp->rg_cos_table_0))))),8);
        tracep->chgBit(oldp+59,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_en_regNext));
    }
}

void Vcal_phase::traceCleanup(void* userp, VerilatedVcd* /*unused*/) {
    Vcal_phase__Syms* __restrict vlSymsp = static_cast<Vcal_phase__Syms*>(userp);
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    {
        vlSymsp->__Vm_activity = false;
        vlTOPp->__Vm_traceActivity[0U] = 0U;
        vlTOPp->__Vm_traceActivity[1U] = 0U;
        vlTOPp->__Vm_traceActivity[2U] = 0U;
    }
}
