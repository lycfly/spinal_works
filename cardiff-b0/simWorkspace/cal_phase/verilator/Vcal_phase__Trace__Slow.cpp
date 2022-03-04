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
        tracep->declBit(c+100,"rg_calphase_en", false,-1);
        tracep->declBit(c+101,"rg_bypass_mean", false,-1);
        tracep->declBus(c+102,"rg_cordic_iternum", false,-1, 2,0);
        tracep->declBus(c+103,"rg_leakage_table_0", false,-1, 7,0);
        tracep->declBus(c+104,"rg_leakage_table_1", false,-1, 7,0);
        tracep->declBus(c+105,"rg_leakage_table_2", false,-1, 7,0);
        tracep->declBus(c+106,"rg_leakage_table_3", false,-1, 7,0);
        tracep->declBus(c+107,"rg_leakage_table_4", false,-1, 7,0);
        tracep->declBus(c+108,"rg_leakage_table_5", false,-1, 7,0);
        tracep->declBus(c+109,"rg_leakage_table_6", false,-1, 7,0);
        tracep->declBus(c+110,"rg_leakage_table_7", false,-1, 7,0);
        tracep->declBus(c+111,"rg_ac_table_0", false,-1, 1,0);
        tracep->declBus(c+112,"rg_ac_table_1", false,-1, 1,0);
        tracep->declBus(c+113,"rg_ac_table_2", false,-1, 1,0);
        tracep->declBus(c+114,"rg_ac_table_3", false,-1, 1,0);
        tracep->declBus(c+115,"rg_ac_table_4", false,-1, 1,0);
        tracep->declBus(c+116,"rg_ac_table_5", false,-1, 1,0);
        tracep->declBus(c+117,"rg_ac_table_6", false,-1, 1,0);
        tracep->declBus(c+118,"rg_ac_table_7", false,-1, 1,0);
        tracep->declBus(c+119,"rg_sin_table_0", false,-1, 7,0);
        tracep->declBus(c+120,"rg_sin_table_1", false,-1, 7,0);
        tracep->declBus(c+121,"rg_sin_table_2", false,-1, 7,0);
        tracep->declBus(c+122,"rg_sin_table_3", false,-1, 7,0);
        tracep->declBus(c+123,"rg_sin_table_4", false,-1, 7,0);
        tracep->declBus(c+124,"rg_sin_table_5", false,-1, 7,0);
        tracep->declBus(c+125,"rg_sin_table_6", false,-1, 7,0);
        tracep->declBus(c+126,"rg_sin_table_7", false,-1, 7,0);
        tracep->declBus(c+127,"rg_cos_table_0", false,-1, 7,0);
        tracep->declBus(c+128,"rg_cos_table_1", false,-1, 7,0);
        tracep->declBus(c+129,"rg_cos_table_2", false,-1, 7,0);
        tracep->declBus(c+130,"rg_cos_table_3", false,-1, 7,0);
        tracep->declBus(c+131,"rg_cos_table_4", false,-1, 7,0);
        tracep->declBus(c+132,"rg_cos_table_5", false,-1, 7,0);
        tracep->declBus(c+133,"rg_cos_table_6", false,-1, 7,0);
        tracep->declBus(c+134,"rg_cos_table_7", false,-1, 7,0);
        tracep->declBus(c+135,"valid_num", false,-1, 2,0);
        tracep->declBit(c+136,"vin_vld", false,-1);
        tracep->declBus(c+137,"vin1", false,-1, 7,0);
        tracep->declBus(c+138,"vin2", false,-1, 7,0);
        tracep->declBit(c+139,"phase_vld", false,-1);
        tracep->declBus(c+140,"phase", false,-1, 9,0);
        tracep->declBit(c+141,"clk", false,-1);
        tracep->declBit(c+142,"reset", false,-1);
        tracep->declBit(c+100,"cal_phase rg_calphase_en", false,-1);
        tracep->declBit(c+101,"cal_phase rg_bypass_mean", false,-1);
        tracep->declBus(c+102,"cal_phase rg_cordic_iternum", false,-1, 2,0);
        tracep->declBus(c+103,"cal_phase rg_leakage_table_0", false,-1, 7,0);
        tracep->declBus(c+104,"cal_phase rg_leakage_table_1", false,-1, 7,0);
        tracep->declBus(c+105,"cal_phase rg_leakage_table_2", false,-1, 7,0);
        tracep->declBus(c+106,"cal_phase rg_leakage_table_3", false,-1, 7,0);
        tracep->declBus(c+107,"cal_phase rg_leakage_table_4", false,-1, 7,0);
        tracep->declBus(c+108,"cal_phase rg_leakage_table_5", false,-1, 7,0);
        tracep->declBus(c+109,"cal_phase rg_leakage_table_6", false,-1, 7,0);
        tracep->declBus(c+110,"cal_phase rg_leakage_table_7", false,-1, 7,0);
        tracep->declBus(c+111,"cal_phase rg_ac_table_0", false,-1, 1,0);
        tracep->declBus(c+112,"cal_phase rg_ac_table_1", false,-1, 1,0);
        tracep->declBus(c+113,"cal_phase rg_ac_table_2", false,-1, 1,0);
        tracep->declBus(c+114,"cal_phase rg_ac_table_3", false,-1, 1,0);
        tracep->declBus(c+115,"cal_phase rg_ac_table_4", false,-1, 1,0);
        tracep->declBus(c+116,"cal_phase rg_ac_table_5", false,-1, 1,0);
        tracep->declBus(c+117,"cal_phase rg_ac_table_6", false,-1, 1,0);
        tracep->declBus(c+118,"cal_phase rg_ac_table_7", false,-1, 1,0);
        tracep->declBus(c+119,"cal_phase rg_sin_table_0", false,-1, 7,0);
        tracep->declBus(c+120,"cal_phase rg_sin_table_1", false,-1, 7,0);
        tracep->declBus(c+121,"cal_phase rg_sin_table_2", false,-1, 7,0);
        tracep->declBus(c+122,"cal_phase rg_sin_table_3", false,-1, 7,0);
        tracep->declBus(c+123,"cal_phase rg_sin_table_4", false,-1, 7,0);
        tracep->declBus(c+124,"cal_phase rg_sin_table_5", false,-1, 7,0);
        tracep->declBus(c+125,"cal_phase rg_sin_table_6", false,-1, 7,0);
        tracep->declBus(c+126,"cal_phase rg_sin_table_7", false,-1, 7,0);
        tracep->declBus(c+127,"cal_phase rg_cos_table_0", false,-1, 7,0);
        tracep->declBus(c+128,"cal_phase rg_cos_table_1", false,-1, 7,0);
        tracep->declBus(c+129,"cal_phase rg_cos_table_2", false,-1, 7,0);
        tracep->declBus(c+130,"cal_phase rg_cos_table_3", false,-1, 7,0);
        tracep->declBus(c+131,"cal_phase rg_cos_table_4", false,-1, 7,0);
        tracep->declBus(c+132,"cal_phase rg_cos_table_5", false,-1, 7,0);
        tracep->declBus(c+133,"cal_phase rg_cos_table_6", false,-1, 7,0);
        tracep->declBus(c+134,"cal_phase rg_cos_table_7", false,-1, 7,0);
        tracep->declBus(c+135,"cal_phase valid_num", false,-1, 2,0);
        tracep->declBit(c+136,"cal_phase vin_vld", false,-1);
        tracep->declBus(c+137,"cal_phase vin1", false,-1, 7,0);
        tracep->declBus(c+138,"cal_phase vin2", false,-1, 7,0);
        tracep->declBit(c+143,"cal_phase phase_vld", false,-1);
        tracep->declBus(c+4,"cal_phase phase", false,-1, 9,0);
        tracep->declBit(c+141,"cal_phase clk", false,-1);
        tracep->declBit(c+142,"cal_phase reset", false,-1);
        tracep->declBus(c+5,"cal_phase calvn_mean", false,-1, 7,0);
        tracep->declBus(c+6,"cal_phase calvn_vn_0", false,-1, 7,0);
        tracep->declBus(c+7,"cal_phase calvn_vn_1", false,-1, 7,0);
        tracep->declBus(c+8,"cal_phase calvn_vn_2", false,-1, 7,0);
        tracep->declBus(c+9,"cal_phase calvn_vn_3", false,-1, 7,0);
        tracep->declBus(c+10,"cal_phase calvn_vn_4", false,-1, 7,0);
        tracep->declBus(c+11,"cal_phase calvn_vn_5", false,-1, 7,0);
        tracep->declBus(c+12,"cal_phase calvn_vn_6", false,-1, 7,0);
        tracep->declBus(c+13,"cal_phase calvn_vn_7", false,-1, 7,0);
        tracep->declBit(c+14,"cal_phase calvn_finish_1", false,-1);
        tracep->declBus(c+15,"cal_phase dot_psum_out1", false,-1, 15,0);
        tracep->declBus(c+16,"cal_phase dot_psum_out2", false,-1, 15,0);
        tracep->declBit(c+17,"cal_phase dot_psum_vld", false,-1);
        tracep->declBus(c+4,"cal_phase cordic_res", false,-1, 9,0);
        tracep->declBit(c+18,"cal_phase cordic_res_vld", false,-1);
        tracep->declBus(c+19,"cal_phase vin1_reg", false,-1, 7,0);
        tracep->declBus(c+20,"cal_phase vin2_reg", false,-1, 7,0);
        tracep->declBit(c+21,"cal_phase vin_vld_reg", false,-1);
        tracep->declBus(c+144,"cal_phase valid_num_true", false,-1, 2,0);
        tracep->declBus(c+5,"cal_phase mean", false,-1, 7,0);
        tracep->declBit(c+14,"cal_phase calvn_finish", false,-1);
        tracep->declBus(c+6,"cal_phase vn_0", false,-1, 7,0);
        tracep->declBus(c+7,"cal_phase vn_1", false,-1, 7,0);
        tracep->declBus(c+8,"cal_phase vn_2", false,-1, 7,0);
        tracep->declBus(c+9,"cal_phase vn_3", false,-1, 7,0);
        tracep->declBus(c+10,"cal_phase vn_4", false,-1, 7,0);
        tracep->declBus(c+11,"cal_phase vn_5", false,-1, 7,0);
        tracep->declBus(c+12,"cal_phase vn_6", false,-1, 7,0);
        tracep->declBus(c+13,"cal_phase vn_7", false,-1, 7,0);
        tracep->declBus(c+15,"cal_phase psum_out1", false,-1, 15,0);
        tracep->declBus(c+16,"cal_phase psum_out2", false,-1, 15,0);
        tracep->declBit(c+17,"cal_phase psum_vld", false,-1);
        tracep->declBit(c+143,"cal_phase ph_vld", false,-1);
        tracep->declBus(c+4,"cal_phase ph_cal", false,-1, 9,0);
        tracep->declBit(c+100,"cal_phase calvn en", false,-1);
        tracep->declBit(c+101,"cal_phase calvn rg_bypass_mean", false,-1);
        tracep->declBus(c+135,"cal_phase calvn valid_num", false,-1, 2,0);
        tracep->declBit(c+21,"cal_phase calvn vin_vld", false,-1);
        tracep->declBus(c+19,"cal_phase calvn vin1", false,-1, 7,0);
        tracep->declBus(c+20,"cal_phase calvn vin2", false,-1, 7,0);
        tracep->declBus(c+103,"cal_phase calvn rg_leakage_table_0", false,-1, 7,0);
        tracep->declBus(c+104,"cal_phase calvn rg_leakage_table_1", false,-1, 7,0);
        tracep->declBus(c+105,"cal_phase calvn rg_leakage_table_2", false,-1, 7,0);
        tracep->declBus(c+106,"cal_phase calvn rg_leakage_table_3", false,-1, 7,0);
        tracep->declBus(c+107,"cal_phase calvn rg_leakage_table_4", false,-1, 7,0);
        tracep->declBus(c+108,"cal_phase calvn rg_leakage_table_5", false,-1, 7,0);
        tracep->declBus(c+109,"cal_phase calvn rg_leakage_table_6", false,-1, 7,0);
        tracep->declBus(c+110,"cal_phase calvn rg_leakage_table_7", false,-1, 7,0);
        tracep->declBus(c+111,"cal_phase calvn rg_ac_table_0", false,-1, 1,0);
        tracep->declBus(c+112,"cal_phase calvn rg_ac_table_1", false,-1, 1,0);
        tracep->declBus(c+113,"cal_phase calvn rg_ac_table_2", false,-1, 1,0);
        tracep->declBus(c+114,"cal_phase calvn rg_ac_table_3", false,-1, 1,0);
        tracep->declBus(c+115,"cal_phase calvn rg_ac_table_4", false,-1, 1,0);
        tracep->declBus(c+116,"cal_phase calvn rg_ac_table_5", false,-1, 1,0);
        tracep->declBus(c+117,"cal_phase calvn rg_ac_table_6", false,-1, 1,0);
        tracep->declBus(c+118,"cal_phase calvn rg_ac_table_7", false,-1, 1,0);
        tracep->declBus(c+5,"cal_phase calvn mean", false,-1, 7,0);
        tracep->declBus(c+6,"cal_phase calvn vn_0", false,-1, 7,0);
        tracep->declBus(c+7,"cal_phase calvn vn_1", false,-1, 7,0);
        tracep->declBus(c+8,"cal_phase calvn vn_2", false,-1, 7,0);
        tracep->declBus(c+9,"cal_phase calvn vn_3", false,-1, 7,0);
        tracep->declBus(c+10,"cal_phase calvn vn_4", false,-1, 7,0);
        tracep->declBus(c+11,"cal_phase calvn vn_5", false,-1, 7,0);
        tracep->declBus(c+12,"cal_phase calvn vn_6", false,-1, 7,0);
        tracep->declBus(c+13,"cal_phase calvn vn_7", false,-1, 7,0);
        tracep->declBit(c+14,"cal_phase calvn finish", false,-1);
        tracep->declBit(c+141,"cal_phase calvn clk", false,-1);
        tracep->declBit(c+142,"cal_phase calvn reset", false,-1);
        tracep->declBit(c+22,"cal_phase calvn vin_vld_d1", false,-1);
        tracep->declBit(c+23,"cal_phase calvn vin_vld_d2", false,-1);
        tracep->declBus(c+91,"cal_phase calvn vin1_bias_shift", false,-1, 7,0);
        tracep->declBus(c+92,"cal_phase calvn vin2_bias_shift", false,-1, 7,0);
        tracep->declBus(c+93,"cal_phase calvn vin1_bias_shift_norm", false,-1, 7,0);
        tracep->declBus(c+94,"cal_phase calvn vin2_bias_shift_norm", false,-1, 7,0);
        tracep->declBus(c+6,"cal_phase calvn V_bias_ac_0", false,-1, 7,0);
        tracep->declBus(c+7,"cal_phase calvn V_bias_ac_1", false,-1, 7,0);
        tracep->declBus(c+8,"cal_phase calvn V_bias_ac_2", false,-1, 7,0);
        tracep->declBus(c+9,"cal_phase calvn V_bias_ac_3", false,-1, 7,0);
        tracep->declBus(c+10,"cal_phase calvn V_bias_ac_4", false,-1, 7,0);
        tracep->declBus(c+11,"cal_phase calvn V_bias_ac_5", false,-1, 7,0);
        tracep->declBus(c+12,"cal_phase calvn V_bias_ac_6", false,-1, 7,0);
        tracep->declBus(c+13,"cal_phase calvn V_bias_ac_7", false,-1, 7,0);
        tracep->declBus(c+24,"cal_phase calvn v_cnt", false,-1, 2,0);
        tracep->declBus(c+25,"cal_phase calvn v_cnt_group0", false,-1, 2,0);
        tracep->declBus(c+26,"cal_phase calvn v_cnt_group1", false,-1, 2,0);
        tracep->declBus(c+95,"cal_phase calvn bigger", false,-1, 7,0);
        tracep->declBus(c+96,"cal_phase calvn smaller", false,-1, 7,0);
        tracep->declBus(c+27,"cal_phase calvn max_v", false,-1, 7,0);
        tracep->declBus(c+28,"cal_phase calvn min_v", false,-1, 7,0);
        tracep->declBit(c+145,"cal_phase calvn mean_finish", false,-1);
        tracep->declBit(c+97,"cal_phase calvn v1gtv2", false,-1);
        tracep->declBit(c+98,"cal_phase calvn data_load_finish", false,-1);
        tracep->declBit(c+14,"cal_phase calvn mean_finish_regNext", false,-1);
        tracep->declBit(c+100,"cal_phase dot en", false,-1);
        tracep->declBus(c+119,"cal_phase dot rg_sin_table_0", false,-1, 7,0);
        tracep->declBus(c+120,"cal_phase dot rg_sin_table_1", false,-1, 7,0);
        tracep->declBus(c+121,"cal_phase dot rg_sin_table_2", false,-1, 7,0);
        tracep->declBus(c+122,"cal_phase dot rg_sin_table_3", false,-1, 7,0);
        tracep->declBus(c+123,"cal_phase dot rg_sin_table_4", false,-1, 7,0);
        tracep->declBus(c+124,"cal_phase dot rg_sin_table_5", false,-1, 7,0);
        tracep->declBus(c+125,"cal_phase dot rg_sin_table_6", false,-1, 7,0);
        tracep->declBus(c+126,"cal_phase dot rg_sin_table_7", false,-1, 7,0);
        tracep->declBus(c+127,"cal_phase dot rg_cos_table_0", false,-1, 7,0);
        tracep->declBus(c+128,"cal_phase dot rg_cos_table_1", false,-1, 7,0);
        tracep->declBus(c+129,"cal_phase dot rg_cos_table_2", false,-1, 7,0);
        tracep->declBus(c+130,"cal_phase dot rg_cos_table_3", false,-1, 7,0);
        tracep->declBus(c+131,"cal_phase dot rg_cos_table_4", false,-1, 7,0);
        tracep->declBus(c+132,"cal_phase dot rg_cos_table_5", false,-1, 7,0);
        tracep->declBus(c+133,"cal_phase dot rg_cos_table_6", false,-1, 7,0);
        tracep->declBus(c+134,"cal_phase dot rg_cos_table_7", false,-1, 7,0);
        tracep->declBit(c+14,"cal_phase dot vn_vld", false,-1);
        tracep->declBus(c+6,"cal_phase dot vn_in_0", false,-1, 7,0);
        tracep->declBus(c+7,"cal_phase dot vn_in_1", false,-1, 7,0);
        tracep->declBus(c+8,"cal_phase dot vn_in_2", false,-1, 7,0);
        tracep->declBus(c+9,"cal_phase dot vn_in_3", false,-1, 7,0);
        tracep->declBus(c+10,"cal_phase dot vn_in_4", false,-1, 7,0);
        tracep->declBus(c+11,"cal_phase dot vn_in_5", false,-1, 7,0);
        tracep->declBus(c+12,"cal_phase dot vn_in_6", false,-1, 7,0);
        tracep->declBus(c+13,"cal_phase dot vn_in_7", false,-1, 7,0);
        tracep->declBus(c+15,"cal_phase dot psum_out1", false,-1, 15,0);
        tracep->declBus(c+16,"cal_phase dot psum_out2", false,-1, 15,0);
        tracep->declBit(c+17,"cal_phase dot psum_vld", false,-1);
        tracep->declBus(c+144,"cal_phase dot valid_num", false,-1, 2,0);
        tracep->declBus(c+5,"cal_phase dot mean", false,-1, 7,0);
        tracep->declBit(c+141,"cal_phase dot clk", false,-1);
        tracep->declBit(c+142,"cal_phase dot reset", false,-1);
        tracep->declBit(c+29,"cal_phase dot booth_sin_io_dout_vld", false,-1);
        tracep->declBus(c+30,"cal_phase dot booth_sin_io_dout", false,-1, 15,0);
        tracep->declBit(c+146,"cal_phase dot booth_cos_io_dout_vld", false,-1);
        tracep->declBus(c+31,"cal_phase dot booth_cos_io_dout", false,-1, 15,0);
        tracep->declBus(c+30,"cal_phase dot product1", false,-1, 15,0);
        tracep->declBus(c+31,"cal_phase dot product2", false,-1, 15,0);
        tracep->declBus(c+32,"cal_phase dot s1", false,-1, 18,0);
        tracep->declBus(c+33,"cal_phase dot s2", false,-1, 18,0);
        tracep->declBus(c+34,"cal_phase dot psum1", false,-1, 18,0);
        tracep->declBus(c+35,"cal_phase dot psum2", false,-1, 18,0);
        tracep->declBus(c+36,"cal_phase dot vin_true_in", false,-1, 7,0);
        tracep->declBus(c+36,"cal_phase dot vin_minus_mean", false,-1, 7,0);
        tracep->declBus(c+37,"cal_phase dot mac_cnt", false,-1, 2,0);
        tracep->declBit(c+38,"cal_phase dot mac_en", false,-1);
        tracep->declBit(c+39,"cal_phase dot mac_start", false,-1);
        tracep->declBit(c+147,"cal_phase dot mac_finish", false,-1);
        tracep->declBit(c+17,"cal_phase dot finish", false,-1);
        tracep->declBit(c+29,"cal_phase dot mul_done", false,-1);
        tracep->declBit(c+40,"cal_phase dot booth_start", false,-1);
        tracep->declBit(c+40,"cal_phase dot booth_sin io_din_vld", false,-1);
        tracep->declBus(c+36,"cal_phase dot booth_sin io_dinA", false,-1, 7,0);
        tracep->declBus(c+148,"cal_phase dot booth_sin io_dinB", false,-1, 7,0);
        tracep->declBit(c+29,"cal_phase dot booth_sin io_dout_vld", false,-1);
        tracep->declBus(c+30,"cal_phase dot booth_sin io_dout", false,-1, 15,0);
        tracep->declBit(c+141,"cal_phase dot booth_sin clk", false,-1);
        tracep->declBit(c+142,"cal_phase dot booth_sin reset", false,-1);
        tracep->declBus(c+41,"cal_phase dot booth_sin Breg", false,-1, 7,0);
        tracep->declBus(c+42,"cal_phase dot booth_sin shiftReg", false,-1, 18,0);
        tracep->declBus(c+43,"cal_phase dot booth_sin flag_bits", false,-1, 2,0);
        tracep->declBus(c+44,"cal_phase dot booth_sin NegativeB", false,-1, 9,0);
        tracep->declBus(c+45,"cal_phase dot booth_sin Negative2B", false,-1, 9,0);
        tracep->declBus(c+46,"cal_phase dot booth_sin PositiveB", false,-1, 9,0);
        tracep->declBus(c+47,"cal_phase dot booth_sin Positive2B", false,-1, 9,0);
        tracep->declBus(c+48,"cal_phase dot booth_sin AddB", false,-1, 9,0);
        tracep->declBus(c+49,"cal_phase dot booth_sin Add2B", false,-1, 9,0);
        tracep->declBus(c+50,"cal_phase dot booth_sin MinusB", false,-1, 9,0);
        tracep->declBus(c+51,"cal_phase dot booth_sin Minus2B", false,-1, 9,0);
        tracep->declBus(c+52,"cal_phase dot booth_sin cal_cnt", false,-1, 1,0);
        tracep->declBit(c+53,"cal_phase dot booth_sin cal_en", false,-1);
    }
}

