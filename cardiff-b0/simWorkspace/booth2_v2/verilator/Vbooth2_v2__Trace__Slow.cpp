// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vbooth2_v2__Syms.h"


//======================

void Vbooth2_v2::trace(VerilatedVcdC* tfp, int, int) {
    tfp->spTrace()->addInitCb(&traceInit, __VlSymsp);
    traceRegister(tfp->spTrace());
}

void Vbooth2_v2::traceInit(void* userp, VerilatedVcd* tracep, uint32_t code) {
    // Callback from tracep->open()
    Vbooth2_v2__Syms* __restrict vlSymsp = static_cast<Vbooth2_v2__Syms*>(userp);
    if (!Verilated::calcUnusedSigs()) {
        VL_FATAL_MT(__FILE__, __LINE__, __FILE__,
                        "Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vlSymsp->__Vm_baseCode = code;
    tracep->module(vlSymsp->name());
    tracep->scopeEscape(' ');
    Vbooth2_v2::traceInitTop(vlSymsp, tracep);
    tracep->scopeEscape('.');
}

//======================


void Vbooth2_v2::traceInitTop(void* userp, VerilatedVcd* tracep) {
    Vbooth2_v2__Syms* __restrict vlSymsp = static_cast<Vbooth2_v2__Syms*>(userp);
    Vbooth2_v2* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    {
        vlTOPp->traceInitSub0(userp, tracep);
    }
}

void Vbooth2_v2::traceInitSub0(void* userp, VerilatedVcd* tracep) {
    Vbooth2_v2__Syms* __restrict vlSymsp = static_cast<Vbooth2_v2__Syms*>(userp);
    Vbooth2_v2* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    const int c = vlSymsp->__Vm_baseCode;
    if (false && tracep && c) {}  // Prevent unused
    // Body
    {
        tracep->declBit(c+7,"io_din_vld", false,-1);
        tracep->declBus(c+8,"io_dinA", false,-1, 7,0);
        tracep->declBus(c+9,"io_dinB", false,-1, 7,0);
        tracep->declBit(c+10,"io_dout_vld", false,-1);
        tracep->declBus(c+11,"io_dout", false,-1, 15,0);
        tracep->declBit(c+12,"clk", false,-1);
        tracep->declBit(c+13,"reset", false,-1);
        tracep->declBit(c+7,"booth2_v2 io_din_vld", false,-1);
        tracep->declBus(c+8,"booth2_v2 io_dinA", false,-1, 7,0);
        tracep->declBus(c+9,"booth2_v2 io_dinB", false,-1, 7,0);
        tracep->declBit(c+10,"booth2_v2 io_dout_vld", false,-1);
        tracep->declBus(c+11,"booth2_v2 io_dout", false,-1, 15,0);
        tracep->declBit(c+12,"booth2_v2 clk", false,-1);
        tracep->declBit(c+13,"booth2_v2 reset", false,-1);
        tracep->declBus(c+1,"booth2_v2 shiftReg", false,-1, 16,0);
        tracep->declBus(c+2,"booth2_v2 flag_bits", false,-1, 1,0);
        tracep->declBus(c+14,"booth2_v2 NegativeB", false,-1, 7,0);
        tracep->declBus(c+9,"booth2_v2 PositiveB", false,-1, 7,0);
        tracep->declBus(c+15,"booth2_v2 AddB", false,-1, 7,0);
        tracep->declBus(c+16,"booth2_v2 MinusB", false,-1, 7,0);
        tracep->declBus(c+3,"booth2_v2 cal_cnt", false,-1, 2,0);
        tracep->declBit(c+4,"booth2_v2 cal_en", false,-1);
        tracep->declBus(c+5,"booth2_v2 shiftReg_low", false,-1, 8,0);
        tracep->declBus(c+6,"booth2_v2 shiftReg_high", false,-1, 7,0);
        tracep->declBus(c+17,"booth2_v2 beforeshift", false,-1, 7,0);
        tracep->declBus(c+18,"booth2_v2 aftershift", false,-1, 16,0);
        tracep->declBit(c+19,"booth2_v2 cal_en_regNext", false,-1);
    }
}

void Vbooth2_v2::traceRegister(VerilatedVcd* tracep) {
    // Body
    {
        tracep->addFullCb(&traceFullTop0, __VlSymsp);
        tracep->addChgCb(&traceChgTop0, __VlSymsp);
        tracep->addCleanupCb(&traceCleanup, __VlSymsp);
    }
}

void Vbooth2_v2::traceFullTop0(void* userp, VerilatedVcd* tracep) {
    Vbooth2_v2__Syms* __restrict vlSymsp = static_cast<Vbooth2_v2__Syms*>(userp);
    Vbooth2_v2* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    {
        vlTOPp->traceFullSub0(userp, tracep);
    }
}

void Vbooth2_v2::traceFullSub0(void* userp, VerilatedVcd* tracep) {
    Vbooth2_v2__Syms* __restrict vlSymsp = static_cast<Vbooth2_v2__Syms*>(userp);
    Vbooth2_v2* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* const oldp = tracep->oldp(vlSymsp->__Vm_baseCode);
    if (false && oldp) {}  // Prevent unused
    // Body
    {
        tracep->fullIData(oldp+1,(vlTOPp->booth2_v2__DOT__shiftReg),17);
        tracep->fullCData(oldp+2,((3U & vlTOPp->booth2_v2__DOT__shiftReg)),2);
        tracep->fullCData(oldp+3,(vlTOPp->booth2_v2__DOT__cal_cnt),3);
        tracep->fullBit(oldp+4,(vlTOPp->booth2_v2__DOT__cal_en));
        tracep->fullSData(oldp+5,((0x1ffU & vlTOPp->booth2_v2__DOT__shiftReg)),9);
        tracep->fullCData(oldp+6,((0xffU & (vlTOPp->booth2_v2__DOT__shiftReg 
                                            >> 9U))),8);
        tracep->fullBit(oldp+7,(vlTOPp->io_din_vld));
        tracep->fullCData(oldp+8,(vlTOPp->io_dinA),8);
        tracep->fullCData(oldp+9,(vlTOPp->io_dinB),8);
        tracep->fullBit(oldp+10,(vlTOPp->io_dout_vld));
        tracep->fullSData(oldp+11,(vlTOPp->io_dout),16);
        tracep->fullBit(oldp+12,(vlTOPp->clk));
        tracep->fullBit(oldp+13,(vlTOPp->reset));
        tracep->fullCData(oldp+14,((0xffU & (- (IData)(vlTOPp->io_dinB)))),8);
        tracep->fullCData(oldp+15,((0xffU & ((vlTOPp->booth2_v2__DOT__shiftReg 
                                              >> 9U) 
                                             + (IData)(vlTOPp->io_dinB)))),8);
        tracep->fullCData(oldp+16,((0xffU & ((vlTOPp->booth2_v2__DOT__shiftReg 
                                              >> 9U) 
                                             + (- (IData)(vlTOPp->io_dinB))))),8);
        tracep->fullCData(oldp+17,((0xffU & (((0U == 
                                               (3U 
                                                & vlTOPp->booth2_v2__DOT__shiftReg)) 
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
        tracep->fullIData(oldp+18,((0x1ffffU & VL_SHIFTRS_III(17,17,32, 
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
        tracep->fullBit(oldp+19,(vlTOPp->booth2_v2__DOT__cal_en_regNext));
    }
}
