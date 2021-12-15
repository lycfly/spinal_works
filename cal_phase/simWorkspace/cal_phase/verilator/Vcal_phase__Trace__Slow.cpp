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
    }
}

void Vcal_phase::traceInitSub0(void* userp, VerilatedVcd* tracep) {
    Vcal_phase__Syms* __restrict vlSymsp = static_cast<Vcal_phase__Syms*>(userp);
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    const int c = vlSymsp->__Vm_baseCode;
    if (false && tracep && c) {}  // Prevent unused
    // Body
    {
        tracep->declBit(c+66,"en", false,-1);
        tracep->declBit(c+67,"vin_vld", false,-1);
        tracep->declBus(c+68,"v_in_0", false,-1, 7,0);
        tracep->declBus(c+69,"v_in_1", false,-1, 7,0);
        tracep->declBus(c+70,"v_in_2", false,-1, 7,0);
        tracep->declBus(c+71,"v_in_3", false,-1, 7,0);
        tracep->declBus(c+72,"v_in_4", false,-1, 7,0);
        tracep->declBus(c+73,"v_in_5", false,-1, 7,0);
        tracep->declBus(c+74,"v_in_6", false,-1, 7,0);
        tracep->declBus(c+75,"v_in_7", false,-1, 7,0);
        tracep->declBit(c+76,"res_vld", false,-1);
        tracep->declBus(c+77,"res", false,-1, 9,0);
        tracep->declBit(c+78,"clk", false,-1);
        tracep->declBit(c+79,"reset", false,-1);
        tracep->declBit(c+66,"cal_phase en", false,-1);
        tracep->declBit(c+67,"cal_phase vin_vld", false,-1);
        tracep->declBus(c+68,"cal_phase v_in_0", false,-1, 7,0);
        tracep->declBus(c+69,"cal_phase v_in_1", false,-1, 7,0);
        tracep->declBus(c+70,"cal_phase v_in_2", false,-1, 7,0);
        tracep->declBus(c+71,"cal_phase v_in_3", false,-1, 7,0);
        tracep->declBus(c+72,"cal_phase v_in_4", false,-1, 7,0);
        tracep->declBus(c+73,"cal_phase v_in_5", false,-1, 7,0);
        tracep->declBus(c+74,"cal_phase v_in_6", false,-1, 7,0);
        tracep->declBus(c+75,"cal_phase v_in_7", false,-1, 7,0);
        tracep->declBit(c+1,"cal_phase res_vld", false,-1);
        tracep->declBus(c+2,"cal_phase res", false,-1, 9,0);
        tracep->declBit(c+78,"cal_phase clk", false,-1);
        tracep->declBit(c+79,"cal_phase reset", false,-1);
        tracep->declBus(c+31,"cal_phase calvn_vn_0", false,-1, 7,0);
        tracep->declBus(c+32,"cal_phase calvn_vn_1", false,-1, 7,0);
        tracep->declBus(c+33,"cal_phase calvn_vn_2", false,-1, 7,0);
        tracep->declBus(c+34,"cal_phase calvn_vn_3", false,-1, 7,0);
        tracep->declBus(c+35,"cal_phase calvn_vn_4", false,-1, 7,0);
        tracep->declBus(c+36,"cal_phase calvn_vn_5", false,-1, 7,0);
        tracep->declBus(c+37,"cal_phase calvn_vn_6", false,-1, 7,0);
        tracep->declBus(c+38,"cal_phase calvn_vn_7", false,-1, 7,0);
        tracep->declBit(c+39,"cal_phase calvn_vn_vld", false,-1);
        tracep->declBus(c+3,"cal_phase dot_psum_out1", false,-1, 15,0);
        tracep->declBus(c+4,"cal_phase dot_psum_out2", false,-1, 15,0);
        tracep->declBit(c+80,"cal_phase dot_psum_vld", false,-1);
        tracep->declBus(c+5,"cal_phase cordic_res", false,-1, 7,0);
        tracep->declBit(c+6,"cal_phase cordic_res_vld", false,-1);
        tracep->declBus(c+31,"cal_phase vn_0", false,-1, 7,0);
        tracep->declBus(c+32,"cal_phase vn_1", false,-1, 7,0);
        tracep->declBus(c+33,"cal_phase vn_2", false,-1, 7,0);
        tracep->declBus(c+34,"cal_phase vn_3", false,-1, 7,0);
        tracep->declBus(c+35,"cal_phase vn_4", false,-1, 7,0);
        tracep->declBus(c+36,"cal_phase vn_5", false,-1, 7,0);
        tracep->declBus(c+37,"cal_phase vn_6", false,-1, 7,0);
        tracep->declBus(c+38,"cal_phase vn_7", false,-1, 7,0);
        tracep->declBit(c+39,"cal_phase vn_vld", false,-1);
        tracep->declBus(c+3,"cal_phase psum_out1", false,-1, 15,0);
        tracep->declBus(c+4,"cal_phase psum_out2", false,-1, 15,0);
        tracep->declBit(c+80,"cal_phase psum_vld", false,-1);
        tracep->declBit(c+81,"cal_phase ph_vld", false,-1);
        tracep->declBus(c+5,"cal_phase ph_cal", false,-1, 7,0);
        tracep->declBit(c+7,"cal_phase LastA2stZero", false,-1);
        tracep->declBus(c+8,"cal_phase ph_now", false,-1, 7,0);
        tracep->declBus(c+9,"cal_phase ph_last", false,-1, 7,0);
        tracep->declBit(c+82,"cal_phase ph_vld_dly1", false,-1);
        tracep->declBus(c+10,"cal_phase ph_delta", false,-1, 8,0);
        tracep->declBus(c+11,"cal_phase ph_delta_abs", false,-1, 8,0);
        tracep->declBit(c+12,"cal_phase AbsGtPi", false,-1);
        tracep->declBus(c+2,"cal_phase res_last", false,-1, 9,0);
        tracep->declBit(c+1,"cal_phase res_last_vld", false,-1);
        tracep->declBit(c+66,"cal_phase calvn en", false,-1);
        tracep->declBit(c+67,"cal_phase calvn vin_vld", false,-1);
        tracep->declBus(c+68,"cal_phase calvn v_in_0", false,-1, 7,0);
        tracep->declBus(c+69,"cal_phase calvn v_in_1", false,-1, 7,0);
        tracep->declBus(c+70,"cal_phase calvn v_in_2", false,-1, 7,0);
        tracep->declBus(c+71,"cal_phase calvn v_in_3", false,-1, 7,0);
        tracep->declBus(c+72,"cal_phase calvn v_in_4", false,-1, 7,0);
        tracep->declBus(c+73,"cal_phase calvn v_in_5", false,-1, 7,0);
        tracep->declBus(c+74,"cal_phase calvn v_in_6", false,-1, 7,0);
        tracep->declBus(c+75,"cal_phase calvn v_in_7", false,-1, 7,0);
        tracep->declBus(c+31,"cal_phase calvn vn_0", false,-1, 7,0);
        tracep->declBus(c+32,"cal_phase calvn vn_1", false,-1, 7,0);
        tracep->declBus(c+33,"cal_phase calvn vn_2", false,-1, 7,0);
        tracep->declBus(c+34,"cal_phase calvn vn_3", false,-1, 7,0);
        tracep->declBus(c+35,"cal_phase calvn vn_4", false,-1, 7,0);
        tracep->declBus(c+36,"cal_phase calvn vn_5", false,-1, 7,0);
        tracep->declBus(c+37,"cal_phase calvn vn_6", false,-1, 7,0);
        tracep->declBus(c+38,"cal_phase calvn vn_7", false,-1, 7,0);
        tracep->declBit(c+39,"cal_phase calvn vn_vld", false,-1);
        tracep->declBit(c+78,"cal_phase calvn clk", false,-1);
        tracep->declBit(c+79,"cal_phase calvn reset", false,-1);
        tracep->declBus(c+83,"cal_phase calvn FloorWrapVn_0_dout", false,-1, 7,0);
        tracep->declBus(c+84,"cal_phase calvn FloorWrapVn_1_dout", false,-1, 7,0);
        tracep->declBus(c+85,"cal_phase calvn FloorWrapVn_2_dout", false,-1, 7,0);
        tracep->declBus(c+86,"cal_phase calvn FloorWrapVn_3_dout", false,-1, 7,0);
        tracep->declBus(c+87,"cal_phase calvn FloorWrapVn_4_dout", false,-1, 7,0);
        tracep->declBus(c+88,"cal_phase calvn FloorWrapVn_5_dout", false,-1, 7,0);
        tracep->declBus(c+89,"cal_phase calvn FloorWrapVn_6_dout", false,-1, 7,0);
        tracep->declBus(c+90,"cal_phase calvn FloorWrapVn_7_dout", false,-1, 7,0);
        tracep->declBit(c+40,"cal_phase calvn in_vld_dly1", false,-1);
        tracep->declBit(c+39,"cal_phase calvn in_vld_dly2", false,-1);
        tracep->declBus(c+91,"cal_phase calvn SumXin", false,-1, 10,0);
        tracep->declBus(c+41,"cal_phase calvn SumXinReg", false,-1, 10,0);
        tracep->declBus(c+92,"cal_phase calvn vin_ext_0", false,-1, 10,0);
        tracep->declBus(c+93,"cal_phase calvn vin_ext_1", false,-1, 10,0);
        tracep->declBus(c+94,"cal_phase calvn vin_ext_2", false,-1, 10,0);
        tracep->declBus(c+95,"cal_phase calvn vin_ext_3", false,-1, 10,0);
        tracep->declBus(c+96,"cal_phase calvn vin_ext_4", false,-1, 10,0);
        tracep->declBus(c+97,"cal_phase calvn vin_ext_5", false,-1, 10,0);
        tracep->declBus(c+98,"cal_phase calvn vin_ext_6", false,-1, 10,0);
        tracep->declBus(c+99,"cal_phase calvn vin_ext_7", false,-1, 10,0);
        tracep->declBus(c+100,"cal_phase calvn VinMinusMean_0", false,-1, 11,0);
        tracep->declBus(c+101,"cal_phase calvn VinMinusMean_1", false,-1, 11,0);
        tracep->declBus(c+102,"cal_phase calvn VinMinusMean_2", false,-1, 11,0);
        tracep->declBus(c+103,"cal_phase calvn VinMinusMean_3", false,-1, 11,0);
        tracep->declBus(c+104,"cal_phase calvn VinMinusMean_4", false,-1, 11,0);
        tracep->declBus(c+105,"cal_phase calvn VinMinusMean_5", false,-1, 11,0);
        tracep->declBus(c+106,"cal_phase calvn VinMinusMean_6", false,-1, 11,0);
        tracep->declBus(c+107,"cal_phase calvn VinMinusMean_7", false,-1, 11,0);
        tracep->declBus(c+83,"cal_phase calvn Vn_floor_0", false,-1, 7,0);
        tracep->declBus(c+84,"cal_phase calvn Vn_floor_1", false,-1, 7,0);
        tracep->declBus(c+85,"cal_phase calvn Vn_floor_2", false,-1, 7,0);
        tracep->declBus(c+86,"cal_phase calvn Vn_floor_3", false,-1, 7,0);
        tracep->declBus(c+87,"cal_phase calvn Vn_floor_4", false,-1, 7,0);
        tracep->declBus(c+88,"cal_phase calvn Vn_floor_5", false,-1, 7,0);
        tracep->declBus(c+89,"cal_phase calvn Vn_floor_6", false,-1, 7,0);
        tracep->declBus(c+90,"cal_phase calvn Vn_floor_7", false,-1, 7,0);
        tracep->declBus(c+31,"cal_phase calvn VnReg_0", false,-1, 7,0);
        tracep->declBus(c+32,"cal_phase calvn VnReg_1", false,-1, 7,0);
        tracep->declBus(c+33,"cal_phase calvn VnReg_2", false,-1, 7,0);
        tracep->declBus(c+34,"cal_phase calvn VnReg_3", false,-1, 7,0);
        tracep->declBus(c+35,"cal_phase calvn VnReg_4", false,-1, 7,0);
        tracep->declBus(c+36,"cal_phase calvn VnReg_5", false,-1, 7,0);
        tracep->declBus(c+37,"cal_phase calvn VnReg_6", false,-1, 7,0);
        tracep->declBus(c+38,"cal_phase calvn VnReg_7", false,-1, 7,0);
        tracep->declBus(c+100,"cal_phase calvn FloorWrapVn_0 din", false,-1, 11,0);
        tracep->declBus(c+83,"cal_phase calvn FloorWrapVn_0 dout", false,-1, 7,0);
        tracep->declBus(c+83,"cal_phase calvn FloorWrapVn_0 dataOut", false,-1, 7,0);
        tracep->declBus(c+101,"cal_phase calvn FloorWrapVn_1 din", false,-1, 11,0);
        tracep->declBus(c+84,"cal_phase calvn FloorWrapVn_1 dout", false,-1, 7,0);
        tracep->declBus(c+84,"cal_phase calvn FloorWrapVn_1 dataOut", false,-1, 7,0);
        tracep->declBus(c+102,"cal_phase calvn FloorWrapVn_2 din", false,-1, 11,0);
        tracep->declBus(c+85,"cal_phase calvn FloorWrapVn_2 dout", false,-1, 7,0);
        tracep->declBus(c+85,"cal_phase calvn FloorWrapVn_2 dataOut", false,-1, 7,0);
        tracep->declBus(c+103,"cal_phase calvn FloorWrapVn_3 din", false,-1, 11,0);
        tracep->declBus(c+86,"cal_phase calvn FloorWrapVn_3 dout", false,-1, 7,0);
        tracep->declBus(c+86,"cal_phase calvn FloorWrapVn_3 dataOut", false,-1, 7,0);
        tracep->declBus(c+104,"cal_phase calvn FloorWrapVn_4 din", false,-1, 11,0);
        tracep->declBus(c+87,"cal_phase calvn FloorWrapVn_4 dout", false,-1, 7,0);
        tracep->declBus(c+87,"cal_phase calvn FloorWrapVn_4 dataOut", false,-1, 7,0);
        tracep->declBus(c+105,"cal_phase calvn FloorWrapVn_5 din", false,-1, 11,0);
        tracep->declBus(c+88,"cal_phase calvn FloorWrapVn_5 dout", false,-1, 7,0);
        tracep->declBus(c+88,"cal_phase calvn FloorWrapVn_5 dataOut", false,-1, 7,0);
        tracep->declBus(c+106,"cal_phase calvn FloorWrapVn_6 din", false,-1, 11,0);
        tracep->declBus(c+89,"cal_phase calvn FloorWrapVn_6 dout", false,-1, 7,0);
        tracep->declBus(c+89,"cal_phase calvn FloorWrapVn_6 dataOut", false,-1, 7,0);
        tracep->declBus(c+107,"cal_phase calvn FloorWrapVn_7 din", false,-1, 11,0);
        tracep->declBus(c+90,"cal_phase calvn FloorWrapVn_7 dout", false,-1, 7,0);
        tracep->declBus(c+90,"cal_phase calvn FloorWrapVn_7 dataOut", false,-1, 7,0);
        tracep->declBit(c+66,"cal_phase dot en", false,-1);
        tracep->declBit(c+39,"cal_phase dot vn_vld", false,-1);
        tracep->declBus(c+31,"cal_phase dot vn_in_0", false,-1, 7,0);
        tracep->declBus(c+32,"cal_phase dot vn_in_1", false,-1, 7,0);
        tracep->declBus(c+33,"cal_phase dot vn_in_2", false,-1, 7,0);
        tracep->declBus(c+34,"cal_phase dot vn_in_3", false,-1, 7,0);
        tracep->declBus(c+35,"cal_phase dot vn_in_4", false,-1, 7,0);
        tracep->declBus(c+36,"cal_phase dot vn_in_5", false,-1, 7,0);
        tracep->declBus(c+37,"cal_phase dot vn_in_6", false,-1, 7,0);
        tracep->declBus(c+38,"cal_phase dot vn_in_7", false,-1, 7,0);
        tracep->declBus(c+3,"cal_phase dot psum_out1", false,-1, 15,0);
        tracep->declBus(c+4,"cal_phase dot psum_out2", false,-1, 15,0);
        tracep->declBit(c+80,"cal_phase dot psum_vld", false,-1);
        tracep->declBit(c+78,"cal_phase dot clk", false,-1);
        tracep->declBit(c+79,"cal_phase dot reset", false,-1);
        tracep->declBus(c+42,"cal_phase dot table_1_s1", false,-1, 18,0);
        tracep->declBus(c+43,"cal_phase dot table_1_s2", false,-1, 18,0);
        tracep->declBus(c+3,"cal_phase dot FloorWrapPsum1_dout", false,-1, 15,0);
        tracep->declBus(c+4,"cal_phase dot FloorWrapPsum2_dout", false,-1, 15,0);
        tracep->declBus(c+42,"cal_phase dot s1", false,-1, 18,0);
        tracep->declBus(c+43,"cal_phase dot s2", false,-1, 18,0);
        tracep->declBus(c+13,"cal_phase dot psum1", false,-1, 18,0);
        tracep->declBus(c+14,"cal_phase dot psum2", false,-1, 18,0);
        tracep->declBus(c+44,"cal_phase dot mac_cnt", false,-1, 2,0);
        tracep->declBit(c+45,"cal_phase dot mac_en", false,-1);
        tracep->declBit(c+46,"cal_phase dot mac_start", false,-1);
        tracep->declBit(c+47,"cal_phase dot mac_finish", false,-1);
        tracep->declBit(c+80,"cal_phase dot finish", false,-1);
        tracep->declBus(c+44,"cal_phase dot table_1 index", false,-1, 2,0);
        tracep->declBus(c+48,"cal_phase dot table_1 din", false,-1, 7,0);
        tracep->declBus(c+42,"cal_phase dot table_1 s1", false,-1, 18,0);
        tracep->declBus(c+43,"cal_phase dot table_1 s2", false,-1, 18,0);
        tracep->declBus(c+108,"cal_phase dot table_1 S_table_0", false,-1, 18,0);
        tracep->declBus(c+109,"cal_phase dot table_1 S_table_1", false,-1, 18,0);
        tracep->declBus(c+110,"cal_phase dot table_1 S_table_2", false,-1, 18,0);
        tracep->declBus(c+111,"cal_phase dot table_1 S_table_3", false,-1, 18,0);
        tracep->declBus(c+112,"cal_phase dot table_1 S_table_4", false,-1, 18,0);
        tracep->declBus(c+113,"cal_phase dot table_1 S_table_5", false,-1, 18,0);
        tracep->declBus(c+114,"cal_phase dot table_1 S_table_6", false,-1, 18,0);
        tracep->declBus(c+115,"cal_phase dot table_1 S_table_7", false,-1, 18,0);
        tracep->declBus(c+49,"cal_phase dot table_1 m128", false,-1, 15,0);
        tracep->declBus(c+50,"cal_phase dot table_1 m32", false,-1, 15,0);
        tracep->declBus(c+51,"cal_phase dot table_1 m16", false,-1, 15,0);
        tracep->declBus(c+52,"cal_phase dot table_1 m8", false,-1, 15,0);
        tracep->declBus(c+53,"cal_phase dot table_1 m4", false,-1, 15,0);
        tracep->declBus(c+54,"cal_phase dot table_1 m2", false,-1, 15,0);
        tracep->declBus(c+55,"cal_phase dot table_1 m1", false,-1, 15,0);
        tracep->declBit(c+56,"cal_phase dot table_1 din_msb", false,-1);
        tracep->declBus(c+57,"cal_phase dot table_1 tmp1", false,-1, 17,0);
        tracep->declBus(c+58,"cal_phase dot table_1 Coef12", false,-1, 18,0);
        tracep->declBus(c+59,"cal_phase dot table_1 Coef99", false,-1, 18,0);
        tracep->declBus(c+60,"cal_phase dot table_1 Coef127", false,-1, 18,0);
        tracep->declBus(c+61,"cal_phase dot table_1 Coef81", false,-1, 18,0);
        tracep->declBus(c+62,"cal_phase dot table_1 Coefm13", false,-1, 18,0);
        tracep->declBus(c+63,"cal_phase dot table_1 Coefm100", false,-1, 18,0);
        tracep->declBus(c+64,"cal_phase dot table_1 Coefm128", false,-1, 18,0);
        tracep->declBus(c+65,"cal_phase dot table_1 Coefm82", false,-1, 18,0);
        tracep->declBus(c+15,"cal_phase dot FloorWrapPsum1 din", false,-1, 16,0);
        tracep->declBus(c+3,"cal_phase dot FloorWrapPsum1 dout", false,-1, 15,0);
        tracep->declBus(c+3,"cal_phase dot FloorWrapPsum1 dataOut", false,-1, 15,0);
        tracep->declBus(c+16,"cal_phase dot FloorWrapPsum2 din", false,-1, 16,0);
        tracep->declBus(c+4,"cal_phase dot FloorWrapPsum2 dout", false,-1, 15,0);
        tracep->declBus(c+4,"cal_phase dot FloorWrapPsum2 dataOut", false,-1, 15,0);
        tracep->declBit(c+66,"cal_phase cordic en", false,-1);
        tracep->declBit(c+80,"cal_phase cordic vld", false,-1);
        tracep->declBus(c+4,"cal_phase cordic y", false,-1, 15,0);
        tracep->declBus(c+3,"cal_phase cordic x", false,-1, 15,0);
        tracep->declBus(c+5,"cal_phase cordic res", false,-1, 7,0);
        tracep->declBit(c+6,"cal_phase cordic res_vld", false,-1);
        tracep->declBit(c+78,"cal_phase cordic clk", false,-1);
        tracep->declBit(c+79,"cal_phase cordic reset", false,-1);
        tracep->declBus(c+17,"cal_phase cordic xn", false,-1, 21,0);
        tracep->declBus(c+18,"cal_phase cordic yn", false,-1, 21,0);
        tracep->declBus(c+5,"cal_phase cordic res_rg", false,-1, 7,0);
        tracep->declBus(c+19,"cal_phase cordic x_ext", false,-1, 21,0);
        tracep->declBus(c+20,"cal_phase cordic y_ext", false,-1, 21,0);
        tracep->declBus(c+21,"cal_phase cordic x_ins", false,-1, 21,0);
        tracep->declBus(c+22,"cal_phase cordic y_ins", false,-1, 21,0);
        tracep->declBus(c+23,"cal_phase cordic cal_cnt", false,-1, 2,0);
        tracep->declBit(c+24,"cal_phase cordic cal_en", false,-1);
        tracep->declBit(c+25,"cal_phase cordic cal_start", false,-1);
        tracep->declBit(c+26,"cal_phase cordic cal_finish", false,-1);
        tracep->declBit(c+6,"cal_phase cordic finish", false,-1);
        tracep->declBit(c+27,"cal_phase cordic nozero_flg", false,-1);
        tracep->declBus(c+28,"cal_phase cordic xn_rightshift", false,-1, 21,0);
        tracep->declBus(c+29,"cal_phase cordic yn_rightshift", false,-1, 21,0);
        tracep->declBus(c+30,"cal_phase cordic res_bias", false,-1, 7,0);
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
        tracep->fullBit(oldp+1,(vlSymsp->TOP__cal_phase.__PVT__res_last_vld));
        tracep->fullSData(oldp+2,(vlSymsp->TOP__cal_phase.__PVT__res_last),10);
        tracep->fullSData(oldp+3,((0xffffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1 
                                              >> 2U))),16);
        tracep->fullSData(oldp+4,((0xffffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2 
                                              >> 2U))),16);
        tracep->fullCData(oldp+5,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__res_rg),8);
        tracep->fullBit(oldp+6,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__finish));
        tracep->fullBit(oldp+7,(vlSymsp->TOP__cal_phase.__PVT__LastA2stZero));
        tracep->fullCData(oldp+8,(vlSymsp->TOP__cal_phase.__PVT__ph_now),8);
        tracep->fullCData(oldp+9,(vlSymsp->TOP__cal_phase.__PVT__ph_last),8);
        tracep->fullSData(oldp+10,(vlSymsp->TOP__cal_phase.__PVT__ph_delta),9);
        tracep->fullSData(oldp+11,((0x1ffU & (((0x100U 
                                                & (IData)(vlSymsp->TOP__cal_phase.__PVT__ph_delta))
                                                ? (~ (IData)(vlSymsp->TOP__cal_phase.__PVT__ph_delta))
                                                : (IData)(vlSymsp->TOP__cal_phase.__PVT__ph_delta)) 
                                              + (1U 
                                                 & ((IData)(vlSymsp->TOP__cal_phase.__PVT__ph_delta) 
                                                    >> 8U))))),9);
        tracep->fullBit(oldp+12,((0x40U < (0x1ffU & 
                                           (((0x100U 
                                              & (IData)(vlSymsp->TOP__cal_phase.__PVT__ph_delta))
                                              ? (~ (IData)(vlSymsp->TOP__cal_phase.__PVT__ph_delta))
                                              : (IData)(vlSymsp->TOP__cal_phase.__PVT__ph_delta)) 
                                            + (1U & 
                                               ((IData)(vlSymsp->TOP__cal_phase.__PVT__ph_delta) 
                                                >> 8U)))))));
        tracep->fullIData(oldp+13,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1),19);
        tracep->fullIData(oldp+14,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2),19);
        tracep->fullIData(oldp+15,((0x1ffffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum1 
                                                >> 2U))),17);
        tracep->fullIData(oldp+16,((0x1ffffU & (vlSymsp->TOP__cal_phase.__PVT__dot__DOT__psum2 
                                                >> 2U))),17);
        tracep->fullIData(oldp+17,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn),22);
        tracep->fullIData(oldp+18,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn),22);
        tracep->fullIData(oldp+19,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__x_ext),22);
        tracep->fullIData(oldp+20,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__y_ext),22);
        tracep->fullIData(oldp+21,((0x3fffffU & (- vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__x_ext))),22);
        tracep->fullIData(oldp+22,((0x3fffffU & (- vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__y_ext))),22);
        tracep->fullCData(oldp+23,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt),3);
        tracep->fullBit(oldp+24,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_en));
        tracep->fullBit(oldp+25,((0U == (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt))));
        tracep->fullBit(oldp+26,((5U == (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt))));
        tracep->fullBit(oldp+27,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__nozero_flg));
        tracep->fullIData(oldp+28,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__xn_rightshift),22);
        tracep->fullIData(oldp+29,(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__yn_rightshift),22);
        tracep->fullCData(oldp+30,((0xffU & ((IData)(1U) 
                                             << (7U 
                                                 & ((IData)(5U) 
                                                    - (IData)(vlSymsp->TOP__cal_phase.__PVT__cordic__DOT__cal_cnt)))))),8);
        tracep->fullCData(oldp+31,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_0),8);
        tracep->fullCData(oldp+32,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_1),8);
        tracep->fullCData(oldp+33,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_2),8);
        tracep->fullCData(oldp+34,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_3),8);
        tracep->fullCData(oldp+35,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_4),8);
        tracep->fullCData(oldp+36,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_5),8);
        tracep->fullCData(oldp+37,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_6),8);
        tracep->fullCData(oldp+38,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__VnReg_7),8);
        tracep->fullBit(oldp+39,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__in_vld_dly2));
        tracep->fullBit(oldp+40,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__in_vld_dly1));
        tracep->fullSData(oldp+41,(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg),11);
        tracep->fullIData(oldp+42,((0x7ffffU & ((4U 
                                                 & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                 ? 
                                                ((2U 
                                                  & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                  ? 
                                                 ((1U 
                                                   & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                   ? vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_38
                                                   : vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coefm128)
                                                  : 
                                                 ((1U 
                                                   & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                   ? vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coefm100
                                                   : vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_32))
                                                 : 
                                                ((2U 
                                                  & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                  ? 
                                                 ((1U 
                                                   & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                   ? vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef81
                                                   : vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef127)
                                                  : 
                                                 ((1U 
                                                   & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                   ? vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_19
                                                   : vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef12))))),19);
        tracep->fullIData(oldp+43,((0x7ffffU & ((4U 
                                                 & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                 ? 
                                                ((2U 
                                                  & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                  ? 
                                                 ((1U 
                                                   & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                   ? vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_19
                                                   : vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef12)
                                                  : 
                                                 ((1U 
                                                   & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                   ? vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_38
                                                   : vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coefm128))
                                                 : 
                                                ((2U 
                                                  & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                  ? 
                                                 ((1U 
                                                   & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                   ? vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coefm100
                                                   : vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_32)
                                                  : 
                                                 ((1U 
                                                   & (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))
                                                   ? vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef81
                                                   : vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef127))))),19);
        tracep->fullCData(oldp+44,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt),3);
        tracep->fullBit(oldp+45,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_en));
        tracep->fullBit(oldp+46,((0U == (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))));
        tracep->fullBit(oldp+47,((7U == (IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__mac_cnt))));
        tracep->fullCData(oldp+48,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4),8);
        tracep->fullSData(oldp+49,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m128),16);
        tracep->fullSData(oldp+50,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m32),16);
        tracep->fullSData(oldp+51,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m16),16);
        tracep->fullSData(oldp+52,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m8),16);
        tracep->fullSData(oldp+53,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m4),16);
        tracep->fullSData(oldp+54,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__m2),16);
        tracep->fullSData(oldp+55,(((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                                    << 8U)),16);
        tracep->fullBit(oldp+56,((1U & ((IData)(vlSymsp->TOP__cal_phase.__PVT__dot__DOT___zz_4) 
                                        >> 7U))));
        tracep->fullIData(oldp+57,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__tmp1),18);
        tracep->fullIData(oldp+58,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef12),19);
        tracep->fullIData(oldp+59,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_19),19);
        tracep->fullIData(oldp+60,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef127),19);
        tracep->fullIData(oldp+61,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coef81),19);
        tracep->fullIData(oldp+62,((0x7ffffU & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_32)),19);
        tracep->fullIData(oldp+63,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coefm100),19);
        tracep->fullIData(oldp+64,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__Coefm128),19);
        tracep->fullIData(oldp+65,((0x7ffffU & vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT___zz_38)),19);
        tracep->fullBit(oldp+66,(vlTOPp->en));
        tracep->fullBit(oldp+67,(vlTOPp->vin_vld));
        tracep->fullCData(oldp+68,(vlTOPp->v_in_0),8);
        tracep->fullCData(oldp+69,(vlTOPp->v_in_1),8);
        tracep->fullCData(oldp+70,(vlTOPp->v_in_2),8);
        tracep->fullCData(oldp+71,(vlTOPp->v_in_3),8);
        tracep->fullCData(oldp+72,(vlTOPp->v_in_4),8);
        tracep->fullCData(oldp+73,(vlTOPp->v_in_5),8);
        tracep->fullCData(oldp+74,(vlTOPp->v_in_6),8);
        tracep->fullCData(oldp+75,(vlTOPp->v_in_7),8);
        tracep->fullBit(oldp+76,(vlTOPp->res_vld));
        tracep->fullSData(oldp+77,(vlTOPp->res),10);
        tracep->fullBit(oldp+78,(vlTOPp->clk));
        tracep->fullBit(oldp+79,(vlTOPp->reset));
        tracep->fullBit(oldp+80,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__finish));
        tracep->fullBit(oldp+81,(vlSymsp->TOP__cal_phase.ph_vld));
        tracep->fullBit(oldp+82,(vlSymsp->TOP__cal_phase.ph_vld_dly1));
        tracep->fullCData(oldp+83,((0xffU & ((((0x800U 
                                                & ((IData)(vlTOPp->v_in_0) 
                                                   << 4U)) 
                                               | ((IData)(vlTOPp->v_in_0) 
                                                  << 3U)) 
                                              - ((0x800U 
                                                  & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                     << 1U)) 
                                                 | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))) 
                                             >> 3U))),8);
        tracep->fullCData(oldp+84,((0xffU & ((((0x800U 
                                                & ((IData)(vlTOPp->v_in_1) 
                                                   << 4U)) 
                                               | ((IData)(vlTOPp->v_in_1) 
                                                  << 3U)) 
                                              - ((0x800U 
                                                  & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                     << 1U)) 
                                                 | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))) 
                                             >> 3U))),8);
        tracep->fullCData(oldp+85,((0xffU & ((((0x800U 
                                                & ((IData)(vlTOPp->v_in_2) 
                                                   << 4U)) 
                                               | ((IData)(vlTOPp->v_in_2) 
                                                  << 3U)) 
                                              - ((0x800U 
                                                  & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                     << 1U)) 
                                                 | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))) 
                                             >> 3U))),8);
        tracep->fullCData(oldp+86,((0xffU & ((((0x800U 
                                                & ((IData)(vlTOPp->v_in_3) 
                                                   << 4U)) 
                                               | ((IData)(vlTOPp->v_in_3) 
                                                  << 3U)) 
                                              - ((0x800U 
                                                  & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                     << 1U)) 
                                                 | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))) 
                                             >> 3U))),8);
        tracep->fullCData(oldp+87,((0xffU & ((((0x800U 
                                                & ((IData)(vlTOPp->v_in_4) 
                                                   << 4U)) 
                                               | ((IData)(vlTOPp->v_in_4) 
                                                  << 3U)) 
                                              - ((0x800U 
                                                  & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                     << 1U)) 
                                                 | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))) 
                                             >> 3U))),8);
        tracep->fullCData(oldp+88,((0xffU & ((((0x800U 
                                                & ((IData)(vlTOPp->v_in_5) 
                                                   << 4U)) 
                                               | ((IData)(vlTOPp->v_in_5) 
                                                  << 3U)) 
                                              - ((0x800U 
                                                  & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                     << 1U)) 
                                                 | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))) 
                                             >> 3U))),8);
        tracep->fullCData(oldp+89,((0xffU & ((((0x800U 
                                                & ((IData)(vlTOPp->v_in_6) 
                                                   << 4U)) 
                                               | ((IData)(vlTOPp->v_in_6) 
                                                  << 3U)) 
                                              - ((0x800U 
                                                  & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                     << 1U)) 
                                                 | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))) 
                                             >> 3U))),8);
        tracep->fullCData(oldp+90,((0xffU & ((((0x800U 
                                                & ((IData)(vlTOPp->v_in_7) 
                                                   << 4U)) 
                                               | ((IData)(vlTOPp->v_in_7) 
                                                  << 3U)) 
                                              - ((0x800U 
                                                  & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                     << 1U)) 
                                                 | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))) 
                                             >> 3U))),8);
        tracep->fullSData(oldp+91,((0x7ffU & (((0x400U 
                                                & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_5) 
                                                   << 1U)) 
                                               | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_5)) 
                                              + ((0x400U 
                                                  & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_6) 
                                                     << 1U)) 
                                                 | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT___zz_6))))),11);
        tracep->fullSData(oldp+92,(((IData)(vlTOPp->v_in_0) 
                                    << 3U)),11);
        tracep->fullSData(oldp+93,(((IData)(vlTOPp->v_in_1) 
                                    << 3U)),11);
        tracep->fullSData(oldp+94,(((IData)(vlTOPp->v_in_2) 
                                    << 3U)),11);
    }
}

