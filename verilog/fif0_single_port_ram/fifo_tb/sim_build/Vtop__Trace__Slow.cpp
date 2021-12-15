// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vtop__Syms.h"


//======================

void Vtop::trace(VerilatedVcdC* tfp, int, int) {
    tfp->spTrace()->addInitCb(&traceInit, __VlSymsp);
    traceRegister(tfp->spTrace());
}

void Vtop::traceInit(void* userp, VerilatedVcd* tracep, uint32_t code) {
    // Callback from tracep->open()
    Vtop__Syms* __restrict vlSymsp = static_cast<Vtop__Syms*>(userp);
    if (!Verilated::calcUnusedSigs()) {
        VL_FATAL_MT(__FILE__, __LINE__, __FILE__,
                        "Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vlSymsp->__Vm_baseCode = code;
    tracep->module(vlSymsp->name());
    tracep->scopeEscape(' ');
    Vtop::traceInitTop(vlSymsp, tracep);
    tracep->scopeEscape('.');
}

//======================


void Vtop::traceInitTop(void* userp, VerilatedVcd* tracep) {
    Vtop__Syms* __restrict vlSymsp = static_cast<Vtop__Syms*>(userp);
    Vtop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    {
        vlTOPp->traceInitSub0(userp, tracep);
    }
}

void Vtop::traceInitSub0(void* userp, VerilatedVcd* tracep) {
    Vtop__Syms* __restrict vlSymsp = static_cast<Vtop__Syms*>(userp);
    Vtop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    const int c = vlSymsp->__Vm_baseCode;
    if (false && tracep && c) {}  // Prevent unused
    // Body
    {
        tracep->declBit(c+1,"clk", false,-1);
        tracep->declBit(c+2,"rst_n", false,-1);
        tracep->declBit(c+3,"wr_en", false,-1);
        tracep->declBit(c+4,"rd_en", false,-1);
        tracep->declBus(c+5,"din", false,-1, 15,0);
        tracep->declBus(c+6,"dout", false,-1, 15,0);
        tracep->declBit(c+7,"full", false,-1);
        tracep->declBit(c+8,"empty", false,-1);
        tracep->declBus(c+9,"fifo_cnt", false,-1, 3,0);
        tracep->declBus(c+64,"sync_fifo_spram_v2 AW", false,-1, 31,0);
        tracep->declBus(c+65,"sync_fifo_spram_v2 DW", false,-1, 31,0);
        tracep->declBus(c+66,"sync_fifo_spram_v2 DEPTH", false,-1, 31,0);
        tracep->declBit(c+10,"sync_fifo_spram_v2 clk", false,-1);
        tracep->declBit(c+11,"sync_fifo_spram_v2 rst_n", false,-1);
        tracep->declBit(c+12,"sync_fifo_spram_v2 wr_en", false,-1);
        tracep->declBit(c+13,"sync_fifo_spram_v2 rd_en", false,-1);
        tracep->declBus(c+14,"sync_fifo_spram_v2 din", false,-1, 15,0);
        tracep->declBus(c+15,"sync_fifo_spram_v2 dout", false,-1, 15,0);
        tracep->declBit(c+16,"sync_fifo_spram_v2 full", false,-1);
        tracep->declBit(c+17,"sync_fifo_spram_v2 empty", false,-1);
        tracep->declBus(c+18,"sync_fifo_spram_v2 fifo_cnt", false,-1, 3,0);
        tracep->declBus(c+19,"sync_fifo_spram_v2 rd_ptr", false,-1, 2,0);
        tracep->declBus(c+20,"sync_fifo_spram_v2 wr_ptr", false,-1, 2,0);
        tracep->declBus(c+21,"sync_fifo_spram_v2 dout_reg", false,-1, 15,0);
        tracep->declBus(c+22,"sync_fifo_spram_v2 fifo_cnt_reg", false,-1, 3,0);
        tracep->declBit(c+23,"sync_fifo_spram_v2 even_rd", false,-1);
        tracep->declBit(c+24,"sync_fifo_spram_v2 odd_rd", false,-1);
        tracep->declBit(c+25,"sync_fifo_spram_v2 even_rd_reg", false,-1);
        tracep->declBit(c+26,"sync_fifo_spram_v2 even_wr", false,-1);
        tracep->declBit(c+27,"sync_fifo_spram_v2 odd_wr", false,-1);
        tracep->declBus(c+28,"sync_fifo_spram_v2 even_addr", false,-1, 1,0);
        tracep->declBus(c+29,"sync_fifo_spram_v2 odd_addr", false,-1, 1,0);
        tracep->declBit(c+30,"sync_fifo_spram_v2 buffer_flag", false,-1);
        tracep->declBit(c+31,"sync_fifo_spram_v2 conflict_flag", false,-1);
        tracep->declBus(c+32,"sync_fifo_spram_v2 buffer_data", false,-1, 15,0);
        tracep->declBus(c+33,"sync_fifo_spram_v2 buffer_waddr", false,-1, 2,0);
        tracep->declBit(c+34,"sync_fifo_spram_v2 wr_en_thread1", false,-1);
        tracep->declBit(c+35,"sync_fifo_spram_v2 wr_en_thread2", false,-1);
        tracep->declBus(c+36,"sync_fifo_spram_v2 write_data_even", false,-1, 15,0);
        tracep->declBus(c+37,"sync_fifo_spram_v2 write_data_odd", false,-1, 15,0);
        tracep->declBus(c+38,"sync_fifo_spram_v2 read_data_even", false,-1, 15,0);
        tracep->declBus(c+39,"sync_fifo_spram_v2 read_data_odd", false,-1, 15,0);
        tracep->declBit(c+40,"sync_fifo_spram_v2 ce_even", false,-1);
        tracep->declBit(c+41,"sync_fifo_spram_v2 we_even", false,-1);
        tracep->declBit(c+42,"sync_fifo_spram_v2 ce_odd", false,-1);
        tracep->declBit(c+43,"sync_fifo_spram_v2 we_odd", false,-1);
        tracep->declBus(c+65,"sync_fifo_spram_v2 sp_ram_1 DW", false,-1, 31,0);
        tracep->declBus(c+67,"sync_fifo_spram_v2 sp_ram_1 AW", false,-1, 31,0);
        tracep->declBit(c+44,"sync_fifo_spram_v2 sp_ram_1 clk", false,-1);
        tracep->declBit(c+45,"sync_fifo_spram_v2 sp_ram_1 ce", false,-1);
        tracep->declBit(c+46,"sync_fifo_spram_v2 sp_ram_1 we", false,-1);
        tracep->declBus(c+47,"sync_fifo_spram_v2 sp_ram_1 wdata", false,-1, 15,0);
        tracep->declBus(c+48,"sync_fifo_spram_v2 sp_ram_1 addr", false,-1, 1,0);
        tracep->declBus(c+49,"sync_fifo_spram_v2 sp_ram_1 rdata", false,-1, 15,0);
        {int i; for (i=0; i<4; i++) {
                tracep->declBus(c+50+i*1,"sync_fifo_spram_v2 sp_ram_1 ram", true,(i+0), 15,0);}}
        tracep->declBus(c+65,"sync_fifo_spram_v2 sp_ram_2 DW", false,-1, 31,0);
        tracep->declBus(c+67,"sync_fifo_spram_v2 sp_ram_2 AW", false,-1, 31,0);
        tracep->declBit(c+54,"sync_fifo_spram_v2 sp_ram_2 clk", false,-1);
        tracep->declBit(c+55,"sync_fifo_spram_v2 sp_ram_2 ce", false,-1);
        tracep->declBit(c+56,"sync_fifo_spram_v2 sp_ram_2 we", false,-1);
        tracep->declBus(c+57,"sync_fifo_spram_v2 sp_ram_2 wdata", false,-1, 15,0);
        tracep->declBus(c+58,"sync_fifo_spram_v2 sp_ram_2 addr", false,-1, 1,0);
        tracep->declBus(c+59,"sync_fifo_spram_v2 sp_ram_2 rdata", false,-1, 15,0);
        {int i; for (i=0; i<4; i++) {
                tracep->declBus(c+60+i*1,"sync_fifo_spram_v2 sp_ram_2 ram", true,(i+0), 15,0);}}
    }
}

void Vtop::traceRegister(VerilatedVcd* tracep) {
    // Body
    {
        tracep->addFullCb(&traceFullTop0, __VlSymsp);
        tracep->addChgCb(&traceChgTop0, __VlSymsp);
        tracep->addCleanupCb(&traceCleanup, __VlSymsp);
    }
}

void Vtop::traceFullTop0(void* userp, VerilatedVcd* tracep) {
    Vtop__Syms* __restrict vlSymsp = static_cast<Vtop__Syms*>(userp);
    Vtop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    {
        vlTOPp->traceFullSub0(userp, tracep);
    }
}

void Vtop::traceFullSub0(void* userp, VerilatedVcd* tracep) {
    Vtop__Syms* __restrict vlSymsp = static_cast<Vtop__Syms*>(userp);
    Vtop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* const oldp = tracep->oldp(vlSymsp->__Vm_baseCode);
    if (false && oldp) {}  // Prevent unused
    // Body
    {
        tracep->fullBit(oldp+1,(vlTOPp->clk));
        tracep->fullBit(oldp+2,(vlTOPp->rst_n));
        tracep->fullBit(oldp+3,(vlTOPp->wr_en));
        tracep->fullBit(oldp+4,(vlTOPp->rd_en));
        tracep->fullSData(oldp+5,(vlTOPp->din),16);
        tracep->fullSData(oldp+6,(vlTOPp->dout),16);
        tracep->fullBit(oldp+7,(vlTOPp->full));
        tracep->fullBit(oldp+8,(vlTOPp->empty));
        tracep->fullCData(oldp+9,(vlTOPp->fifo_cnt),4);
        tracep->fullBit(oldp+10,(vlTOPp->sync_fifo_spram_v2__DOT__clk));
        tracep->fullBit(oldp+11,(vlTOPp->sync_fifo_spram_v2__DOT__rst_n));
        tracep->fullBit(oldp+12,(vlTOPp->sync_fifo_spram_v2__DOT__wr_en));
        tracep->fullBit(oldp+13,(vlTOPp->sync_fifo_spram_v2__DOT__rd_en));
        tracep->fullSData(oldp+14,(vlTOPp->sync_fifo_spram_v2__DOT__din),16);
        tracep->fullSData(oldp+15,(vlTOPp->sync_fifo_spram_v2__DOT__dout),16);
        tracep->fullBit(oldp+16,(vlTOPp->sync_fifo_spram_v2__DOT__full));
        tracep->fullBit(oldp+17,(vlTOPp->sync_fifo_spram_v2__DOT__empty));
        tracep->fullCData(oldp+18,(vlTOPp->sync_fifo_spram_v2__DOT__fifo_cnt),4);
        tracep->fullCData(oldp+19,(vlTOPp->sync_fifo_spram_v2__DOT__rd_ptr),3);
        tracep->fullCData(oldp+20,(vlTOPp->sync_fifo_spram_v2__DOT__wr_ptr),3);
        tracep->fullSData(oldp+21,(vlTOPp->sync_fifo_spram_v2__DOT__dout_reg),16);
        tracep->fullCData(oldp+22,(vlTOPp->sync_fifo_spram_v2__DOT__fifo_cnt_reg),4);
        tracep->fullBit(oldp+23,(vlTOPp->sync_fifo_spram_v2__DOT__even_rd));
        tracep->fullBit(oldp+24,(vlTOPp->sync_fifo_spram_v2__DOT__odd_rd));
        tracep->fullBit(oldp+25,(vlTOPp->sync_fifo_spram_v2__DOT__even_rd_reg));
        tracep->fullBit(oldp+26,(vlTOPp->sync_fifo_spram_v2__DOT__even_wr));
        tracep->fullBit(oldp+27,(vlTOPp->sync_fifo_spram_v2__DOT__odd_wr));
        tracep->fullCData(oldp+28,(vlTOPp->sync_fifo_spram_v2__DOT__even_addr),2);
        tracep->fullCData(oldp+29,(vlTOPp->sync_fifo_spram_v2__DOT__odd_addr),2);
        tracep->fullBit(oldp+30,(vlTOPp->sync_fifo_spram_v2__DOT__buffer_flag));
        tracep->fullBit(oldp+31,(vlTOPp->sync_fifo_spram_v2__DOT__conflict_flag));
        tracep->fullSData(oldp+32,(vlTOPp->sync_fifo_spram_v2__DOT__buffer_data),16);
        tracep->fullCData(oldp+33,(vlTOPp->sync_fifo_spram_v2__DOT__buffer_waddr),3);
        tracep->fullBit(oldp+34,(vlTOPp->sync_fifo_spram_v2__DOT__wr_en_thread1));
        tracep->fullBit(oldp+35,(vlTOPp->sync_fifo_spram_v2__DOT__wr_en_thread2));
        tracep->fullSData(oldp+36,(vlTOPp->sync_fifo_spram_v2__DOT__write_data_even),16);
        tracep->fullSData(oldp+37,(vlTOPp->sync_fifo_spram_v2__DOT__write_data_odd),16);
        tracep->fullSData(oldp+38,(vlTOPp->sync_fifo_spram_v2__DOT__read_data_even),16);
        tracep->fullSData(oldp+39,(vlTOPp->sync_fifo_spram_v2__DOT__read_data_odd),16);
        tracep->fullBit(oldp+40,(vlTOPp->sync_fifo_spram_v2__DOT__ce_even));
        tracep->fullBit(oldp+41,(vlTOPp->sync_fifo_spram_v2__DOT__we_even));
        tracep->fullBit(oldp+42,(vlTOPp->sync_fifo_spram_v2__DOT__ce_odd));
        tracep->fullBit(oldp+43,(vlTOPp->sync_fifo_spram_v2__DOT__we_odd));
        tracep->fullBit(oldp+44,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__clk));
        tracep->fullBit(oldp+45,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ce));
        tracep->fullBit(oldp+46,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__we));
        tracep->fullSData(oldp+47,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__wdata),16);
        tracep->fullCData(oldp+48,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__addr),2);
        tracep->fullSData(oldp+49,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__rdata),16);
        tracep->fullSData(oldp+50,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ram[0]),16);
        tracep->fullSData(oldp+51,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ram[1]),16);
        tracep->fullSData(oldp+52,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ram[2]),16);
        tracep->fullSData(oldp+53,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ram[3]),16);
        tracep->fullBit(oldp+54,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__clk));
        tracep->fullBit(oldp+55,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ce));
        tracep->fullBit(oldp+56,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__we));
        tracep->fullSData(oldp+57,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__wdata),16);
        tracep->fullCData(oldp+58,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__addr),2);
        tracep->fullSData(oldp+59,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__rdata),16);
        tracep->fullSData(oldp+60,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ram[0]),16);
        tracep->fullSData(oldp+61,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ram[1]),16);
        tracep->fullSData(oldp+62,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ram[2]),16);
        tracep->fullSData(oldp+63,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ram[3]),16);
        tracep->fullIData(oldp+64,(3U),32);
        tracep->fullIData(oldp+65,(0x10U),32);
        tracep->fullIData(oldp+66,(8U),32);
        tracep->fullIData(oldp+67,(2U),32);
    }
}
