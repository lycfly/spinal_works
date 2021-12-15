// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vcal_phase__Syms.h"
#include "Vcal_phase.h"
#include "Vcal_phase_cal_phase.h"



// FUNCTIONS
Vcal_phase__Syms::Vcal_phase__Syms(Vcal_phase* topp, const char* namep)
    // Setup locals
    : __Vm_namep(namep)
    , __Vm_activity(false)
    , __Vm_baseCode(0)
    , __Vm_didInit(false)
    // Setup submodule names
    , TOP__cal_phase(Verilated::catName(topp->name(), "cal_phase"))
{
    // Pointer to top level
    TOPp = topp;
    // Setup each module's pointers to their submodules
    TOPp->cal_phase = &TOP__cal_phase;
    // Setup each module's pointer back to symbol table (for public functions)
    TOPp->__Vconfigure(this, true);
    TOP__cal_phase.__Vconfigure(this, true);
    // Setup scopes
    __Vscope_cal_phase.configure(this, name(), "cal_phase", "cal_phase", 0, VerilatedScope::SCOPE_OTHER);
    // Setup export functions
    for (int __Vfinal=0; __Vfinal<2; __Vfinal++) {
        __Vscope_cal_phase.varInsert(__Vfinal,"ph_vld", &(TOP__cal_phase.ph_vld), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_cal_phase.varInsert(__Vfinal,"ph_vld_dly1", &(TOP__cal_phase.ph_vld_dly1), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
    }
}