void Vcal_phase::traceFullSub1(void* userp, VerilatedVcd* tracep) {
    Vcal_phase__Syms* __restrict vlSymsp = static_cast<Vcal_phase__Syms*>(userp);
    Vcal_phase* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* const oldp = tracep->oldp(vlSymsp->__Vm_baseCode);
    if (false && oldp) {}  // Prevent unused
    // Body
    {
        tracep->fullSData(oldp+95,(((IData)(vlTOPp->v_in_3) 
                                    << 3U)),11);
        tracep->fullSData(oldp+96,(((IData)(vlTOPp->v_in_4) 
                                    << 3U)),11);
        tracep->fullSData(oldp+97,(((IData)(vlTOPp->v_in_5) 
                                    << 3U)),11);
        tracep->fullSData(oldp+98,(((IData)(vlTOPp->v_in_6) 
                                    << 3U)),11);
        tracep->fullSData(oldp+99,(((IData)(vlTOPp->v_in_7) 
                                    << 3U)),11);
        tracep->fullSData(oldp+100,((0xfffU & (((0x800U 
                                                 & ((IData)(vlTOPp->v_in_0) 
                                                    << 4U)) 
                                                | ((IData)(vlTOPp->v_in_0) 
                                                   << 3U)) 
                                               - ((0x800U 
                                                   & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                      << 1U)) 
                                                  | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))))),12);
        tracep->fullSData(oldp+101,((0xfffU & (((0x800U 
                                                 & ((IData)(vlTOPp->v_in_1) 
                                                    << 4U)) 
                                                | ((IData)(vlTOPp->v_in_1) 
                                                   << 3U)) 
                                               - ((0x800U 
                                                   & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                      << 1U)) 
                                                  | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))))),12);
        tracep->fullSData(oldp+102,((0xfffU & (((0x800U 
                                                 & ((IData)(vlTOPp->v_in_2) 
                                                    << 4U)) 
                                                | ((IData)(vlTOPp->v_in_2) 
                                                   << 3U)) 
                                               - ((0x800U 
                                                   & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                      << 1U)) 
                                                  | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))))),12);
        tracep->fullSData(oldp+103,((0xfffU & (((0x800U 
                                                 & ((IData)(vlTOPp->v_in_3) 
                                                    << 4U)) 
                                                | ((IData)(vlTOPp->v_in_3) 
                                                   << 3U)) 
                                               - ((0x800U 
                                                   & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                      << 1U)) 
                                                  | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))))),12);
        tracep->fullSData(oldp+104,((0xfffU & (((0x800U 
                                                 & ((IData)(vlTOPp->v_in_4) 
                                                    << 4U)) 
                                                | ((IData)(vlTOPp->v_in_4) 
                                                   << 3U)) 
                                               - ((0x800U 
                                                   & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                      << 1U)) 
                                                  | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))))),12);
        tracep->fullSData(oldp+105,((0xfffU & (((0x800U 
                                                 & ((IData)(vlTOPp->v_in_5) 
                                                    << 4U)) 
                                                | ((IData)(vlTOPp->v_in_5) 
                                                   << 3U)) 
                                               - ((0x800U 
                                                   & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                      << 1U)) 
                                                  | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))))),12);
        tracep->fullSData(oldp+106,((0xfffU & (((0x800U 
                                                 & ((IData)(vlTOPp->v_in_6) 
                                                    << 4U)) 
                                                | ((IData)(vlTOPp->v_in_6) 
                                                   << 3U)) 
                                               - ((0x800U 
                                                   & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                      << 1U)) 
                                                  | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))))),12);
        tracep->fullSData(oldp+107,((0xfffU & (((0x800U 
                                                 & ((IData)(vlTOPp->v_in_7) 
                                                    << 4U)) 
                                                | ((IData)(vlTOPp->v_in_7) 
                                                   << 3U)) 
                                               - ((0x800U 
                                                   & ((IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg) 
                                                      << 1U)) 
                                                  | (IData)(vlSymsp->TOP__cal_phase.__PVT__calvn__DOT__SumXinReg))))),12);
        tracep->fullIData(oldp+108,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__S_table_0),19);
        tracep->fullIData(oldp+109,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__S_table_1),19);
        tracep->fullIData(oldp+110,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__S_table_2),19);
        tracep->fullIData(oldp+111,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__S_table_3),19);
        tracep->fullIData(oldp+112,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__S_table_4),19);
        tracep->fullIData(oldp+113,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__S_table_5),19);
        tracep->fullIData(oldp+114,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__S_table_6),19);
        tracep->fullIData(oldp+115,(vlSymsp->TOP__cal_phase.__PVT__dot__DOT__table_1__DOT__S_table_7),19);
    }
}
