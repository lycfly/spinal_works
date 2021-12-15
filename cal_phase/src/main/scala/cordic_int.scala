import spinal.sim._
import spinal.core._
import spinal.core.sim._
import spinal.lib._
import spinal.lib.fsm._
import scala.util.Random
import scala.language.postfixOps
import scala.math._

class cordic_int (Stage: Int, SizeIn: Int, SizeOut: Int) extends Component {
  val io = new Bundle {
    val en = in Bool()  // dot finish
    val vld = in Bool()
    val y = in SInt(SizeIn bits)
    val x = in SInt(SizeIn bits)
    val res = out SInt(SizeOut bits)
    val res_vld = out Bool()

  }
  noIoPrefix()

  val logStage = log2Up(Stage)
  val xn = Reg(SInt(SizeIn+Stage+logStage bits)) init(0)
  val yn = Reg(SInt(SizeIn+Stage+logStage bits)) init(0)
  val res_rg = Reg(SInt(SizeOut bits)) init(0)
  val x_ext = SInt(SizeIn+Stage+logStage bits)
  val y_ext = SInt(SizeIn+Stage+logStage bits)
  val x_ins = SInt(SizeIn+Stage+logStage bits)
  val y_ins = SInt(SizeIn+Stage+logStage bits)
  x_ext := (U((logStage-1 downto 0)->io.x.msb) ## io.x ## U(0, Stage bits)).asSInt
  y_ext := (U((logStage-1 downto 0)->io.y.msb) ## io.y ## U(0, Stage bits)).asSInt
  x_ins := -x_ext
  y_ins := -y_ext

  val cal_cnt = Reg(UInt(logStage+1 bits)) init(0)
  val cal_en = Reg(Bool()) init(false)
  val cal_start = Bool()
  val cal_finish = Bool()
  val finish = Reg(Bool()) init(false)
  val nozero_flg = Reg(Bool()) init(true)

  cal_start := cal_cnt === 0
  cal_finish := cal_cnt === Stage + 1

  val xn_rightshift = SInt(SizeIn+Stage+logStage bits)
  val yn_rightshift = SInt(SizeIn+Stage+logStage bits)
  val res_bias = SInt(SizeOut bits)
  xn_rightshift := xn |>> (cal_cnt-1)
  yn_rightshift := yn |>> (cal_cnt-1)
  res_bias := S(1, SizeOut bits) |<< (Stage + 1 - cal_cnt ) //N-1-k, cal_cnt = k+1
  when(io.en){
    when(io.vld){
      cal_en := Bool(true)
    }.elsewhen(cal_finish){
      cal_en := Bool(false)
    }
  }.otherwise {
    cal_en := Bool(false)
  }

  when(cal_en){
    cal_cnt := cal_cnt + 1
    nozero_flg := Bool(true)
    when(cal_start){
      when((io.x|io.y) === 0) {
        res_rg := 0
        nozero_flg := Bool(false)
      }.elsewhen(io.x > 0){
        xn := x_ext
        yn := y_ext
        res_rg := 0
      }.elsewhen(io.y < 0){
        xn := x_ins
        yn := y_ins
        res_rg := S(-pow(2,Stage + 1 + 1).toInt, SizeOut bits)
      }.otherwise{
        xn := x_ins
        yn := y_ins
        res_rg := S(pow(2,Stage + 1 + 1).toInt, SizeOut bits)
      }
    }.elsewhen(nozero_flg){
      when(yn < 0){
        xn := xn - yn_rightshift
        yn := yn + xn_rightshift
        res_rg := res_rg - res_bias
      }.otherwise{
        xn := xn + yn_rightshift
        yn := yn - xn_rightshift
        res_rg := res_rg + res_bias
      }
    }
  }.otherwise{
    cal_cnt := 0
  }

  when(io.en){
    finish := cal_finish
  }.otherwise{
    finish := Bool(false)
  }
  io.res := res_rg
  io.res_vld := finish

}

object Inst_cordic {
  def main(args: Array[String]): Unit = {
    SpinalConfig(
      defaultConfigForClockDomains = ClockDomainConfig(resetKind = ASYNC,
        clockEdge = RISING,
        resetActiveLevel = LOW),
      mode=Verilog)
      .addStandardMemBlackboxing(blackboxAll)
      .generate(new cordic_int (Stage = 4, SizeIn = 8, SizeOut = 7))
  }.printPruned()
}