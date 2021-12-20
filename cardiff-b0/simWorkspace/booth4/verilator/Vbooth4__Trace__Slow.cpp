// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vbooth4__Syms.h"


//======================

void Vbooth4::trace(VerilatedVcdC* tfp, int, int) {
    tfp->spTrace()->addInitCb(&traceInit, __VlSymsp);
    traceRegister(tfp->spTrace());
}

void Vbooth4::traceInit(void* userp, VerilatedVcd* tracep, uint32_t code) {
    // Callback from tracep->open()
    Vbooth4__Syms* __restrict vlSymsp = static_cast<Vbooth4__Syms*>(userp);
    if (!Verilated::calcUnusedSigs()) {
        VL_FATAL_MT(__FILE__, __LINE__, __FILE__,
                        "Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vlSymsp->__Vm_baseCode = code;
    tracep->module(vlSymsp->name());
    tracep->scopeEscape(' ');
    Vbooth4::traceInitTop(vlSymsp, tracep);
    tracep->scopeEscape('.');
}

//======================


void Vbooth4::traceInitTop(void* userp, VerilatedVcd* tracep) {
    Vbooth4__Syms* __restrict vlSymsp = static_cast<Vbooth4__Syms*>(userp);
    Vbooth4* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    {
        vlTOPp->traceInitSub0(userp, tracep);
    }
}

void Vbooth4::traceInitSub0(void* userp, VerilatedVcd* tracep) {
    Vbooth4__Syms* __restrict vlSymsp = static_cast<Vbooth4__Syms*>(userp);
    Vbooth4* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    const int c = vlSymsp->__Vm_baseCode;
    if (false && tracep && c) {}  // Prevent unused
    // Body
    {
        tracep->declBit(c+9,"io_din_vld", false,-1);
        tracep->declBus(c+10,"io_dinA", false,-1, 7,0);
        tracep->declBus(c+11,"io_dinB", false,-1, 7,0);
        tracep->declBit(c+12,"io_dout_vld", false,-1);
        tracep->declBus(c+13,"io_dout", false,-1, 15,0);
        tracep->declBit(c+14,"clk", false,-1);
        tracep->declBit(c+15,"reset", false,-1);
        tracep->declBit(c+9,"booth4 io_din_vld", false,-1);
        tracep->declBus(c+10,"booth4 io_dinA", false,-1, 7,0);
        tracep->declBus(c+11,"booth4 io_dinB", false,-1, 7,0);
        tracep->declBit(c+12,"booth4 io_dout_vld", false,-1);
        tracep->declBus(c+13,"booth4 io_dout", false,-1, 15,0);
        tracep->declBit(c+14,"booth4 clk", false,-1);
        tracep->declBit(c+15,"booth4 reset", false,-1);
        tracep->declBus(c+1,"booth4 shiftReg", false,-1, 16,0);
        tracep->declBus(c+2,"booth4 flag_bits", false,-1, 2,0);
        tracep->declBus(c+16,"booth4 NegativeB", false,-1, 7,0);
        tracep->declBus(c+17,"booth4 Negative2B", false,-1, 7,0);
        tracep->declBus(c+11,"booth4 PositiveB", false,-1, 7,0);
        tracep->declBus(c+18,"booth4 Positive2B", false,-1, 7,0);
        tracep->declBus(c+5,"booth4 AddB", false,-1, 7,0);
        tracep->declBus(c+6,"booth4 Add2B", false,-1, 7,0);
        tracep->declBus(c+7,"booth4 MinusB", false,-1, 7,0);
        tracep->declBus(c+8,"booth4 Minus2B", false,-1, 7,0);
        tracep->declBus(c+3,"booth4 cal_cnt", false,-1, 1,0);
        tracep->declBit(c+4,"booth4 cal_en", false,-1);
        tracep->declBit(c+19,"booth4 cal_en_regNext", false,-1);
    }
}

void Vbooth4::traceRegister(VerilatedVcd* tracep) {
    // Body
    {
        tracep->addFullCb(&traceFullTop0, __VlSymsp);
        tracep->addChgCb(&traceChgTop0, __VlSymsp);
        tracep->addCleanupCb(&traceCleanup, __VlSymsp);
    }
}

void Vbooth4::traceFullTop0(void* userp, VerilatedVcd* tracep) {
    Vbooth4__Syms* __restrict vlSymsp = static_cast<Vbooth4__Syms*>(userp);
    Vbooth4* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    {
        vlTOPp->traceFullSub0(userp, tracep);
    }
}

void Vbooth4::traceFullSub0(void* userp, VerilatedVcd* tracep) {
    Vbooth4__Syms* __restrict vlSymsp = static_cast<Vbooth4__Syms*>(userp);
    Vbooth4* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* const oldp = tracep->oldp(vlSymsp->__Vm_baseCode);
    if (false && oldp) {}  // Prevent unused
    // Body
    {
        tracep->fullIData(oldp+1,(vlTOPp->booth4__DOT__shiftReg),17);
        tracep->fullCData(oldp+2,((7U & vlTOPp->booth4__DOT__shiftReg)),3);
        tracep->fullCData(oldp+3,(vlTOPp->booth4__DOT__cal_cnt),2);
        tracep->fullBit(oldp+4,(vlTOPp->booth4__DOT__cal_en));
        tracep->fullCData(oldp+5,(vlTOPp->booth4__DOT__AddB),8);
        tracep->fullCData(oldp+6,(vlTOPp->booth4__DOT__Add2B),8);
        tracep->fullCData(oldp+7,(vlTOPp->booth4__DOT__MinusB),8);
        tracep->fullCData(oldp+8,(vlTOPp->booth4__DOT__Minus2B),8);
        tracep->fullBit(oldp+9,(vlTOPp->io_din_vld));
        tracep->fullCData(oldp+10,(vlTOPp->io_dinA),8);
        tracep->fullCData(oldp+11,(vlTOPp->io_dinB),8);
        tracep->fullBit(oldp+12,(vlTOPp->io_dout_vld));
        tracep->fullSData(oldp+13,(vlTOPp->io_dout),16);
        tracep->fullBit(oldp+14,(vlTOPp->clk));
        tracep->fullBit(oldp+15,(vlTOPp->reset));
        tracep->fullCData(oldp+16,((0xffU & (- (IData)(vlTOPp->io_dinB)))),8);
        tracep->fullCData(oldp+17,((0xffU & ((- (IData)(vlTOPp->io_dinB)) 
                                             << 1U))),8);
        tracep->fullCData(oldp+18,((0xffU & ((IData)(vlTOPp->io_dinB) 
                                             << 1U))),8);
        tracep->fullBit(oldp+19,(vlTOPp->booth4__DOT__cal_en_regNext));
    }
}
