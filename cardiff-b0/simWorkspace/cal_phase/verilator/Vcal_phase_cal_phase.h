// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vcal_phase.h for the primary calling header

#ifndef _VCAL_PHASE_CAL_PHASE_H_
#define _VCAL_PHASE_CAL_PHASE_H_  // guard

#include "verilated.h"
#include "Vcal_phase__Dpi.h"

//==========

class Vcal_phase__Syms;
class Vcal_phase_VerilatedVcd;


//----------

VL_MODULE(Vcal_phase_cal_phase) {
  public:
    
    // PORTS
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
    VL_IN8(rg_ac_table_0,1,0);
    VL_IN8(rg_ac_table_1,1,0);
    VL_IN8(rg_ac_table_2,1,0);
    VL_IN8(rg_ac_table_3,1,0);
    VL_IN8(rg_ac_table_4,1,0);
    VL_IN8(rg_ac_table_5,1,0);
    VL_IN8(rg_ac_table_6,1,0);
    VL_IN8(rg_ac_table_7,1,0);
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
    
    // LOCAL SIGNALS
    // Anonymous structures to workaround compiler member-count bugs
    struct {
        CData/*7:0*/ __PVT__vin1_reg;
        CData/*7:0*/ __PVT__vin2_reg;
        CData/*0:0*/ __PVT__vin_vld_reg;
        CData/*0:0*/ ph_vld;
        CData/*0:0*/ __PVT__calvn__DOT__vin_vld_d1;
        CData/*0:0*/ __PVT__calvn__DOT__vin_vld_d2;
        CData/*7:0*/ __PVT__calvn__DOT__vin1_bias_shift;
        CData/*7:0*/ __PVT__calvn__DOT__vin2_bias_shift;
        CData/*7:0*/ __PVT__calvn__DOT__V_bias_ac_0;
        CData/*7:0*/ __PVT__calvn__DOT__V_bias_ac_1;
        CData/*7:0*/ __PVT__calvn__DOT__V_bias_ac_2;
        CData/*7:0*/ __PVT__calvn__DOT__V_bias_ac_3;
        CData/*7:0*/ __PVT__calvn__DOT__V_bias_ac_4;
        CData/*7:0*/ __PVT__calvn__DOT__V_bias_ac_5;
        CData/*7:0*/ __PVT__calvn__DOT__V_bias_ac_6;
        CData/*7:0*/ __PVT__calvn__DOT__V_bias_ac_7;
        CData/*2:0*/ __PVT__calvn__DOT__v_cnt;
        CData/*7:0*/ __PVT__calvn__DOT__bigger;
        CData/*7:0*/ __PVT__calvn__DOT__smaller;
        CData/*7:0*/ __PVT__calvn__DOT__max_v;
        CData/*7:0*/ __PVT__calvn__DOT__min_v;
        CData/*0:0*/ __PVT__calvn__DOT__v1gtv2;
        CData/*0:0*/ __PVT__calvn__DOT__data_load_finish;
        CData/*0:0*/ __PVT__calvn__DOT__mean_finish_regNext;
        CData/*0:0*/ __PVT__dot__DOT__booth_sin_io_dout_vld;
        CData/*7:0*/ __PVT__dot__DOT__vin_minus_mean;
        CData/*2:0*/ __PVT__dot__DOT__mac_cnt;
        CData/*0:0*/ __PVT__dot__DOT__mac_en;
        CData/*0:0*/ __PVT__dot__DOT__mac_start;
        CData/*0:0*/ __PVT__dot__DOT__finish;
        CData/*0:0*/ __PVT__dot__DOT__booth_start;
        CData/*7:0*/ __PVT__dot__DOT__booth_sin__DOT__Breg;
        CData/*1:0*/ __PVT__dot__DOT__booth_sin__DOT__cal_cnt;
        CData/*0:0*/ __PVT__dot__DOT__booth_sin__DOT__cal_en;
        CData/*0:0*/ __PVT__dot__DOT__booth_sin__DOT__cal_en_regNext;
        CData/*7:0*/ __PVT__dot__DOT__booth_cos__DOT__Breg;
        CData/*1:0*/ __PVT__dot__DOT__booth_cos__DOT__cal_cnt;
        CData/*0:0*/ __PVT__dot__DOT__booth_cos__DOT__cal_en;
        CData/*0:0*/ __PVT__dot__DOT__booth_cos__DOT__cal_en_regNext;
        CData/*6:0*/ __PVT__cordic__DOT___zz_7;
        CData/*2:0*/ __PVT__cordic__DOT___zz_2;
        CData/*2:0*/ __PVT__cordic__DOT___zz_4;
        CData/*2:0*/ __PVT__cordic__DOT__cal_cnt;
        CData/*0:0*/ __PVT__cordic__DOT__cal_en;
        CData/*0:0*/ __PVT__cordic__DOT__cal_start;
        CData/*0:0*/ __PVT__cordic__DOT__cal_finish;
        CData/*0:0*/ __PVT__cordic__DOT__finish;
        CData/*0:0*/ __PVT__cordic__DOT__nozero_flg;
        CData/*0:0*/ __PVT__cordic__DOT__cal_en_regNext;
        CData/*0:0*/ __PVT__cordic__DOT__cal_start_regNext;
        CData/*0:0*/ __PVT__cordic__DOT__nozero_flg_regNext;
        CData/*0:0*/ __PVT__cordic__DOT__cal_finish_delay;
        SData/*8:0*/ __PVT__calvn__DOT___zz_3;
        SData/*15:0*/ __PVT__dot__DOT___zz_1;
        SData/*15:0*/ __PVT__dot__DOT___zz_2;
        SData/*9:0*/ __PVT__dot__DOT__booth_sin__DOT__PositiveB;
        SData/*9:0*/ __PVT__dot__DOT__booth_sin__DOT__AddB;
        SData/*9:0*/ __PVT__dot__DOT__booth_sin__DOT__MinusB;
        SData/*9:0*/ __PVT__dot__DOT__booth_cos__DOT__PositiveB;
        SData/*9:0*/ __PVT__dot__DOT__booth_cos__DOT__AddB;
        SData/*9:0*/ __PVT__dot__DOT__booth_cos__DOT__MinusB;
        SData/*10:0*/ __PVT__cordic__DOT__res_rg;
        SData/*9:0*/ __PVT__cordic__DOT__res_out;
        IData/*18:0*/ __PVT__dot__DOT__s1;
    };
    struct {
        IData/*18:0*/ __PVT__dot__DOT__s2;
        IData/*18:0*/ __PVT__dot__DOT__psum1;
        IData/*18:0*/ __PVT__dot__DOT__psum2;
        IData/*18:0*/ __PVT__dot__DOT__booth_sin__DOT___zz_2;
        IData/*18:0*/ __PVT__dot__DOT__booth_sin__DOT__shiftReg;
        IData/*18:0*/ __PVT__dot__DOT__booth_cos__DOT___zz_2;
        IData/*18:0*/ __PVT__dot__DOT__booth_cos__DOT__shiftReg;
        IData/*18:0*/ __PVT__cordic__DOT__xn;
        IData/*18:0*/ __PVT__cordic__DOT__yn;
        IData/*18:0*/ __PVT__cordic__DOT__x_ext;
        IData/*18:0*/ __PVT__cordic__DOT__y_ext;
        IData/*18:0*/ __PVT__cordic__DOT__xn_rightshift;
        IData/*18:0*/ __PVT__cordic__DOT__yn_rightshift;
    };
    
    // LOCAL VARIABLES
    CData/*2:0*/ __Vtableidx1;
    CData/*2:0*/ __Vdly__calvn__DOT__v_cnt;
    CData/*7:0*/ __Vdly__calvn__DOT__max_v;
    CData/*7:0*/ __Vdly__calvn__DOT__min_v;
    CData/*2:0*/ __Vdly__dot__DOT__mac_cnt;
    CData/*1:0*/ __Vdly__dot__DOT__booth_sin__DOT__cal_cnt;
    CData/*0:0*/ __Vdly__dot__DOT__booth_sin__DOT__cal_en;
    CData/*1:0*/ __Vdly__dot__DOT__booth_cos__DOT__cal_cnt;
    CData/*0:0*/ __Vdly__dot__DOT__booth_cos__DOT__cal_en;
    CData/*2:0*/ __Vdly__cordic__DOT__cal_cnt;
    CData/*0:0*/ __Vdly__cordic__DOT__nozero_flg;
    SData/*10:0*/ __Vdly__cordic__DOT__res_rg;
    IData/*18:0*/ __Vdly__dot__DOT__psum2;
    IData/*18:0*/ __Vdly__dot__DOT__psum1;
    IData/*18:0*/ __Vdly__cordic__DOT__xn;
    IData/*18:0*/ __Vdly__cordic__DOT__yn;
    static CData/*6:0*/ __Vtable1___PVT__cordic__DOT___zz_7[8];
    
    // INTERNAL VARIABLES
  private:
    Vcal_phase__Syms* __VlSymsp;  // Symbol table
  public:
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vcal_phase_cal_phase);  ///< Copying not allowed
  public:
    Vcal_phase_cal_phase(const char* name = "TOP");
    ~Vcal_phase_cal_phase();
    
    // INTERNAL METHODS
    void __Vconfigure(Vcal_phase__Syms* symsp, bool first);
    static void _combo__TOP__cal_phase__9(Vcal_phase__Syms* __restrict vlSymsp);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _sequent__TOP__cal_phase__1(Vcal_phase__Syms* __restrict vlSymsp);
    static void _sequent__TOP__cal_phase__3(Vcal_phase__Syms* __restrict vlSymsp);
    static void _sequent__TOP__cal_phase__4(Vcal_phase__Syms* __restrict vlSymsp);
    static void _sequent__TOP__cal_phase__5(Vcal_phase__Syms* __restrict vlSymsp);
    static void _sequent__TOP__cal_phase__6(Vcal_phase__Syms* __restrict vlSymsp);
    static void _settle__TOP__cal_phase__7(Vcal_phase__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _settle__TOP__cal_phase__8(Vcal_phase__Syms* __restrict vlSymsp) VL_ATTR_COLD;
  private:
    static void traceInit(void* userp, VerilatedVcd* tracep, uint32_t code) VL_ATTR_COLD;
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
