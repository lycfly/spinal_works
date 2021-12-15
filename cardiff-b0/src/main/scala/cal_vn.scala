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
    val vin1 = in SInt(SizeIn bits)
    val vin2 = in SInt(SizeIn bits)
    val rg_leakage_table = in Vec(SInt(SizeIn bits), N)
    val mean = out SInt(SizeIn bits)
    val vn = out Vec(SInt(SizeIn bits), N)
    val finish = out Bool()
  }
  noIoPrefix()
  val logN = log2Up(N)
  val Vins = Vec(Reg(SInt(SizeIn bits)) init(0),  N)

  val v_cnt = Reg(UInt(3 bits)) init(0)
  val bigger = SInt(SizeIn bits)
  val smaller = SInt(SizeIn bits)
  val max_v  = Reg(SInt(SizeIn bits)) init(0)
  val min_v  = Reg(SInt(SizeIn bits)) init(0)

  val v1gtv2 = Bool()
  val data_load_finish = Bool()
  val mean_doing = Reg(Bool()) init(false)

  v1gtv2 := io.vin1 > io.vin2
  bigger := Mux(v1gtv2 & io.rg_bypass_mean , io.vin1 , io.vin2)
  smaller := Mux(v1gtv2 & io.rg_bypass_mean, io.vin2 , io.vin1)
  data_load_finish := v_cnt === (io.valid_num-1)
  io.mean := ((max_v +^ min_v)|>>1).sat(1)
  io.finish := io.en & io.vin_vld & data_load_finish
  when(io.en & io.vin_vld){
    Vins((v_cnt|<<1)) := (io.vin1 -^ io.rg_leakage_table((v_cnt|<<1))).sat(1)
    Vins((v_cnt|<<1)+1) := (io.vin2 -^ io.rg_leakage_table((v_cnt|<<1)+1)).sat(1)
    when(data_load_finish) {
      v_cnt := 0
    }.otherwise{
      v_cnt := v_cnt + 1
    }
    when(io.rg_bypass_mean){
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
    io.vn(i) := Vins(i)
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