void Vcal_phase::traceInitSub1(void* userp, VerilatedVcd* tracep) {
    Vcal_phase__Syms* __restrict vlSymsp = static_cast<Vcal_phase__Syms*>(userp);
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    const int c = vlSymsp->__Vm_baseCode;
    if (false && tracep && c) {}  // Prevent unused
    // Body
    {
        tracep->declBus(c+54,"cal_phase dot booth_sin shiftReg_low", false,-1, 8,0);
        tracep->declBus(c+55,"cal_phase dot booth_sin shiftReg_high", false,-1, 9,0);
        tracep->declBus(c+56,"cal_phase dot booth_sin beforeshift", false,-1, 9,0);
        tracep->declBus(c+57,"cal_phase dot booth_sin aftershift", false,-1, 18,0);
        tracep->declBit(c+1,"cal_phase dot booth_sin cal_en_regNext", false,-1);
        tracep->declBit(c+40,"cal_phase dot booth_cos io_din_vld", false,-1);
        tracep->declBus(c+36,"cal_phase dot booth_cos io_dinA", false,-1, 7,0);
        tracep->declBus(c+149,"cal_phase dot booth_cos io_dinB", false,-1, 7,0);
        tracep->declBit(c+146,"cal_phase dot booth_cos io_dout_vld", false,-1);
        tracep->declBus(c+31,"cal_phase dot booth_cos io_dout", false,-1, 15,0);
        tracep->declBit(c+141,"cal_phase dot booth_cos clk", false,-1);
        tracep->declBit(c+142,"cal_phase dot booth_cos reset", false,-1);
        tracep->declBus(c+58,"cal_phase dot booth_cos Breg", false,-1, 7,0);
        tracep->declBus(c+59,"cal_phase dot booth_cos shiftReg", false,-1, 18,0);
        tracep->declBus(c+60,"cal_phase dot booth_cos flag_bits", false,-1, 2,0);
        tracep->declBus(c+61,"cal_phase dot booth_cos NegativeB", false,-1, 9,0);
        tracep->declBus(c+62,"cal_phase dot booth_cos Negative2B", false,-1, 9,0);
        tracep->declBus(c+63,"cal_phase dot booth_cos PositiveB", false,-1, 9,0);
        tracep->declBus(c+64,"cal_phase dot booth_cos Positive2B", false,-1, 9,0);
        tracep->declBus(c+65,"cal_phase dot booth_cos AddB", false,-1, 9,0);
        tracep->declBus(c+66,"cal_phase dot booth_cos Add2B", false,-1, 9,0);
        tracep->declBus(c+67,"cal_phase dot booth_cos MinusB", false,-1, 9,0);
        tracep->declBus(c+68,"cal_phase dot booth_cos Minus2B", false,-1, 9,0);
        tracep->declBus(c+69,"cal_phase dot booth_cos cal_cnt", false,-1, 1,0);
        tracep->declBit(c+70,"cal_phase dot booth_cos cal_en", false,-1);
        tracep->declBus(c+71,"cal_phase dot booth_cos shiftReg_low", false,-1, 8,0);
        tracep->declBus(c+72,"cal_phase dot booth_cos shiftReg_high", false,-1, 9,0);
        tracep->declBus(c+73,"cal_phase dot booth_cos beforeshift", false,-1, 9,0);
        tracep->declBus(c+74,"cal_phase dot booth_cos aftershift", false,-1, 18,0);
        tracep->declBit(c+2,"cal_phase dot booth_cos cal_en_regNext", false,-1);
        tracep->declBit(c+100,"cal_phase cordic en", false,-1);
        tracep->declBus(c+102,"cal_phase cordic rg_cordic_iternum", false,-1, 2,0);
        tracep->declBit(c+17,"cal_phase cordic vld", false,-1);
        tracep->declBus(c+16,"cal_phase cordic y", false,-1, 15,0);
        tracep->declBus(c+15,"cal_phase cordic x", false,-1, 15,0);
        tracep->declBus(c+4,"cal_phase cordic res", false,-1, 9,0);
        tracep->declBit(c+18,"cal_phase cordic res_vld", false,-1);
        tracep->declBit(c+141,"cal_phase cordic clk", false,-1);
        tracep->declBit(c+142,"cal_phase cordic reset", false,-1);
        tracep->declBus(c+152,"cal_phase cordic KAngle_0", false,-1, 6,0);
        tracep->declBus(c+153,"cal_phase cordic KAngle_1", false,-1, 6,0);
        tracep->declBus(c+154,"cal_phase cordic KAngle_2", false,-1, 6,0);
        tracep->declBus(c+155,"cal_phase cordic KAngle_3", false,-1, 6,0);
        tracep->declBus(c+156,"cal_phase cordic KAngle_4", false,-1, 6,0);
        tracep->declBus(c+157,"cal_phase cordic KAngle_5", false,-1, 6,0);
        tracep->declBus(c+157,"cal_phase cordic KAngle_6", false,-1, 6,0);
        tracep->declBus(c+75,"cal_phase cordic xn", false,-1, 18,0);
        tracep->declBus(c+76,"cal_phase cordic yn", false,-1, 18,0);
        tracep->declBus(c+77,"cal_phase cordic res_rg", false,-1, 10,0);
        tracep->declBus(c+4,"cal_phase cordic res_out", false,-1, 9,0);
        tracep->declBus(c+78,"cal_phase cordic x_ext", false,-1, 18,0);
        tracep->declBus(c+79,"cal_phase cordic y_ext", false,-1, 18,0);
        tracep->declBus(c+80,"cal_phase cordic x_ins", false,-1, 18,0);
        tracep->declBus(c+81,"cal_phase cordic y_ins", false,-1, 18,0);
        tracep->declBus(c+82,"cal_phase cordic cal_cnt", false,-1, 2,0);
        tracep->declBit(c+83,"cal_phase cordic cal_en", false,-1);
        tracep->declBit(c+84,"cal_phase cordic cal_start", false,-1);
        tracep->declBit(c+85,"cal_phase cordic cal_start_delay", false,-1);
        tracep->declBit(c+99,"cal_phase cordic cal_finish", false,-1);
        tracep->declBit(c+150,"cal_phase cordic normal_finish", false,-1);
        tracep->declBit(c+151,"cal_phase cordic early_finish1", false,-1);
        tracep->declBit(c+85,"cal_phase cordic early_finish2", false,-1);
        tracep->declBit(c+18,"cal_phase cordic finish", false,-1);
        tracep->declBit(c+86,"cal_phase cordic nozero_flg", false,-1);
        tracep->declBit(c+87,"cal_phase cordic cal_en_regNext", false,-1);
        tracep->declBit(c+85,"cal_phase cordic cal_start_regNext", false,-1);
        tracep->declBit(c+3,"cal_phase cordic nozero_flg_regNext", false,-1);
        tracep->declBus(c+88,"cal_phase cordic xn_rightshift", false,-1, 18,0);
        tracep->declBus(c+89,"cal_phase cordic yn_rightshift", false,-1, 18,0);
        tracep->declBit(c+90,"cal_phase cordic cal_finish_delay", false,-1);
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
        vlTOPp->traceFullSub1(userp, tracep);
    }
}

