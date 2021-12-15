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
    vlTOPp->sync_fifo_spram_v2__DOT__rst_n = vlTOPp->rst_n;
    vlTOPp->sync_fifo_spram_v2__DOT__wr_en = vlTOPp->wr_en;
    vlTOPp->sync_fifo_spram_v2__DOT__rd_en = vlTOPp->rd_en;
    vlTOPp->sync_fifo_spram_v2__DOT__din = vlTOPp->din;
    vlTOPp->sync_fifo_spram_v2__DOT__clk = vlTOPp->clk;
    vlTOPp->sync_fifo_spram_v2__DOT__fifo_cnt = vlTOPp->sync_fifo_spram_v2__DOT__fifo_cnt_reg;
    vlTOPp->sync_fifo_spram_v2__DOT__read_data_even 
        = vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__rdata;
    vlTOPp->sync_fifo_spram_v2__DOT__read_data_odd 
        = vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__rdata;
    vlTOPp->sync_fifo_spram_v2__DOT__even_rd = ((IData)(vlTOPp->rd_en) 
                                                & (~ (IData)(vlTOPp->sync_fifo_spram_v2__DOT__rd_ptr)));
    vlTOPp->sync_fifo_spram_v2__DOT__odd_rd = ((IData)(vlTOPp->rd_en) 
                                               & (IData)(vlTOPp->sync_fifo_spram_v2__DOT__rd_ptr));
    vlTOPp->sync_fifo_spram_v2__DOT__wr_en_thread2 
        = vlTOPp->sync_fifo_spram_v2__DOT__buffer_flag;
    vlTOPp->sync_fifo_spram_v2__DOT__full = (8U == (IData)(vlTOPp->sync_fifo_spram_v2__DOT__fifo_cnt_reg));
    vlTOPp->sync_fifo_spram_v2__DOT__empty = (0U == (IData)(vlTOPp->sync_fifo_spram_v2__DOT__fifo_cnt_reg));
    vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__clk 
        = vlTOPp->sync_fifo_spram_v2__DOT__clk;
    vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__clk 
        = vlTOPp->sync_fifo_spram_v2__DOT__clk;
    vlTOPp->fifo_cnt = vlTOPp->sync_fifo_spram_v2__DOT__fifo_cnt;
    vlTOPp->sync_fifo_spram_v2__DOT__dout = ((IData)(vlTOPp->sync_fifo_spram_v2__DOT__even_rd_reg)
                                              ? (IData)(vlTOPp->sync_fifo_spram_v2__DOT__read_data_even)
                                              : (IData)(vlTOPp->sync_fifo_spram_v2__DOT__read_data_odd));
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
    vlTOPp->full = vlTOPp->sync_fifo_spram_v2__DOT__full;
    vlTOPp->empty = vlTOPp->sync_fifo_spram_v2__DOT__empty;
    vlTOPp->sync_fifo_spram_v2__DOT__conflict_flag 
        = ((((IData)(vlTOPp->rd_en) & (IData)(vlTOPp->wr_en)) 
            & ((~ (IData)(vlTOPp->sync_fifo_spram_v2__DOT__full)) 
               & (~ (IData)(vlTOPp->sync_fifo_spram_v2__DOT__empty)))) 
           & ((1U & (IData)(vlTOPp->sync_fifo_spram_v2__DOT__rd_ptr)) 
              == (1U & (IData)(vlTOPp->sync_fifo_spram_v2__DOT__wr_ptr))));
    vlTOPp->dout = vlTOPp->sync_fifo_spram_v2__DOT__dout;
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

