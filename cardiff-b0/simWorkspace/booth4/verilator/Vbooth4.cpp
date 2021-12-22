// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vbooth4.h for the primary calling header

#include "Vbooth4.h"
#include "Vbooth4__Syms.h"

//==========

void Vbooth4::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vbooth4::eval\n"); );
    Vbooth4__Syms* __restrict vlSymsp = this->__VlSymsp;  // Setup global symbol table
    Vbooth4* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
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
            VL_FATAL_MT("/mnt/mydata/spinal_works/cardiff-b0/tmp/job_1/booth4.v", 7, "",
                "Verilated model didn't converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

void Vbooth4::_eval_initial_loop(Vbooth4__Syms* __restrict vlSymsp) {
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
            VL_FATAL_MT("/mnt/mydata/spinal_works/cardiff-b0/tmp/job_1/booth4.v", 7, "",
                "Verilated model didn't DC converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

VL_INLINE_OPT void Vbooth4::_sequent__TOP__1(Vbooth4__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4::_sequent__TOP__1\n"); );
    Vbooth4* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->booth4__DOT__cal_en_regNext = vlTOPp->booth4__DOT__cal_en;
}

VL_INLINE_OPT void Vbooth4::_combo__TOP__2(Vbooth4__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4::_combo__TOP__2\n"); );
    Vbooth4* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->booth4__DOT__PositiveB = ((0x300U & ((- (IData)(
                                                            (1U 
                                                             & ((IData)(vlTOPp->io_dinB) 
                                                                >> 7U)))) 
                                                 << 8U)) 
                                      | (IData)(vlTOPp->io_dinB));
}

VL_INLINE_OPT void Vbooth4::_sequent__TOP__4(Vbooth4__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4::_sequent__TOP__4\n"); );
    Vbooth4* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    CData/*1:0*/ __Vdly__booth4__DOT__cal_cnt;
    CData/*0:0*/ __Vdly__booth4__DOT__cal_en;
    IData/*18:0*/ __Vdly__booth4__DOT__shiftReg;
    // Body
    __Vdly__booth4__DOT__cal_cnt = vlTOPp->booth4__DOT__cal_cnt;
    __Vdly__booth4__DOT__cal_en = vlTOPp->booth4__DOT__cal_en;
    __Vdly__booth4__DOT__shiftReg = vlTOPp->booth4__DOT__shiftReg;
    if (vlTOPp->reset) {
        __Vdly__booth4__DOT__shiftReg = 0U;
        __Vdly__booth4__DOT__cal_cnt = 0U;
        __Vdly__booth4__DOT__cal_en = 0U;
    } else {
        if (vlTOPp->io_din_vld) {
            __Vdly__booth4__DOT__cal_en = 1U;
        } else {
            if ((3U == (IData)(vlTOPp->booth4__DOT__cal_cnt))) {
                __Vdly__booth4__DOT__cal_en = 0U;
            }
        }
        if (vlTOPp->booth4__DOT__cal_en) {
            __Vdly__booth4__DOT__cal_cnt = (3U & ((IData)(1U) 
                                                  + (IData)(vlTOPp->booth4__DOT__cal_cnt)));
        } else {
            if (vlTOPp->io_din_vld) {
                __Vdly__booth4__DOT__cal_cnt = 0U;
            }
        }
        if (vlTOPp->io_din_vld) {
            __Vdly__booth4__DOT__shiftReg = ((IData)(vlTOPp->io_dinA) 
                                             << 1U);
        } else {
            if (vlTOPp->booth4__DOT__cal_en) {
                __Vdly__booth4__DOT__shiftReg = ((4U 
                                                  & (IData)(vlTOPp->booth4__DOT__flag_bits))
                                                  ? 
                                                 ((2U 
                                                   & (IData)(vlTOPp->booth4__DOT__flag_bits))
                                                   ? 
                                                  ((1U 
                                                    & (IData)(vlTOPp->booth4__DOT__flag_bits))
                                                    ? vlTOPp->booth4__DOT___zz_5
                                                    : 
                                                   ((0x40000U 
                                                     & ((IData)(vlTOPp->booth4__DOT__MinusB) 
                                                        << 9U)) 
                                                    | ((0x20000U 
                                                        & ((IData)(vlTOPp->booth4__DOT__MinusB) 
                                                           << 8U)) 
                                                       | (((IData)(vlTOPp->booth4__DOT__MinusB) 
                                                           << 7U) 
                                                          | (0x7fU 
                                                             & (vlTOPp->booth4__DOT__shiftReg 
                                                                >> 2U))))))
                                                   : 
                                                  ((1U 
                                                    & (IData)(vlTOPp->booth4__DOT__flag_bits))
                                                    ? 
                                                   ((0x40000U 
                                                     & ((IData)(vlTOPp->booth4__DOT__MinusB) 
                                                        << 9U)) 
                                                    | ((0x20000U 
                                                        & ((IData)(vlTOPp->booth4__DOT__MinusB) 
                                                           << 8U)) 
                                                       | (((IData)(vlTOPp->booth4__DOT__MinusB) 
                                                           << 7U) 
                                                          | (0x7fU 
                                                             & (vlTOPp->booth4__DOT__shiftReg 
                                                                >> 2U)))))
                                                    : 
                                                   ((0x40000U 
                                                     & ((IData)(vlTOPp->booth4__DOT__Minus2B) 
                                                        << 9U)) 
                                                    | ((0x20000U 
                                                        & ((IData)(vlTOPp->booth4__DOT__Minus2B) 
                                                           << 8U)) 
                                                       | (((IData)(vlTOPp->booth4__DOT__Minus2B) 
                                                           << 7U) 
                                                          | (0x7fU 
                                                             & (vlTOPp->booth4__DOT__shiftReg 
                                                                >> 2U)))))))
                                                  : 
                                                 ((2U 
                                                   & (IData)(vlTOPp->booth4__DOT__flag_bits))
                                                   ? 
                                                  ((1U 
                                                    & (IData)(vlTOPp->booth4__DOT__flag_bits))
                                                    ? 
                                                   ((0x40000U 
                                                     & ((IData)(vlTOPp->booth4__DOT__Add2B) 
                                                        << 9U)) 
                                                    | ((0x20000U 
                                                        & ((IData)(vlTOPp->booth4__DOT__Add2B) 
                                                           << 8U)) 
                                                       | (((IData)(vlTOPp->booth4__DOT__Add2B) 
                                                           << 7U) 
                                                          | (0x7fU 
                                                             & (vlTOPp->booth4__DOT__shiftReg 
                                                                >> 2U)))))
                                                    : 
                                                   ((0x40000U 
                                                     & ((IData)(vlTOPp->booth4__DOT__AddB) 
                                                        << 9U)) 
                                                    | ((0x20000U 
                                                        & ((IData)(vlTOPp->booth4__DOT__AddB) 
                                                           << 8U)) 
                                                       | (((IData)(vlTOPp->booth4__DOT__AddB) 
                                                           << 7U) 
                                                          | (0x7fU 
                                                             & (vlTOPp->booth4__DOT__shiftReg 
                                                                >> 2U))))))
                                                   : 
                                                  ((1U 
                                                    & (IData)(vlTOPp->booth4__DOT__flag_bits))
                                                    ? 
                                                   ((0x40000U 
                                                     & ((IData)(vlTOPp->booth4__DOT__AddB) 
                                                        << 9U)) 
                                                    | ((0x20000U 
                                                        & ((IData)(vlTOPp->booth4__DOT__AddB) 
                                                           << 8U)) 
                                                       | (((IData)(vlTOPp->booth4__DOT__AddB) 
                                                           << 7U) 
                                                          | (0x7fU 
                                                             & (vlTOPp->booth4__DOT__shiftReg 
                                                                >> 2U)))))
                                                    : vlTOPp->booth4__DOT___zz_5)));
            }
        }
    }
    vlTOPp->booth4__DOT__cal_cnt = __Vdly__booth4__DOT__cal_cnt;
    vlTOPp->booth4__DOT__cal_en = __Vdly__booth4__DOT__cal_en;
    vlTOPp->booth4__DOT__shiftReg = __Vdly__booth4__DOT__shiftReg;
    vlTOPp->io_dout_vld = ((~ (IData)(vlTOPp->booth4__DOT__cal_en)) 
                           & (IData)(vlTOPp->booth4__DOT__cal_en_regNext));
    vlTOPp->booth4__DOT___zz_5 = (0x7ffffU & VL_SHIFTRS_III(19,19,32, vlTOPp->booth4__DOT__shiftReg, 2U));
    vlTOPp->booth4__DOT__flag_bits = (7U & vlTOPp->booth4__DOT__shiftReg);
    vlTOPp->io_dout = (0xffffU & (vlTOPp->booth4__DOT__shiftReg 
                                  >> 1U));
}

VL_INLINE_OPT void Vbooth4::_combo__TOP__5(Vbooth4__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4::_combo__TOP__5\n"); );
    Vbooth4* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->booth4__DOT__AddB = (0x3ffU & ((vlTOPp->booth4__DOT__shiftReg 
                                            >> 9U) 
                                           + (IData)(vlTOPp->booth4__DOT__PositiveB)));
    vlTOPp->booth4__DOT__Add2B = (0x3ffU & ((vlTOPp->booth4__DOT__shiftReg 
                                             >> 9U) 
                                            + ((IData)(vlTOPp->booth4__DOT__PositiveB) 
                                               << 1U)));
    vlTOPp->booth4__DOT__MinusB = (0x3ffU & ((vlTOPp->booth4__DOT__shiftReg 
                                              >> 9U) 
                                             + (- (IData)(vlTOPp->booth4__DOT__PositiveB))));
    vlTOPp->booth4__DOT__Minus2B = (0x3ffU & ((vlTOPp->booth4__DOT__shiftReg 
                                               >> 9U) 
                                              + ((- (IData)(vlTOPp->booth4__DOT__PositiveB)) 
                                                 << 1U)));
}

void Vbooth4::_eval(Vbooth4__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4::_eval\n"); );
    Vbooth4* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (((IData)(vlTOPp->clk) & (~ (IData)(vlTOPp->__Vclklast__TOP__clk)))) {
        vlTOPp->_sequent__TOP__1(vlSymsp);
    }
    vlTOPp->_combo__TOP__2(vlSymsp);
    vlTOPp->__Vm_traceActivity[1U] = 1U;
    if ((((IData)(vlTOPp->clk) & (~ (IData)(vlTOPp->__Vclklast__TOP__clk))) 
         | ((IData)(vlTOPp->reset) & (~ (IData)(vlTOPp->__Vclklast__TOP__reset))))) {
        vlTOPp->_sequent__TOP__4(vlSymsp);
        vlTOPp->__Vm_traceActivity[2U] = 1U;
    }
    vlTOPp->_combo__TOP__5(vlSymsp);
    // Final
    vlTOPp->__Vclklast__TOP__clk = vlTOPp->clk;
    vlTOPp->__Vclklast__TOP__reset = vlTOPp->reset;
}

VL_INLINE_OPT QData Vbooth4::_change_request(Vbooth4__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4::_change_request\n"); );
    Vbooth4* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    return (vlTOPp->_change_request_1(vlSymsp));
}

VL_INLINE_OPT QData Vbooth4::_change_request_1(Vbooth4__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4::_change_request_1\n"); );
    Vbooth4* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void Vbooth4::_eval_debug_assertions() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbooth4::_eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((io_din_vld & 0xfeU))) {
        Verilated::overWidthError("io_din_vld");}
    if (VL_UNLIKELY((clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((reset & 0xfeU))) {
        Verilated::overWidthError("reset");}
}
#endif  // VL_DEBUG