void Vcal_phase::traceFullSub0(void* userp, VerilatedVcd* tracep) {
    Vcal_phase__Syms* __restrict vlSymsp = static_cast<Vcal_phase__Syms*>(userp);
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* const oldp = tracep->oldp(vlSymsp->__Vm_baseCode);
    if (false && oldp) {}  // Prevent unused
    // Body
    {
        tracep->fullBit(oldp+1,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_en_regNext));
        tracep->fullBit(oldp+2,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_en_regNext));
        tracep->fullBit(oldp+3,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__nozero_flg_regNext));
        tracep->fullSData(oldp+4,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_out),10);
        tracep->fullCData(oldp+5,((0xffU & ((0x100U 
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
        tracep->fullCData(oldp+6,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__V_bias_ac_0),8);
        tracep->fullCData(oldp+7,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__V_bias_ac_1),8);
        tracep->fullCData(oldp+8,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__V_bias_ac_2),8);
        tracep->fullCData(oldp+9,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__V_bias_ac_3),8);
        tracep->fullCData(oldp+10,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__V_bias_ac_4),8);
        tracep->fullCData(oldp+11,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__V_bias_ac_5),8);
        tracep->fullCData(oldp+12,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__V_bias_ac_6),8);
        tracep->fullCData(oldp+13,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__V_bias_ac_7),8);
        tracep->fullBit(oldp+14,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__mean_finish_regNext));
        tracep->fullSData(oldp+15,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_1),16);
        tracep->fullSData(oldp+16,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_2),16);
        tracep->fullBit(oldp+17,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__finish));
        tracep->fullBit(oldp+18,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__finish));
        tracep->fullCData(oldp+19,(vlSymsp->TOP__cal_phase.__PVT__vin1_reg),8);
        tracep->fullCData(oldp+20,(vlSymsp->TOP__cal_phase.__PVT__vin2_reg),8);
        tracep->fullBit(oldp+21,(vlSymsp->TOP__cal_phase.__PVT__vin_vld_reg));
        tracep->fullBit(oldp+22,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__vin_vld_d1));
        tracep->fullBit(oldp+23,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__vin_vld_d2));
        tracep->fullCData(oldp+24,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt),3);
        tracep->fullCData(oldp+25,((7U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                                          << 1U))),3);
        tracep->fullCData(oldp+26,((7U & ((IData)(1U) 
                                          + ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v_cnt) 
                                             << 1U)))),3);
        tracep->fullCData(oldp+27,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__max_v),8);
        tracep->fullCData(oldp+28,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__min_v),8);
        tracep->fullBit(oldp+29,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin_io_dout_vld));
        tracep->fullSData(oldp+30,((0xffffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                               >> 1U))),16);
        tracep->fullSData(oldp+31,((0xffffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                               >> 1U))),16);
        tracep->fullIData(oldp+32,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__s1),19);
        tracep->fullIData(oldp+33,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__s2),19);
        tracep->fullIData(oldp+34,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1),19);
        tracep->fullIData(oldp+35,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2),19);
        tracep->fullCData(oldp+36,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__vin_minus_mean),8);
        tracep->fullCData(oldp+37,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt),3);
        tracep->fullBit(oldp+38,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_en));
        tracep->fullBit(oldp+39,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_start));
        tracep->fullBit(oldp+40,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_start));
        tracep->fullCData(oldp+41,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__Breg),8);
        tracep->fullIData(oldp+42,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg),19);
        tracep->fullCData(oldp+43,((7U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)),3);
        tracep->fullSData(oldp+44,((0x3ffU & (- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__PositiveB)))),10);
        tracep->fullSData(oldp+45,((0x3ffU & ((- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__PositiveB)) 
                                              << 1U))),10);
        tracep->fullSData(oldp+46,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__PositiveB),10);
        tracep->fullSData(oldp+47,((0x3ffU & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__PositiveB) 
                                              << 1U))),10);
        tracep->fullSData(oldp+48,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__AddB),10);
        tracep->fullSData(oldp+49,((0x3ffU & ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                               >> 9U) 
                                              + ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__PositiveB) 
                                                 << 1U)))),10);
        tracep->fullSData(oldp+50,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__MinusB),10);
        tracep->fullSData(oldp+51,((0x3ffU & ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                               >> 9U) 
                                              + ((- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__PositiveB)) 
                                                 << 1U)))),10);
        tracep->fullCData(oldp+52,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_cnt),2);
        tracep->fullBit(oldp+53,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__cal_en));
        tracep->fullSData(oldp+54,((0x1ffU & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)),9);
        tracep->fullSData(oldp+55,((0x3ffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                              >> 9U))),10);
        tracep->fullSData(oldp+56,((0x3ffU & ((4U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                               ? ((2U 
                                                   & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                                   ? 
                                                  ((1U 
                                                    & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                                    ? 
                                                   (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                    >> 9U)
                                                    : (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__MinusB))
                                                   : 
                                                  ((1U 
                                                    & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                                    ? (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__MinusB)
                                                    : 
                                                   ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                     >> 9U) 
                                                    + 
                                                    ((- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__PositiveB)) 
                                                     << 1U))))
                                               : ((2U 
                                                   & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                                   ? 
                                                  ((1U 
                                                    & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                                    ? 
                                                   ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                     >> 9U) 
                                                    + 
                                                    ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__PositiveB) 
                                                     << 1U))
                                                    : (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__AddB))
                                                   : 
                                                  ((1U 
                                                    & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                                    ? (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__AddB)
                                                    : 
                                                   (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                    >> 9U)))))),10);
        tracep->fullIData(oldp+57,((0x7ffffU & VL_SHIFTRS_III(19,19,32, 
                                                              ((0x7fe00U 
                                                                & (((4U 
                                                                     & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                                                     ? 
                                                                    ((2U 
                                                                      & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                                                      ? 
                                                                     ((1U 
                                                                       & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                                                       ? 
                                                                      (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                                       >> 9U)
                                                                       : (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__MinusB))
                                                                      : 
                                                                     ((1U 
                                                                       & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                                                       ? (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__MinusB)
                                                                       : 
                                                                      ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                                        >> 9U) 
                                                                       + 
                                                                       ((- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__PositiveB)) 
                                                                        << 1U))))
                                                                     : 
                                                                    ((2U 
                                                                      & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                                                      ? 
                                                                     ((1U 
                                                                       & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                                                       ? 
                                                                      ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                                        >> 9U) 
                                                                       + 
                                                                       ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__PositiveB) 
                                                                        << 1U))
                                                                       : (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__AddB))
                                                                      : 
                                                                     ((1U 
                                                                       & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)
                                                                       ? (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__AddB)
                                                                       : 
                                                                      (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg 
                                                                       >> 9U)))) 
                                                                   << 9U)) 
                                                               | (0x1ffU 
                                                                  & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin__DOT__shiftReg)), 2U))),19);
        tracep->fullCData(oldp+58,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__Breg),8);
        tracep->fullIData(oldp+59,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg),19);
        tracep->fullCData(oldp+60,((7U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)),3);
        tracep->fullSData(oldp+61,((0x3ffU & (- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__PositiveB)))),10);
        tracep->fullSData(oldp+62,((0x3ffU & ((- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__PositiveB)) 
                                              << 1U))),10);
        tracep->fullSData(oldp+63,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__PositiveB),10);
        tracep->fullSData(oldp+64,((0x3ffU & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__PositiveB) 
                                              << 1U))),10);
        tracep->fullSData(oldp+65,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__AddB),10);
        tracep->fullSData(oldp+66,((0x3ffU & ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                               >> 9U) 
                                              + ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__PositiveB) 
                                                 << 1U)))),10);
        tracep->fullSData(oldp+67,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__MinusB),10);
        tracep->fullSData(oldp+68,((0x3ffU & ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                               >> 9U) 
                                              + ((- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__PositiveB)) 
                                                 << 1U)))),10);
        tracep->fullCData(oldp+69,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_cnt),2);
        tracep->fullBit(oldp+70,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_en));
        tracep->fullSData(oldp+71,((0x1ffU & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)),9);
        tracep->fullSData(oldp+72,((0x3ffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                              >> 9U))),10);
        tracep->fullSData(oldp+73,((0x3ffU & ((4U & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                               ? ((2U 
                                                   & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                                   ? 
                                                  ((1U 
                                                    & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                                    ? 
                                                   (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                    >> 9U)
                                                    : (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__MinusB))
                                                   : 
                                                  ((1U 
                                                    & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                                    ? (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__MinusB)
                                                    : 
                                                   ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                     >> 9U) 
                                                    + 
                                                    ((- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__PositiveB)) 
                                                     << 1U))))
                                               : ((2U 
                                                   & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                                   ? 
                                                  ((1U 
                                                    & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                                    ? 
                                                   ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                     >> 9U) 
                                                    + 
                                                    ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__PositiveB) 
                                                     << 1U))
                                                    : (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__AddB))
                                                   : 
                                                  ((1U 
                                                    & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                                    ? (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__AddB)
                                                    : 
                                                   (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                    >> 9U)))))),10);
        tracep->fullIData(oldp+74,((0x7ffffU & VL_SHIFTRS_III(19,19,32, 
                                                              ((0x7fe00U 
                                                                & (((4U 
                                                                     & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                                                     ? 
                                                                    ((2U 
                                                                      & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                                                      ? 
                                                                     ((1U 
                                                                       & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                                                       ? 
                                                                      (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                                       >> 9U)
                                                                       : (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__MinusB))
                                                                      : 
                                                                     ((1U 
                                                                       & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                                                       ? (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__MinusB)
                                                                       : 
                                                                      ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                                        >> 9U) 
                                                                       + 
                                                                       ((- (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__PositiveB)) 
                                                                        << 1U))))
                                                                     : 
                                                                    ((2U 
                                                                      & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                                                      ? 
                                                                     ((1U 
                                                                       & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                                                       ? 
                                                                      ((vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                                        >> 9U) 
                                                                       + 
                                                                       ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__PositiveB) 
                                                                        << 1U))
                                                                       : (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__AddB))
                                                                      : 
                                                                     ((1U 
                                                                       & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)
                                                                       ? (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__AddB)
                                                                       : 
                                                                      (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg 
                                                                       >> 9U)))) 
                                                                   << 9U)) 
                                                               | (0x1ffU 
                                                                  & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__shiftReg)), 2U))),19);
    }
}

