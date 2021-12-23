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
            tracep->chgCData(oldp+4,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_5),8);
            tracep->chgCData(oldp+5,((0xffU & (- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_5)))),8);
            tracep->chgCData(oldp+6,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_6),8);
            tracep->chgCData(oldp+7,((0xffU & (- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_6)))),8);
            tracep->chgBit(oldp+8,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_finish));
        }
        if (VL_UNLIKELY((vlTOPp->__Vm_traceActivity
                         [1U] | vlTOPp->__Vm_traceActivity
                         [2U]))) {
            tracep->chgCData(oldp+9,((0xffU & ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                >> 9U) 
                                               + (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_5)))),8);
            tracep->chgCData(oldp+10,((0xffU & ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                 >> 9U) 
                                                + (- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_5))))),8);
            tracep->chgCData(oldp+11,((0xffU & (((0U 
                                                  == 
                                                  (3U 
                                                   & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)) 
                                                 | (3U 
                                                    == 
                                                    (3U 
                                                     & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)))
                                                 ? 
                                                (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                 >> 9U)
                                                 : 
                                                ((2U 
                                                  == 
                                                  (3U 
                                                   & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg))
                                                  ? 
                                                 ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                   >> 9U) 
                                                  + 
                                                  (- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_5)))
                                                  : 
                                                 ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                   >> 9U) 
                                                  + (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_5)))))),8);
            tracep->chgIData(oldp+12,((0x1ffffU & VL_SHIFTRS_III(17,17,32, 
                                                                 ((0x1fe00U 
                                                                   & ((((0U 
                                                                         == 
                                                                         (3U 
                                                                          & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)) 
                                                                        | (3U 
                                                                           == 
                                                                           (3U 
                                                                            & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)))
                                                                        ? 
                                                                       (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                                        >> 9U)
                                                                        : 
                                                                       ((2U 
                                                                         == 
                                                                         (3U 
                                                                          & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg))
                                                                         ? 
                                                                        ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                                          >> 9U) 
                                                                         + 
                                                                         (- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_5)))
                                                                         : 
                                                                        ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                                          >> 9U) 
                                                                         + (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_5)))) 
                                                                      << 9U)) 
                                                                  | (0x1ffU 
                                                                     & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)), 1U))),17);
            tracep->chgCData(oldp+13,((0xffU & ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                 >> 9U) 
                                                + (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_6)))),8);
            tracep->chgCData(oldp+14,((0xffU & ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                 >> 9U) 
                                                + (- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_6))))),8);
            tracep->chgCData(oldp+15,((0xffU & (((0U 
                                                  == 
                                                  (3U 
                                                   & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)) 
                                                 | (3U 
                                                    == 
                                                    (3U 
                                                     & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)))
                                                 ? 
                                                (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                 >> 9U)
                                                 : 
                                                ((2U 
                                                  == 
                                                  (3U 
                                                   & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg))
                                                  ? 
                                                 ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                   >> 9U) 
                                                  + 
                                                  (- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_6)))
                                                  : 
                                                 ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                   >> 9U) 
                                                  + (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_6)))))),8);
            tracep->chgIData(oldp+16,((0x1ffffU & VL_SHIFTRS_III(17,17,32, 
                                                                 ((0x1fe00U 
                                                                   & ((((0U 
                                                                         == 
                                                                         (3U 
                                                                          & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)) 
                                                                        | (3U 
                                                                           == 
                                                                           (3U 
                                                                            & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)))
                                                                        ? 
                                                                       (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                                        >> 9U)
                                                                        : 
                                                                       ((2U 
                                                                         == 
                                                                         (3U 
                                                                          & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg))
                                                                         ? 
                                                                        ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                                          >> 9U) 
                                                                         + 
                                                                         (- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_6)))
                                                                         : 
                                                                        ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                                          >> 9U) 
                                                                         + (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_6)))) 
                                                                      << 9U)) 
                                                                  | (0x1ffU 
                                                                     & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)), 1U))),17);
        }
        if (VL_UNLIKELY(vlTOPp->__Vm_traceActivity[2U])) {
            tracep->chgSData(oldp+17,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_out),10);
            tracep->chgCData(oldp+18,((0xffU & ((0x100U 
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
            tracep->chgCData(oldp+19,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_0),8);
            tracep->chgCData(oldp+20,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_1),8);
            tracep->chgCData(oldp+21,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_2),8);
            tracep->chgCData(oldp+22,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_3),8);
            tracep->chgCData(oldp+23,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_4),8);
            tracep->chgCData(oldp+24,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_5),8);
            tracep->chgCData(oldp+25,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_6),8);
            tracep->chgCData(oldp+26,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_7),8);
            tracep->chgBit(oldp+27,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__mean_finish_regNext));
            tracep->chgSData(oldp+28,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_1),16);
            tracep->chgSData(oldp+29,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_2),16);
            tracep->chgBit(oldp+30,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__finish));
            tracep->chgBit(oldp+31,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__finish));
            tracep->chgCData(oldp+32,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt),3);
            tracep->chgCData(oldp+33,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__max_v),8);
            tracep->chgCData(oldp+34,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__min_v),8);
            tracep->chgBit(oldp+35,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin_io_dout_vld));
            tracep->chgSData(oldp+36,((0xffffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                  >> 1U))),16);
            tracep->chgSData(oldp+37,((0xffffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                  >> 1U))),16);
            tracep->chgIData(oldp+38,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__s1),19);
            tracep->chgIData(oldp+39,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__s2),19);
            tracep->chgIData(oldp+40,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1),19);
            tracep->chgIData(oldp+41,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2),19);
            tracep->chgCData(oldp+42,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__vin_minus_mean),8);
            tracep->chgCData(oldp+43,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt),3);
            tracep->chgBit(oldp+44,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_en));
            tracep->chgBit(oldp+45,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_start));
            tracep->chgBit(oldp+46,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_start));
            tracep->chgIData(oldp+47,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg),17);
            tracep->chgCData(oldp+48,((3U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)),2);
            tracep->chgCData(oldp+49,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_cnt),3);
            tracep->chgBit(oldp+50,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_en));
            tracep->chgSData(oldp+51,((0x1ffU & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)),9);
            tracep->chgCData(oldp+52,((0xffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                >> 9U))),8);
            tracep->chgIData(oldp+53,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg),17);
            tracep->chgCData(oldp+54,((3U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)),2);
            tracep->chgCData(oldp+55,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_cnt),3);
            tracep->chgBit(oldp+56,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_en));
            tracep->chgSData(oldp+57,((0x1ffU & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)),9);
            tracep->chgCData(oldp+58,((0xffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                >> 9U))),8);
            tracep->chgIData(oldp+59,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn),19);
            tracep->chgIData(oldp+60,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn),19);
            tracep->chgSData(oldp+61,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_rg),11);
            tracep->chgIData(oldp+62,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__x_ext),19);
            tracep->chgIData(oldp+63,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__y_ext),19);
            tracep->chgIData(oldp+64,((0x7ffffU & (- vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__x_ext))),19);
            tracep->chgIData(oldp+65,((0x7ffffU & (- vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__y_ext))),19);
            tracep->chgCData(oldp+66,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt),3);
            tracep->chgBit(oldp+67,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en));
            tracep->chgBit(oldp+68,(((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en) 
                                     & (~ (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en_regNext)))));
            tracep->chgBit(oldp+69,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__nozero_flg));
            tracep->chgBit(oldp+70,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en_regNext));
            tracep->chgIData(oldp+71,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn_rightshift),19);
            tracep->chgIData(oldp+72,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn_rightshift),19);
            tracep->chgBit(oldp+73,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_finish_delay));
        }
        tracep->chgBit(oldp+74,(vlTOPp->rg_calphase_en));
        tracep->chgBit(oldp+75,(vlTOPp->rg_bypass_mean));
        tracep->chgCData(oldp+76,(vlTOPp->rg_cordic_iternum),3);
        tracep->chgCData(oldp+77,(vlTOPp->rg_leakage_table_0),8);
        tracep->chgCData(oldp+78,(vlTOPp->rg_leakage_table_1),8);
        tracep->chgCData(oldp+79,(vlTOPp->rg_leakage_table_2),8);
        tracep->chgCData(oldp+80,(vlTOPp->rg_leakage_table_3),8);
        tracep->chgCData(oldp+81,(vlTOPp->rg_leakage_table_4),8);
        tracep->chgCData(oldp+82,(vlTOPp->rg_leakage_table_5),8);
        tracep->chgCData(oldp+83,(vlTOPp->rg_leakage_table_6),8);
        tracep->chgCData(oldp+84,(vlTOPp->rg_leakage_table_7),8);
        tracep->chgCData(oldp+85,(vlTOPp->rg_sin_table_0),8);
        tracep->chgCData(oldp+86,(vlTOPp->rg_sin_table_1),8);
        tracep->chgCData(oldp+87,(vlTOPp->rg_sin_table_2),8);
        tracep->chgCData(oldp+88,(vlTOPp->rg_sin_table_3),8);
        tracep->chgCData(oldp+89,(vlTOPp->rg_sin_table_4),8);
        tracep->chgCData(oldp+90,(vlTOPp->rg_sin_table_5),8);
        tracep->chgCData(oldp+91,(vlTOPp->rg_sin_table_6),8);
        tracep->chgCData(oldp+92,(vlTOPp->rg_sin_table_7),8);
        tracep->chgCData(oldp+93,(vlTOPp->rg_cos_table_0),8);
        tracep->chgCData(oldp+94,(vlTOPp->rg_cos_table_1),8);
        tracep->chgCData(oldp+95,(vlTOPp->rg_cos_table_2),8);
        tracep->chgCData(oldp+96,(vlTOPp->rg_cos_table_3),8);
        tracep->chgCData(oldp+97,(vlTOPp->rg_cos_table_4),8);
        tracep->chgCData(oldp+98,(vlTOPp->rg_cos_table_5),8);
        tracep->chgCData(oldp+99,(vlTOPp->rg_cos_table_6),8);
        tracep->chgCData(oldp+100,(vlTOPp->rg_cos_table_7),8);
        tracep->chgCData(oldp+101,(vlTOPp->valid_num),3);
        tracep->chgBit(oldp+102,(vlTOPp->vin_vld));
        tracep->chgCData(oldp+103,(vlTOPp->vin1),8);
        tracep->chgCData(oldp+104,(vlTOPp->vin2),8);
        tracep->chgBit(oldp+105,(vlTOPp->phase_vld));
        tracep->chgSData(oldp+106,(vlTOPp->phase),10);
        tracep->chgBit(oldp+107,(vlTOPp->clk));
        tracep->chgBit(oldp+108,(vlTOPp->reset));
        tracep->chgBit(oldp+109,(vlSymsp->TOP__cal_phase.ph_vld));
        tracep->chgCData(oldp+110,((7U & ((0xfU & ((IData)(vlTOPp->valid_num) 
                                                   << 1U)) 
                                          - (IData)(1U)))),3);
        tracep->chgBit(oldp+111,((((IData)(vlTOPp->rg_calphase_en) 
                                   & (IData)(vlTOPp->vin_vld)) 
                                  & (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__data_load_finish))));
        tracep->chgBit(oldp+112,(((~ (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_en)) 
                                  & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_en_regNext))));
        tracep->chgBit(oldp+113,((((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt) 
                                   == (7U & (((0xfU 
                                               & ((IData)(vlTOPp->valid_num) 
                                                  << 1U)) 
                                              - (IData)(1U)) 
                                             - (IData)(1U)))) 
                                  & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin_io_dout_vld))));
    }
}

void Vcal_phase::traceChgSub1(void* userp, VerilatedVcd* tracep) {
    Vcal_phase__Syms* __restrict vlSymsp = static_cast<Vcal_phase__Syms*>(userp);
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* const oldp = tracep->oldp(vlSymsp->__Vm_baseCode + 115);
    if (false && oldp) {}  // Prevent unused
    // Body
    {
        tracep->chgBit(oldp+0,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_en_regNext));
        tracep->chgBit(oldp+1,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_en_regNext));
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
