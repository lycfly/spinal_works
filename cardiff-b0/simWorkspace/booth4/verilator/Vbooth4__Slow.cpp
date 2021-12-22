// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vbooth4.h for the primary calling header

#include "Vbooth4.h"
#include "Vbooth4__Syms.h"

//==========

VL_CTOR_IMP(Vbooth4) {
    Vbooth4__Syms* __restrict vlSymsp = __VlSymsp = new Vbooth4__Syms(this, name());
    Vbooth4* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void Vbooth4::__Vconfigure(Vbooth4__Syms* vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
    if (false && this->__VlSymsp) {}  // Prevent unused
    Verilated::timeunit(-12);
    Verilated::timeprecision(-12);
}

Vbooth4::~Vbooth4() {
    VL_DO_CLEAR(delete __VlSymsp, __VlSymsp = nullptr);
}

void Vbooth4::_settle__TOP__3(Vbooth4__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4::_settle__TOP__3\n"); );
    Vbooth4* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->booth4__DOT__PositiveB = ((0x100U & ((IData)(vlTOPp->io_dinB) 
                                                 << 1U)) 
                                      | (IData)(vlTOPp->io_dinB));
    vlTOPp->booth4__DOT___zz_5 = (0x3ffffU & VL_SHIFTRS_III(18,18,32, vlTOPp->booth4__DOT__shiftReg, 2U));
    vlTOPp->booth4__DOT__flag_bits = (7U & vlTOPp->booth4__DOT__shiftReg);
    vlTOPp->io_dout = (0xffffU & (vlTOPp->booth4__DOT__shiftReg 
                                  >> 1U));
    vlTOPp->io_dout_vld = ((~ (IData)(vlTOPp->booth4__DOT__cal_en)) 
                           & (IData)(vlTOPp->booth4__DOT__cal_en_regNext));
    vlTOPp->booth4__DOT__AddB = (0x1ffU & ((vlTOPp->booth4__DOT__shiftReg 
                                            >> 9U) 
                                           + (IData)(vlTOPp->booth4__DOT__PositiveB)));
    vlTOPp->booth4__DOT__Add2B = (0x1ffU & ((vlTOPp->booth4__DOT__shiftReg 
                                             >> 9U) 
                                            + ((IData)(vlTOPp->booth4__DOT__PositiveB) 
                                               << 1U)));
    vlTOPp->booth4__DOT__MinusB = (0x1ffU & ((vlTOPp->booth4__DOT__shiftReg 
                                              >> 9U) 
                                             + (- (IData)(vlTOPp->booth4__DOT__PositiveB))));
    vlTOPp->booth4__DOT__Minus2B = (0x1ffU & ((vlTOPp->booth4__DOT__shiftReg 
                                               >> 9U) 
                                              + ((- (IData)(vlTOPp->booth4__DOT__PositiveB)) 
                                                 << 1U)));
}

void Vbooth4::_eval_initial(Vbooth4__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4::_eval_initial\n"); );
    Vbooth4* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->__Vclklast__TOP__clk = vlTOPp->clk;
    vlTOPp->__Vclklast__TOP__reset = vlTOPp->reset;
}

void Vbooth4::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4::final\n"); );
    // Variables
    Vbooth4__Syms* __restrict vlSymsp = this->__VlSymsp;
    Vbooth4* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vbooth4::_eval_settle(Vbooth4__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4::_eval_settle\n"); );
    Vbooth4* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_settle__TOP__3(vlSymsp);
    vlTOPp->__Vm_traceActivity[2U] = 1U;
    vlTOPp->__Vm_traceActivity[1U] = 1U;
    vlTOPp->__Vm_traceActivity[0U] = 1U;
}

void Vbooth4::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4::_ctor_var_reset\n"); );
    // Body
    io_din_vld = VL_RAND_RESET_I(1);
    io_dinA = VL_RAND_RESET_I(8);
    io_dinB = VL_RAND_RESET_I(8);
    io_dout_vld = VL_RAND_RESET_I(1);
    io_dout = VL_RAND_RESET_I(16);
    clk = VL_RAND_RESET_I(1);
    reset = VL_RAND_RESET_I(1);
    booth4__DOT___zz_5 = VL_RAND_RESET_I(18);
    booth4__DOT__shiftReg = VL_RAND_RESET_I(18);
    booth4__DOT__flag_bits = VL_RAND_RESET_I(3);
    booth4__DOT__PositiveB = VL_RAND_RESET_I(9);
    booth4__DOT__AddB = VL_RAND_RESET_I(9);
    booth4__DOT__Add2B = VL_RAND_RESET_I(9);
    booth4__DOT__MinusB = VL_RAND_RESET_I(9);
    booth4__DOT__Minus2B = VL_RAND_RESET_I(9);
    booth4__DOT__cal_cnt = VL_RAND_RESET_I(2);
    booth4__DOT__cal_en = VL_RAND_RESET_I(1);
    booth4__DOT__cal_en_regNext = VL_RAND_RESET_I(1);
    for (int __Vi0=0; __Vi0<3; ++__Vi0) {
        __Vm_traceActivity[__Vi0] = VL_RAND_RESET_I(1);
    }
}
