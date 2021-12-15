// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vtop__Syms.h"
#include "Vtop.h"



// FUNCTIONS
Vtop__Syms::Vtop__Syms(Vtop* topp, const char* namep)
    // Setup locals
    : __Vm_namep(namep)
    , __Vm_activity(false)
    , __Vm_baseCode(0)
    , __Vm_didInit(false)
    // Setup submodule names
{
    // Pointer to top level
    TOPp = topp;
    // Setup each module's pointers to their submodules
    // Setup each module's pointer back to symbol table (for public functions)
    TOPp->__Vconfigure(this, true);
    // Setup scopes
    __Vscope_TOP.configure(this, name(), "TOP", "TOP", 0, VerilatedScope::SCOPE_OTHER);
    __Vscope_sp_ram.configure(this, name(), "sp_ram", "sp_ram", -9, VerilatedScope::SCOPE_MODULE);
    
    // Setup scope hierarchy
    __Vhier.add(0, &__Vscope_sp_ram);
    
    // Setup export functions
    for (int __Vfinal=0; __Vfinal<2; __Vfinal++) {
        __Vscope_TOP.varInsert(__Vfinal,"addr", &(TOPp->addr), false, VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,1 ,7,0);
        __Vscope_TOP.varInsert(__Vfinal,"ce", &(TOPp->ce), false, VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
        __Vscope_TOP.varInsert(__Vfinal,"clk", &(TOPp->clk), false, VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
        __Vscope_TOP.varInsert(__Vfinal,"rdata", &(TOPp->rdata), false, VLVT_UINT16,VLVD_OUT|VLVF_PUB_RW,1 ,15,0);
        __Vscope_TOP.varInsert(__Vfinal,"wdata", &(TOPp->wdata), false, VLVT_UINT16,VLVD_IN|VLVF_PUB_RW,1 ,15,0);
        __Vscope_TOP.varInsert(__Vfinal,"we", &(TOPp->we), false, VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
        __Vscope_sp_ram.varInsert(__Vfinal,"addr", &(TOPp->sp_ram__DOT__addr), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,1 ,7,0);
        __Vscope_sp_ram.varInsert(__Vfinal,"ce", &(TOPp->sp_ram__DOT__ce), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_sp_ram.varInsert(__Vfinal,"clk", &(TOPp->sp_ram__DOT__clk), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_sp_ram.varInsert(__Vfinal,"ram", &(TOPp->sp_ram__DOT__ram), false, VLVT_UINT16,VLVD_NODIR|VLVF_PUB_RW,2 ,15,0 ,255,0);
        __Vscope_sp_ram.varInsert(__Vfinal,"rdata", &(TOPp->sp_ram__DOT__rdata), false, VLVT_UINT16,VLVD_NODIR|VLVF_PUB_RW,1 ,15,0);
        __Vscope_sp_ram.varInsert(__Vfinal,"wdata", &(TOPp->sp_ram__DOT__wdata), false, VLVT_UINT16,VLVD_NODIR|VLVF_PUB_RW,1 ,15,0);
        __Vscope_sp_ram.varInsert(__Vfinal,"we", &(TOPp->sp_ram__DOT__we), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
    }
}
