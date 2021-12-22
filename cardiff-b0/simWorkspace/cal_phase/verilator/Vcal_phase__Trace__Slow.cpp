// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vcal_phase__Syms.h"


//======================

void Vcal_phase::trace(VerilatedVcdC* tfp, int, int) {
    tfp->spTrace()->addInitCb(&traceInit, __VlSymsp);
    traceRegister(tfp->spTrace());
}

void Vcal_phase::traceInit(void* userp, VerilatedVcd* tracep, uint32_t code) {
    // Callback from tracep->open()
    Vcal_phase__Syms* __restrict vlSymsp = static_cast<Vcal_phase__Syms*>(userp);
    if (!Verilated::calcUnusedSigs()) {
        VL_FATAL_MT(__FILE__, __LINE__, __FILE__,
                        "Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vlSymsp->__Vm_baseCode = code;
    tracep->module(vlSymsp->name());
    tracep->scopeEscape(' ');
    Vcal_phase::traceInitTop(vlSymsp, tracep);
    tracep->scopeEscape('.');
}

//======================


void Vcal_phase::traceInitTop(void* userp, VerilatedVcd* tracep) {
    Vcal_phase__Syms* __restrict vlSymsp = static_cast<Vcal_phase__Syms*>(userp);
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    {
        vlTOPp->traceInitSub0(userp, tracep);
        vlTOPp->traceInitSub1(userp, tracep);
    }
}

void Vcal_phase::traceInitSub0(void* userp, VerilatedVcd* tracep) {
    Vcal_phase__Syms* __restrict vlSymsp = static_cast<Vcal_phase__Syms*>(userp);
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    const int c = vlSymsp->__Vm_baseCode;
    if (false && tracep && c) {}  // Prevent unused
    // Body
    {
        tracep->declBit(c+65,"rg_calphase_en", false,-1);
        tracep->declBit(c+66,"rg_bypass_mean", false,-1);
        tracep->declBus(c+67,"rg_cordic_iternum", false,-1, 2,0);
        tracep->declBus(c+68,"rg_leakage_table_0", false,-1, 7,0);
        tracep->declBus(c+69,"rg_leakage_table_1", false,-1, 7,0);
        tracep->declBus(c+70,"rg_leakage_table_2", false,-1, 7,0);
        tracep->declBus(c+71,"rg_leakage_table_3", false,-1, 7,0);
        tracep->declBus(c+72,"rg_leakage_table_4", false,-1, 7,0);
        tracep->declBus(c+73,"rg_leakage_table_5", false,-1, 7,0);
        tracep->declBus(c+74,"rg_leakage_table_6", false,-1, 7,0);
        tracep->declBus(c+75,"rg_leakage_table_7", false,-1, 7,0);
        tracep->declBus(c+76,"rg_sin_table_0", false,-1, 7,0);
        tracep->declBus(c+77,"rg_sin_table_1", false,-1, 7,0);
        tracep->declBus(c+78,"rg_sin_table_2", false,-1, 7,0);
        tracep->declBus(c+79,"rg_sin_table_3", false,-1, 7,0);
        tracep->declBus(c+80,"rg_sin_table_4", false,-1, 7,0);
        tracep->declBus(c+81,"rg_sin_table_5", false,-1, 7,0);
        tracep->declBus(c+82,"rg_sin_table_6", false,-1, 7,0);
        tracep->declBus(c+83,"rg_sin_table_7", false,-1, 7,0);
        tracep->declBus(c+84,"rg_cos_table_0", false,-1, 7,0);
        tracep->declBus(c+85,"rg_cos_table_1", false,-1, 7,0);
        tracep->declBus(c+86,"rg_cos_table_2", false,-1, 7,0);
        tracep->declBus(c+87,"rg_cos_table_3", false,-1, 7,0);
        tracep->declBus(c+88,"rg_cos_table_4", false,-1, 7,0);
        tracep->declBus(c+89,"rg_cos_table_5", false,-1, 7,0);
        tracep->declBus(c+90,"rg_cos_table_6", false,-1, 7,0);
        tracep->declBus(c+91,"rg_cos_table_7", false,-1, 7,0);
        tracep->declBus(c+92,"valid_num", false,-1, 2,0);
        tracep->declBit(c+93,"vin_vld", false,-1);
        tracep->declBus(c+94,"vin1", false,-1, 7,0);
        tracep->declBus(c+95,"vin2", false,-1, 7,0);
        tracep->declBit(c+96,"phase_vld", false,-1);
        tracep->declBus(c+97,"phase", false,-1, 9,0);
        tracep->declBit(c+98,"clk", false,-1);
        tracep->declBit(c+99,"reset", false,-1);
        tracep->declBit(c+65,"cal_phase rg_calphase_en", false,-1);
        tracep->declBit(c+66,"cal_phase rg_bypass_mean", false,-1);
        tracep->declBus(c+67,"cal_phase rg_cordic_iternum", false,-1, 2,0);
        tracep->declBus(c+68,"cal_phase rg_leakage_table_0", false,-1, 7,0);
        tracep->declBus(c+69,"cal_phase rg_leakage_table_1", false,-1, 7,0);
        tracep->declBus(c+70,"cal_phase rg_leakage_table_2", false,-1, 7,0);
        tracep->declBus(c+71,"cal_phase rg_leakage_table_3", false,-1, 7,0);
        tracep->declBus(c+72,"cal_phase rg_leakage_table_4", false,-1, 7,0);
        tracep->declBus(c+73,"cal_phase rg_leakage_table_5", false,-1, 7,0);
        tracep->declBus(c+74,"cal_phase rg_leakage_table_6", false,-1, 7,0);
        tracep->declBus(c+75,"cal_phase rg_leakage_table_7", false,-1, 7,0);
        tracep->declBus(c+76,"cal_phase rg_sin_table_0", false,-1, 7,0);
        tracep->declBus(c+77,"cal_phase rg_sin_table_1", false,-1, 7,0);
        tracep->declBus(c+78,"cal_phase rg_sin_table_2", false,-1, 7,0);
        tracep->declBus(c+79,"cal_phase rg_sin_table_3", false,-1, 7,0);
        tracep->declBus(c+80,"cal_phase rg_sin_table_4", false,-1, 7,0);
        tracep->declBus(c+81,"cal_phase rg_sin_table_5", false,-1, 7,0);
        tracep->declBus(c+82,"cal_phase rg_sin_table_6", false,-1, 7,0);
        tracep->declBus(c+83,"cal_phase rg_sin_table_7", false,-1, 7,0);
        tracep->declBus(c+84,"cal_phase rg_cos_table_0", false,-1, 7,0);
        tracep->declBus(c+85,"cal_phase rg_cos_table_1", false,-1, 7,0);
        tracep->declBus(c+86,"cal_phase rg_cos_table_2", false,-1, 7,0);
        tracep->declBus(c+87,"cal_phase rg_cos_table_3", false,-1, 7,0);
        tracep->declBus(c+88,"cal_phase rg_cos_table_4", false,-1, 7,0);
        tracep->declBus(c+89,"cal_phase rg_cos_table_5", false,-1, 7,0);
        tracep->declBus(c+90,"cal_phase rg_cos_table_6", false,-1, 7,0);
        tracep->declBus(c+91,"cal_phase rg_cos_table_7", false,-1, 7,0);
        tracep->declBus(c+92,"cal_phase valid_num", false,-1, 2,0);
        tracep->declBit(c+93,"cal_phase vin_vld", false,-1);
        tracep->declBus(c+94,"cal_phase vin1", false,-1, 7,0);
        tracep->declBus(c+95,"cal_phase vin2", false,-1, 7,0);
        tracep->declBit(c+100,"cal_phase phase_vld", false,-1);
        tracep->declBus(c+12,"cal_phase phase", false,-1, 9,0);
        tracep->declBit(c+98,"cal_phase clk", false,-1);
        tracep->declBit(c+99,"cal_phase reset", false,-1);
        tracep->declBus(c+13,"cal_phase calvn_mean", false,-1, 7,0);
        tracep->declBus(c+14,"cal_phase calvn_vn_0", false,-1, 7,0);
        tracep->declBus(c+15,"cal_phase calvn_vn_1", false,-1, 7,0);
        tracep->declBus(c+16,"cal_phase calvn_vn_2", false,-1, 7,0);
        tracep->declBus(c+17,"cal_phase calvn_vn_3", false,-1, 7,0);
        tracep->declBus(c+18,"cal_phase calvn_vn_4", false,-1, 7,0);
        tracep->declBus(c+19,"cal_phase calvn_vn_5", false,-1, 7,0);
        tracep->declBus(c+20,"cal_phase calvn_vn_6", false,-1, 7,0);
        tracep->declBus(c+21,"cal_phase calvn_vn_7", false,-1, 7,0);
        tracep->declBit(c+22,"cal_phase calvn_finish_1", false,-1);
        tracep->declBus(c+23,"cal_phase dot_psum_out1", false,-1, 15,0);
        tracep->declBus(c+24,"cal_phase dot_psum_out2", false,-1, 15,0);
        tracep->declBit(c+25,"cal_phase dot_psum_vld", false,-1);
        tracep->declBus(c+12,"cal_phase cordic_res", false,-1, 9,0);
        tracep->declBit(c+26,"cal_phase cordic_res_vld", false,-1);
        tracep->declBus(c+101,"cal_phase valid_num_true", false,-1, 2,0);
        tracep->declBus(c+13,"cal_phase mean", false,-1, 7,0);
        tracep->declBit(c+22,"cal_phase calvn_finish", false,-1);
        tracep->declBus(c+14,"cal_phase vn_0", false,-1, 7,0);
        tracep->declBus(c+15,"cal_phase vn_1", false,-1, 7,0);
        tracep->declBus(c+16,"cal_phase vn_2", false,-1, 7,0);
        tracep->declBus(c+17,"cal_phase vn_3", false,-1, 7,0);
        tracep->declBus(c+18,"cal_phase vn_4", false,-1, 7,0);
        tracep->declBus(c+19,"cal_phase vn_5", false,-1, 7,0);
        tracep->declBus(c+20,"cal_phase vn_6", false,-1, 7,0);
        tracep->declBus(c+21,"cal_phase vn_7", false,-1, 7,0);
        tracep->declBus(c+23,"cal_phase psum_out1", false,-1, 15,0);
        tracep->declBus(c+24,"cal_phase psum_out2", false,-1, 15,0);
        tracep->declBit(c+25,"cal_phase psum_vld", false,-1);
        tracep->declBit(c+100,"cal_phase ph_vld", false,-1);
        tracep->declBus(c+12,"cal_phase ph_cal", false,-1, 9,0);
        tracep->declBit(c+65,"cal_phase calvn en", false,-1);
        tracep->declBit(c+66,"cal_phase calvn rg_bypass_mean", false,-1);
        tracep->declBus(c+92,"cal_phase calvn valid_num", false,-1, 2,0);
        tracep->declBit(c+93,"cal_phase calvn vin_vld", false,-1);
        tracep->declBus(c+94,"cal_phase calvn vin1", false,-1, 7,0);
        tracep->declBus(c+95,"cal_phase calvn vin2", false,-1, 7,0);
        tracep->declBus(c+68,"cal_phase calvn rg_leakage_table_0", false,-1, 7,0);
        tracep->declBus(c+69,"cal_phase calvn rg_leakage_table_1", false,-1, 7,0);
        tracep->declBus(c+70,"cal_phase calvn rg_leakage_table_2", false,-1, 7,0);
        tracep->declBus(c+71,"cal_phase calvn rg_leakage_table_3", false,-1, 7,0);
        tracep->declBus(c+72,"cal_phase calvn rg_leakage_table_4", false,-1, 7,0);
        tracep->declBus(c+73,"cal_phase calvn rg_leakage_table_5", false,-1, 7,0);
        tracep->declBus(c+74,"cal_phase calvn rg_leakage_table_6", false,-1, 7,0);
        tracep->declBus(c+75,"cal_phase calvn rg_leakage_table_7", false,-1, 7,0);
        tracep->declBus(c+13,"cal_phase calvn mean", false,-1, 7,0);
        tracep->declBus(c+14,"cal_phase calvn vn_0", false,-1, 7,0);
        tracep->declBus(c+15,"cal_phase calvn vn_1", false,-1, 7,0);
        tracep->declBus(c+16,"cal_phase calvn vn_2", false,-1, 7,0);
        tracep->declBus(c+17,"cal_phase calvn vn_3", false,-1, 7,0);
        tracep->declBus(c+18,"cal_phase calvn vn_4", false,-1, 7,0);
        tracep->declBus(c+19,"cal_phase calvn vn_5", false,-1, 7,0);
        tracep->declBus(c+20,"cal_phase calvn vn_6", false,-1, 7,0);
        tracep->declBus(c+21,"cal_phase calvn vn_7", false,-1, 7,0);
        tracep->declBit(c+22,"cal_phase calvn finish", false,-1);
        tracep->declBit(c+98,"cal_phase calvn clk", false,-1);
        tracep->declBit(c+99,"cal_phase calvn reset", false,-1);
        tracep->declBus(c+14,"cal_phase calvn Vins_0", false,-1, 7,0);
        tracep->declBus(c+15,"cal_phase calvn Vins_1", false,-1, 7,0);
        tracep->declBus(c+16,"cal_phase calvn Vins_2", false,-1, 7,0);
        tracep->declBus(c+17,"cal_phase calvn Vins_3", false,-1, 7,0);
        tracep->declBus(c+18,"cal_phase calvn Vins_4", false,-1, 7,0);
        tracep->declBus(c+19,"cal_phase calvn Vins_5", false,-1, 7,0);
        tracep->declBus(c+20,"cal_phase calvn Vins_6", false,-1, 7,0);
        tracep->declBus(c+21,"cal_phase calvn Vins_7", false,-1, 7,0);
        tracep->declBus(c+27,"cal_phase calvn v_cnt", false,-1, 2,0);
        tracep->declBus(c+1,"cal_phase calvn bigger", false,-1, 7,0);
        tracep->declBus(c+2,"cal_phase calvn smaller", false,-1, 7,0);
        tracep->declBus(c+28,"cal_phase calvn max_v", false,-1, 7,0);
        tracep->declBus(c+29,"cal_phase calvn min_v", false,-1, 7,0);
        tracep->declBit(c+102,"cal_phase calvn mean_finish", false,-1);
        tracep->declBit(c+3,"cal_phase calvn v1gtv2", false,-1);
        tracep->declBit(c+4,"cal_phase calvn data_load_finish", false,-1);
        tracep->declBit(c+22,"cal_phase calvn mean_finish_regNext", false,-1);
        tracep->declBit(c+65,"cal_phase dot en", false,-1);
        tracep->declBus(c+76,"cal_phase dot rg_sin_table_0", false,-1, 7,0);
        tracep->declBus(c+77,"cal_phase dot rg_sin_table_1", false,-1, 7,0);
        tracep->declBus(c+78,"cal_phase dot rg_sin_table_2", false,-1, 7,0);
        tracep->declBus(c+79,"cal_phase dot rg_sin_table_3", false,-1, 7,0);
        tracep->declBus(c+80,"cal_phase dot rg_sin_table_4", false,-1, 7,0);
        tracep->declBus(c+81,"cal_phase dot rg_sin_table_5", false,-1, 7,0);
        tracep->declBus(c+82,"cal_phase dot rg_sin_table_6", false,-1, 7,0);
        tracep->declBus(c+83,"cal_phase dot rg_sin_table_7", false,-1, 7,0);
        tracep->declBus(c+84,"cal_phase dot rg_cos_table_0", false,-1, 7,0);
        tracep->declBus(c+85,"cal_phase dot rg_cos_table_1", false,-1, 7,0);
        tracep->declBus(c+86,"cal_phase dot rg_cos_table_2", false,-1, 7,0);
        tracep->declBus(c+87,"cal_phase dot rg_cos_table_3", false,-1, 7,0);
        tracep->declBus(c+88,"cal_phase dot rg_cos_table_4", false,-1, 7,0);
        tracep->declBus(c+89,"cal_phase dot rg_cos_table_5", false,-1, 7,0);
        tracep->declBus(c+90,"cal_phase dot rg_cos_table_6", false,-1, 7,0);
        tracep->declBus(c+91,"cal_phase dot rg_cos_table_7", false,-1, 7,0);
        tracep->declBit(c+22,"cal_phase dot vn_vld", false,-1);
        tracep->declBus(c+14,"cal_phase dot vn_in_0", false,-1, 7,0);
        tracep->declBus(c+15,"cal_phase dot vn_in_1", false,-1, 7,0);
        tracep->declBus(c+16,"cal_phase dot vn_in_2", false,-1, 7,0);
        tracep->declBus(c+17,"cal_phase dot vn_in_3", false,-1, 7,0);
        tracep->declBus(c+18,"cal_phase dot vn_in_4", false,-1, 7,0);
        tracep->declBus(c+19,"cal_phase dot vn_in_5", false,-1, 7,0);
        tracep->declBus(c+20,"cal_phase dot vn_in_6", false,-1, 7,0);
        tracep->declBus(c+21,"cal_phase dot vn_in_7", false,-1, 7,0);
        tracep->declBus(c+23,"cal_phase dot psum_out1", false,-1, 15,0);
        tracep->declBus(c+24,"cal_phase dot psum_out2", false,-1, 15,0);
        tracep->declBit(c+25,"cal_phase dot psum_vld", false,-1);
        tracep->declBus(c+101,"cal_phase dot valid_num", false,-1, 2,0);
        tracep->declBus(c+13,"cal_phase dot mean", false,-1, 7,0);
        tracep->declBit(c+98,"cal_phase dot clk", false,-1);
        tracep->declBit(c+99,"cal_phase dot reset", false,-1);
        tracep->declBit(c+30,"cal_phase dot booth_sin_io_dout_vld", false,-1);
        tracep->declBus(c+31,"cal_phase dot booth_sin_io_dout", false,-1, 15,0);
        tracep->declBit(c+103,"cal_phase dot booth_cos_io_dout_vld", false,-1);
        tracep->declBus(c+32,"cal_phase dot booth_cos_io_dout", false,-1, 15,0);
        tracep->declBus(c+31,"cal_phase dot product1", false,-1, 15,0);
        tracep->declBus(c+32,"cal_phase dot product2", false,-1, 15,0);
        tracep->declBus(c+33,"cal_phase dot s1", false,-1, 18,0);
        tracep->declBus(c+34,"cal_phase dot s2", false,-1, 18,0);
        tracep->declBus(c+35,"cal_phase dot psum1", false,-1, 18,0);
        tracep->declBus(c+36,"cal_phase dot psum2", false,-1, 18,0);
        tracep->declBus(c+37,"cal_phase dot vin_true_in", false,-1, 7,0);
        tracep->declBus(c+37,"cal_phase dot vin_minus_mean", false,-1, 7,0);
        tracep->declBus(c+38,"cal_phase dot mac_cnt", false,-1, 2,0);
        tracep->declBit(c+39,"cal_phase dot mac_en", false,-1);
        tracep->declBit(c+40,"cal_phase dot mac_start", false,-1);
        tracep->declBit(c+104,"cal_phase dot mac_finish", false,-1);
        tracep->declBit(c+25,"cal_phase dot finish", false,-1);
        tracep->declBit(c+30,"cal_phase dot mul_done", false,-1);
        tracep->declBit(c+41,"cal_phase dot booth_start", false,-1);
        tracep->declBit(c+41,"cal_phase dot booth_sin io_din_vld", false,-1);
        tracep->declBus(c+37,"cal_phase dot booth_sin io_dinA", false,-1, 7,0);
        tracep->declBus(c+5,"cal_phase dot booth_sin io_dinB", false,-1, 7,0);
        tracep->declBit(c+30,"cal_phase dot booth_sin io_dout_vld", false,-1);
        tracep->declBus(c+31,"cal_phase dot booth_sin io_dout", false,-1, 15,0);
        tracep->declBit(c+98,"cal_phase dot booth_sin clk", false,-1);
        tracep->declBit(c+99,"cal_phase dot booth_sin reset", false,-1);
        tracep->declBus(c+42,"cal_phase dot booth_sin shiftReg", false,-1, 16,0);
        tracep->declBus(c+43,"cal_phase dot booth_sin flag_bits", false,-1, 1,0);
        tracep->declBus(c+6,"cal_phase dot booth_sin NegativeB", false,-1, 7,0);
        tracep->declBus(c+7,"cal_phase dot booth_sin sumShiftB", false,-1, 7,0);
        tracep->declBus(c+105,"cal_phase dot booth_sin addMux", false,-1, 7,0);
        tracep->declBus(c+44,"cal_phase dot booth_sin cal_cnt", false,-1, 2,0);
        tracep->declBit(c+45,"cal_phase dot booth_sin cal_en", false,-1);
        tracep->declBit(c+106,"cal_phase dot booth_sin cal_en_regNext", false,-1);
        tracep->declBit(c+41,"cal_phase dot booth_cos io_din_vld", false,-1);
        tracep->declBus(c+37,"cal_phase dot booth_cos io_dinA", false,-1, 7,0);
        tracep->declBus(c+8,"cal_phase dot booth_cos io_dinB", false,-1, 7,0);
        tracep->declBit(c+103,"cal_phase dot booth_cos io_dout_vld", false,-1);
        tracep->declBus(c+32,"cal_phase dot booth_cos io_dout", false,-1, 15,0);
        tracep->declBit(c+98,"cal_phase dot booth_cos clk", false,-1);
        tracep->declBit(c+99,"cal_phase dot booth_cos reset", false,-1);
        tracep->declBus(c+46,"cal_phase dot booth_cos shiftReg", false,-1, 16,0);
        tracep->declBus(c+47,"cal_phase dot booth_cos flag_bits", false,-1, 1,0);
        tracep->declBus(c+9,"cal_phase dot booth_cos NegativeB", false,-1, 7,0);
        tracep->declBus(c+10,"cal_phase dot booth_cos sumShiftB", false,-1, 7,0);
        tracep->declBus(c+107,"cal_phase dot booth_cos addMux", false,-1, 7,0);
        tracep->declBus(c+48,"cal_phase dot booth_cos cal_cnt", false,-1, 2,0);
        tracep->declBit(c+49,"cal_phase dot booth_cos cal_en", false,-1);
        tracep->declBit(c+108,"cal_phase dot booth_cos cal_en_regNext", false,-1);
        tracep->declBit(c+65,"cal_phase cordic en", false,-1);
        tracep->declBus(c+67,"cal_phase cordic rg_cordic_iternum", false,-1, 2,0);
        tracep->declBit(c+25,"cal_phase cordic vld", false,-1);
        tracep->declBus(c+24,"cal_phase cordic y", false,-1, 15,0);
        tracep->declBus(c+23,"cal_phase cordic x", false,-1, 15,0);
        tracep->declBus(c+12,"cal_phase cordic res", false,-1, 9,0);
        tracep->declBit(c+26,"cal_phase cordic res_vld", false,-1);
        tracep->declBit(c+98,"cal_phase cordic clk", false,-1);
        tracep->declBit(c+99,"cal_phase cordic reset", false,-1);
        tracep->declBus(c+109,"cal_phase cordic KAngle_0", false,-1, 6,0);
        tracep->declBus(c+110,"cal_phase cordic KAngle_1", false,-1, 6,0);
        tracep->declBus(c+111,"cal_phase cordic KAngle_2", false,-1, 6,0);
        tracep->declBus(c+112,"cal_phase cordic KAngle_3", false,-1, 6,0);
        tracep->declBus(c+113,"cal_phase cordic KAngle_4", false,-1, 6,0);
        tracep->declBus(c+114,"cal_phase cordic KAngle_5", false,-1, 6,0);
        tracep->declBus(c+114,"cal_phase cordic KAngle_6", false,-1, 6,0);
        tracep->declBus(c+50,"cal_phase cordic xn", false,-1, 18,0);
        tracep->declBus(c+51,"cal_phase cordic yn", false,-1, 18,0);
        tracep->declBus(c+52,"cal_phase cordic res_rg", false,-1, 10,0);
        tracep->declBus(c+12,"cal_phase cordic res_out", false,-1, 9,0);
        tracep->declBus(c+53,"cal_phase cordic x_ext", false,-1, 18,0);
        tracep->declBus(c+54,"cal_phase cordic y_ext", false,-1, 18,0);
        tracep->declBus(c+55,"cal_phase cordic x_ins", false,-1, 18,0);
        tracep->declBus(c+56,"cal_phase cordic y_ins", false,-1, 18,0);
        tracep->declBus(c+57,"cal_phase cordic cal_cnt", false,-1, 2,0);
    }
}

void Vcal_phase::traceInitSub1(void* userp, VerilatedVcd* tracep) {
    Vcal_phase__Syms* __restrict vlSymsp = static_cast<Vcal_phase__Syms*>(userp);
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    const int c = vlSymsp->__Vm_baseCode;
    if (false && tracep && c) {}  // Prevent unused
    // Body
    {
        tracep->declBit(c+58,"cal_phase cordic cal_en", false,-1);
        tracep->declBit(c+59,"cal_phase cordic cal_start", false,-1);
        tracep->declBit(c+11,"cal_phase cordic cal_finish", false,-1);
        tracep->declBit(c+26,"cal_phase cordic finish", false,-1);
        tracep->declBit(c+60,"cal_phase cordic nozero_flg", false,-1);
        tracep->declBit(c+61,"cal_phase cordic cal_en_regNext", false,-1);
        tracep->declBus(c+62,"cal_phase cordic xn_rightshift", false,-1, 18,0);
        tracep->declBus(c+63,"cal_phase cordic yn_rightshift", false,-1, 18,0);
        tracep->declBit(c+64,"cal_phase cordic cal_finish_delay", false,-1);
    }
}

void Vcal_phase::traceRegister(VerilatedVcd* tracep) {
    // Body
    {
        tracep->addFullCb(&traceFullTop0, __VlSymsp);
        tracep->addChgCb(&traceChgTop0, __VlSymsp);
        tracep->addCleanupCb(&traceCleanup, __VlSymsp);
    }
}

void Vcal_phase::traceFullTop0(void* userp, VerilatedVcd* tracep) {
    Vcal_phase__Syms* __restrict vlSymsp = static_cast<Vcal_phase__Syms*>(userp);
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    {
        vlTOPp->traceFullSub0(userp, tracep);
    }
}

void Vcal_phase::traceFullSub0(void* userp, VerilatedVcd* tracep) {
    Vcal_phase__Syms* __restrict vlSymsp = static_cast<Vcal_phase__Syms*>(userp);
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* const oldp = tracep->oldp(vlSymsp->__Vm_baseCode);
    if (false && oldp) {}  // Prevent unused
    // Body
    {
        tracep->fullCData(oldp+1,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__bigger),8);
        tracep->fullCData(oldp+2,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__smaller),8);
        tracep->fullBit(oldp+3,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v1gtv2));
        tracep->fullBit(oldp+4,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__data_load_finish));
        tracep->fullCData(oldp+5,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_5),8);
        tracep->fullCData(oldp+6,((0xffU & (- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_5)))),8);
        tracep->fullCData(oldp+7,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT___zz_1),8);
        tracep->fullCData(oldp+8,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_6),8);
        tracep->fullCData(oldp+9,((0xffU & (- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_6)))),8);
        tracep->fullCData(oldp+10,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT___zz_1),8);
        tracep->fullBit(oldp+11,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_finish));
        tracep->fullSData(oldp+12,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_out),10);
        tracep->fullCData(oldp+13,((0xffU & ((0x100U 
                                              & (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_3))
                                              ? ((3U 
                                                  != 
                                                  (3U 
                                                   & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_3) 
                                                      >> 7U)))
                                                  ? 0x80U
                                                  : (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_3))
                                              : ((0x80U 
                                                  & (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_3))
                                                  ? 0x7fU
                                                  : (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_3))))),8);
        tracep->fullCData(oldp+14,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_0),8);
        tracep->fullCData(oldp+15,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_1),8);
        tracep->fullCData(oldp+16,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_2),8);
        tracep->fullCData(oldp+17,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_3),8);
        tracep->fullCData(oldp+18,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_4),8);
        tracep->fullCData(oldp+19,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_5),8);
        tracep->fullCData(oldp+20,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_6),8);
        tracep->fullCData(oldp+21,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__Vins_7),8);
        tracep->fullBit(oldp+22,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__mean_finish_regNext));
        tracep->fullSData(oldp+23,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_1),16);
        tracep->fullSData(oldp+24,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_2),16);
        tracep->fullBit(oldp+25,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__finish));
        tracep->fullBit(oldp+26,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__finish));
        tracep->fullCData(oldp+27,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt),3);
        tracep->fullCData(oldp+28,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__max_v),8);
        tracep->fullCData(oldp+29,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__min_v),8);
        tracep->fullBit(oldp+30,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin_io_dout_vld));
        tracep->fullSData(oldp+31,((0xffffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                               >> 1U))),16);
        tracep->fullSData(oldp+32,((0xffffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                               >> 1U))),16);
        tracep->fullIData(oldp+33,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__s1),19);
        tracep->fullIData(oldp+34,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__s2),19);
        tracep->fullIData(oldp+35,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1),19);
        tracep->fullIData(oldp+36,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2),19);
        tracep->fullCData(oldp+37,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__vin_minus_mean),8);
        tracep->fullCData(oldp+38,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt),3);
        tracep->fullBit(oldp+39,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_en));
        tracep->fullBit(oldp+40,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_start));
        tracep->fullBit(oldp+41,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_start));
        tracep->fullIData(oldp+42,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg),17);
        tracep->fullCData(oldp+43,((3U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)),2);
        tracep->fullCData(oldp+44,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_cnt),3);
        tracep->fullBit(oldp+45,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_en));
        tracep->fullIData(oldp+46,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg),17);
        tracep->fullCData(oldp+47,((3U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)),2);
        tracep->fullCData(oldp+48,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_cnt),3);
        tracep->fullBit(oldp+49,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_en));
        tracep->fullIData(oldp+50,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn),19);
        tracep->fullIData(oldp+51,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn),19);
        tracep->fullSData(oldp+52,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_rg),11);
        tracep->fullIData(oldp+53,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__x_ext),19);
        tracep->fullIData(oldp+54,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__y_ext),19);
        tracep->fullIData(oldp+55,((0x7ffffU & (- vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__x_ext))),19);
        tracep->fullIData(oldp+56,((0x7ffffU & (- vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__y_ext))),19);
        tracep->fullCData(oldp+57,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt),3);
        tracep->fullBit(oldp+58,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en));
        tracep->fullBit(oldp+59,(((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en) 
                                  & (~ (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en_regNext)))));
        tracep->fullBit(oldp+60,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__nozero_flg));
        tracep->fullBit(oldp+61,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en_regNext));
        tracep->fullIData(oldp+62,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn_rightshift),19);
        tracep->fullIData(oldp+63,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn_rightshift),19);
        tracep->fullBit(oldp+64,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_finish_delay));
        tracep->fullBit(oldp+65,(vlTOPp->rg_calphase_en));
        tracep->fullBit(oldp+66,(vlTOPp->rg_bypass_mean));
        tracep->fullCData(oldp+67,(vlTOPp->rg_cordic_iternum),3);
        tracep->fullCData(oldp+68,(vlTOPp->rg_leakage_table_0),8);
        tracep->fullCData(oldp+69,(vlTOPp->rg_leakage_table_1),8);
        tracep->fullCData(oldp+70,(vlTOPp->rg_leakage_table_2),8);
        tracep->fullCData(oldp+71,(vlTOPp->rg_leakage_table_3),8);
        tracep->fullCData(oldp+72,(vlTOPp->rg_leakage_table_4),8);
        tracep->fullCData(oldp+73,(vlTOPp->rg_leakage_table_5),8);
        tracep->fullCData(oldp+74,(vlTOPp->rg_leakage_table_6),8);
        tracep->fullCData(oldp+75,(vlTOPp->rg_leakage_table_7),8);
        tracep->fullCData(oldp+76,(vlTOPp->rg_sin_table_0),8);
        tracep->fullCData(oldp+77,(vlTOPp->rg_sin_table_1),8);
        tracep->fullCData(oldp+78,(vlTOPp->rg_sin_table_2),8);
        tracep->fullCData(oldp+79,(vlTOPp->rg_sin_table_3),8);
        tracep->fullCData(oldp+80,(vlTOPp->rg_sin_table_4),8);
        tracep->fullCData(oldp+81,(vlTOPp->rg_sin_table_5),8);
        tracep->fullCData(oldp+82,(vlTOPp->rg_sin_table_6),8);
        tracep->fullCData(oldp+83,(vlTOPp->rg_sin_table_7),8);
        tracep->fullCData(oldp+84,(vlTOPp->rg_cos_table_0),8);
        tracep->fullCData(oldp+85,(vlTOPp->rg_cos_table_1),8);
        tracep->fullCData(oldp+86,(vlTOPp->rg_cos_table_2),8);
        tracep->fullCData(oldp+87,(vlTOPp->rg_cos_table_3),8);
        tracep->fullCData(oldp+88,(vlTOPp->rg_cos_table_4),8);
        tracep->fullCData(oldp+89,(vlTOPp->rg_cos_table_5),8);
        tracep->fullCData(oldp+90,(vlTOPp->rg_cos_table_6),8);
        tracep->fullCData(oldp+91,(vlTOPp->rg_cos_table_7),8);
        tracep->fullCData(oldp+92,(vlTOPp->valid_num),3);
        tracep->fullBit(oldp+93,(vlTOPp->vin_vld));
        tracep->fullCData(oldp+94,(vlTOPp->vin1),8);
        tracep->fullCData(oldp+95,(vlTOPp->vin2),8);
        tracep->fullBit(oldp+96,(vlTOPp->phase_vld));
        tracep->fullSData(oldp+97,(vlTOPp->phase),10);
        tracep->fullBit(oldp+98,(vlTOPp->clk));
        tracep->fullBit(oldp+99,(vlTOPp->reset));
        tracep->fullBit(oldp+100,(vlSymsp->TOP__cal_phase.ph_vld));
        tracep->fullCData(oldp+101,((7U & ((0xfU & 
                                            ((IData)(vlTOPp->valid_num) 
                                             << 1U)) 
                                           - (IData)(1U)))),3);
        tracep->fullBit(oldp+102,((((IData)(vlTOPp->rg_calphase_en) 
                                    & (IData)(vlTOPp->vin_vld)) 
                                   & (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__data_load_finish))));
        tracep->fullBit(oldp+103,(((~ (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_en)) 
                                   & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_en_regNext))));
        tracep->fullBit(oldp+104,((((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt) 
                                    == (7U & (((0xfU 
                                                & ((IData)(vlTOPp->valid_num) 
                                                   << 1U)) 
                                               - (IData)(1U)) 
                                              - (IData)(1U)))) 
                                   & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin_io_dout_vld))));
        tracep->fullCData(oldp+105,((0xffU & ((1U & 
                                               ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                 >> 1U) 
                                                & (~ vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)))
                                               ? (- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_5))
                                               : (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_5)))),8);
        tracep->fullBit(oldp+106,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_en_regNext));
        tracep->fullCData(oldp+107,((0xffU & ((1U & 
                                               ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                 >> 1U) 
                                                & (~ vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)))
                                               ? (- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_6))
                                               : (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_6)))),8);
        tracep->fullBit(oldp+108,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_en_regNext));
        tracep->fullCData(oldp+109,(0x20U),7);
        tracep->fullCData(oldp+110,(0x13U),7);
        tracep->fullCData(oldp+111,(0xaU),7);
        tracep->fullCData(oldp+112,(5U),7);
        tracep->fullCData(oldp+113,(3U),7);
        tracep->fullCData(oldp+114,(1U),7);
    }
}