void Vcal_phase::traceFullSub1(void* userp, VerilatedVcd* tracep) {
    Vcal_phase__Syms* __restrict vlSymsp = static_cast<Vcal_phase__Syms*>(userp);
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* const oldp = tracep->oldp(vlSymsp->__Vm_baseCode);
    if (false && oldp) {}  // Prevent unused
    // Body
    {
        tracep->fullIData(oldp+75,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn),19);
        tracep->fullIData(oldp+76,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn),19);
        tracep->fullSData(oldp+77,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_rg),11);
        tracep->fullIData(oldp+78,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__x_ext),19);
        tracep->fullIData(oldp+79,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__y_ext),19);
        tracep->fullIData(oldp+80,((0x7ffffU & (- vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__x_ext))),19);
        tracep->fullIData(oldp+81,((0x7ffffU & (- vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__y_ext))),19);
        tracep->fullCData(oldp+82,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt),3);
        tracep->fullBit(oldp+83,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en));
        tracep->fullBit(oldp+84,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_start));
        tracep->fullBit(oldp+85,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_start_regNext));
        tracep->fullBit(oldp+86,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__nozero_flg));
        tracep->fullBit(oldp+87,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en_regNext));
        tracep->fullIData(oldp+88,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn_rightshift),19);
        tracep->fullIData(oldp+89,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn_rightshift),19);
        tracep->fullBit(oldp+90,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_finish_delay));
        tracep->fullCData(oldp+91,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__vin1_bias_shift),8);
        tracep->fullCData(oldp+92,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__vin2_bias_shift),8);
        tracep->fullCData(oldp+93,((0xffU & ((IData)(0x80U) 
                                             + (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__vin1_bias_shift)))),8);
        tracep->fullCData(oldp+94,((0xffU & ((IData)(0x80U) 
                                             + (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__vin2_bias_shift)))),8);
        tracep->fullCData(oldp+95,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__bigger),8);
        tracep->fullCData(oldp+96,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__smaller),8);
        tracep->fullBit(oldp+97,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__v1gtv2));
        tracep->fullBit(oldp+98,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__data_load_finish));
        tracep->fullBit(oldp+99,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_finish));
        tracep->fullBit(oldp+100,(vlTOPp->rg_calphase_en));
        tracep->fullBit(oldp+101,(vlTOPp->rg_bypass_mean));
        tracep->fullCData(oldp+102,(vlTOPp->rg_cordic_iternum),3);
        tracep->fullCData(oldp+103,(vlTOPp->rg_leakage_table_0),8);
        tracep->fullCData(oldp+104,(vlTOPp->rg_leakage_table_1),8);
        tracep->fullCData(oldp+105,(vlTOPp->rg_leakage_table_2),8);
        tracep->fullCData(oldp+106,(vlTOPp->rg_leakage_table_3),8);
        tracep->fullCData(oldp+107,(vlTOPp->rg_leakage_table_4),8);
        tracep->fullCData(oldp+108,(vlTOPp->rg_leakage_table_5),8);
        tracep->fullCData(oldp+109,(vlTOPp->rg_leakage_table_6),8);
        tracep->fullCData(oldp+110,(vlTOPp->rg_leakage_table_7),8);
        tracep->fullCData(oldp+111,(vlTOPp->rg_ac_table_0),2);
        tracep->fullCData(oldp+112,(vlTOPp->rg_ac_table_1),2);
        tracep->fullCData(oldp+113,(vlTOPp->rg_ac_table_2),2);
        tracep->fullCData(oldp+114,(vlTOPp->rg_ac_table_3),2);
        tracep->fullCData(oldp+115,(vlTOPp->rg_ac_table_4),2);
        tracep->fullCData(oldp+116,(vlTOPp->rg_ac_table_5),2);
        tracep->fullCData(oldp+117,(vlTOPp->rg_ac_table_6),2);
        tracep->fullCData(oldp+118,(vlTOPp->rg_ac_table_7),2);
        tracep->fullCData(oldp+119,(vlTOPp->rg_sin_table_0),8);
        tracep->fullCData(oldp+120,(vlTOPp->rg_sin_table_1),8);
        tracep->fullCData(oldp+121,(vlTOPp->rg_sin_table_2),8);
        tracep->fullCData(oldp+122,(vlTOPp->rg_sin_table_3),8);
        tracep->fullCData(oldp+123,(vlTOPp->rg_sin_table_4),8);
        tracep->fullCData(oldp+124,(vlTOPp->rg_sin_table_5),8);
        tracep->fullCData(oldp+125,(vlTOPp->rg_sin_table_6),8);
        tracep->fullCData(oldp+126,(vlTOPp->rg_sin_table_7),8);
        tracep->fullCData(oldp+127,(vlTOPp->rg_cos_table_0),8);
        tracep->fullCData(oldp+128,(vlTOPp->rg_cos_table_1),8);
        tracep->fullCData(oldp+129,(vlTOPp->rg_cos_table_2),8);
        tracep->fullCData(oldp+130,(vlTOPp->rg_cos_table_3),8);
        tracep->fullCData(oldp+131,(vlTOPp->rg_cos_table_4),8);
        tracep->fullCData(oldp+132,(vlTOPp->rg_cos_table_5),8);
        tracep->fullCData(oldp+133,(vlTOPp->rg_cos_table_6),8);
        tracep->fullCData(oldp+134,(vlTOPp->rg_cos_table_7),8);
        tracep->fullCData(oldp+135,(vlTOPp->valid_num),3);
        tracep->fullBit(oldp+136,(vlTOPp->vin_vld));
        tracep->fullCData(oldp+137,(vlTOPp->vin1),8);
        tracep->fullCData(oldp+138,(vlTOPp->vin2),8);
        tracep->fullBit(oldp+139,(vlTOPp->phase_vld));
        tracep->fullSData(oldp+140,(vlTOPp->phase),10);
        tracep->fullBit(oldp+141,(vlTOPp->clk));
        tracep->fullBit(oldp+142,(vlTOPp->reset));
        tracep->fullBit(oldp+143,(vlSymsp->TOP__cal_phase.ph_vld));
        tracep->fullCData(oldp+144,((7U & ((0xfU & 
                                            ((IData)(vlTOPp->valid_num) 
                                             << 1U)) 
                                           - (IData)(1U)))),3);
        tracep->fullBit(oldp+145,((((IData)(vlTOPp->rg_calphase_en) 
                                    & (IData)(vlSymsp->TOP__cal_phase.__PVT__vin_vld_reg)) 
                                   & (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__data_load_finish))));
        tracep->fullBit(oldp+146,(((~ (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_en)) 
                                   & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_cos__DOT__cal_en_regNext))));
        tracep->fullBit(oldp+147,((((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt) 
                                    == (7U & (((0xfU 
                                                & ((IData)(vlTOPp->valid_num) 
                                                   << 1U)) 
                                               - (IData)(1U)) 
                                              - (IData)(1U)))) 
                                   & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__booth_sin_io_dout_vld))));
        tracep->fullCData(oldp+148,(((4U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                      ? ((2U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                          ? ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                              ? (IData)(vlTOPp->rg_sin_table_7)
                                              : (IData)(vlTOPp->rg_sin_table_6))
                                          : ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                              ? (IData)(vlTOPp->rg_sin_table_5)
                                              : (IData)(vlTOPp->rg_sin_table_4)))
                                      : ((2U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                          ? ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                              ? (IData)(vlTOPp->rg_sin_table_3)
                                              : (IData)(vlTOPp->rg_sin_table_2))
                                          : ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                              ? (IData)(vlTOPp->rg_sin_table_1)
                                              : (IData)(vlTOPp->rg_sin_table_0))))),8);
        tracep->fullCData(oldp+149,(((4U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                      ? ((2U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                          ? ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                              ? (IData)(vlTOPp->rg_cos_table_7)
                                              : (IData)(vlTOPp->rg_cos_table_6))
                                          : ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                              ? (IData)(vlTOPp->rg_cos_table_5)
                                              : (IData)(vlTOPp->rg_cos_table_4)))
                                      : ((2U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                          ? ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                              ? (IData)(vlTOPp->rg_cos_table_3)
                                              : (IData)(vlTOPp->rg_cos_table_2))
                                          : ((1U & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                              ? (IData)(vlTOPp->rg_cos_table_1)
                                              : (IData)(vlTOPp->rg_cos_table_0))))),8);
        tracep->fullBit(oldp+150,(((IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt) 
                                   == (7U & ((IData)(vlTOPp->rg_cordic_iternum) 
                                             - (IData)(1U))))));
        tracep->fullBit(oldp+151,(((~ (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__nozero_flg)) 
                                   & (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__nozero_flg_regNext))));
        tracep->fullCData(oldp+152,(0x20U),7);
        tracep->fullCData(oldp+153,(0x13U),7);
        tracep->fullCData(oldp+154,(0xaU),7);
        tracep->fullCData(oldp+155,(5U),7);
        tracep->fullCData(oldp+156,(3U),7);
        tracep->fullCData(oldp+157,(1U),7);
    }
}
