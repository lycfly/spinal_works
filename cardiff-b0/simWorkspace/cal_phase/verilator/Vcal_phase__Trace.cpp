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
            tracep->chgIData(oldp+4,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__s1),19);
            tracep->chgIData(oldp+5,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__s2),19);
            tracep->chgBit(oldp+6,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_finish));
            tracep->chgBit(oldp+7,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_finish));
        }
        if (VL_UNLIKELY(vlTOPp->__Vm_traceActivity[2U])) {
            tracep->chgSData(oldp+8,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_out),10);
            tracep->chgCData(oldp+9,((0xffU & ((0x100U 
                                                & (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_3))
                                                ? (
                                                   (3U 
                                                    != 
                                                    (3U 
                                                     & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_3) 
                                                        >> 7U)))
                                                    ? 0x80U
                                                    : (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_3))
                                                : (
                                                   (0x80U 
                                                    & (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_3))
                                                    ? 0x7fU
                                                    : (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_3))))),8);
            tracep->chgCData(oldp+10,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_0),8);
            tracep->chgCData(oldp+11,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_1),8);
            tracep->chgCData(oldp+12,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_2),8);
            tracep->chgCData(oldp+13,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_3),8);
            tracep->chgCData(oldp+14,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_4),8);
            tracep->chgCData(oldp+15,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_5),8);
            tracep->chgCData(oldp+16,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_6),8);
            tracep->chgCData(oldp+17,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_7),8);
            tracep->chgSData(oldp+18,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_1),16);
            tracep->chgSData(oldp+19,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_2),16);
            tracep->chgBit(oldp+20,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__finish));
            tracep->chgCData(oldp+21,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt),3);
            tracep->chgCData(oldp+22,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__max_v),8);
            tracep->chgCData(oldp+23,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__min_v),8);
            tracep->chgIData(oldp+24,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1),19);
            tracep->chgIData(oldp+25,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2),19);
            tracep->chgCData(oldp+26,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__vin_minus_mean),8);
            tracep->chgCData(oldp+27,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt),3);
            tracep->chgIData(oldp+28,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn),19);
            tracep->chgIData(oldp+29,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn),19);
            tracep->chgSData(oldp+30,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_rg),11);
            tracep->chgIData(oldp+31,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__x_ext),19);
            tracep->chgIData(oldp+32,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__y_ext),19);
            tracep->chgIData(oldp+33,((0x7ffffU & (- vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__x_ext))),19);
            tracep->chgIData(oldp+34,((0x7ffffU & (- vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__y_ext))),19);
            tracep->chgCData(oldp+35,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt),3);
            tracep->chgBit(oldp+36,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en));
            tracep->chgBit(oldp+37,(((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en) 
                                     & (~ (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en_regNext)))));
            tracep->chgBit(oldp+38,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__nozero_flg));
            tracep->chgBit(oldp+39,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en_regNext));
            tracep->chgIData(oldp+40,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn_rightshift),19);
            tracep->chgIData(oldp+41,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn_rightshift),19);
            tracep->chgBit(oldp+42,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_finish_delay));
        }
        tracep->chgBit(oldp+43,(vlTOPp->rg_calphase_en));
        tracep->chgBit(oldp+44,(vlTOPp->rg_bypass_mean));
        tracep->chgCData(oldp+45,(vlTOPp->rg_cordic_iternum),3);
        tracep->chgCData(oldp+46,(vlTOPp->rg_leakage_table_0),8);
        tracep->chgCData(oldp+47,(vlTOPp->rg_leakage_table_1),8);
        tracep->chgCData(oldp+48,(vlTOPp->rg_leakage_table_2),8);
        tracep->chgCData(oldp+49,(vlTOPp->rg_leakage_table_3),8);
        tracep->chgCData(oldp+50,(vlTOPp->rg_leakage_table_4),8);
        tracep->chgCData(oldp+51,(vlTOPp->rg_leakage_table_5),8);
        tracep->chgCData(oldp+52,(vlTOPp->rg_leakage_table_6),8);
        tracep->chgCData(oldp+53,(vlTOPp->rg_leakage_table_7),8);
        tracep->chgCData(oldp+54,(vlTOPp->rg_sin_table_0),8);
        tracep->chgCData(oldp+55,(vlTOPp->rg_sin_table_1),8);
        tracep->chgCData(oldp+56,(vlTOPp->rg_sin_table_2),8);
        tracep->chgCData(oldp+57,(vlTOPp->rg_sin_table_3),8);
        tracep->chgCData(oldp+58,(vlTOPp->rg_sin_table_4),8);
        tracep->chgCData(oldp+59,(vlTOPp->rg_sin_table_5),8);
        tracep->chgCData(oldp+60,(vlTOPp->rg_sin_table_6),8);
        tracep->chgCData(oldp+61,(vlTOPp->rg_sin_table_7),8);
        tracep->chgCData(oldp+62,(vlTOPp->rg_cos_table_0),8);
        tracep->chgCData(oldp+63,(vlTOPp->rg_cos_table_1),8);
        tracep->chgCData(oldp+64,(vlTOPp->rg_cos_table_2),8);
        tracep->chgCData(oldp+65,(vlTOPp->rg_cos_table_3),8);
        tracep->chgCData(oldp+66,(vlTOPp->rg_cos_table_4),8);
        tracep->chgCData(oldp+67,(vlTOPp->rg_cos_table_5),8);
        tracep->chgCData(oldp+68,(vlTOPp->rg_cos_table_6),8);
        tracep->chgCData(oldp+69,(vlTOPp->rg_cos_table_7),8);
        tracep->chgCData(oldp+70,(vlTOPp->valid_num),3);
        tracep->chgBit(oldp+71,(vlTOPp->vin_vld));
        tracep->chgCData(oldp+72,(vlTOPp->vin1),8);
        tracep->chgCData(oldp+73,(vlTOPp->vin2),8);
        tracep->chgBit(oldp+74,(vlTOPp->phase_vld));
        tracep->chgSData(oldp+75,(vlTOPp->phase),10);
        tracep->chgBit(oldp+76,(vlTOPp->clk));
        tracep->chgBit(oldp+77,(vlTOPp->reset));
        tracep->chgBit(oldp+78,(vlSymsp->TOP__cal_phase.ph_vld));
        tracep->chgBit(oldp+79,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__mean_finish_regNext));
        tracep->chgBit(oldp+80,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__finish));
        tracep->chgCData(oldp+81,((7U & ((0xfU & ((IData)(vlTOPp->valid_num) 
                                                  << 1U)) 
                                         - (IData)(1U)))),3);
        tracep->chgBit(oldp+82,((((IData)(vlTOPp->rg_calphase_en) 
                                  & (IData)(vlTOPp->vin_vld)) 
                                 & (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__data_load_finish))));
        tracep->chgSData(oldp+83,((0xffffU & VL_MULS_III(16,16,16, 
                                                         (0xffffU 
                                                          & VL_EXTENDS_II(16,8, (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__vin_minus_mean))), 
                                                         (0xffffU 
                                                          & VL_EXTENDS_II(16,8, 
                                                                          ((4U 
                                                                            & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                                            ? 
                                                                           ((2U 
                                                                             & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                                             ? 
                                                                            ((1U 
                                                                              & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                                              ? (IData)(vlTOPp->rg_sin_table_7)
                                                                              : (IData)(vlTOPp->rg_sin_table_6))
                                                                             : 
                                                                            ((1U 
                                                                              & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                                              ? (IData)(vlTOPp->rg_sin_table_5)
                                                                              : (IData)(vlTOPp->rg_sin_table_4)))
                                                                            : 
                                                                           ((2U 
                                                                             & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                                             ? 
                                                                            ((1U 
                                                                              & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                                              ? (IData)(vlTOPp->rg_sin_table_3)
                                                                              : (IData)(vlTOPp->rg_sin_table_2))
                                                                             : 
                                                                            ((1U 
                                                                              & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                                              ? (IData)(vlTOPp->rg_sin_table_1)
                                                                              : (IData)(vlTOPp->rg_sin_table_0))))))))),16);
        tracep->chgSData(oldp+84,((0xffffU & VL_MULS_III(16,16,16, 
                                                         (0xffffU 
                                                          & VL_EXTENDS_II(16,8, (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__vin_minus_mean))), 
                                                         (0xffffU 
                                                          & VL_EXTENDS_II(16,8, 
                                                                          ((4U 
                                                                            & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                                            ? 
                                                                           ((2U 
                                                                             & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                                             ? 
                                                                            ((1U 
                                                                              & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                                              ? (IData)(vlTOPp->rg_cos_table_7)
                                                                              : (IData)(vlTOPp->rg_cos_table_6))
                                                                             : 
                                                                            ((1U 
                                                                              & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                                              ? (IData)(vlTOPp->rg_cos_table_5)
                                                                              : (IData)(vlTOPp->rg_cos_table_4)))
                                                                            : 
                                                                           ((2U 
                                                                             & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                                             ? 
                                                                            ((1U 
                                                                              & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                                              ? (IData)(vlTOPp->rg_cos_table_3)
                                                                              : (IData)(vlTOPp->rg_cos_table_2))
                                                                             : 
                                                                            ((1U 
                                                                              & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                                              ? (IData)(vlTOPp->rg_cos_table_1)
                                                                              : (IData)(vlTOPp->rg_cos_table_0))))))))),16);
        tracep->chgBit(oldp+85,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_en));
        tracep->chgBit(oldp+86,(((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_en) 
                                 & (0U == (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt)))));
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
