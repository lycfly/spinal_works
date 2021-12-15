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
            tracep->chgBit(oldp+0,(vlSymsp->TOP__cal_phase.__PVT__res_last_vld));
            tracep->chgSData(oldp+1,(vlSymsp->TOP__cal_phase.__PVT__res_last),10);
            tracep->chgSData(oldp+2,((0xffffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1 
                                                 >> 2U))),16);
            tracep->chgSData(oldp+3,((0xffffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2 
                                                 >> 2U))),16);
            tracep->chgCData(oldp+4,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_rg),8);
            tracep->chgBit(oldp+5,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__finish));
            tracep->chgBit(oldp+6,(vlSymsp->TOP__cal_phase.__PVT__LastA2stZero));
            tracep->chgCData(oldp+7,(vlSymsp->TOP__cal_phase.__PVT__ph_now),8);
            tracep->chgCData(oldp+8,(vlSymsp->TOP__cal_phase.__PVT__ph_last),8);
            tracep->chgSData(oldp+9,(vlSymsp->TOP__cal_phase.__PVT__ph_delta),9);
            tracep->chgSData(oldp+10,((0x1ffU & (((0x100U 
                                                   & (IData)(vlSymsp->TOP__cal_phase.__PVT__ph_delta))
                                                   ? 
                                                  (~ (IData)(vlSymsp->TOP__cal_phase.__PVT__ph_delta))
                                                   : (IData)(vlSymsp->TOP__cal_phase.__PVT__ph_delta)) 
                                                 + 
                                                 (1U 
                                                  & ((IData)(vlSymsp->TOP__cal_phase.__PVT__ph_delta) 
                                                     >> 8U))))),9);
            tracep->chgBit(oldp+11,((0x40U < (0x1ffU 
                                              & (((0x100U 
                                                   & (IData)(vlSymsp->TOP__cal_phase.__PVT__ph_delta))
                                                   ? 
                                                  (~ (IData)(vlSymsp->TOP__cal_phase.__PVT__ph_delta))
                                                   : (IData)(vlSymsp->TOP__cal_phase.__PVT__ph_delta)) 
                                                 + 
                                                 (1U 
                                                  & ((IData)(vlSymsp->TOP__cal_phase.__PVT__ph_delta) 
                                                     >> 8U)))))));
            tracep->chgIData(oldp+12,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1),19);
            tracep->chgIData(oldp+13,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2),19);
            tracep->chgIData(oldp+14,((0x1ffffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1 
                                                   >> 2U))),17);
            tracep->chgIData(oldp+15,((0x1ffffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2 
                                                   >> 2U))),17);
            tracep->chgIData(oldp+16,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn),22);
            tracep->chgIData(oldp+17,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn),22);
            tracep->chgIData(oldp+18,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__x_ext),22);
            tracep->chgIData(oldp+19,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__y_ext),22);
            tracep->chgIData(oldp+20,((0x3fffffU & 
                                       (- vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__x_ext))),22);
            tracep->chgIData(oldp+21,((0x3fffffU & 
                                       (- vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__y_ext))),22);
            tracep->chgCData(oldp+22,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt),3);
            tracep->chgBit(oldp+23,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en));
            tracep->chgBit(oldp+24,((0U == (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt))));
            tracep->chgBit(oldp+25,((5U == (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt))));
            tracep->chgBit(oldp+26,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__nozero_flg));
            tracep->chgIData(oldp+27,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn_rightshift),22);
            tracep->chgIData(oldp+28,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn_rightshift),22);
            tracep->chgCData(oldp+29,((0xffU & ((IData)(1U) 
                                                << 
                                                (7U 
                                                 & ((IData)(5U) 
                                                    - (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt)))))),8);
        }
        if (VL_UNLIKELY(vlTOPp->__Vm_traceActivity[2U])) {
            tracep->chgCData(oldp+30,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_0),8);
            tracep->chgCData(oldp+31,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_1),8);
            tracep->chgCData(oldp+32,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_2),8);
            tracep->chgCData(oldp+33,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_3),8);
            tracep->chgCData(oldp+34,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_4),8);
            tracep->chgCData(oldp+35,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_5),8);
            tracep->chgCData(oldp+36,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_6),8);
            tracep->chgCData(oldp+37,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_7),8);
            tracep->chgBit(oldp+38,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__in_vld_dly2));
            tracep->chgBit(oldp+39,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__in_vld_dly1));
            tracep->chgSData(oldp+40,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg),11);
            tracep->chgIData(oldp+41,((0x7ffffU & (
                                                   (4U 
                                                    & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                    ? 
                                                   ((2U 
                                                     & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                     ? 
                                                    ((1U 
                                                      & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                      ? vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_38
                                                      : vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coefm128)
                                                     : 
                                                    ((1U 
                                                      & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                      ? vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coefm100
                                                      : vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_32))
                                                    : 
                                                   ((2U 
                                                     & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                     ? 
                                                    ((1U 
                                                      & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                      ? vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef81
                                                      : vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef127)
                                                     : 
                                                    ((1U 
                                                      & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                      ? vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_19
                                                      : vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef12))))),19);
            tracep->chgIData(oldp+42,((0x7ffffU & (
                                                   (4U 
                                                    & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                    ? 
                                                   ((2U 
                                                     & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                     ? 
                                                    ((1U 
                                                      & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                      ? vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_19
                                                      : vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef12)
                                                     : 
                                                    ((1U 
                                                      & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                      ? vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_38
                                                      : vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coefm128))
                                                    : 
                                                   ((2U 
                                                     & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                     ? 
                                                    ((1U 
                                                      & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                      ? vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coefm100
                                                      : vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_32)
                                                     : 
                                                    ((1U 
                                                      & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                      ? vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef81
                                                      : vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef127))))),19);
            tracep->chgCData(oldp+43,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt),3);
            tracep->chgBit(oldp+44,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_en));
            tracep->chgBit(oldp+45,((0U == (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))));
            tracep->chgBit(oldp+46,((7U == (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))));
            tracep->chgCData(oldp+47,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4),8);
            tracep->chgSData(oldp+48,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m128),16);
            tracep->chgSData(oldp+49,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m32),16);
            tracep->chgSData(oldp+50,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m16),16);
            tracep->chgSData(oldp+51,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m8),16);
            tracep->chgSData(oldp+52,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m4),16);
            tracep->chgSData(oldp+53,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m2),16);
            tracep->chgSData(oldp+54,(((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                                       << 8U)),16);
            tracep->chgBit(oldp+55,((1U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                                           >> 7U))));
            tracep->chgIData(oldp+56,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__tmp1),18);
            tracep->chgIData(oldp+57,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef12),19);
            tracep->chgIData(oldp+58,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_19),19);
            tracep->chgIData(oldp+59,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef127),19);
            tracep->chgIData(oldp+60,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef81),19);
            tracep->chgIData(oldp+61,((0x7ffffU & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_32)),19);
            tracep->chgIData(oldp+62,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coefm100),19);
            tracep->chgIData(oldp+63,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coefm128),19);
            tracep->chgIData(oldp+64,((0x7ffffU & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_38)),19);
        }
        tracep->chgBit(oldp+65,(vlTOPp->en));
        tracep->chgBit(oldp+66,(vlTOPp->vin_vld));
        tracep->chgCData(oldp+67,(vlTOPp->v_in_0),8);
        tracep->chgCData(oldp+68,(vlTOPp->v_in_1),8);
        tracep->chgCData(oldp+69,(vlTOPp->v_in_2),8);
        tracep->chgCData(oldp+70,(vlTOPp->v_in_3),8);
        tracep->chgCData(oldp+71,(vlTOPp->v_in_4),8);
        tracep->chgCData(oldp+72,(vlTOPp->v_in_5),8);
        tracep->chgCData(oldp+73,(vlTOPp->v_in_6),8);
        tracep->chgCData(oldp+74,(vlTOPp->v_in_7),8);
        tracep->chgBit(oldp+75,(vlTOPp->res_vld));
        tracep->chgSData(oldp+76,(vlTOPp->res),10);
        tracep->chgBit(oldp+77,(vlTOPp->clk));
        tracep->chgBit(oldp+78,(vlTOPp->reset));
        tracep->chgBit(oldp+79,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__finish));
        tracep->chgBit(oldp+80,(vlSymsp->TOP__cal_phase.ph_vld));
        tracep->chgBit(oldp+81,(vlSymsp->TOP__cal_phase.ph_vld_dly1));
        tracep->chgCData(oldp+82,((0xffU & ((((0x800U 
                                               & ((IData)(vlTOPp->v_in_0) 
                                                  << 4U)) 
                                              | ((IData)(vlTOPp->v_in_0) 
                                                 << 3U)) 
                                             - ((0x800U 
                                                 & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                    << 1U)) 
                                                | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))) 
                                            >> 3U))),8);
        tracep->chgCData(oldp+83,((0xffU & ((((0x800U 
                                               & ((IData)(vlTOPp->v_in_1) 
                                                  << 4U)) 
                                              | ((IData)(vlTOPp->v_in_1) 
                                                 << 3U)) 
                                             - ((0x800U 
                                                 & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                    << 1U)) 
                                                | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))) 
                                            >> 3U))),8);
        tracep->chgCData(oldp+84,((0xffU & ((((0x800U 
                                               & ((IData)(vlTOPp->v_in_2) 
                                                  << 4U)) 
                                              | ((IData)(vlTOPp->v_in_2) 
                                                 << 3U)) 
                                             - ((0x800U 
                                                 & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                    << 1U)) 
                                                | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))) 
                                            >> 3U))),8);
        tracep->chgCData(oldp+85,((0xffU & ((((0x800U 
                                               & ((IData)(vlTOPp->v_in_3) 
                                                  << 4U)) 
                                              | ((IData)(vlTOPp->v_in_3) 
                                                 << 3U)) 
                                             - ((0x800U 
                                                 & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                    << 1U)) 
                                                | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))) 
                                            >> 3U))),8);
        tracep->chgCData(oldp+86,((0xffU & ((((0x800U 
                                               & ((IData)(vlTOPp->v_in_4) 
                                                  << 4U)) 
                                              | ((IData)(vlTOPp->v_in_4) 
                                                 << 3U)) 
                                             - ((0x800U 
                                                 & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                    << 1U)) 
                                                | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))) 
                                            >> 3U))),8);
        tracep->chgCData(oldp+87,((0xffU & ((((0x800U 
                                               & ((IData)(vlTOPp->v_in_5) 
                                                  << 4U)) 
                                              | ((IData)(vlTOPp->v_in_5) 
                                                 << 3U)) 
                                             - ((0x800U 
                                                 & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                    << 1U)) 
                                                | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))) 
                                            >> 3U))),8);
        tracep->chgCData(oldp+88,((0xffU & ((((0x800U 
                                               & ((IData)(vlTOPp->v_in_6) 
                                                  << 4U)) 
                                              | ((IData)(vlTOPp->v_in_6) 
                                                 << 3U)) 
                                             - ((0x800U 
                                                 & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                    << 1U)) 
                                                | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))) 
                                            >> 3U))),8);
        tracep->chgCData(oldp+89,((0xffU & ((((0x800U 
                                               & ((IData)(vlTOPp->v_in_7) 
                                                  << 4U)) 
                                              | ((IData)(vlTOPp->v_in_7) 
                                                 << 3U)) 
                                             - ((0x800U 
                                                 & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                    << 1U)) 
                                                | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))) 
                                            >> 3U))),8);
        tracep->chgSData(oldp+90,((0x7ffU & (((0x400U 
                                               & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_5) 
                                                  << 1U)) 
                                              | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_5)) 
                                             + ((0x400U 
                                                 & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_6) 
                                                    << 1U)) 
                                                | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_6))))),11);
    }
}

