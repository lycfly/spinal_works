// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VCAL_PHASE_H_
#define _VCAL_PHASE_H_  // guard

#include "verilated.h"
#include "Vcal_phase__Dpi.h"

//==========

class Vcal_phase__Syms;
class Vcal_phase_VerilatedVcd;
class Vcal_phase_cal_phase;


//----------

VL_MODULE(Vcal_phase) {
  public:
    // CELLS
    // Public to allow access to /*verilator_public*/ items;
    // otherwise the application code can consider these internals.
    Vcal_phase_cal_phase* cal_phase;
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(clk,0,0);
    VL_IN8(reset,0,0);
    VL_IN8(rg_calphase_en,0,0);
    VL_IN8(rg_bypass_mean,0,0);
    VL_IN8(rg_cordic_iternum,2,0);
    VL_IN8(rg_leakage_table_0,7,0);
    VL_IN8(rg_leakage_table_1,7,0);
    VL_IN8(rg_leakage_table_2,7,0);
    VL_IN8(rg_leakage_table_3,7,0);
    VL_IN8(rg_leakage_table_4,7,0);
    VL_IN8(rg_leakage_table_5,7,0);
    VL_IN8(rg_leakage_table_6,7,0);
    VL_IN8(rg_leakage_table_7,7,0);
    VL_IN8(rg_sin_table_0,7,0);
    VL_IN8(rg_sin_table_1,7,0);
    VL_IN8(rg_sin_table_2,7,0);
    VL_IN8(rg_sin_table_3,7,0);
    VL_IN8(rg_sin_table_4,7,0);
    VL_IN8(rg_sin_table_5,7,0);
    VL_IN8(rg_sin_table_6,7,0);
    VL_IN8(rg_sin_table_7,7,0);
    VL_IN8(rg_cos_table_0,7,0);
    VL_IN8(rg_cos_table_1,7,0);
    VL_IN8(rg_cos_table_2,7,0);
    VL_IN8(rg_cos_table_3,7,0);
    VL_IN8(rg_cos_table_4,7,0);
    VL_IN8(rg_cos_table_5,7,0);
    VL_IN8(rg_cos_table_6,7,0);
    VL_IN8(rg_cos_table_7,7,0);
    VL_IN8(valid_num,2,0);
    VL_IN8(vin_vld,0,0);
    VL_IN8(vin1,7,0);
    VL_IN8(vin2,7,0);
    VL_OUT8(phase_vld,0,0);
    VL_OUT16(phase,9,0);
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    CData/*0:0*/ __Vclklast__TOP__clk;
    CData/*0:0*/ __Vclklast__TOP__reset;
    CData/*0:0*/ __Vm_traceActivity[3];
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    Vcal_phase__Syms* __VlSymsp;  // Symbol table
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vcal_phase);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    Vcal_phase(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~Vcal_phase();
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
    static void _eval_initial_loop(Vcal_phase__Syms* __restrict vlSymsp);
    void __Vconfigure(Vcal_phase__Syms* symsp, bool first);
  private:
    static QData _change_request(Vcal_phase__Syms* __restrict vlSymsp);
    static QData _change_request_1(Vcal_phase__Syms* __restrict vlSymsp);
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _eval(Vcal_phase__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif  // VL_DEBUG
  public:
    static void _eval_initial(Vcal_phase__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _eval_settle(Vcal_phase__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _settle__TOP__1(Vcal_phase__Syms* __restrict vlSymsp);
  private:
    static void traceChgSub0(void* userp, VerilatedVcd* tracep);
    static void traceChgSub1(void* userp, VerilatedVcd* tracep);
    static void traceChgTop0(void* userp, VerilatedVcd* tracep);
    static void traceCleanup(void* userp, VerilatedVcd* /*unused*/);
    static void traceFullSub0(void* userp, VerilatedVcd* tracep) VL_ATTR_COLD;
    static void traceFullSub1(void* userp, VerilatedVcd* tracep) VL_ATTR_COLD;
    static void traceFullTop0(void* userp, VerilatedVcd* tracep) VL_ATTR_COLD;
    static void traceInitSub0(void* userp, VerilatedVcd* tracep) VL_ATTR_COLD;
    static void traceInitSub1(void* userp, VerilatedVcd* tracep) VL_ATTR_COLD;
    static void traceInitTop(void* userp, VerilatedVcd* tracep) VL_ATTR_COLD;
    void traceRegister(VerilatedVcd* tracep) VL_ATTR_COLD;
    static void traceInit(void* userp, VerilatedVcd* tracep, uint32_t code) VL_ATTR_COLD;
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
