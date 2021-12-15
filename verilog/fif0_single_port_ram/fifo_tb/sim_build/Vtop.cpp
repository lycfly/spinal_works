// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtop.h for the primary calling header

#include "Vtop.h"
#include "Vtop__Syms.h"

#include "verilated_dpi.h"

//==========

void Vtop::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vtop::eval\n"); );
    Vtop__Syms* __restrict vlSymsp = this->__VlSymsp;  // Setup global symbol table
    Vtop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
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
            VL_FATAL_MT("/mnt/mydata/spinal_works/verilog/fif0_single_port_ram/fifo_tb/../sync_fifo_spram_v2.v", 2, "",
                "Verilated model didn't converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

void Vtop::_eval_initial_loop(Vtop__Syms* __restrict vlSymsp) {
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
            VL_FATAL_MT("/mnt/mydata/spinal_works/verilog/fif0_single_port_ram/fifo_tb/../sync_fifo_spram_v2.v", 2, "",
                "Verilated model didn't DC converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

VL_INLINE_OPT void Vtop::_combo__TOP__1(Vtop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop::_combo__TOP__1\n"); );
    Vtop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->sync_fifo_spram_v2__DOT__rst_n = vlTOPp->rst_n;
    vlTOPp->sync_fifo_spram_v2__DOT__wr_en = vlTOPp->wr_en;
    vlTOPp->sync_fifo_spram_v2__DOT__rd_en = vlTOPp->rd_en;
    vlTOPp->sync_fifo_spram_v2__DOT__din = vlTOPp->din;
    vlTOPp->sync_fifo_spram_v2__DOT__clk = vlTOPp->clk;
    vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__clk 
        = vlTOPp->sync_fifo_spram_v2__DOT__clk;
    vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__clk 
        = vlTOPp->sync_fifo_spram_v2__DOT__clk;
}

VL_INLINE_OPT void Vtop::_sequent__TOP__3(Vtop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop::_sequent__TOP__3\n"); );
    Vtop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    CData/*1:0*/ __Vdlyvdim0__sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ram__v0;
    CData/*0:0*/ __Vdlyvset__sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ram__v0;
    CData/*1:0*/ __Vdlyvdim0__sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ram__v0;
    CData/*0:0*/ __Vdlyvset__sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ram__v0;
    SData/*15:0*/ __Vdlyvval__sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ram__v0;
    SData/*15:0*/ __Vdlyvval__sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ram__v0;
    // Body
    __Vdlyvset__sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ram__v0 = 0U;
    __Vdlyvset__sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ram__v0 = 0U;
    if (vlTOPp->sync_fifo_spram_v2__DOT__ce_odd) {
        if (vlTOPp->sync_fifo_spram_v2__DOT__we_odd) {
            __Vdlyvval__sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ram__v0 
                = vlTOPp->sync_fifo_spram_v2__DOT__write_data_odd;
            __Vdlyvset__sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ram__v0 = 1U;
            __Vdlyvdim0__sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ram__v0 
                = vlTOPp->sync_fifo_spram_v2__DOT__odd_addr;
        }
    }
    if (vlTOPp->sync_fifo_spram_v2__DOT__ce_even) {
        if (vlTOPp->sync_fifo_spram_v2__DOT__we_even) {
            __Vdlyvval__sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ram__v0 
                = vlTOPp->sync_fifo_spram_v2__DOT__write_data_even;
            __Vdlyvset__sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ram__v0 = 1U;
            __Vdlyvdim0__sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ram__v0 
                = vlTOPp->sync_fifo_spram_v2__DOT__even_addr;
        }
    }
    if (vlTOPp->sync_fifo_spram_v2__DOT__ce_odd) {
        if ((1U & (~ (IData)(vlTOPp->sync_fifo_spram_v2__DOT__we_odd)))) {
            vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__rdata 
                = vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ram
                [vlTOPp->sync_fifo_spram_v2__DOT__odd_addr];
        }
    }
    if (vlTOPp->sync_fifo_spram_v2__DOT__ce_even) {
        if ((1U & (~ (IData)(vlTOPp->sync_fifo_spram_v2__DOT__we_even)))) {
            vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__rdata 
                = vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ram
                [vlTOPp->sync_fifo_spram_v2__DOT__even_addr];
        }
    }
    if (__Vdlyvset__sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ram__v0) {
        vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ram[__Vdlyvdim0__sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ram__v0] 
            = __Vdlyvval__sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ram__v0;
    }
    if (__Vdlyvset__sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ram__v0) {
        vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ram[__Vdlyvdim0__sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ram__v0] 
            = __Vdlyvval__sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ram__v0;
    }
    vlTOPp->sync_fifo_spram_v2__DOT__read_data_odd 
        = vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__rdata;
    vlTOPp->sync_fifo_spram_v2__DOT__read_data_even 
        = vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__rdata;
}

VL_INLINE_OPT void Vtop::_sequent__TOP__4(Vtop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop::_sequent__TOP__4\n"); );
    Vtop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    CData/*3:0*/ __Vdly__sync_fifo_spram_v2__DOT__fifo_cnt_reg;
    // Body
    __Vdly__sync_fifo_spram_v2__DOT__fifo_cnt_reg = vlTOPp->sync_fifo_spram_v2__DOT__fifo_cnt_reg;
    vlTOPp->sync_fifo_spram_v2__DOT__even_rd_reg = 
        ((IData)(vlTOPp->rst_n) & (IData)(vlTOPp->sync_fifo_spram_v2__DOT__even_rd));
    if (vlTOPp->rst_n) {
        if (vlTOPp->sync_fifo_spram_v2__DOT__conflict_flag) {
            vlTOPp->sync_fifo_spram_v2__DOT__buffer_data 
                = vlTOPp->din;
        }
    } else {
        vlTOPp->sync_fifo_spram_v2__DOT__buffer_data = 0U;
    }
    vlTOPp->sync_fifo_spram_v2__DOT__buffer_flag = 
        ((IData)(vlTOPp->rst_n) & (IData)(vlTOPp->sync_fifo_spram_v2__DOT__conflict_flag));
    if (vlTOPp->rst_n) {
        if (vlTOPp->sync_fifo_spram_v2__DOT__conflict_flag) {
            vlTOPp->sync_fifo_spram_v2__DOT__buffer_waddr 
                = vlTOPp->sync_fifo_spram_v2__DOT__wr_ptr;
        }
    } else {
        vlTOPp->sync_fifo_spram_v2__DOT__buffer_waddr = 0U;
    }
    if (vlTOPp->rst_n) {
        if (((IData)(vlTOPp->wr_en) & (~ (IData)(vlTOPp->sync_fifo_spram_v2__DOT__full)))) {
            vlTOPp->sync_fifo_spram_v2__DOT__wr_ptr 
                = (7U & ((IData)(1U) + (IData)(vlTOPp->sync_fifo_spram_v2__DOT__wr_ptr)));
        }
    } else {
        vlTOPp->sync_fifo_spram_v2__DOT__wr_ptr = 0U;
    }
    if (vlTOPp->rst_n) {
        if (((IData)(vlTOPp->rd_en) & (~ (IData)(vlTOPp->sync_fifo_spram_v2__DOT__empty)))) {
            vlTOPp->sync_fifo_spram_v2__DOT__rd_ptr 
                = (7U & ((IData)(1U) + (IData)(vlTOPp->sync_fifo_spram_v2__DOT__rd_ptr)));
        }
    } else {
        vlTOPp->sync_fifo_spram_v2__DOT__rd_ptr = 0U;
    }
    if (vlTOPp->rst_n) {
        if ((((IData)(vlTOPp->wr_en) & (~ (IData)(vlTOPp->sync_fifo_spram_v2__DOT__full))) 
             & ((IData)(vlTOPp->rd_en) & (~ (IData)(vlTOPp->sync_fifo_spram_v2__DOT__empty))))) {
            __Vdly__sync_fifo_spram_v2__DOT__fifo_cnt_reg 
                = vlTOPp->sync_fifo_spram_v2__DOT__fifo_cnt_reg;
        } else {
            if (((IData)(vlTOPp->wr_en) & (~ (IData)(vlTOPp->sync_fifo_spram_v2__DOT__full)))) {
                __Vdly__sync_fifo_spram_v2__DOT__fifo_cnt_reg 
                    = (0xfU & ((IData)(1U) + (IData)(vlTOPp->sync_fifo_spram_v2__DOT__fifo_cnt_reg)));
            } else {
                if (((IData)(vlTOPp->rd_en) & (~ (IData)(vlTOPp->sync_fifo_spram_v2__DOT__empty)))) {
                    __Vdly__sync_fifo_spram_v2__DOT__fifo_cnt_reg 
                        = (0xfU & ((IData)(vlTOPp->sync_fifo_spram_v2__DOT__fifo_cnt_reg) 
                                   - (IData)(1U)));
                }
            }
        }
    } else {
        __Vdly__sync_fifo_spram_v2__DOT__fifo_cnt_reg = 0U;
    }
    vlTOPp->sync_fifo_spram_v2__DOT__fifo_cnt_reg = __Vdly__sync_fifo_spram_v2__DOT__fifo_cnt_reg;
    vlTOPp->sync_fifo_spram_v2__DOT__dout = ((IData)(vlTOPp->sync_fifo_spram_v2__DOT__even_rd_reg)
                                              ? (IData)(vlTOPp->sync_fifo_spram_v2__DOT__read_data_even)
                                              : (IData)(vlTOPp->sync_fifo_spram_v2__DOT__read_data_odd));
    vlTOPp->sync_fifo_spram_v2__DOT__wr_en_thread2 
        = vlTOPp->sync_fifo_spram_v2__DOT__buffer_flag;
    vlTOPp->sync_fifo_spram_v2__DOT__fifo_cnt = vlTOPp->sync_fifo_spram_v2__DOT__fifo_cnt_reg;
    vlTOPp->sync_fifo_spram_v2__DOT__full = (8U == (IData)(vlTOPp->sync_fifo_spram_v2__DOT__fifo_cnt_reg));
    vlTOPp->sync_fifo_spram_v2__DOT__empty = (0U == (IData)(vlTOPp->sync_fifo_spram_v2__DOT__fifo_cnt_reg));
    vlTOPp->dout = vlTOPp->sync_fifo_spram_v2__DOT__dout;
    vlTOPp->fifo_cnt = vlTOPp->sync_fifo_spram_v2__DOT__fifo_cnt;
    vlTOPp->full = vlTOPp->sync_fifo_spram_v2__DOT__full;
    vlTOPp->empty = vlTOPp->sync_fifo_spram_v2__DOT__empty;
}

VL_INLINE_OPT void Vtop::_combo__TOP__5(Vtop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop::_combo__TOP__5\n"); );
    Vtop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->sync_fifo_spram_v2__DOT__even_rd = ((IData)(vlTOPp->rd_en) 
                                                & (~ (IData)(vlTOPp->sync_fifo_spram_v2__DOT__rd_ptr)));
    vlTOPp->sync_fifo_spram_v2__DOT__odd_rd = ((IData)(vlTOPp->rd_en) 
                                               & (IData)(vlTOPp->sync_fifo_spram_v2__DOT__rd_ptr));
    vlTOPp->sync_fifo_spram_v2__DOT__write_data_even 
        = (((IData)(vlTOPp->sync_fifo_spram_v2__DOT__wr_en_thread2) 
            & (~ (IData)(vlTOPp->sync_fifo_spram_v2__DOT__buffer_waddr)))
            ? (IData)(vlTOPp->sync_fifo_spram_v2__DOT__buffer_data)
            : (IData)(vlTOPp->din));
    vlTOPp->sync_fifo_spram_v2__DOT__write_data_odd 
        = (((IData)(vlTOPp->sync_fifo_spram_v2__DOT__wr_en_thread2) 
            & (IData)(vlTOPp->sync_fifo_spram_v2__DOT__buffer_waddr))
            ? (IData)(vlTOPp->sync_fifo_spram_v2__DOT__buffer_data)
            : (IData)(vlTOPp->din));
    vlTOPp->sync_fifo_spram_v2__DOT__conflict_flag 
        = ((((IData)(vlTOPp->rd_en) & (IData)(vlTOPp->wr_en)) 
            & ((~ (IData)(vlTOPp->sync_fifo_spram_v2__DOT__full)) 
               & (~ (IData)(vlTOPp->sync_fifo_spram_v2__DOT__empty)))) 
           & ((1U & (IData)(vlTOPp->sync_fifo_spram_v2__DOT__rd_ptr)) 
              == (1U & (IData)(vlTOPp->sync_fifo_spram_v2__DOT__wr_ptr))));
    vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__wdata 
        = vlTOPp->sync_fifo_spram_v2__DOT__write_data_even;
    vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__wdata 
        = vlTOPp->sync_fifo_spram_v2__DOT__write_data_odd;
    vlTOPp->sync_fifo_spram_v2__DOT__wr_en_thread1 
        = ((~ (IData)(vlTOPp->sync_fifo_spram_v2__DOT__conflict_flag)) 
           & (IData)(vlTOPp->wr_en));
    vlTOPp->sync_fifo_spram_v2__DOT__even_addr = (3U 
                                                  & ((IData)(vlTOPp->sync_fifo_spram_v2__DOT__even_rd)
                                                      ? 
                                                     ((IData)(vlTOPp->sync_fifo_spram_v2__DOT__rd_ptr) 
                                                      >> 1U)
                                                      : 
                                                     (((IData)(vlTOPp->sync_fifo_spram_v2__DOT__wr_en_thread1) 
                                                       & (~ (IData)(vlTOPp->sync_fifo_spram_v2__DOT__wr_ptr)))
                                                       ? 
                                                      ((IData)(vlTOPp->sync_fifo_spram_v2__DOT__wr_ptr) 
                                                       >> 1U)
                                                       : 
                                                      (((IData)(vlTOPp->sync_fifo_spram_v2__DOT__wr_en_thread2) 
                                                        & (~ (IData)(vlTOPp->sync_fifo_spram_v2__DOT__buffer_waddr)))
                                                        ? 
                                                       ((IData)(vlTOPp->sync_fifo_spram_v2__DOT__buffer_waddr) 
                                                        >> 1U)
                                                        : 
                                                       ((IData)(vlTOPp->sync_fifo_spram_v2__DOT__rd_ptr) 
                                                        >> 1U)))));
    vlTOPp->sync_fifo_spram_v2__DOT__odd_addr = (3U 
                                                 & ((IData)(vlTOPp->sync_fifo_spram_v2__DOT__odd_rd)
                                                     ? 
                                                    ((IData)(vlTOPp->sync_fifo_spram_v2__DOT__rd_ptr) 
                                                     >> 1U)
                                                     : 
                                                    (((IData)(vlTOPp->sync_fifo_spram_v2__DOT__wr_en_thread1) 
                                                      & (IData)(vlTOPp->sync_fifo_spram_v2__DOT__wr_ptr))
                                                      ? 
                                                     ((IData)(vlTOPp->sync_fifo_spram_v2__DOT__wr_ptr) 
                                                      >> 1U)
                                                      : 
                                                     (((IData)(vlTOPp->sync_fifo_spram_v2__DOT__wr_en_thread2) 
                                                       & (IData)(vlTOPp->sync_fifo_spram_v2__DOT__buffer_waddr))
                                                       ? 
                                                      ((IData)(vlTOPp->sync_fifo_spram_v2__DOT__buffer_waddr) 
                                                       >> 1U)
                                                       : 
                                                      ((IData)(vlTOPp->sync_fifo_spram_v2__DOT__rd_ptr) 
                                                       >> 1U)))));
    vlTOPp->sync_fifo_spram_v2__DOT__even_wr = (((IData)(vlTOPp->sync_fifo_spram_v2__DOT__wr_en_thread1) 
                                                 & (~ (IData)(vlTOPp->sync_fifo_spram_v2__DOT__wr_ptr))) 
                                                | ((IData)(vlTOPp->sync_fifo_spram_v2__DOT__wr_en_thread2) 
                                                   & (~ (IData)(vlTOPp->sync_fifo_spram_v2__DOT__buffer_waddr))));
    vlTOPp->sync_fifo_spram_v2__DOT__odd_wr = (((IData)(vlTOPp->sync_fifo_spram_v2__DOT__wr_en_thread1) 
                                                & (IData)(vlTOPp->sync_fifo_spram_v2__DOT__wr_ptr)) 
                                               | ((IData)(vlTOPp->sync_fifo_spram_v2__DOT__wr_en_thread2) 
                                                  & (IData)(vlTOPp->sync_fifo_spram_v2__DOT__buffer_waddr)));
    vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__addr 
        = vlTOPp->sync_fifo_spram_v2__DOT__even_addr;
    vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__addr 
        = vlTOPp->sync_fifo_spram_v2__DOT__odd_addr;
    vlTOPp->sync_fifo_spram_v2__DOT__ce_even = ((IData)(vlTOPp->sync_fifo_spram_v2__DOT__even_rd) 
                                                | (IData)(vlTOPp->sync_fifo_spram_v2__DOT__even_wr));
    vlTOPp->sync_fifo_spram_v2__DOT__we_even = (((IData)(vlTOPp->sync_fifo_spram_v2__DOT__even_wr) 
                                                 & (~ (IData)(vlTOPp->sync_fifo_spram_v2__DOT__full))) 
                                                & (~ 
                                                   ((IData)(vlTOPp->sync_fifo_spram_v2__DOT__even_rd) 
                                                    & (~ (IData)(vlTOPp->sync_fifo_spram_v2__DOT__empty)))));
    vlTOPp->sync_fifo_spram_v2__DOT__ce_odd = ((IData)(vlTOPp->sync_fifo_spram_v2__DOT__odd_rd) 
                                               | (IData)(vlTOPp->sync_fifo_spram_v2__DOT__odd_wr));
    vlTOPp->sync_fifo_spram_v2__DOT__we_odd = (((IData)(vlTOPp->sync_fifo_spram_v2__DOT__odd_wr) 
                                                & (~ (IData)(vlTOPp->sync_fifo_spram_v2__DOT__full))) 
                                               & (~ 
                                                  ((IData)(vlTOPp->sync_fifo_spram_v2__DOT__odd_rd) 
                                                   & (~ (IData)(vlTOPp->sync_fifo_spram_v2__DOT__empty)))));
    vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ce 
        = vlTOPp->sync_fifo_spram_v2__DOT__ce_even;
    vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__we 
        = vlTOPp->sync_fifo_spram_v2__DOT__we_even;
    vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ce 
        = vlTOPp->sync_fifo_spram_v2__DOT__ce_odd;
    vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__we 
        = vlTOPp->sync_fifo_spram_v2__DOT__we_odd;
}

void Vtop::_eval(Vtop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop::_eval\n"); );
    Vtop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_combo__TOP__1(vlSymsp);
    if (((IData)(vlTOPp->clk) & (~ (IData)(vlTOPp->__Vclklast__TOP__clk)))) {
        vlTOPp->_sequent__TOP__3(vlSymsp);
    }
    if ((((IData)(vlTOPp->clk) & (~ (IData)(vlTOPp->__Vclklast__TOP__clk))) 
         | ((~ (IData)(vlTOPp->rst_n)) & (IData)(vlTOPp->__Vclklast__TOP__rst_n)))) {
        vlTOPp->_sequent__TOP__4(vlSymsp);
    }
    vlTOPp->_combo__TOP__5(vlSymsp);
    // Final
    vlTOPp->__Vclklast__TOP__clk = vlTOPp->clk;
    vlTOPp->__Vclklast__TOP__rst_n = vlTOPp->rst_n;
}

VL_INLINE_OPT QData Vtop::_change_request(Vtop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop::_change_request\n"); );
    Vtop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    return (vlTOPp->_change_request_1(vlSymsp));
}

VL_INLINE_OPT QData Vtop::_change_request_1(Vtop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop::_change_request_1\n"); );
    Vtop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void Vtop::_eval_debug_assertions() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop::_eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((rst_n & 0xfeU))) {
        Verilated::overWidthError("rst_n");}
    if (VL_UNLIKELY((wr_en & 0xfeU))) {
        Verilated::overWidthError("wr_en");}
    if (VL_UNLIKELY((rd_en & 0xfeU))) {
        Verilated::overWidthError("rd_en");}
}
#endif  // VL_DEBUG
