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
    __Vscope_sync_fifo_spram_v2.configure(this, name(), "sync_fifo_spram_v2", "sync_fifo_spram_v2", -9, VerilatedScope::SCOPE_MODULE);
    __Vscope_sync_fifo_spram_v2__sp_ram_1.configure(this, name(), "sync_fifo_spram_v2.sp_ram_1", "sp_ram_1", -9, VerilatedScope::SCOPE_MODULE);
    __Vscope_sync_fifo_spram_v2__sp_ram_2.configure(this, name(), "sync_fifo_spram_v2.sp_ram_2", "sp_ram_2", -9, VerilatedScope::SCOPE_MODULE);
    
    // Setup scope hierarchy
    __Vhier.add(0, &__Vscope_sync_fifo_spram_v2);
    __Vhier.add(&__Vscope_sync_fifo_spram_v2, &__Vscope_sync_fifo_spram_v2__sp_ram_1);
    __Vhier.add(&__Vscope_sync_fifo_spram_v2, &__Vscope_sync_fifo_spram_v2__sp_ram_2);
    
    // Setup export functions
    for (int __Vfinal=0; __Vfinal<2; __Vfinal++) {
        __Vscope_TOP.varInsert(__Vfinal,"clk", &(TOPp->clk), false, VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
        __Vscope_TOP.varInsert(__Vfinal,"din", &(TOPp->din), false, VLVT_UINT16,VLVD_IN|VLVF_PUB_RW,1 ,15,0);
        __Vscope_TOP.varInsert(__Vfinal,"dout", &(TOPp->dout), false, VLVT_UINT16,VLVD_OUT|VLVF_PUB_RW,1 ,15,0);
        __Vscope_TOP.varInsert(__Vfinal,"empty", &(TOPp->empty), false, VLVT_UINT8,VLVD_OUT|VLVF_PUB_RW,0);
        __Vscope_TOP.varInsert(__Vfinal,"fifo_cnt", &(TOPp->fifo_cnt), false, VLVT_UINT8,VLVD_OUT|VLVF_PUB_RW,1 ,3,0);
        __Vscope_TOP.varInsert(__Vfinal,"full", &(TOPp->full), false, VLVT_UINT8,VLVD_OUT|VLVF_PUB_RW,0);
        __Vscope_TOP.varInsert(__Vfinal,"rd_en", &(TOPp->rd_en), false, VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
        __Vscope_TOP.varInsert(__Vfinal,"rst_n", &(TOPp->rst_n), false, VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
        __Vscope_TOP.varInsert(__Vfinal,"wr_en", &(TOPp->wr_en), false, VLVT_UINT8,VLVD_IN|VLVF_PUB_RW,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"buffer_data", &(TOPp->sync_fifo_spram_v2__DOT__buffer_data), false, VLVT_UINT16,VLVD_NODIR|VLVF_PUB_RW,1 ,15,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"buffer_flag", &(TOPp->sync_fifo_spram_v2__DOT__buffer_flag), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"buffer_waddr", &(TOPp->sync_fifo_spram_v2__DOT__buffer_waddr), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,1 ,2,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"ce_even", &(TOPp->sync_fifo_spram_v2__DOT__ce_even), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"ce_odd", &(TOPp->sync_fifo_spram_v2__DOT__ce_odd), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"clk", &(TOPp->sync_fifo_spram_v2__DOT__clk), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"conflict_flag", &(TOPp->sync_fifo_spram_v2__DOT__conflict_flag), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"din", &(TOPp->sync_fifo_spram_v2__DOT__din), false, VLVT_UINT16,VLVD_NODIR|VLVF_PUB_RW,1 ,15,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"dout", &(TOPp->sync_fifo_spram_v2__DOT__dout), false, VLVT_UINT16,VLVD_NODIR|VLVF_PUB_RW,1 ,15,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"dout_reg", &(TOPp->sync_fifo_spram_v2__DOT__dout_reg), false, VLVT_UINT16,VLVD_NODIR|VLVF_PUB_RW,1 ,15,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"empty", &(TOPp->sync_fifo_spram_v2__DOT__empty), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"even_addr", &(TOPp->sync_fifo_spram_v2__DOT__even_addr), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,1 ,1,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"even_rd", &(TOPp->sync_fifo_spram_v2__DOT__even_rd), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"even_rd_reg", &(TOPp->sync_fifo_spram_v2__DOT__even_rd_reg), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"even_wr", &(TOPp->sync_fifo_spram_v2__DOT__even_wr), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"fifo_cnt", &(TOPp->sync_fifo_spram_v2__DOT__fifo_cnt), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,1 ,3,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"fifo_cnt_reg", &(TOPp->sync_fifo_spram_v2__DOT__fifo_cnt_reg), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,1 ,3,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"full", &(TOPp->sync_fifo_spram_v2__DOT__full), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"odd_addr", &(TOPp->sync_fifo_spram_v2__DOT__odd_addr), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,1 ,1,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"odd_rd", &(TOPp->sync_fifo_spram_v2__DOT__odd_rd), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"odd_wr", &(TOPp->sync_fifo_spram_v2__DOT__odd_wr), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"rd_en", &(TOPp->sync_fifo_spram_v2__DOT__rd_en), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"rd_ptr", &(TOPp->sync_fifo_spram_v2__DOT__rd_ptr), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,1 ,2,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"read_data_even", &(TOPp->sync_fifo_spram_v2__DOT__read_data_even), false, VLVT_UINT16,VLVD_NODIR|VLVF_PUB_RW,1 ,15,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"read_data_odd", &(TOPp->sync_fifo_spram_v2__DOT__read_data_odd), false, VLVT_UINT16,VLVD_NODIR|VLVF_PUB_RW,1 ,15,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"rst_n", &(TOPp->sync_fifo_spram_v2__DOT__rst_n), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"we_even", &(TOPp->sync_fifo_spram_v2__DOT__we_even), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"we_odd", &(TOPp->sync_fifo_spram_v2__DOT__we_odd), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"wr_en", &(TOPp->sync_fifo_spram_v2__DOT__wr_en), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"wr_en_thread1", &(TOPp->sync_fifo_spram_v2__DOT__wr_en_thread1), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"wr_en_thread2", &(TOPp->sync_fifo_spram_v2__DOT__wr_en_thread2), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"wr_ptr", &(TOPp->sync_fifo_spram_v2__DOT__wr_ptr), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,1 ,2,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"write_data_even", &(TOPp->sync_fifo_spram_v2__DOT__write_data_even), false, VLVT_UINT16,VLVD_NODIR|VLVF_PUB_RW,1 ,15,0);
        __Vscope_sync_fifo_spram_v2.varInsert(__Vfinal,"write_data_odd", &(TOPp->sync_fifo_spram_v2__DOT__write_data_odd), false, VLVT_UINT16,VLVD_NODIR|VLVF_PUB_RW,1 ,15,0);
        __Vscope_sync_fifo_spram_v2__sp_ram_1.varInsert(__Vfinal,"addr", &(TOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__addr), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,1 ,1,0);
        __Vscope_sync_fifo_spram_v2__sp_ram_1.varInsert(__Vfinal,"ce", &(TOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ce), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_sync_fifo_spram_v2__sp_ram_1.varInsert(__Vfinal,"clk", &(TOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__clk), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_sync_fifo_spram_v2__sp_ram_1.varInsert(__Vfinal,"ram", &(TOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ram), false, VLVT_UINT16,VLVD_NODIR|VLVF_PUB_RW,2 ,15,0 ,3,0);
        __Vscope_sync_fifo_spram_v2__sp_ram_1.varInsert(__Vfinal,"rdata", &(TOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__rdata), false, VLVT_UINT16,VLVD_NODIR|VLVF_PUB_RW,1 ,15,0);
        __Vscope_sync_fifo_spram_v2__sp_ram_1.varInsert(__Vfinal,"wdata", &(TOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__wdata), false, VLVT_UINT16,VLVD_NODIR|VLVF_PUB_RW,1 ,15,0);
        __Vscope_sync_fifo_spram_v2__sp_ram_1.varInsert(__Vfinal,"we", &(TOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__we), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_sync_fifo_spram_v2__sp_ram_2.varInsert(__Vfinal,"addr", &(TOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__addr), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,1 ,1,0);
        __Vscope_sync_fifo_spram_v2__sp_ram_2.varInsert(__Vfinal,"ce", &(TOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ce), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_sync_fifo_spram_v2__sp_ram_2.varInsert(__Vfinal,"clk", &(TOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__clk), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
        __Vscope_sync_fifo_spram_v2__sp_ram_2.varInsert(__Vfinal,"ram", &(TOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ram), false, VLVT_UINT16,VLVD_NODIR|VLVF_PUB_RW,2 ,15,0 ,3,0);
        __Vscope_sync_fifo_spram_v2__sp_ram_2.varInsert(__Vfinal,"rdata", &(TOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__rdata), false, VLVT_UINT16,VLVD_NODIR|VLVF_PUB_RW,1 ,15,0);
        __Vscope_sync_fifo_spram_v2__sp_ram_2.varInsert(__Vfinal,"wdata", &(TOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__wdata), false, VLVT_UINT16,VLVD_NODIR|VLVF_PUB_RW,1 ,15,0);
        __Vscope_sync_fifo_spram_v2__sp_ram_2.varInsert(__Vfinal,"we", &(TOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__we), false, VLVT_UINT8,VLVD_NODIR|VLVF_PUB_RW,0);
    }
}
