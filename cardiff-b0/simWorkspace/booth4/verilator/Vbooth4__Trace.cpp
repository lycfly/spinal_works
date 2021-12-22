// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vbooth4__Syms.h"


void Vbooth4::traceChgTop0(void* userp, VerilatedVcd* tracep) {
    Vbooth4__Syms* __restrict vlSymsp = static_cast<Vbooth4__Syms*>(userp);
    Vbooth4* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    {
        vlTOPp->traceChgSub0(userp, tracep);
    }
}

void Vbooth4::traceChgSub0(void* userp, VerilatedVcd* tracep) {
    Vbooth4__Syms* __restrict vlSymsp = static_cast<Vbooth4__Syms*>(userp);
    Vbooth4* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* const oldp = tracep->oldp(vlSymsp->__Vm_baseCode + 1);
    if (false && oldp) {}  // Prevent unused
    // Body
    {
        if (VL_UNLIKELY(vlTOPp->__Vm_traceActivity[1U])) {
            tracep->chgSData(oldp+0,((0x3ffU & (- (IData)(vlTOPp->booth4__DOT__PositiveB)))),10);
            tracep->chgSData(oldp+1,((0x3ffU & ((- (IData)(vlTOPp->booth4__DOT__PositiveB)) 
                                                << 1U))),10);
            tracep->chgSData(oldp+2,(vlTOPp->booth4__DOT__PositiveB),10);
            tracep->chgSData(oldp+3,((0x3ffU & ((IData)(vlTOPp->booth4__DOT__PositiveB) 
                                                << 1U))),10);
            tracep->chgSData(oldp+4,(vlTOPp->booth4__DOT__AddB),10);
            tracep->chgSData(oldp+5,(vlTOPp->booth4__DOT__Add2B),10);
            tracep->chgSData(oldp+6,(vlTOPp->booth4__DOT__MinusB),10);
            tracep->chgSData(oldp+7,(vlTOPp->booth4__DOT__Minus2B),10);
        }
        if (VL_UNLIKELY(vlTOPp->__Vm_traceActivity[2U])) {
            tracep->chgIData(oldp+8,(vlTOPp->booth4__DOT__shiftReg),19);
            tracep->chgCData(oldp+9,((7U & vlTOPp->booth4__DOT__shiftReg)),3);
            tracep->chgCData(oldp+10,(vlTOPp->booth4__DOT__cal_cnt),2);
            tracep->chgBit(oldp+11,(vlTOPp->booth4__DOT__cal_en));
        }
        tracep->chgBit(oldp+12,(vlTOPp->io_din_vld));
        tracep->chgCData(oldp+13,(vlTOPp->io_dinA),8);
        tracep->chgCData(oldp+14,(vlTOPp->io_dinB),8);
        tracep->chgBit(oldp+15,(vlTOPp->io_dout_vld));
        tracep->chgSData(oldp+16,(vlTOPp->io_dout),16);
        tracep->chgBit(oldp+17,(vlTOPp->clk));
        tracep->chgBit(oldp+18,(vlTOPp->reset));
        tracep->chgBit(oldp+19,(vlTOPp->booth4__DOT__cal_en_regNext));
    }
}

void Vbooth4::traceCleanup(void* userp, VerilatedVcd* /*unused*/) {
    Vbooth4__Syms* __restrict vlSymsp = static_cast<Vbooth4__Syms*>(userp);
    Vbooth4* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    {
        vlSymsp->__Vm_activity = false;
        vlTOPp->__Vm_traceActivity[0U] = 0U;
        vlTOPp->__Vm_traceActivity[1U] = 0U;
        vlTOPp->__Vm_traceActivity[2U] = 0U;
    }
}
