// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vbooth4_v2__Syms.h"


//======================

void Vbooth4_v2::trace(VerilatedVcdC* tfp, int, int) {
    tfp->spTrace()->addInitCb(&traceInit, __VlSymsp);
    traceRegister(tfp->spTrace());
}

void Vbooth4_v2::traceInit(void* userp, VerilatedVcd* tracep, uint32_t code) {
    // Callback from tracep->open()
    Vbooth4_v2__Syms* __restrict vlSymsp = static_cast<Vbooth4_v2__Syms*>(userp);
    if (!Verilated::calcUnusedSigs()) {
        VL_FATAL_MT(__FILE__, __LINE__, __FILE__,
                        "Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vlSymsp->__Vm_baseCode = code;
    tracep->module(vlSymsp->name());
    tracep->scopeEscape(' ');
    Vbooth4_v2::traceInitTop(vlSymsp, tracep);
    tracep->scopeEscape('.');
}

//======================


void Vbooth4_v2::traceInitTop(void* userp, VerilatedVcd* tracep) {
    Vbooth4_v2__Syms* __restrict vlSymsp = static_cast<Vbooth4_v2__Syms*>(userp);
    Vbooth4_v2* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    {
        vlTOPp->traceInitSub0(userp, tracep);
    }
}

void Vbooth4_v2::traceInitSub0(void* userp, VerilatedVcd* tracep) {
    Vbooth4_v2__Syms* __restrict vlSymsp = static_cast<Vbooth4_v2__Syms*>(userp);
    Vbooth4_v2* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    const int c = vlSymsp->__Vm_baseCode;
    if (false && tracep && c) {}  // Prevent unused
    // Body
    {
        tracep->declBit(c+13,"io_din_vld", false,-1);
        tracep->declBus(c+14,"io_dinA", false,-1, 7,0);
        tracep->declBus(c+15,"io_dinB", false,-1, 7,0);
        tracep->declBit(c+16,"io_dout_vld", false,-1);
        tracep->declBus(c+17,"io_dout", false,-1, 15,0);
        tracep->declBit(c+18,"clk", false,-1);
        tracep->declBit(c+19,"reset", false,-1);
        tracep->declBit(c+13,"booth4_v2 io_din_vld", false,-1);
        tracep->declBus(c+14,"booth4_v2 io_dinA", false,-1, 7,0);
        tracep->declBus(c+15,"booth4_v2 io_dinB", false,-1, 7,0);
        tracep->declBit(c+16,"booth4_v2 io_dout_vld", false,-1);
        tracep->declBus(c+17,"booth4_v2 io_dout", false,-1, 15,0);
        tracep->declBit(c+18,"booth4_v2 clk", false,-1);
        tracep->declBit(c+19,"booth4_v2 reset", false,-1);
        tracep->declBus(c+7,"booth4_v2 shiftReg", false,-1, 17,0);
        tracep->declBus(c+8,"booth4_v2 flag_bits", false,-1, 2,0);
        tracep->declBus(c+1,"booth4_v2 NegativeB", false,-1, 8,0);
        tracep->declBus(c+2,"booth4_v2 Negative2B", false,-1, 8,0);
        tracep->declBus(c+3,"booth4_v2 PositiveB", false,-1, 8,0);
        tracep->declBus(c+4,"booth4_v2 Positive2B", false,-1, 8,0);
        tracep->declBus(c+5,"booth4_v2 AddB", false,-1, 8,0);
        tracep->declBus(c+20,"booth4_v2 Add2B", false,-1, 8,0);
        tracep->declBus(c+6,"booth4_v2 MinusB", false,-1, 8,0);
        tracep->declBus(c+21,"booth4_v2 Minus2B", false,-1, 8,0);
        tracep->declBus(c+9,"booth4_v2 cal_cnt", false,-1, 1,0);
        tracep->declBit(c+10,"booth4_v2 cal_en", false,-1);
        tracep->declBus(c+11,"booth4_v2 shiftReg_low", false,-1, 8,0);
        tracep->declBus(c+12,"booth4_v2 shiftReg_high", false,-1, 8,0);
        tracep->declBus(c+22,"booth4_v2 beforeshift", false,-1, 8,0);
        tracep->declBus(c+23,"booth4_v2 aftershift", false,-1, 17,0);
        tracep->declBit(c+24,"booth4_v2 cal_en_regNext", false,-1);
    }
}

void Vbooth4_v2::traceRegister(VerilatedVcd* tracep) {
    // Body
    {
        tracep->addFullCb(&traceFullTop0, __VlSymsp);
        tracep->addChgCb(&traceChgTop0, __VlSymsp);
        tracep->addCleanupCb(&traceCleanup, __VlSymsp);
    }
}

void Vbooth4_v2::traceFullTop0(void* userp, VerilatedVcd* tracep) {
    Vbooth4_v2__Syms* __restrict vlSymsp = static_cast<Vbooth4_v2__Syms*>(userp);
    Vbooth4_v2* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    {
        vlTOPp->traceFullSub0(userp, tracep);
    }
}

void Vbooth4_v2::traceFullSub0(void* userp, VerilatedVcd* tracep) {
    Vbooth4_v2__Syms* __restrict vlSymsp = static_cast<Vbooth4_v2__Syms*>(userp);
    Vbooth4_v2* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* const oldp = tracep->oldp(vlSymsp->__Vm_baseCode);
    if (false && oldp) {}  // Prevent unused
    // Body
    {
        tracep->fullSData(oldp+1,((0x1ffU & (- (IData)(vlTOPp->booth4_v2__DOT__PositiveB)))),9);
        tracep->fullSData(oldp+2,((0x1ffU & ((- (IData)(vlTOPp->booth4_v2__DOT__PositiveB)) 
                                             << 1U))),9);
        tracep->fullSData(oldp+3,(vlTOPp->booth4_v2__DOT__PositiveB),9);
        tracep->fullSData(oldp+4,((0x1ffU & ((IData)(vlTOPp->booth4_v2__DOT__PositiveB) 
                                             << 1U))),9);
        tracep->fullSData(oldp+5,(vlTOPp->booth4_v2__DOT__AddB),9);
        tracep->fullSData(oldp+6,(vlTOPp->booth4_v2__DOT__MinusB),9);
        tracep->fullIData(oldp+7,(vlTOPp->booth4_v2__DOT__shiftReg),18);
        tracep->fullCData(oldp+8,((7U & vlTOPp->booth4_v2__DOT__shiftReg)),3);
        tracep->fullCData(oldp+9,(vlTOPp->booth4_v2__DOT__cal_cnt),2);
        tracep->fullBit(oldp+10,(vlTOPp->booth4_v2__DOT__cal_en));
        tracep->fullSData(oldp+11,((0x1ffU & vlTOPp->booth4_v2__DOT__shiftReg)),9);
        tracep->fullSData(oldp+12,((0x1ffU & (vlTOPp->booth4_v2__DOT__shiftReg 
                                              >> 9U))),9);
        tracep->fullBit(oldp+13,(vlTOPp->io_din_vld));
        tracep->fullCData(oldp+14,(vlTOPp->io_dinA),8);
        tracep->fullCData(oldp+15,(vlTOPp->io_dinB),8);
        tracep->fullBit(oldp+16,(vlTOPp->io_dout_vld));
        tracep->fullSData(oldp+17,(vlTOPp->io_dout),16);
        tracep->fullBit(oldp+18,(vlTOPp->clk));
        tracep->fullBit(oldp+19,(vlTOPp->reset));
        tracep->fullSData(oldp+20,((0x1ffU & ((vlTOPp->booth4_v2__DOT__shiftReg 
                                               >> 9U) 
                                              + ((IData)(vlTOPp->booth4_v2__DOT__PositiveB) 
                                                 << 1U)))),9);
        tracep->fullSData(oldp+21,((0x1ffU & ((vlTOPp->booth4_v2__DOT__shiftReg 
                                               >> 9U) 
                                              + ((- (IData)(vlTOPp->booth4_v2__DOT__PositiveB)) 
                                                 << 1U)))),9);
        tracep->fullSData(oldp+22,((0x1ffU & ((4U & vlTOPp->booth4_v2__DOT__shiftReg)
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
        tracep->fullIData(oldp+23,((0x3ffffU & ((0xff80U 
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
                                                    << 7U)) 
                                                | (0x7fU 
                                                   & (vlTOPp->booth4_v2__DOT__shiftReg 
                                                      >> 2U))))),18);
        tracep->fullBit(oldp+24,(vlTOPp->booth4_v2__DOT__cal_en_regNext));
    }
}
