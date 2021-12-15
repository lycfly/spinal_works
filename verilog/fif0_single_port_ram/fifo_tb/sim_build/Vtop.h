// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VTOP_H_
#define _VTOP_H_  // guard

#include "verilated.h"
#include "Vtop__Dpi.h"

//==========

class Vtop__Syms;
class Vtop_VerilatedVcd;


//----------

VL_MODULE(Vtop) {
  public:
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(clk,0,0);
    VL_IN8(rst_n,0,0);
    VL_IN8(wr_en,0,0);
    VL_IN8(rd_en,0,0);
    VL_OUT8(full,0,0);
    VL_OUT8(empty,0,0);
    VL_OUT8(fifo_cnt,3,0);
    VL_IN16(din,15,0);
    VL_OUT16(dout,15,0);
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    CData/*0:0*/ sync_fifo_spram_v2__DOT__clk;
    CData/*0:0*/ sync_fifo_spram_v2__DOT__rst_n;
    CData/*0:0*/ sync_fifo_spram_v2__DOT__wr_en;
    CData/*0:0*/ sync_fifo_spram_v2__DOT__rd_en;
    CData/*0:0*/ sync_fifo_spram_v2__DOT__full;
    CData/*0:0*/ sync_fifo_spram_v2__DOT__empty;
    CData/*3:0*/ sync_fifo_spram_v2__DOT__fifo_cnt;
    CData/*2:0*/ sync_fifo_spram_v2__DOT__rd_ptr;
    CData/*2:0*/ sync_fifo_spram_v2__DOT__wr_ptr;
    CData/*3:0*/ sync_fifo_spram_v2__DOT__fifo_cnt_reg;
    CData/*0:0*/ sync_fifo_spram_v2__DOT__even_rd;
    CData/*0:0*/ sync_fifo_spram_v2__DOT__odd_rd;
    CData/*0:0*/ sync_fifo_spram_v2__DOT__even_rd_reg;
    CData/*0:0*/ sync_fifo_spram_v2__DOT__even_wr;
    CData/*0:0*/ sync_fifo_spram_v2__DOT__odd_wr;
    CData/*1:0*/ sync_fifo_spram_v2__DOT__even_addr;
    CData/*1:0*/ sync_fifo_spram_v2__DOT__odd_addr;
    CData/*0:0*/ sync_fifo_spram_v2__DOT__buffer_flag;
    CData/*0:0*/ sync_fifo_spram_v2__DOT__conflict_flag;
    CData/*2:0*/ sync_fifo_spram_v2__DOT__buffer_waddr;
    CData/*0:0*/ sync_fifo_spram_v2__DOT__wr_en_thread1;
    CData/*0:0*/ sync_fifo_spram_v2__DOT__wr_en_thread2;
    CData/*0:0*/ sync_fifo_spram_v2__DOT__ce_even;
    CData/*0:0*/ sync_fifo_spram_v2__DOT__we_even;
    CData/*0:0*/ sync_fifo_spram_v2__DOT__ce_odd;
    CData/*0:0*/ sync_fifo_spram_v2__DOT__we_odd;
    CData/*0:0*/ sync_fifo_spram_v2__DOT__sp_ram_1__DOT__clk;
    CData/*0:0*/ sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ce;
    CData/*0:0*/ sync_fifo_spram_v2__DOT__sp_ram_1__DOT__we;
    CData/*1:0*/ sync_fifo_spram_v2__DOT__sp_ram_1__DOT__addr;
    CData/*0:0*/ sync_fifo_spram_v2__DOT__sp_ram_2__DOT__clk;
    CData/*0:0*/ sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ce;
    CData/*0:0*/ sync_fifo_spram_v2__DOT__sp_ram_2__DOT__we;
    CData/*1:0*/ sync_fifo_spram_v2__DOT__sp_ram_2__DOT__addr;
    SData/*15:0*/ sync_fifo_spram_v2__DOT__din;
    SData/*15:0*/ sync_fifo_spram_v2__DOT__dout;
    SData/*15:0*/ sync_fifo_spram_v2__DOT__dout_reg;
    SData/*15:0*/ sync_fifo_spram_v2__DOT__buffer_data;
    SData/*15:0*/ sync_fifo_spram_v2__DOT__write_data_even;
    SData/*15:0*/ sync_fifo_spram_v2__DOT__write_data_odd;
    SData/*15:0*/ sync_fifo_spram_v2__DOT__read_data_even;
    SData/*15:0*/ sync_fifo_spram_v2__DOT__read_data_odd;
    SData/*15:0*/ sync_fifo_spram_v2__DOT__sp_ram_1__DOT__wdata;
    SData/*15:0*/ sync_fifo_spram_v2__DOT__sp_ram_1__DOT__rdata;
    SData/*15:0*/ sync_fifo_spram_v2__DOT__sp_ram_2__DOT__wdata;
    SData/*15:0*/ sync_fifo_spram_v2__DOT__sp_ram_2__DOT__rdata;
    SData/*15:0*/ sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ram[4];
    SData/*15:0*/ sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ram[4];
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    CData/*0:0*/ __Vclklast__TOP__clk;
    CData/*0:0*/ __Vclklast__TOP__rst_n;
    CData/*0:0*/ __Vm_traceActivity[1];
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    Vtop__Syms* __VlSymsp;  // Symbol table
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vtop);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    Vtop(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~Vtop();
    /// Trace signals in the model; called by application code
    void trace(VerilatedVcdC* tfp, int levels, int options = 0);
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval() { eval_step(); }
    /// Evaluate when calling multiple units/models per time step.
    void eval_step();
    /// Evaluate at end of a timestep for tracing, when using eval_step().
    /// Application must call after all eval() and before time changes.
    void eval_end_step() {}
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
    static void _eval_initial_loop(Vtop__Syms* __restrict vlSymsp);
    void __Vconfigure(Vtop__Syms* symsp, bool first);
  private:
    static QData _change_request(Vtop__Syms* __restrict vlSymsp);
    static QData _change_request_1(Vtop__Syms* __restrict vlSymsp);
  public:
    static void _combo__TOP__1(Vtop__Syms* __restrict vlSymsp);
    static void _combo__TOP__5(Vtop__Syms* __restrict vlSymsp);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _eval(Vtop__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif  // VL_DEBUG
  public:
    static void _eval_initial(Vtop__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _eval_settle(Vtop__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _sequent__TOP__3(Vtop__Syms* __restrict vlSymsp);
    static void _sequent__TOP__4(Vtop__Syms* __restrict vlSymsp);
    static void _settle__TOP__2(Vtop__Syms* __restrict vlSymsp) VL_ATTR_COLD;
  private:
    static void traceChgSub0(void* userp, VerilatedVcd* tracep);
    static void traceChgTop0(void* userp, VerilatedVcd* tracep);
    static void traceCleanup(void* userp, VerilatedVcd* /*unused*/);
    static void traceFullSub0(void* userp, VerilatedVcd* tracep) VL_ATTR_COLD;
    static void traceFullTop0(void* userp, VerilatedVcd* tracep) VL_ATTR_COLD;
    static void traceInitSub0(void* userp, VerilatedVcd* tracep) VL_ATTR_COLD;
    static void traceInitTop(void* userp, VerilatedVcd* tracep) VL_ATTR_COLD;
    void traceRegister(VerilatedVcd* tracep) VL_ATTR_COLD;
    static void traceInit(void* userp, VerilatedVcd* tracep, uint32_t code) VL_ATTR_COLD;
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
