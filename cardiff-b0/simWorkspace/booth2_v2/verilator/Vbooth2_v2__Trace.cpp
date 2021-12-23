// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vbooth2_v2__Syms.h"


void Vbooth2_v2::traceChgTop0(void* userp, VerilatedVcd* tracep) {
    Vbooth2_v2__Syms* __restrict vlSymsp = static_cast<Vbooth2_v2__Syms*>(userp);
    Vbooth2_v2* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    {
        vlTOPp->traceChgSub0(userp, tracep);
    }
}

void Vbooth2_v2::traceChgSub0(void* userp, VerilatedVcd* tracep) {
    Vbooth2_v2__Syms* __restrict vlSymsp = static_cast<Vbooth2_v2__Syms*>(userp);
    Vbooth2_v2* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* const oldp = tracep->oldp(vlSymsp->__Vm_baseCode + 1);
    if (false && oldp) {}  // Prevent unused
    // Body
    {
        if (VL_UNLIKELY(vlTOPp->__Vm_traceActivity[1U])) {
            tracep->chgIData(oldp+0,(vlTOPp->booth2_v2__DOT__shiftReg),17);
            tracep->chgCData(oldp+1,((3U & vlTOPp->booth2_v2__DOT__shiftReg)),2);
            tracep->chgCData(oldp+2,(vlTOPp->booth2_v2__DOT__cal_cnt),3);
            tracep->chgBit(oldp+3,(vlTOPp->booth2_v2__DOT__cal_en));
            tracep->chgSData(oldp+4,((0x1ffU & vlTOPp->booth2_v2__DOT__shiftReg)),9);
            tracep->chgCData(oldp+5,((0xffU & (vlTOPp->booth2_v2__DOT__shiftReg 
                                               >> 9U))),8);
        }
        tracep->chgBit(oldp+6,(vlTOPp->io_din_vld));
        tracep->chgCData(oldp+7,(vlTOPp->io_dinA),8);
        tracep->chgCData(oldp+8,(vlTOPp->io_dinB),8);
        tracep->chgBit(oldp+9,(vlTOPp->io_dout_vld));
        tracep->chgSData(oldp+10,(vlTOPp->io_dout),16);
        tracep->chgBit(oldp+11,(vlTOPp->clk));
        tracep->chgBit(oldp+12,(vlTOPp->reset));
        tracep->chgCData(oldp+13,((0xffU & (- (IData)(vlTOPp->io_dinB)))),8);
        tracep->chgCData(oldp+14,((0xffU & ((vlTOPp->booth2_v2__DOT__shiftReg 
                                             >> 9U) 
                                            + (IData)(vlTOPp->io_dinB)))),8);
        tracep->chgCData(oldp+15,((0xffU & ((vlTOPp->booth2_v2__DOT__shiftReg 
                                             >> 9U) 
                                            + (- (IData)(vlTOPp->io_dinB))))),8);
        tracep->chgCData(oldp+16,((0xffU & (((0U == 
                                              (3U & vlTOPp->booth2_v2__DOT__shiftReg)) 
                                             | (3U 
                                                == 
                                                (3U 
                                                 & vlTOPp->booth2_v2__DOT__shiftReg)))
                                             ? (vlTOPp->booth2_v2__DOT__shiftReg 
                                                >> 9U)
                                             : ((2U 
                                                 == 
                                                 (3U 
                                                  & vlTOPp->booth2_v2__DOT__shiftReg))
                                                 ? 
                                                ((vlTOPp->booth2_v2__DOT__shiftReg 
                                                  >> 9U) 
                                                 + 
                                                 (- (IData)(vlTOPp->io_dinB)))
                                                 : 
                                                ((vlTOPp->booth2_v2__DOT__shiftReg 
                                                  >> 9U) 
                                                 + (IData)(vlTOPp->io_dinB)))))),8);
        tracep->chgIData(oldp+17,((0x1ffffU & VL_SHIFTRS_III(17,17,32, 
                                                             ((0x1fe00U 
                                                               & ((((0U 
                                                                     == 
                                                                     (3U 
                                                                      & vlTOPp->booth2_v2__DOT__shiftReg)) 
                                                                    | (3U 
                                                                       == 
                                                                       (3U 
                                                                        & vlTOPp->booth2_v2__DOT__shiftReg)))
                                                                    ? 
                                                                   (vlTOPp->booth2_v2__DOT__shiftReg 
                                                                    >> 9U)
                                                                    : 
                                                                   ((2U 
                                                                     == 
                                                                     (3U 
                                                                      & vlTOPp->booth2_v2__DOT__shiftReg))
                                                                     ? 
                                                                    ((vlTOPp->booth2_v2__DOT__shiftReg 
                                                                      >> 9U) 
                                                                     + 
                                                                     (- (IData)(vlTOPp->io_dinB)))
                                                                     : 
                                                                    ((vlTOPp->booth2_v2__DOT__shiftReg 
                                                                      >> 9U) 
                                                                     + (IData)(vlTOPp->io_dinB)))) 
                                                                  << 9U)) 
                                                              | (0x1ffU 
                                                                 & vlTOPp->booth2_v2__DOT__shiftReg)), 1U))),17);
        tracep->chgBit(oldp+18,(vlTOPp->booth2_v2__DOT__cal_en_regNext));
    }
}

void Vbooth2_v2::traceCleanup(void* userp, VerilatedVcd* /*unused*/) {
    Vbooth2_v2__Syms* __restrict vlSymsp = static_cast<Vbooth2_v2__Syms*>(userp);
    Vbooth2_v2* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    {
        vlSymsp->__Vm_activity = false;
        vlTOPp->__Vm_traceActivity[0U] = 0U;
        vlTOPp->__Vm_traceActivity[1U] = 0U;
    }
}
