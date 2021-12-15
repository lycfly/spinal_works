// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtop.h for the primary calling header

#include "Vtop.h"
#include "Vtop__Syms.h"

#include "verilated_dpi.h"

//==========

VL_CTOR_IMP(Vtop) {
    Vtop__Syms* __restrict vlSymsp = __VlSymsp = new Vtop__Syms(this, name());
    Vtop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void Vtop::__Vconfigure(Vtop__Syms* vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
    if (false && this->__VlSymsp) {}  // Prevent unused
    Verilated::timeunit(-9);
    Verilated::timeprecision(-12);
}

Vtop::~Vtop() {
    VL_DO_CLEAR(delete __VlSymsp, __VlSymsp = nullptr);
}

void Vtop::_settle__TOP__2(Vtop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop::_settle__TOP__2\n"); );
    Vtop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->sp_ram__DOT__clk = vlTOPp->clk;
    vlTOPp->sp_ram__DOT__ce = vlTOPp->ce;
    vlTOPp->sp_ram__DOT__we = vlTOPp->we;
    vlTOPp->sp_ram__DOT__wdata = vlTOPp->wdata;
    vlTOPp->sp_ram__DOT__addr = vlTOPp->addr;
    vlTOPp->rdata = vlTOPp->sp_ram__DOT__rdata;
}

void Vtop::_eval_initial(Vtop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop::_eval_initial\n"); );
    Vtop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->__Vclklast__TOP__clk = vlTOPp->clk;
}

void Vtop::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop::final\n"); );
    // Variables
    Vtop__Syms* __restrict vlSymsp = this->__VlSymsp;
    Vtop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vtop::_eval_settle(Vtop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop::_eval_settle\n"); );
    Vtop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_settle__TOP__2(vlSymsp);
}

void Vtop::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop::_ctor_var_reset\n"); );
    // Body
    clk = VL_RAND_RESET_I(1);
    ce = VL_RAND_RESET_I(1);
    we = VL_RAND_RESET_I(1);
    wdata = VL_RAND_RESET_I(16);
    addr = VL_RAND_RESET_I(8);
    rdata = VL_RAND_RESET_I(16);
    sp_ram__DOT__clk = VL_RAND_RESET_I(1);
    sp_ram__DOT__ce = VL_RAND_RESET_I(1);
    sp_ram__DOT__we = VL_RAND_RESET_I(1);
    sp_ram__DOT__wdata = VL_RAND_RESET_I(16);
    sp_ram__DOT__addr = VL_RAND_RESET_I(8);
    sp_ram__DOT__rdata = VL_RAND_RESET_I(16);
    for (int __Vi0=0; __Vi0<256; ++__Vi0) {
        sp_ram__DOT__ram[__Vi0] = VL_RAND_RESET_I(16);
    }
    for (int __Vi0=0; __Vi0<1; ++__Vi0) {
        __Vm_traceActivity[__Vi0] = VL_RAND_RESET_I(1);
    }
}
