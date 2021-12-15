// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef _VCAL_PHASE__SYMS_H_
#define _VCAL_PHASE__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODULE CLASSES
#include "Vcal_phase.h"
#include "Vcal_phase_cal_phase.h"

// DPI TYPES for DPI Export callbacks (Internal use)

// SYMS CLASS
class Vcal_phase__Syms : public VerilatedSyms {
  public:
    
    // LOCAL STATE
    const char* __Vm_namep;
    bool __Vm_activity;  ///< Used by trace routines to determine change occurred
    uint32_t __Vm_baseCode;  ///< Used by trace routines when tracing multiple models
    bool __Vm_didInit;
    
    // SUBCELL STATE
    Vcal_phase*                    TOPp;
    Vcal_phase_cal_phase           TOP__cal_phase;
    
    // SCOPE NAMES
    VerilatedScope __Vscope_cal_phase;
    
    // CREATORS
    Vcal_phase__Syms(Vcal_phase* topp, const char* namep);
    ~Vcal_phase__Syms() = default;
    
    // METHODS
    inline const char* name() { return __Vm_namep; }
    
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
