// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vcal_phase.h for the primary calling header

#include "Vcal_phase.h"
#include "Vcal_phase__Syms.h"

#include "verilated_dpi.h"

//==========

void Vcal_phase::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vcal_phase::eval\n"); );
    Vcal_phase__Syms* __restrict vlSymsp = this->__VlSymsp;  // Setup global symbol table
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
#ifdef VL_DEBUG
    // Debug assertions
    _eval_debug_assertions();
#endif  // VL_DEBUG
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Clock loop\n"););
        vlSymsp->__Vm_activity = true;
        _eval(vlSymsp);
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = _change_request(vlSymsp);
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("/mnt/mydata/spinal_works/cardiff-b0/tmp/job_1/cal_phase.v", 7, "",
                "Verilated model didn't converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

void Vcal_phase::_eval_initial_loop(Vcal_phase__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    _eval_initial(vlSymsp);
    vlSymsp->__Vm_activity = true;
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        _eval_settle(vlSymsp);
        _eval(vlSymsp);
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = _change_request(vlSymsp);
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("/mnt/mydata/spinal_works/cardiff-b0/tmp/job_1/cal_phase.v", 7, "",
                "Verilated model didn't DC converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

VL_INLINE_OPT void Vcal_phase::_sequent__TOP__1(Vcal_phase__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcal_phase::_sequent__TOP__1\n"); );
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->phase = vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_out;
    vlTOPp->phase_vld = vlSymsp->TOP__cal_phase.ph_vld;
}

void Vcal_phase::_eval(Vcal_phase__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcal_phase::_eval\n"); );
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (((IData)(vlTOPp->clk) & (~ (IData)(vlTOPp->__Vclklast__TOP__clk)))) {
        vlSymsp->TOP__cal_phase._sequent__TOP__cal_phase__1(vlSymsp);
        vlTOPp->__Vm_traceActivity[1U] = 1U;
    }
    if ((((IData)(vlTOPp->clk) & (~ (IData)(vlTOPp->__Vclklast__TOP__clk))) 
         | ((IData)(vlTOPp->reset) & (~ (IData)(vlTOPp->__Vclklast__TOP__reset))))) {
        vlTOPp->__Vm_traceActivity[2U] = 1U;
        vlSymsp->TOP__cal_phase._sequent__TOP__cal_phase__3(vlSymsp);
        vlSymsp->TOP__cal_phase._sequent__TOP__cal_phase__4(vlSymsp);
        vlSymsp->TOP__cal_phase._sequent__TOP__cal_phase__5(vlSymsp);
        vlSymsp->TOP__cal_phase._sequent__TOP__cal_phase__6(vlSymsp);
        vlTOPp->_sequent__TOP__1(vlSymsp);
    }
    vlSymsp->TOP__cal_phase._combo__TOP__cal_phase__9(vlSymsp);
    vlTOPp->__Vm_traceActivity[3U] = 1U;
    // Final
    vlTOPp->__Vclklast__TOP__clk = vlTOPp->clk;
    vlTOPp->__Vclklast__TOP__reset = vlTOPp->reset;
}

VL_INLINE_OPT QData Vcal_phase::_change_request(Vcal_phase__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcal_phase::_change_request\n"); );
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    return (vlTOPp->_change_request_1(vlSymsp));
}

VL_INLINE_OPT QData Vcal_phase::_change_request_1(Vcal_phase__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcal_phase::_change_request_1\n"); );
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void Vcal_phase::_eval_debug_assertions() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcal_phase::_eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((rg_calphase_en & 0xfeU))) {
        Verilated::overWidthError("rg_calphase_en");}
    if (VL_UNLIKELY((rg_bypass_mean & 0xfeU))) {
        Verilated::overWidthError("rg_bypass_mean");}
    if (VL_UNLIKELY((rg_cordic_iternum & 0xf8U))) {
        Verilated::overWidthError("rg_cordic_iternum");}
    if (VL_UNLIKELY((rg_ac_table_0 & 0xfcU))) {
        Verilated::overWidthError("rg_ac_table_0");}
    if (VL_UNLIKELY((rg_ac_table_1 & 0xfcU))) {
        Verilated::overWidthError("rg_ac_table_1");}
    if (VL_UNLIKELY((rg_ac_table_2 & 0xfcU))) {
        Verilated::overWidthError("rg_ac_table_2");}
    if (VL_UNLIKELY((rg_ac_table_3 & 0xfcU))) {
        Verilated::overWidthError("rg_ac_table_3");}
    if (VL_UNLIKELY((rg_ac_table_4 & 0xfcU))) {
        Verilated::overWidthError("rg_ac_table_4");}
    if (VL_UNLIKELY((rg_ac_table_5 & 0xfcU))) {
        Verilated::overWidthError("rg_ac_table_5");}
    if (VL_UNLIKELY((rg_ac_table_6 & 0xfcU))) {
        Verilated::overWidthError("rg_ac_table_6");}
    if (VL_UNLIKELY((rg_ac_table_7 & 0xfcU))) {
        Verilated::overWidthError("rg_ac_table_7");}
    if (VL_UNLIKELY((valid_num & 0xf8U))) {
        Verilated::overWidthError("valid_num");}
    if (VL_UNLIKELY((vin_vld & 0xfeU))) {
        Verilated::overWidthError("vin_vld");}
    if (VL_UNLIKELY((clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((reset & 0xfeU))) {
        Verilated::overWidthError("reset");}
}
#endif  // VL_DEBUG
