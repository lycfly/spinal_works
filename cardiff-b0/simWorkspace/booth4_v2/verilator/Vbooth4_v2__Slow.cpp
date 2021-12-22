// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vbooth4_v2.h for the primary calling header

#include "Vbooth4_v2.h"
#include "Vbooth4_v2__Syms.h"

//==========

VL_CTOR_IMP(Vbooth4_v2) {
    Vbooth4_v2__Syms* __restrict vlSymsp = __VlSymsp = new Vbooth4_v2__Syms(this, name());
    Vbooth4_v2* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void Vbooth4_v2::__Vconfigure(Vbooth4_v2__Syms* vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
    if (false && this->__VlSymsp) {}  // Prevent unused
    Verilated::timeunit(-12);
    Verilated::timeprecision(-12);
}

Vbooth4_v2::~Vbooth4_v2() {
    VL_DO_CLEAR(delete __VlSymsp, __VlSymsp = nullptr);
}

void Vbooth4_v2::_settle__TOP__3(Vbooth4_v2__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4_v2::_settle__TOP__3\n"); );
    Vbooth4_v2* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->booth4_v2__DOT__PositiveB = ((0x100U & 
                                          ((IData)(vlTOPp->io_dinB) 
                                           << 1U)) 
                                         | (IData)(vlTOPp->io_dinB));
    vlTOPp->io_dout = (0xffffU & (vlTOPp->booth4_v2__DOT__shiftReg 
                                  >> 1U));
    vlTOPp->io_dout_vld = ((~ (IData)(vlTOPp->booth4_v2__DOT__cal_en)) 
                           & (IData)(vlTOPp->booth4_v2__DOT__cal_en_regNext));
    vlTOPp->booth4_v2__DOT__AddB = (0x1ffU & ((vlTOPp->booth4_v2__DOT__shiftReg 
                                               >> 9U) 
                                              + (IData)(vlTOPp->booth4_v2__DOT__PositiveB)));
    vlTOPp->booth4_v2__DOT__MinusB = (0x1ffU & ((vlTOPp->booth4_v2__DOT__shiftReg 
                                                 >> 9U) 
                                                + (- (IData)(vlTOPp->booth4_v2__DOT__PositiveB))));
    vlTOPp->booth4_v2__DOT__aftershift = (0x3ffffU 
                                          & ((0xff80U 
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
                                                   >> 2U))));
}

void Vbooth4_v2::_eval_initial(Vbooth4_v2__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4_v2::_eval_initial\n"); );
    Vbooth4_v2* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->__Vclklast__TOP__clk = vlTOPp->clk;
    vlTOPp->__Vclklast__TOP__reset = vlTOPp->reset;
}

void Vbooth4_v2::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4_v2::final\n"); );
    // Variables
    Vbooth4_v2__Syms* __restrict vlSymsp = this->__VlSymsp;
    Vbooth4_v2* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vbooth4_v2::_eval_settle(Vbooth4_v2__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4_v2::_eval_settle\n"); );
    Vbooth4_v2* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_settle__TOP__3(vlSymsp);
    vlTOPp->__Vm_traceActivity[2U] = 1U;
    vlTOPp->__Vm_traceActivity[1U] = 1U;
    vlTOPp->__Vm_traceActivity[0U] = 1U;
}

void Vbooth4_v2::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4_v2::_ctor_var_reset\n"); );
    // Body
    io_din_vld = VL_RAND_RESET_I(1);
    io_dinA = VL_RAND_RESET_I(8);
    io_dinB = VL_RAND_RESET_I(8);
    io_dout_vld = VL_RAND_RESET_I(1);
    io_dout = VL_RAND_RESET_I(16);
    clk = VL_RAND_RESET_I(1);
    reset = VL_RAND_RESET_I(1);
    booth4_v2__DOT__shiftReg = VL_RAND_RESET_I(18);
    booth4_v2__DOT__PositiveB = VL_RAND_RESET_I(9);
    booth4_v2__DOT__AddB = VL_RAND_RESET_I(9);
    booth4_v2__DOT__MinusB = VL_RAND_RESET_I(9);
    booth4_v2__DOT__cal_cnt = VL_RAND_RESET_I(2);
    booth4_v2__DOT__cal_en = VL_RAND_RESET_I(1);
    booth4_v2__DOT__aftershift = VL_RAND_RESET_I(18);
    booth4_v2__DOT__cal_en_regNext = VL_RAND_RESET_I(1);
    for (int __Vi0=0; __Vi0<3; ++__Vi0) {
        __Vm_traceActivity[__Vi0] = VL_RAND_RESET_I(1);
    }
}
