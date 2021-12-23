// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vbooth2_v2.h for the primary calling header

#include "Vbooth2_v2.h"
#include "Vbooth2_v2__Syms.h"

//==========

VL_CTOR_IMP(Vbooth2_v2) {
    Vbooth2_v2__Syms* __restrict vlSymsp = __VlSymsp = new Vbooth2_v2__Syms(this, name());
    Vbooth2_v2* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void Vbooth2_v2::__Vconfigure(Vbooth2_v2__Syms* vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
    if (false && this->__VlSymsp) {}  // Prevent unused
    Verilated::timeunit(-12);
    Verilated::timeprecision(-12);
}

Vbooth2_v2::~Vbooth2_v2() {
    VL_DO_CLEAR(delete __VlSymsp, __VlSymsp = nullptr);
}

void Vbooth2_v2::_settle__TOP__3(Vbooth2_v2__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth2_v2::_settle__TOP__3\n"); );
    Vbooth2_v2* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->io_dout = (0xffffU & (vlTOPp->booth2_v2__DOT__shiftReg 
                                  >> 1U));
    vlTOPp->booth2_v2__DOT___zz_2 = ((0x1fe00U & ((
                                                   ((0U 
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
                                     | (0x1ffU & vlTOPp->booth2_v2__DOT__shiftReg));
    vlTOPp->io_dout_vld = ((~ (IData)(vlTOPp->booth2_v2__DOT__cal_en)) 
                           & (IData)(vlTOPp->booth2_v2__DOT__cal_en_regNext));
}

void Vbooth2_v2::_eval_initial(Vbooth2_v2__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth2_v2::_eval_initial\n"); );
    Vbooth2_v2* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->__Vclklast__TOP__clk = vlTOPp->clk;
    vlTOPp->__Vclklast__TOP__reset = vlTOPp->reset;
}

void Vbooth2_v2::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth2_v2::final\n"); );
    // Variables
    Vbooth2_v2__Syms* __restrict vlSymsp = this->__VlSymsp;
    Vbooth2_v2* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vbooth2_v2::_eval_settle(Vbooth2_v2__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth2_v2::_eval_settle\n"); );
    Vbooth2_v2* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_settle__TOP__3(vlSymsp);
}

void Vbooth2_v2::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth2_v2::_ctor_var_reset\n"); );
    // Body
    io_din_vld = VL_RAND_RESET_I(1);
    io_dinA = VL_RAND_RESET_I(8);
    io_dinB = VL_RAND_RESET_I(8);
    io_dout_vld = VL_RAND_RESET_I(1);
    io_dout = VL_RAND_RESET_I(16);
    clk = VL_RAND_RESET_I(1);
    reset = VL_RAND_RESET_I(1);
    booth2_v2__DOT___zz_2 = VL_RAND_RESET_I(17);
    booth2_v2__DOT__shiftReg = VL_RAND_RESET_I(17);
    booth2_v2__DOT__cal_cnt = VL_RAND_RESET_I(3);
    booth2_v2__DOT__cal_en = VL_RAND_RESET_I(1);
    booth2_v2__DOT__cal_en_regNext = VL_RAND_RESET_I(1);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        __Vm_traceActivity[__Vi0] = VL_RAND_RESET_I(1);
    }
}