void Vcal_phase::traceChgSub1(void* userp, VerilatedVcd* tracep) {
    Vcal_phase__Syms* __restrict vlSymsp = static_cast<Vcal_phase__Syms*>(userp);
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* const oldp = tracep->oldp(vlSymsp->__Vm_baseCode + 92);
    if (false && oldp) {}  // Prevent unused
    // Body
    {
        tracep->chgSData(oldp+0,(((IData)(vlTOPp->v_in_0) 
                                  << 3U)),11);
        tracep->chgSData(oldp+1,(((IData)(vlTOPp->v_in_1) 
                                  << 3U)),11);
        tracep->chgSData(oldp+2,(((IData)(vlTOPp->v_in_2) 
                                  << 3U)),11);
        tracep->chgSData(oldp+3,(((IData)(vlTOPp->v_in_3) 
                                  << 3U)),11);
        tracep->chgSData(oldp+4,(((IData)(vlTOPp->v_in_4) 
                                  << 3U)),11);
        tracep->chgSData(oldp+5,(((IData)(vlTOPp->v_in_5) 
                                  << 3U)),11);
        tracep->chgSData(oldp+6,(((IData)(vlTOPp->v_in_6) 
                                  << 3U)),11);
        tracep->chgSData(oldp+7,(((IData)(vlTOPp->v_in_7) 
                                  << 3U)),11);
        tracep->chgSData(oldp+8,((0xfffU & (((0x800U 
                                              & ((IData)(vlTOPp->v_in_0) 
                                                 << 4U)) 
                                             | ((IData)(vlTOPp->v_in_0) 
                                                << 3U)) 
                                            - ((0x800U 
                                                & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                   << 1U)) 
                                               | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))))),12);
        tracep->chgSData(oldp+9,((0xfffU & (((0x800U 
                                              & ((IData)(vlTOPp->v_in_1) 
                                                 << 4U)) 
                                             | ((IData)(vlTOPp->v_in_1) 
                                                << 3U)) 
                                            - ((0x800U 
                                                & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                   << 1U)) 
                                               | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))))),12);
        tracep->chgSData(oldp+10,((0xfffU & (((0x800U 
                                               & ((IData)(vlTOPp->v_in_2) 
                                                  << 4U)) 
                                              | ((IData)(vlTOPp->v_in_2) 
                                                 << 3U)) 
                                             - ((0x800U 
                                                 & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                    << 1U)) 
                                                | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))))),12);
        tracep->chgSData(oldp+11,((0xfffU & (((0x800U 
                                               & ((IData)(vlTOPp->v_in_3) 
                                                  << 4U)) 
                                              | ((IData)(vlTOPp->v_in_3) 
                                                 << 3U)) 
                                             - ((0x800U 
                                                 & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                    << 1U)) 
                                                | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))))),12);
        tracep->chgSData(oldp+12,((0xfffU & (((0x800U 
                                               & ((IData)(vlTOPp->v_in_4) 
                                                  << 4U)) 
                                              | ((IData)(vlTOPp->v_in_4) 
                                                 << 3U)) 
                                             - ((0x800U 
                                                 & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                    << 1U)) 
                                                | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))))),12);
        tracep->chgSData(oldp+13,((0xfffU & (((0x800U 
                                               & ((IData)(vlTOPp->v_in_5) 
                                                  << 4U)) 
                                              | ((IData)(vlTOPp->v_in_5) 
                                                 << 3U)) 
                                             - ((0x800U 
                                                 & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                    << 1U)) 
                                                | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))))),12);
        tracep->chgSData(oldp+14,((0xfffU & (((0x800U 
                                               & ((IData)(vlTOPp->v_in_6) 
                                                  << 4U)) 
                                              | ((IData)(vlTOPp->v_in_6) 
                                                 << 3U)) 
                                             - ((0x800U 
                                                 & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                    << 1U)) 
                                                | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))))),12);
        tracep->chgSData(oldp+15,((0xfffU & (((0x800U 
                                               & ((IData)(vlTOPp->v_in_7) 
                                                  << 4U)) 
                                              | ((IData)(vlTOPp->v_in_7) 
                                                 << 3U)) 
                                             - ((0x800U 
                                                 & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                    << 1U)) 
                                                | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))))),12);
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
