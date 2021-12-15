// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vtop__Syms.h"


void Vtop::traceChgTop0(void* userp, VerilatedVcd* tracep) {
    Vtop__Syms* __restrict vlSymsp = static_cast<Vtop__Syms*>(userp);
    Vtop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    {
        vlTOPp->traceChgSub0(userp, tracep);
    }
}

void Vtop::traceChgSub0(void* userp, VerilatedVcd* tracep) {
    Vtop__Syms* __restrict vlSymsp = static_cast<Vtop__Syms*>(userp);
    Vtop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* const oldp = tracep->oldp(vlSymsp->__Vm_baseCode + 1);
    if (false && oldp) {}  // Prevent unused
    // Body
    {
        tracep->chgBit(oldp+0,(vlTOPp->clk));
        tracep->chgBit(oldp+1,(vlTOPp->ce));
        tracep->chgBit(oldp+2,(vlTOPp->we));
        tracep->chgSData(oldp+3,(vlTOPp->wdata),16);
        tracep->chgCData(oldp+4,(vlTOPp->addr),8);
        tracep->chgSData(oldp+5,(vlTOPp->rdata),16);
        tracep->chgBit(oldp+6,(vlTOPp->sp_ram__DOT__clk));
        tracep->chgBit(oldp+7,(vlTOPp->sp_ram__DOT__ce));
        tracep->chgBit(oldp+8,(vlTOPp->sp_ram__DOT__we));
        tracep->chgSData(oldp+9,(vlTOPp->sp_ram__DOT__wdata),16);
        tracep->chgCData(oldp+10,(vlTOPp->sp_ram__DOT__addr),8);
        tracep->chgSData(oldp+11,(vlTOPp->sp_ram__DOT__rdata),16);
    }
}

void Vtop::traceCleanup(void* userp, VerilatedVcd* /*unused*/) {
    Vtop__Syms* __restrict vlSymsp = static_cast<Vtop__Syms*>(userp);
    Vtop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    {
        vlSymsp->__Vm_activity = false;
        vlTOPp->__Vm_traceActivity[0U] = 0U;
    }
}
