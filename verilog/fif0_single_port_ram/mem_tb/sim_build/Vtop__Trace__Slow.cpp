// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vtop__Syms.h"


//======================

void Vtop::trace(VerilatedVcdC* tfp, int, int) {
    tfp->spTrace()->addInitCb(&traceInit, __VlSymsp);
    traceRegister(tfp->spTrace());
}

void Vtop::traceInit(void* userp, VerilatedVcd* tracep, uint32_t code) {
    // Callback from tracep->open()
    Vtop__Syms* __restrict vlSymsp = static_cast<Vtop__Syms*>(userp);
    if (!Verilated::calcUnusedSigs()) {
        VL_FATAL_MT(__FILE__, __LINE__, __FILE__,
                        "Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vlSymsp->__Vm_baseCode = code;
    tracep->module(vlSymsp->name());
    tracep->scopeEscape(' ');
    Vtop::traceInitTop(vlSymsp, tracep);
    tracep->scopeEscape('.');
}

//======================


void Vtop::traceInitTop(void* userp, VerilatedVcd* tracep) {
    Vtop__Syms* __restrict vlSymsp = static_cast<Vtop__Syms*>(userp);
    Vtop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    {
        vlTOPp->traceInitSub0(userp, tracep);
    }
}

void Vtop::traceInitSub0(void* userp, VerilatedVcd* tracep) {
    Vtop__Syms* __restrict vlSymsp = static_cast<Vtop__Syms*>(userp);
    Vtop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    const int c = vlSymsp->__Vm_baseCode;
    if (false && tracep && c) {}  // Prevent unused
    // Body
    {
        tracep->declBit(c+1,"clk", false,-1);
        tracep->declBit(c+2,"ce", false,-1);
        tracep->declBit(c+3,"we", false,-1);
        tracep->declBus(c+4,"wdata", false,-1, 15,0);
        tracep->declBus(c+5,"addr", false,-1, 7,0);
        tracep->declBus(c+6,"rdata", false,-1, 15,0);
        tracep->declBus(c+13,"sp_ram DW", false,-1, 31,0);
        tracep->declBus(c+14,"sp_ram AW", false,-1, 31,0);
        tracep->declBit(c+7,"sp_ram clk", false,-1);
        tracep->declBit(c+8,"sp_ram ce", false,-1);
        tracep->declBit(c+9,"sp_ram we", false,-1);
        tracep->declBus(c+10,"sp_ram wdata", false,-1, 15,0);
        tracep->declBus(c+11,"sp_ram addr", false,-1, 7,0);
        tracep->declBus(c+12,"sp_ram rdata", false,-1, 15,0);
    }
}

void Vtop::traceRegister(VerilatedVcd* tracep) {
    // Body
    {
        tracep->addFullCb(&traceFullTop0, __VlSymsp);
        tracep->addChgCb(&traceChgTop0, __VlSymsp);
        tracep->addCleanupCb(&traceCleanup, __VlSymsp);
    }
}

void Vtop::traceFullTop0(void* userp, VerilatedVcd* tracep) {
    Vtop__Syms* __restrict vlSymsp = static_cast<Vtop__Syms*>(userp);
    Vtop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    {
        vlTOPp->traceFullSub0(userp, tracep);
    }
}

void Vtop::traceFullSub0(void* userp, VerilatedVcd* tracep) {
    Vtop__Syms* __restrict vlSymsp = static_cast<Vtop__Syms*>(userp);
    Vtop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* const oldp = tracep->oldp(vlSymsp->__Vm_baseCode);
    if (false && oldp) {}  // Prevent unused
    // Body
    {
        tracep->fullBit(oldp+1,(vlTOPp->clk));
        tracep->fullBit(oldp+2,(vlTOPp->ce));
        tracep->fullBit(oldp+3,(vlTOPp->we));
        tracep->fullSData(oldp+4,(vlTOPp->wdata),16);
        tracep->fullCData(oldp+5,(vlTOPp->addr),8);
        tracep->fullSData(oldp+6,(vlTOPp->rdata),16);
        tracep->fullBit(oldp+7,(vlTOPp->sp_ram__DOT__clk));
        tracep->fullBit(oldp+8,(vlTOPp->sp_ram__DOT__ce));
        tracep->fullBit(oldp+9,(vlTOPp->sp_ram__DOT__we));
        tracep->fullSData(oldp+10,(vlTOPp->sp_ram__DOT__wdata),16);
        tracep->fullCData(oldp+11,(vlTOPp->sp_ram__DOT__addr),8);
        tracep->fullSData(oldp+12,(vlTOPp->sp_ram__DOT__rdata),16);
        tracep->fullIData(oldp+13,(0x10U),32);
        tracep->fullIData(oldp+14,(8U),32);
    }
}
