// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vbooth4_v2__Syms.h"


void Vbooth4_v2::traceChgTop0(void* userp, VerilatedVcd* tracep) {
    Vbooth4_v2__Syms* __restrict vlSymsp = static_cast<Vbooth4_v2__Syms*>(userp);
    Vbooth4_v2* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    {
        vlTOPp->traceChgSub0(userp, tracep);
    }
}

void Vbooth4_v2::traceChgSub0(void* userp, VerilatedVcd* tracep) {
    Vbooth4_v2__Syms* __restrict vlSymsp = static_cast<Vbooth4_v2__Syms*>(userp);
    Vbooth4_v2* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* const oldp = tracep->oldp(vlSymsp->__Vm_baseCode + 1);
    if (false && oldp) {}  // Prevent unused
    // Body
    {
        if (VL_UNLIKELY(vlTOPp->__Vm_traceActivity[1U])) {
            tracep->chgSData(oldp+0,((0x1ffU & (- (IData)(vlTOPp->booth4_v2__DOT__PositiveB)))),9);
            tracep->chgSData(oldp+1,((0x1ffU & ((- (IData)(vlTOPp->booth4_v2__DOT__PositiveB)) 
                                                << 1U))),9);
            tracep->chgSData(oldp+2,(vlTOPp->booth4_v2__DOT__PositiveB),9);
            tracep->chgSData(oldp+3,((0x1ffU & ((IData)(vlTOPp->booth4_v2__DOT__PositiveB) 
                                                << 1U))),9);
            tracep->chgSData(oldp+4,(vlTOPp->booth4_v2__DOT__AddB),9);
            tracep->chgSData(oldp+5,(vlTOPp->booth4_v2__DOT__MinusB),9);
        }
        if (VL_UNLIKELY(vlTOPp->__Vm_traceActivity[2U])) {
            tracep->chgIData(oldp+6,(vlTOPp->booth4_v2__DOT__shiftReg),18);
            tracep->chgCData(oldp+7,((7U & vlTOPp->booth4_v2__DOT__shiftReg)),3);
            tracep->chgCData(oldp+8,(vlTOPp->booth4_v2__DOT__cal_cnt),2);
            tracep->chgBit(oldp+9,(vlTOPp->booth4_v2__DOT__cal_en));
            tracep->chgSData(oldp+10,((0x1ffU & vlTOPp->booth4_v2__DOT__shiftReg)),9);
            tracep->chgSData(oldp+11,((0x1ffU & (vlTOPp->booth4_v2__DOT__shiftReg 
                                                 >> 9U))),9);
        }
        tracep->chgBit(oldp+12,(vlTOPp->io_din_vld));
        tracep->chgCData(oldp+13,(vlTOPp->io_dinA),8);
        tracep->chgCData(oldp+14,(vlTOPp->io_dinB),8);
        tracep->chgBit(oldp+15,(vlTOPp->io_dout_vld));
        tracep->chgSData(oldp+16,(vlTOPp->io_dout),16);
        tracep->chgBit(oldp+17,(vlTOPp->clk));
        tracep->chgBit(oldp+18,(vlTOPp->reset));
        tracep->chgSData(oldp+19,((0x1ffU & ((vlTOPp->booth4_v2__DOT__shiftReg 
                                              >> 9U) 
                                             + ((IData)(vlTOPp->booth4_v2__DOT__PositiveB) 
                                                << 1U)))),9);
        tracep->chgSData(oldp+20,((0x1ffU & ((vlTOPp->booth4_v2__DOT__shiftReg 
                                              >> 9U) 
                                             + ((- (IData)(vlTOPp->booth4_v2__DOT__PositiveB)) 
                                                << 1U)))),9);
        tracep->chgSData(oldp+21,((0x1ffU & ((4U & vlTOPp->booth4_v2__DOT__shiftReg)
                                              ? ((2U 
                                                  & vlTOPp->booth4_v2__DOT__shiftReg)
                                                  ? 
                                                 ((1U 
                                                   & vlTOPp->booth4_v2__DOT__shiftReg)
                                                   ? 
                                                  (vlTOPp->booth4_v2__DOT__shiftReg 
                                                   >> 9U)
                                                   : (IData)(vlTOPp->booth4_v2__DOT__MinusB))
                                                  : 
                                                 ((1U 
                                                   & vlTOPp->booth4_v2__DOT__shiftReg)
                                                   ? (IData)(vlTOPp->booth4_v2__DOT__MinusB)
                                                   : 
                                                  ((vlTOPp->booth4_v2__DOT__shiftReg 
                                                    >> 9U) 
                                                   + 
                                                   ((- (IData)(vlTOPp->booth4_v2__DOT__PositiveB)) 
                                                    << 1U))))
                                              : ((2U 
                                                  & vlTOPp->booth4_v2__DOT__shiftReg)
                                                  ? 
                                                 ((1U 
                                                   & vlTOPp->booth4_v2__DOT__shiftReg)
                                                   ? 
                                                  ((vlTOPp->booth4_v2__DOT__shiftReg 
                                                    >> 9U) 
                                                   + 
                                                   ((IData)(vlTOPp->booth4_v2__DOT__PositiveB) 
                                                    << 1U))
                                                   : (IData)(vlTOPp->booth4_v2__DOT__AddB))
                                                  : 
                                                 ((1U 
                                                   & vlTOPp->booth4_v2__DOT__shiftReg)
                                                   ? (IData)(vlTOPp->booth4_v2__DOT__AddB)
                                                   : 
                                                  (vlTOPp->booth4_v2__DOT__shiftReg 
                                                   >> 9U)))))),9);
        tracep->chgIData(oldp+22,((0x3ffffU & VL_SHIFTRS_III(18,18,32, 
                                                             ((0x3fe00U 
                                                               & (((4U 
                                                                    & vlTOPp->booth4_v2__DOT__shiftReg)
                                                                    ? 
                                                                   ((2U 
                                                                     & vlTOPp->booth4_v2__DOT__shiftReg)
                                                                     ? 
                                                                    ((1U 
                                                                      & vlTOPp->booth4_v2__DOT__shiftReg)
                                                                      ? 
                                                                     (vlTOPp->booth4_v2__DOT__shiftReg 
                                                                      >> 9U)
                                                                      : (IData)(vlTOPp->booth4_v2__DOT__MinusB))
                                                                     : 
                                                                    ((1U 
                                                                      & vlTOPp->booth4_v2__DOT__shiftReg)
                                                                      ? (IData)(vlTOPp->booth4_v2__DOT__MinusB)
                                                                      : 
                                                                     ((vlTOPp->booth4_v2__DOT__shiftReg 
                                                                       >> 9U) 
                                                                      + 
                                                                      ((- (IData)(vlTOPp->booth4_v2__DOT__PositiveB)) 
                                                                       << 1U))))
                                                                    : 
                                                                   ((2U 
                                                                     & vlTOPp->booth4_v2__DOT__shiftReg)
                                                                     ? 
                                                                    ((1U 
                                                                      & vlTOPp->booth4_v2__DOT__shiftReg)
                                                                      ? 
                                                                     ((vlTOPp->booth4_v2__DOT__shiftReg 
                                                                       >> 9U) 
                                                                      + 
                                                                      ((IData)(vlTOPp->booth4_v2__DOT__PositiveB) 
                                                                       << 1U))
                                                                      : (IData)(vlTOPp->booth4_v2__DOT__AddB))
                                                                     : 
                                                                    ((1U 
                                                                      & vlTOPp->booth4_v2__DOT__shiftReg)
                                                                      ? (IData)(vlTOPp->booth4_v2__DOT__AddB)
                                                                      : 
                                                                     (vlTOPp->booth4_v2__DOT__shiftReg 
                                                                      >> 9U)))) 
                                                                  << 9U)) 
                                                              | (0x1ffU 
                                                                 & vlTOPp->booth4_v2__DOT__shiftReg)), 2U))),18);
        tracep->chgBit(oldp+23,(vlTOPp->booth4_v2__DOT__cal_en_regNext));
    }
}

void Vbooth4_v2::traceCleanup(void* userp, VerilatedVcd* /*unused*/) {
    Vbooth4_v2__Syms* __restrict vlSymsp = static_cast<Vbooth4_v2__Syms*>(userp);
    Vbooth4_v2* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    {
        vlSymsp->__Vm_activity = false;
        vlTOPp->__Vm_traceActivity[0U] = 0U;
        vlTOPp->__Vm_traceActivity[1U] = 0U;
        vlTOPp->__Vm_traceActivity[2U] = 0U;
    }
}
