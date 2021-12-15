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
    VL_IN8(en,0,0);
    VL_IN8(vin_vld,0,0);
    VL_IN8(v_in_0,7,0);
    VL_IN8(v_in_1,7,0);
    VL_IN8(v_in_2,7,0);
    VL_IN8(v_in_3,7,0);
    VL_IN8(v_in_4,7,0);
    VL_IN8(v_in_5,7,0);
    VL_IN8(v_in_6,7,0);
    VL_IN8(v_in_7,7,0);
    VL_OUT8(res_vld,0,0);
    VL_OUT16(res,9,0);
    
    // LOCAL SIGNALS
    // Anonymous structures to workaround compiler member-count bugs
    struct {
        CData/*0:0*/ ph_vld;
        CData/*0:0*/ __PVT__LastA2stZero;
        CData/*7:0*/ __PVT__ph_now;
        CData/*7:0*/ __PVT__ph_last;
        CData/*0:0*/ ph_vld_dly1;
        CData/*0:0*/ __PVT__res_last_vld;
        CData/*0:0*/ __PVT__calvn__DOT__in_vld_dly1;
        CData/*0:0*/ __PVT__calvn__DOT__in_vld_dly2;
        CData/*7:0*/ __PVT__calvn__DOT__VnReg_0;
        CData/*7:0*/ __PVT__calvn__DOT__VnReg_1;
        CData/*7:0*/ __PVT__calvn__DOT__VnReg_2;
        CData/*7:0*/ __PVT__calvn__DOT__VnReg_3;
        CData/*7:0*/ __PVT__calvn__DOT__VnReg_4;
        CData/*7:0*/ __PVT__calvn__DOT__VnReg_5;
        CData/*7:0*/ __PVT__calvn__DOT__VnReg_6;
        CData/*7:0*/ __PVT__calvn__DOT__VnReg_7;
        CData/*7:0*/ __PVT__dot__DOT___zz_4;
        CData/*2:0*/ __PVT__dot__DOT__mac_cnt;
        CData/*0:0*/ __PVT__dot__DOT__mac_en;
        CData/*0:0*/ __PVT__dot__DOT__mac_start;
        CData/*0:0*/ __PVT__dot__DOT__finish;
        CData/*6:0*/ __PVT__dot__DOT__table_1__DOT___zz_1;
        CData/*4:0*/ __PVT__dot__DOT__table_1__DOT___zz_2;
        CData/*3:0*/ __PVT__dot__DOT__table_1__DOT___zz_3;
        CData/*2:0*/ __PVT__dot__DOT__table_1__DOT___zz_4;
        CData/*1:0*/ __PVT__dot__DOT__table_1__DOT___zz_5;
        CData/*2:0*/ __PVT__cordic__DOT___zz_8;
        CData/*7:0*/ __PVT__cordic__DOT__res_rg;
        CData/*1:0*/ __PVT__cordic__DOT___zz_2;
        CData/*1:0*/ __PVT__cordic__DOT___zz_4;
        CData/*2:0*/ __PVT__cordic__DOT__cal_cnt;
        CData/*0:0*/ __PVT__cordic__DOT__cal_en;
        CData/*0:0*/ __PVT__cordic__DOT__cal_start;
        CData/*0:0*/ __PVT__cordic__DOT__finish;
        CData/*0:0*/ __PVT__cordic__DOT__nozero_flg;
        SData/*8:0*/ __PVT__ph_delta;
        SData/*9:0*/ __PVT__res_last;
        SData/*10:0*/ __PVT__calvn__DOT__SumXinReg;
        SData/*8:0*/ __PVT__calvn__DOT___zz_1;
        SData/*8:0*/ __PVT__calvn__DOT___zz_2;
        SData/*8:0*/ __PVT__calvn__DOT___zz_3;
        SData/*8:0*/ __PVT__calvn__DOT___zz_4;
        SData/*9:0*/ __PVT__calvn__DOT___zz_5;
        SData/*9:0*/ __PVT__calvn__DOT___zz_6;
        SData/*15:0*/ __PVT__dot__DOT__table_1__DOT__m128;
        SData/*15:0*/ __PVT__dot__DOT__table_1__DOT__m32;
        SData/*15:0*/ __PVT__dot__DOT__table_1__DOT__m16;
        SData/*15:0*/ __PVT__dot__DOT__table_1__DOT__m8;
        SData/*15:0*/ __PVT__dot__DOT__table_1__DOT__m4;
        SData/*15:0*/ __PVT__dot__DOT__table_1__DOT__m2;
        IData/*18:0*/ __PVT__dot__DOT__table_1_s1;
        IData/*18:0*/ __PVT__dot__DOT__table_1_s2;
        IData/*18:0*/ __PVT__dot__DOT__psum1;
        IData/*18:0*/ __PVT__dot__DOT__psum2;
        IData/*16:0*/ __PVT__dot__DOT__table_1__DOT___zz_14;
        IData/*16:0*/ __PVT__dot__DOT__table_1__DOT___zz_16;
        IData/*18:0*/ __PVT__dot__DOT__table_1__DOT___zz_19;
        IData/*16:0*/ __PVT__dot__DOT__table_1__DOT___zz_23;
        IData/*17:0*/ __PVT__dot__DOT__table_1__DOT___zz_28;
        IData/*16:0*/ __PVT__dot__DOT__table_1__DOT___zz_30;
        IData/*19:0*/ __PVT__dot__DOT__table_1__DOT___zz_32;
        IData/*19:0*/ __PVT__dot__DOT__table_1__DOT___zz_38;
        IData/*18:0*/ __PVT__dot__DOT__table_1__DOT__S_table_0;
        IData/*18:0*/ __PVT__dot__DOT__table_1__DOT__S_table_1;
    };
    struct {
        IData/*18:0*/ __PVT__dot__DOT__table_1__DOT__S_table_2;
        IData/*18:0*/ __PVT__dot__DOT__table_1__DOT__S_table_3;
        IData/*18:0*/ __PVT__dot__DOT__table_1__DOT__S_table_4;
        IData/*18:0*/ __PVT__dot__DOT__table_1__DOT__S_table_5;
        IData/*18:0*/ __PVT__dot__DOT__table_1__DOT__S_table_6;
        IData/*18:0*/ __PVT__dot__DOT__table_1__DOT__S_table_7;
        IData/*17:0*/ __PVT__dot__DOT__table_1__DOT__tmp1;
        IData/*16:0*/ __PVT__dot__DOT__table_1__DOT___zz_7;
        IData/*18:0*/ __PVT__dot__DOT__table_1__DOT__Coef12;
        IData/*18:0*/ __PVT__dot__DOT__table_1__DOT__Coef127;
        IData/*18:0*/ __PVT__dot__DOT__table_1__DOT__Coef81;
        IData/*18:0*/ __PVT__dot__DOT__table_1__DOT__Coefm100;
        IData/*18:0*/ __PVT__dot__DOT__table_1__DOT__Coefm128;
        IData/*16:0*/ __PVT__dot__DOT__table_1__DOT___zz_8;
        IData/*21:0*/ __PVT__cordic__DOT__xn;
        IData/*21:0*/ __PVT__cordic__DOT__yn;
        IData/*21:0*/ __PVT__cordic__DOT__x_ext;
        IData/*21:0*/ __PVT__cordic__DOT__y_ext;
        IData/*21:0*/ __PVT__cordic__DOT__xn_rightshift;
        IData/*21:0*/ __PVT__cordic__DOT__yn_rightshift;
    };
    
    // LOCAL VARIABLES
    CData/*2:0*/ __Vdly__dot__DOT__mac_cnt;
    
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
    static void _combo__TOP__cal_phase__1(Vcal_phase__Syms* __restrict vlSymsp);
    static void _combo__TOP__cal_phase__10(Vcal_phase__Syms* __restrict vlSymsp);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _sequent__TOP__cal_phase__5(Vcal_phase__Syms* __restrict vlSymsp);
    static void _sequent__TOP__cal_phase__6(Vcal_phase__Syms* __restrict vlSymsp);
    static void _sequent__TOP__cal_phase__7(Vcal_phase__Syms* __restrict vlSymsp);
    static void _sequent__TOP__cal_phase__8(Vcal_phase__Syms* __restrict vlSymsp);
    static void _sequent__TOP__cal_phase__9(Vcal_phase__Syms* __restrict vlSymsp);
    static void _settle__TOP__cal_phase__2(Vcal_phase__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _settle__TOP__cal_phase__3(Vcal_phase__Syms* __restrict vlSymsp) VL_ATTR_COLD;
  private:
    static void traceInit(void* userp, VerilatedVcd* tracep, uint32_t code) VL_ATTR_COLD;
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
