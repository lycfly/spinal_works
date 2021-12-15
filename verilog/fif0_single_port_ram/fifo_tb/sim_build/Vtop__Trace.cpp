// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vtop__Syms.h"


void Vtop::traceChgTop0(void* userp, VerilatedVcd* tracep) {
    Vtop__Syms* __restrict vlSymsp = static_cast<Vtop__Syms*>(userp);
    Vtop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    {
        vlTOPp->traceChgSub0(userp, tracep);
    }
}

void Vtop::traceChgSub0(void* userp, VerilatedVcd* tracep) {
    Vtop__Syms* __restrict vlSymsp = static_cast<Vtop__Syms*>(userp);
    Vtop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* const oldp = tracep->oldp(vlSymsp->__Vm_baseCode + 1);
    if (false && oldp) {}  // Prevent unused
    // Body
    {
        tracep->chgBit(oldp+0,(vlTOPp->clk));
        tracep->chgBit(oldp+1,(vlTOPp->rst_n));
        tracep->chgBit(oldp+2,(vlTOPp->wr_en));
        tracep->chgBit(oldp+3,(vlTOPp->rd_en));
        tracep->chgSData(oldp+4,(vlTOPp->din),16);
        tracep->chgSData(oldp+5,(vlTOPp->dout),16);
        tracep->chgBit(oldp+6,(vlTOPp->full));
        tracep->chgBit(oldp+7,(vlTOPp->empty));
        tracep->chgCData(oldp+8,(vlTOPp->fifo_cnt),4);
        tracep->chgBit(oldp+9,(vlTOPp->sync_fifo_spram_v2__DOT__clk));
        tracep->chgBit(oldp+10,(vlTOPp->sync_fifo_spram_v2__DOT__rst_n));
        tracep->chgBit(oldp+11,(vlTOPp->sync_fifo_spram_v2__DOT__wr_en));
        tracep->chgBit(oldp+12,(vlTOPp->sync_fifo_spram_v2__DOT__rd_en));
        tracep->chgSData(oldp+13,(vlTOPp->sync_fifo_spram_v2__DOT__din),16);
        tracep->chgSData(oldp+14,(vlTOPp->sync_fifo_spram_v2__DOT__dout),16);
        tracep->chgBit(oldp+15,(vlTOPp->sync_fifo_spram_v2__DOT__full));
        tracep->chgBit(oldp+16,(vlTOPp->sync_fifo_spram_v2__DOT__empty));
        tracep->chgCData(oldp+17,(vlTOPp->sync_fifo_spram_v2__DOT__fifo_cnt),4);
        tracep->chgCData(oldp+18,(vlTOPp->sync_fifo_spram_v2__DOT__rd_ptr),3);
        tracep->chgCData(oldp+19,(vlTOPp->sync_fifo_spram_v2__DOT__wr_ptr),3);
        tracep->chgSData(oldp+20,(vlTOPp->sync_fifo_spram_v2__DOT__dout_reg),16);
        tracep->chgCData(oldp+21,(vlTOPp->sync_fifo_spram_v2__DOT__fifo_cnt_reg),4);
        tracep->chgBit(oldp+22,(vlTOPp->sync_fifo_spram_v2__DOT__even_rd));
        tracep->chgBit(oldp+23,(vlTOPp->sync_fifo_spram_v2__DOT__odd_rd));
        tracep->chgBit(oldp+24,(vlTOPp->sync_fifo_spram_v2__DOT__even_rd_reg));
        tracep->chgBit(oldp+25,(vlTOPp->sync_fifo_spram_v2__DOT__even_wr));
        tracep->chgBit(oldp+26,(vlTOPp->sync_fifo_spram_v2__DOT__odd_wr));
        tracep->chgCData(oldp+27,(vlTOPp->sync_fifo_spram_v2__DOT__even_addr),2);
        tracep->chgCData(oldp+28,(vlTOPp->sync_fifo_spram_v2__DOT__odd_addr),2);
        tracep->chgBit(oldp+29,(vlTOPp->sync_fifo_spram_v2__DOT__buffer_flag));
        tracep->chgBit(oldp+30,(vlTOPp->sync_fifo_spram_v2__DOT__conflict_flag));
        tracep->chgSData(oldp+31,(vlTOPp->sync_fifo_spram_v2__DOT__buffer_data),16);
        tracep->chgCData(oldp+32,(vlTOPp->sync_fifo_spram_v2__DOT__buffer_waddr),3);
        tracep->chgBit(oldp+33,(vlTOPp->sync_fifo_spram_v2__DOT__wr_en_thread1));
        tracep->chgBit(oldp+34,(vlTOPp->sync_fifo_spram_v2__DOT__wr_en_thread2));
        tracep->chgSData(oldp+35,(vlTOPp->sync_fifo_spram_v2__DOT__write_data_even),16);
        tracep->chgSData(oldp+36,(vlTOPp->sync_fifo_spram_v2__DOT__write_data_odd),16);
        tracep->chgSData(oldp+37,(vlTOPp->sync_fifo_spram_v2__DOT__read_data_even),16);
        tracep->chgSData(oldp+38,(vlTOPp->sync_fifo_spram_v2__DOT__read_data_odd),16);
        tracep->chgBit(oldp+39,(vlTOPp->sync_fifo_spram_v2__DOT__ce_even));
        tracep->chgBit(oldp+40,(vlTOPp->sync_fifo_spram_v2__DOT__we_even));
        tracep->chgBit(oldp+41,(vlTOPp->sync_fifo_spram_v2__DOT__ce_odd));
        tracep->chgBit(oldp+42,(vlTOPp->sync_fifo_spram_v2__DOT__we_odd));
        tracep->chgBit(oldp+43,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__clk));
        tracep->chgBit(oldp+44,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ce));
        tracep->chgBit(oldp+45,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__we));
        tracep->chgSData(oldp+46,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__wdata),16);
        tracep->chgCData(oldp+47,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__addr),2);
        tracep->chgSData(oldp+48,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__rdata),16);
        tracep->chgSData(oldp+49,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ram[0]),16);
        tracep->chgSData(oldp+50,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ram[1]),16);
        tracep->chgSData(oldp+51,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ram[2]),16);
        tracep->chgSData(oldp+52,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_1__DOT__ram[3]),16);
        tracep->chgBit(oldp+53,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__clk));
        tracep->chgBit(oldp+54,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ce));
        tracep->chgBit(oldp+55,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__we));
        tracep->chgSData(oldp+56,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__wdata),16);
        tracep->chgCData(oldp+57,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__addr),2);
        tracep->chgSData(oldp+58,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__rdata),16);
        tracep->chgSData(oldp+59,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ram[0]),16);
        tracep->chgSData(oldp+60,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ram[1]),16);
        tracep->chgSData(oldp+61,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ram[2]),16);
        tracep->chgSData(oldp+62,(vlTOPp->sync_fifo_spram_v2__DOT__sp_ram_2__DOT__ram[3]),16);
    }
}

void Vtop::traceCleanup(void* userp, VerilatedVcd* /*unused*/) {
    Vtop__Syms* __restrict vlSymsp = static_cast<Vtop__Syms*>(userp);
    Vtop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    {
        vlSymsp->__Vm_activity = false;
        vlTOPp->__Vm_traceActivity[0U] = 0U;
    }
}
