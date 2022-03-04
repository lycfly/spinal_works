import spinal.sim._
import spinal.core._
import spinal.core.sim._
import spinal.lib._
import spinal.lib.fsm._
import scala.util.Random
import scala.language.postfixOps

class cal_vn (N: Int, SizeIn: Int) extends Component {
  val io = new Bundle {
    val en = in Bool()
    val rg_bypass_mean = in Bool()
    val valid_num = in UInt(3 bits)
    val vin_vld = in Bool()
    val vin1 = in UInt(SizeIn bits)
    val vin2 = in UInt(SizeIn bits)
    val rg_leakage_table = in Vec(UInt(SizeIn bits), N)
    val rg_ac_table = in Vec(UInt(2 bits), N)
    val mean = out SInt(SizeIn bits)
    val vn = out Vec(SInt(SizeIn bits), N)
    val finish = out Bool()
  }
  noIoPrefix()
  val logN = log2Up(N)
  val vin_vld_d1 = RegNext(io.vin_vld, Bool(false))
  val vin_vld_d2 = RegNext(vin_vld_d1, Bool(false))

  val vin1_bias_shift = UInt(SizeIn bits)
  val vin2_bias_shift = UInt(SizeIn bits)
  val vin1_bias_shift_norm = SInt(SizeIn bits)
  val vin2_bias_shift_norm = SInt(SizeIn bits)

  val V_bias_ac = Vec(Reg(SInt(SizeIn bits)) init(0),  N)
//  val V_ac = Vec(Reg(SInt(SizeIn bits)) init(0),  N)

  val v_cnt = Reg(UInt(3 bits)) init(0)
  val v_cnt_group0 = UInt()
  val v_cnt_group1 = UInt()
  val bigger = SInt(SizeIn bits)
  val smaller = SInt(SizeIn bits)
  val max_v  = Reg(SInt(SizeIn bits)) init(0)
  val min_v  = Reg(SInt(SizeIn bits)) init(0)
  val mean_finish = Bool()
  val v1gtv2 = Bool()
  val data_load_finish = Bool()
  v_cnt_group0 := (v_cnt|<<1)
  v_cnt_group1 := (v_cnt|<<1)+1
  v1gtv2 := vin1_bias_shift_norm > vin2_bias_shift_norm
  bigger := Mux(v1gtv2 , vin1_bias_shift_norm , vin2_bias_shift_norm)
  smaller := Mux(v1gtv2 , vin2_bias_shift_norm , vin1_bias_shift_norm)
  data_load_finish := v_cnt === io.valid_num -1
  io.mean := ((max_v |>>1 ) +^ (min_v |>>1 )).sat(1)
  mean_finish := io.en & io.vin_vld & data_load_finish
  io.finish := RegNext(mean_finish) init(false)

//  for(i <- (0 until N)){
//    V_ac(i) := V_bias(i).asSInt - 128
//  }
  vin1_bias_shift := ((io.vin1 - io.rg_leakage_table(v_cnt_group0)) |<< io.rg_ac_table(v_cnt_group0))
  vin2_bias_shift := ((io.vin2 - io.rg_leakage_table(v_cnt_group1)) |<< io.rg_ac_table(v_cnt_group1))
  vin1_bias_shift_norm := vin1_bias_shift.asSInt + S(-128, 8 bits)
  vin2_bias_shift_norm := vin2_bias_shift.asSInt + S(-128, 8 bits)


  when(io.en & io.vin_vld){
    V_bias_ac(v_cnt_group0) :=  vin1_bias_shift_norm
    V_bias_ac(v_cnt_group1) :=  vin2_bias_shift_norm

    when(data_load_finish) {
      v_cnt := 0
    }.otherwise{
      v_cnt := v_cnt + 1
    }
    when(~io.rg_bypass_mean){
      when(v_cnt === 0){
        max_v := bigger
        min_v := smaller
      }.otherwise{
        when(bigger > max_v){
          max_v := bigger
        }
        when(min_v > smaller){
          min_v := smaller
        }
      }
    }.otherwise{
      max_v := 0
      min_v := 0
    }

  }
//  val vmean_cnt = Reg(UInt(4 bits)) init(0)
//  val mean_finish = Bool()
//  mean_finish := vmean_cnt === (io.valid_num << 1)-1
//
//  when(io.en & io.vin_vld & data_load_finish) {
//    mean_doing := true
//  }.elsewhen(mean_finish) {
//    mean_doing := false
//  }
//
//  val VinMinusMean = SInt(SizeIn+1 bits)
//  VinMinusMean := (Vins(vmean_cnt).expand - mean).sat(1)
//  when(mean_doing) {
//    when(data_load_finish) {
//      vmean_cnt := 0
//    }.otherwise{
//      vmean_cnt := vmean_cnt + 1
//    }
//    VnRegs(vmean_cnt) := VinMinusMean
//  }

  for(i <- 0 until N) {
    io.vn(i) := V_bias_ac(i)
  }

}

object Inst_cal_vn {
  def main(args: Array[String]): Unit = {
    SpinalConfig(
      defaultConfigForClockDomains = ClockDomainConfig(resetKind = ASYNC,
        clockEdge = RISING,
        resetActiveLevel = LOW),
      mode=Verilog)
      .addStandardMemBlackboxing(blackboxAll)
      .generate(new cal_vn (N = 8, SizeIn = 8))
  }.printPruned()
}
