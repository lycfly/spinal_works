// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VBOOTH2_V2_H_
#define _VBOOTH2_V2_H_  // guard

#include "verilated.h"

//==========

class Vbooth2_v2__Syms;
class Vbooth2_v2_VerilatedVcd;


//----------

VL_MODULE(Vbooth2_v2) {
  public:
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(clk,0,0);
    VL_IN8(reset,0,0);
    VL_IN8(io_din_vld,0,0);
    VL_IN8(io_dinA,7,0);
    VL_IN8(io_dinB,7,0);
    VL_OUT8(io_dout_vld,0,0);
    VL_OUT16(io_dout,15,0);
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    CData/*2:0*/ booth2_v2__DOT__cal_cnt;
    CData/*0:0*/ booth2_v2__DOT__cal_en;
    CData/*0:0*/ booth2_v2__DOT__cal_en_regNext;
    IData/*16:0*/ booth2_v2__DOT___zz_2;
    IData/*16:0*/ booth2_v2__DOT__shiftReg;
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    CData/*0:0*/ __Vclklast__TOP__clk;
    CData/*0:0*/ __Vclklast__TOP__reset;
    CData/*0:0*/ __Vm_traceActivity[2];
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    Vbooth2_v2__Syms* __VlSymsp;  // Symbol table
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vbooth2_v2);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    Vbooth2_v2(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~Vbooth2_v2();
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
    static void _eval_initial_loop(Vbooth2_v2__Syms* __restrict vlSymsp);
    void __Vconfigure(Vbooth2_v2__Syms* symsp, bool first);
  private:
    static QData _change_request(Vbooth2_v2__Syms* __restrict vlSymsp);
    static QData _change_request_1(Vbooth2_v2__Syms* __restrict vlSymsp);
  public:
    static void _combo__TOP__4(Vbooth2_v2__Syms* __restrict vlSymsp);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _eval(Vbooth2_v2__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif  // VL_DEBUG
  public:
    static void _eval_initial(Vbooth2_v2__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _eval_settle(Vbooth2_v2__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _sequent__TOP__1(Vbooth2_v2__Syms* __restrict vlSymsp);
    static void _sequent__TOP__2(Vbooth2_v2__Syms* __restrict vlSymsp);
    static void _settle__TOP__3(Vbooth2_v2__Syms* __restrict vlSymsp) VL_ATTR_COLD;
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
