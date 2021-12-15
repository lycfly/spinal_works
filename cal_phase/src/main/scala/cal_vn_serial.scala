import spinal.sim._
import spinal.core._
import spinal.core.sim._
import spinal.lib._
import spinal.lib.fsm._
import scala.util.Random
import scala.language.postfixOps

class cal_vn_serial (N: Int, SizeIn: Int) extends Component {
  val io = new Bundle {
    val en = in Bool()
    val vin_vld = in Bool()
    val v_in = in Vec(SInt(SizeIn bits), N)
    val vn = out Vec(SInt(SizeIn bits), N)
    val vn_vld = out Bool()
  }
  noIoPrefix()
  val logN = log2Up(N)
  val in_vld_dly1 = Reg(Bool()) init(False)
  val in_vld_dly2 = Reg(Bool()) init(False)
  when(io.en){
    in_vld_dly1 := io.vin_vld
    in_vld_dly2 := in_vld_dly1
  }.otherwise{
    in_vld_dly1 := Bool(false)
    in_vld_dly2 := Bool(false)
  }

  val sum_cnt = Reg(UInt(logN bits)) init(0)
  val sum_en = Reg(Bool()) init(false)
  val sum_start = Bool()
  val sum_finish = Bool()
  sum_start := sum_cnt === 0
  sum_finish := sum_cnt === N-1
  when(io.en) {
    when(io.vin_vld) {
      sum_en := Bool(true)
    }.elsewhen(sum_finish) {
      sum_en := Bool(false)
    }
  }.otherwise{
    sum_en := Bool(false)
  }
  //val SumXin = SInt(logN+SizeIn bits)
  val SumXinReg = Reg(SInt(logN+SizeIn bits)) init(0)
  when(sum_en){
    sum_cnt := sum_cnt + 1
    when(sum_start){
      SumXinReg :=  io.v_in(0).resized
    }.otherwise{
      SumXinReg := SumXinReg + io.v_in(sum_cnt)
    }
  }.otherwise{
    sum_cnt := 0
  }
  val vin_ext = Vec(SInt(logN+SizeIn bits),  N)
  for(i <- 0 until N) {
    vin_ext(i) := io.v_in(i) @@ U(0, logN bits)
  }

  val VinMinusMean = Vec(SInt(logN+SizeIn+1 bits),  N)
  for(i <- 0 until N) {
    VinMinusMean(i) := vin_ext(i) -^ SumXinReg
  }
  val Vn_floor = Vec(SInt(SizeIn bits),  N)
  val VnReg = Vec(Reg(SInt(SizeIn bits)) init(0),  N)
  val FloorWrapVn = for(i <- 0 until N) yield { new FloorAndWrap(SizeInList = Array(1,SizeIn+logN+1,SizeIn-1+logN), SizeOutList = Array(1,SizeIn,SizeIn-1))}
  for(i <- 0 until N) {
    FloorWrapVn(i).io.din := VinMinusMean(i).asBits
    Vn_floor(i) := FloorWrapVn(i).io.dout.asSInt
  }
  when(sum_finish & sum_en){
    for(i <- 0 until N) {
      VnReg(i) := Vn_floor(i)
    }

  }
  for(i <- 0 until N) {
    io.vn(i) := VnReg(i)
  }
  io.vn_vld := sum_finish & sum_en

}

object Inst_cal_vn_serial {
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
