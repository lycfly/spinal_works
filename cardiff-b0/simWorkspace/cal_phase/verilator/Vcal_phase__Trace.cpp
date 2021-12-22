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
            tracep->chgCData(oldp+6,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT___zz_1),8);
            tracep->chgCData(oldp+7,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_6),8);
            tracep->chgCData(oldp+8,((0xffU & (- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_6)))),8);
            tracep->chgCData(oldp+9,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT___zz_1),8);
            tracep->chgBit(oldp+10,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_finish));
        }
        if (VL_UNLIKELY(vlTOPp->__Vm_traceActivity[2U])) {
            tracep->chgSData(oldp+11,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_out),10);
            tracep->chgCData(oldp+12,((0xffU & ((0x100U 
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
            tracep->chgCData(oldp+13,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_0),8);
            tracep->chgCData(oldp+14,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_1),8);
            tracep->chgCData(oldp+15,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_2),8);
            tracep->chgCData(oldp+16,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_3),8);
            tracep->chgCData(oldp+17,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_4),8);
            tracep->chgCData(oldp+18,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_5),8);
            tracep->chgCData(oldp+19,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_6),8);
            tracep->chgCData(oldp+20,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_7),8);
            tracep->chgBit(oldp+21,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__mean_finish_regNext));
            tracep->chgSData(oldp+22,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_1),16);
            tracep->chgSData(oldp+23,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_2),16);
            tracep->chgBit(oldp+24,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__finish));
            tracep->chgBit(oldp+25,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__finish));
            tracep->chgCData(oldp+26,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt),3);
            tracep->chgCData(oldp+27,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__max_v),8);
            tracep->chgCData(oldp+28,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__min_v),8);
            tracep->chgBit(oldp+29,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin_io_dout_vld));
            tracep->chgSData(oldp+30,((0xffffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                  >> 1U))),16);
            tracep->chgSData(oldp+31,((0xffffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                  >> 1U))),16);
            tracep->chgIData(oldp+32,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__s1),19);
            tracep->chgIData(oldp+33,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__s2),19);
            tracep->chgIData(oldp+34,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1),19);
            tracep->chgIData(oldp+35,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2),19);
            tracep->chgCData(oldp+36,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__vin_minus_mean),8);
            tracep->chgCData(oldp+37,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt),3);
            tracep->chgBit(oldp+38,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_en));
            tracep->chgBit(oldp+39,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_start));
            tracep->chgBit(oldp+40,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_start));
            tracep->chgIData(oldp+41,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg),17);
            tracep->chgCData(oldp+42,((3U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)),2);
            tracep->chgCData(oldp+43,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_cnt),3);
            tracep->chgBit(oldp+44,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_en));
            tracep->chgIData(oldp+45,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg),17);
            tracep->chgCData(oldp+46,((3U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)),2);
            tracep->chgCData(oldp+47,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_cnt),3);
            tracep->chgBit(oldp+48,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_en));
            tracep->chgIData(oldp+49,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn),19);
            tracep->chgIData(oldp+50,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn),19);
            tracep->chgSData(oldp+51,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_rg),11);
            tracep->chgIData(oldp+52,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__x_ext),19);
            tracep->chgIData(oldp+53,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__y_ext),19);
            tracep->chgIData(oldp+54,((0x7ffffU & (- vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__x_ext))),19);
            tracep->chgIData(oldp+55,((0x7ffffU & (- vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__y_ext))),19);
            tracep->chgCData(oldp+56,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt),3);
            tracep->chgBit(oldp+57,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en));
            tracep->chgBit(oldp+58,(((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en) 
                                     & (~ (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en_regNext)))));
            tracep->chgBit(oldp+59,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__nozero_flg));
            tracep->chgBit(oldp+60,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en_regNext));
            tracep->chgIData(oldp+61,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn_rightshift),19);
            tracep->chgIData(oldp+62,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn_rightshift),19);
            tracep->chgBit(oldp+63,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_finish_delay));
        }
        tracep->chgBit(oldp+64,(vlTOPp->rg_calphase_en));
        tracep->chgBit(oldp+65,(vlTOPp->rg_bypass_mean));
        tracep->chgCData(oldp+66,(vlTOPp->rg_cordic_iternum),3);
        tracep->chgCData(oldp+67,(vlTOPp->rg_leakage_table_0),8);
        tracep->chgCData(oldp+68,(vlTOPp->rg_leakage_table_1),8);
        tracep->chgCData(oldp+69,(vlTOPp->rg_leakage_table_2),8);
        tracep->chgCData(oldp+70,(vlTOPp->rg_leakage_table_3),8);
        tracep->chgCData(oldp+71,(vlTOPp->rg_leakage_table_4),8);
        tracep->chgCData(oldp+72,(vlTOPp->rg_leakage_table_5),8);
        tracep->chgCData(oldp+73,(vlTOPp->rg_leakage_table_6),8);
        tracep->chgCData(oldp+74,(vlTOPp->rg_leakage_table_7),8);
        tracep->chgCData(oldp+75,(vlTOPp->rg_sin_table_0),8);
        tracep->chgCData(oldp+76,(vlTOPp->rg_sin_table_1),8);
        tracep->chgCData(oldp+77,(vlTOPp->rg_sin_table_2),8);
        tracep->chgCData(oldp+78,(vlTOPp->rg_sin_table_3),8);
        tracep->chgCData(oldp+79,(vlTOPp->rg_sin_table_4),8);
        tracep->chgCData(oldp+80,(vlTOPp->rg_sin_table_5),8);
        tracep->chgCData(oldp+81,(vlTOPp->rg_sin_table_6),8);
        tracep->chgCData(oldp+82,(vlTOPp->rg_sin_table_7),8);
        tracep->chgCData(oldp+83,(vlTOPp->rg_cos_table_0),8);
        tracep->chgCData(oldp+84,(vlTOPp->rg_cos_table_1),8);
        tracep->chgCData(oldp+85,(vlTOPp->rg_cos_table_2),8);
        tracep->chgCData(oldp+86,(vlTOPp->rg_cos_table_3),8);
        tracep->chgCData(oldp+87,(vlTOPp->rg_cos_table_4),8);
        tracep->chgCData(oldp+88,(vlTOPp->rg_cos_table_5),8);
        tracep->chgCData(oldp+89,(vlTOPp->rg_cos_table_6),8);
        tracep->chgCData(oldp+90,(vlTOPp->rg_cos_table_7),8);
        tracep->chgCData(oldp+91,(vlTOPp->valid_num),3);
        tracep->chgBit(oldp+92,(vlTOPp->vin_vld));
        tracep->chgCData(oldp+93,(vlTOPp->vin1),8);
        tracep->chgCData(oldp+94,(vlTOPp->vin2),8);
        tracep->chgBit(oldp+95,(vlTOPp->phase_vld));
        tracep->chgSData(oldp+96,(vlTOPp->phase),10);
        tracep->chgBit(oldp+97,(vlTOPp->clk));
        tracep->chgBit(oldp+98,(vlTOPp->reset));
        tracep->chgBit(oldp+99,(vlSymsp->TOP__cal_phase.ph_vld));
        tracep->chgCData(oldp+100,((7U & ((0xfU & ((IData)(vlTOPp->valid_num) 
                                                   << 1U)) 
                                          - (IData)(1U)))),3);
        tracep->chgBit(oldp+101,((((IData)(vlTOPp->rg_calphase_en) 
                                   & (IData)(vlTOPp->vin_vld)) 
                                  & (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__data_load_finish))));
        tracep->chgBit(oldp+102,(((~ (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_en)) 
                                  & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_en_regNext))));
        tracep->chgBit(oldp+103,((((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt) 
                                   == (7U & (((0xfU 
                                               & ((IData)(vlTOPp->valid_num) 
                                                  << 1U)) 
                                              - (IData)(1U)) 
                                             - (IData)(1U)))) 
                                  & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin_io_dout_vld))));
        tracep->chgCData(oldp+104,((0xffU & ((1U & 
                                              ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                >> 1U) 
                                               & (~ vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)))
                                              ? (- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_5))
                                              : (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_5)))),8);
        tracep->chgBit(oldp+105,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_en_regNext));
        tracep->chgCData(oldp+106,((0xffU & ((1U & 
                                              ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                >> 1U) 
                                               & (~ vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)))
                                              ? (- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_6))
                                              : (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_6)))),8);
        tracep->chgBit(oldp+107,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_en_regNext));
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
