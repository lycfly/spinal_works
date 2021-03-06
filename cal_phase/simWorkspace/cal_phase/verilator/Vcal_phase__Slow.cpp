// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vcal_phase.h for the primary calling header

#include "Vcal_phase.h"
#include "Vcal_phase__Syms.h"

#include "verilated_dpi.h"

//==========

VL_CTOR_IMP(Vcal_phase) {
    Vcal_phase__Syms* __restrict vlSymsp = __VlSymsp = new Vcal_phase__Syms(this, name());
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    VL_CELL(cal_phase, Vcal_phase_cal_phase);
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void Vcal_phase::__Vconfigure(Vcal_phase__Syms* vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
    if (false && this->__VlSymsp) {}  // Prevent unused
    Verilated::timeunit(-12);
    Verilated::timeprecision(-12);
}

Vcal_phase::~Vcal_phase() {
    VL_DO_CLEAR(delete __VlSymsp, __VlSymsp = nullptr);
}

void Vcal_phase::_eval_initial(Vcal_phase__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcal_phase::_eval_initial\n"); );
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->__Vclklast__TOP__clk = vlTOPp->clk;
    vlTOPp->__Vclklast__TOP__reset = vlTOPp->reset;
}

void Vcal_phase::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcal_phase::final\n"); );
    // Variables
    Vcal_phase__Syms* __restrict vlSymsp = this->__VlSymsp;
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vcal_phase::_eval_settle(Vcal_phase__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcal_phase::_eval_settle\n"); );
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlSymsp->TOP__cal_phase._settle__TOP__cal_phase__2(vlSymsp);
    vlTOPp->__Vm_traceActivity[2U] = 1U;
    vlTOPp->__Vm_traceActivity[1U] = 1U;
    vlTOPp->__Vm_traceActivity[0U] = 1U;
    vlSymsp->TOP__cal_phase._settle__TOP__cal_phase__3(vlSymsp);
    vlTOPp->_settle__TOP__1(vlSymsp);
}

void Vcal_phase::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcal_phase::_ctor_var_reset\n"); );
    // Body
    en = VL_RAND_RESET_I(1);
    vin_vld = VL_RAND_RESET_I(1);
    v_in_0 = VL_RAND_RESET_I(8);
    v_in_1 = VL_RAND_RESET_I(8);
    v_in_2 = VL_RAND_RESET_I(8);
    v_in_3 = VL_RAND_RESET_I(8);
    v_in_4 = VL_RAND_RESET_I(8);
    v_in_5 = VL_RAND_RESET_I(8);
    v_in_6 = VL_RAND_RESET_I(8);
    v_in_7 = VL_RAND_RESET_I(8);
    res_vld = VL_RAND_RESET_I(1);
    res = VL_RAND_RESET_I(10);
    clk = VL_RAND_RESET_I(1);
    reset = VL_RAND_RESET_I(1);
    for (int __Vi0=0; __Vi0<3; ++__Vi0) {
        __Vm_traceActivity[__Vi0] = VL_RAND_RESET_I(1);
    }
}