void Vtop::_eval_initial(Vtop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtop::_eval_initial\n"); );
    Vtop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->__Vclklast__TOP__clk = vlTOPp->clk;
    vlTOPp->__Vclklast__TOP__rst_n = vlTOPp->rst_n;
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
    rst_n = VL_RAND_RESET_I(1);
    wr_en = VL_RAND_RESET_I(1);
    rd_en = VL_RAND_RESET_I(1);
    din = VL_RAND_RESET_I(16);
    dout = VL_RAND_RESET_I(16);
    full = VL_RAND_RESET_I(1);
    empty = VL_RAND_RESET_I(1);
    fifo_cnt = VL_RAND_RESET_I(4);
    sync_fifo_spram_v2__DOT__clk = VL_RAND_RESET_I(1);
    sync_fifo_spram_v2__DOT__rst_n = VL_RAND_RESET_I(1);
    sync_fifo_spram_v2__DOT__wr_en = VL_RAND_RESET_I(1);
    sync_fifo_spram_v2__DOT__rd_en = VL_RAND_RESET_I(1);
    sync_fifo_spram_v2__DOT__din = VL_RAND_RESET_I(16);
    sync_fifo_spram_v2__DOT__dout = VL_RAND_RESET_I(16);
    sync_fifo_spram_v2__DOT__full = VL_RAND_RESET_I(1);
    sync_fifo_spram_v2__DOT__empty = VL_RAND_RESET_I(1);
    sync_fifo_spram_v2__DOT__fifo_cnt = VL_RAND_RESET_I(4);
    sync_fifo_spram_v2__DOT__rd_ptr = VL_RAND_RESET_I(3);
    sync_fifo_spram_v2__DOT__wr_ptr = VL_RAND_RESET_I(3);
    sync_fifo_spram_v2__DOT__dout_reg = VL_RAND_RESET_I(16);
    sync_fifo_spram_v2__DOT__fifo_cnt_reg = VL_RAND_RESET_I(4);
    sync_fifo_spram_v2__DOT__even_rd = VL_RAND_RESET_I(1);
    sync_fifo_spram_v2__DOT__odd_rd = VL_RAND_RESET_I(1);
    sync_fifo_spram_v2__DOT__even_rd_reg = VL_RAND_RESET_I(1);
    sync_fifo_spram_v2__DOT__even_wr = VL_RAND_RESET_I(1);
    sync_fifo_spram_v2__DOT__odd_wr = VL_RAND_RESET_I(1);
    sync_fifo_spram_v2__DOT__even_addr = VL_RAND_RESET_I(2);
    sync_fifo_spram_v2__DOT__odd_addr = VL_RAND_RESET_I(2);
    sync_fifo_spram_v2__DOT__buffer_flag = VL_RAND_RESET_I(1);
    sync_fifo_spram_v2__DOT__conflict_flag = VL_RAND_RESET_I(1);
    sync_fifo_spram_v2__DOT__buffer_data = VL_RAND_RESET_I(16);
    sync_fifo_spram_v2__DOT__buffer_waddr = VL_RAND_RESET_I(3);
    sync_fifo_spram_v2__DOT__wr_en_thread1 = VL_RAND_RESET_I(1);
    sync_fifo_spram_v2__DOT__wr_en_thread2 = VL_RAND_RESET_I(1);
    sync_fifo_spram_v2__DOT__write_data_even = VL_RAND_RESET_I(16);
    sync_fifo_spram_v2__DOT__write_data_odd = VL_RAND_RESET_I(16);
    sync_fifo_spram_v2__DOT__read_data_even = VL_RAND_RESET_I(16);
    sync_fifo_spram_v2__DOT__read_data_odd = VL_RAND_RESET_I(16);
    sync_fifo_spram_v2__DOT__ce_even = VL_RAND_RESET_I(1);
    sync_fifo_spram_v2__DOT__we_even = VL_RAND_RESET_I(1);
    sync_fifo_spram_v2__DOT__ce_odd = VL_RAND_RESET_I(1);
    sync_fifo_spram_v2__DOT__we_odd = VL_RAND_RESET_I(1);
    sync_fifo_spram_v2__DOT__sp_ram_1__DOT__clk = VL_RAND_RESET_I(1);
    sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ce = VL_RAND_RESET_I(1);
    sync_fifo_spram_v2__DOT__sp_ram_1__DOT__we = VL_RAND_RESET_I(1);
    sync_fifo_spram_v2__DOT__sp_ram_1__DOT__wdata = VL_RAND_RESET_I(16);
    sync_fifo_spram_v2__DOT__sp_ram_1__DOT__addr = VL_RAND_RESET_I(2);
    sync_fifo_spram_v2__DOT__sp_ram_1__DOT__rdata = VL_RAND_RESET_I(16);
    for (int __Vi0=0; __Vi0<4; ++__Vi0) {
        sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ram[__Vi0] = VL_RAND_RESET_I(16);
    }
    sync_fifo_spram_v2__DOT__sp_ram_2__DOT__clk = VL_RAND_RESET_I(1);
    sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ce = VL_RAND_RESET_I(1);
    sync_fifo_spram_v2__DOT__sp_ram_2__DOT__we = VL_RAND_RESET_I(1);
    sync_fifo_spram_v2__DOT__sp_ram_2__DOT__wdata = VL_RAND_RESET_I(16);
    sync_fifo_spram_v2__DOT__sp_ram_2__DOT__addr = VL_RAND_RESET_I(2);
    sync_fifo_spram_v2__DOT__sp_ram_2__DOT__rdata = VL_RAND_RESET_I(16);
    for (int __Vi0=0; __Vi0<4; ++__Vi0) {
        sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ram[__Vi0] = VL_RAND_RESET_I(16);
    }
    for (int __Vi0=0; __Vi0<1; ++__Vi0) {
        __Vm_traceActivity[__Vi0] = VL_RAND_RESET_I(1);
    }
}
