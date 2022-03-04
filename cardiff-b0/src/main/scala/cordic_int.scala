import spinal.sim._
import spinal.core._
import spinal.core.sim._
import spinal.lib._
import spinal.lib.fsm._
import scala.util.Random
import scala.language.postfixOps
import scala.math._

class cordic_int (SizeIn: Int, SizeOut: Int) extends Component {
  val io = new Bundle {
    val en = in Bool()  // dot finish
    val rg_cordic_iternum = in UInt(3 bits)
    val vld = in Bool()
    val y = in SInt(SizeIn bits)
    val x = in SInt(SizeIn bits)
    val res = out SInt(SizeOut bits)
    val res_vld = out Bool()

  }
  noIoPrefix()
  val Stage = 7
  val logStage = log2Up(Stage)
  val KAngle = Vec(S(32, 7 bits),S(19, 7 bits),S(10, 7 bits),S(5, 7 bits),S(3, 7 bits),S(1, 7 bits),S(1, 7 bits))
  val xn = Reg(SInt(SizeIn+logStage bits)) init(0)
  val yn = Reg(SInt(SizeIn+logStage bits)) init(0)
  val res_rg = Reg(SInt(SizeOut+1 bits)) init(0)
  val res_out = Reg(SInt(SizeOut bits)) init(0)
  val x_ext = SInt(SizeIn+logStage bits)
  val y_ext = SInt(SizeIn+logStage bits)
  val x_ins = SInt(SizeIn+logStage bits)
  val y_ins = SInt(SizeIn+logStage bits)
  x_ext := (U((logStage-1 downto 0)->io.x.msb) ## io.x ).asSInt
  y_ext := (U((logStage-1 downto 0)->io.y.msb) ## io.y ).asSInt
  x_ins := -x_ext
  y_ins := -y_ext

  val cal_cnt = Reg(UInt(logStage bits)) init(0)
  val cal_en = Reg(Bool()) init(false)
  val cal_start = Bool()
  val cal_start_delay = Bool()
  val cal_finish = Bool()
  val normal_finish = Bool()
  val early_finish1 = Bool()
  val early_finish2 = Bool()
  val finish = Reg(Bool()) init(false)
  val nozero_flg = Reg(Bool()) init(true)

  cal_start := cal_en.rise(False)
  cal_start_delay := RegNext(cal_start, Bool(false))
  cal_finish := Mux((io.rg_cordic_iternum === 1), cal_start_delay , normal_finish) | early_finish1
  normal_finish := cal_cnt === io.rg_cordic_iternum - 1
  early_finish1 := nozero_flg.fall()
  early_finish2 :=  cal_start_delay

  val xn_rightshift = SInt(SizeIn+logStage bits)
  val yn_rightshift = SInt(SizeIn+logStage bits)
  xn_rightshift := xn |>> (cal_cnt)
  yn_rightshift := yn |>> (cal_cnt)

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
    when(cal_start) {
      cal_cnt := 0
      when((io.x === 0) || (io.y === 0)) {
        res_rg := 0
        nozero_flg := Bool(false)
      }.otherwise {
        nozero_flg := Bool(true)
        when(io.x < 0) {
          when(io.y < 0) {
            xn := y_ins
            yn := x_ext
            //res_rg := S(-pow(2, 6).toInt, SizeOut+1 bits)
            res_rg := -64
          }.otherwise {
            xn := y_ext
            yn := x_ins
            res_rg := 64
          }
        }.otherwise {
          xn := x_ext
          yn := y_ext
          res_rg := 0
        }
      }
    }.elsewhen(nozero_flg){
      cal_cnt := cal_cnt + 1
      when(yn < 0){
            xn := xn - yn_rightshift
            yn := yn + xn_rightshift
            res_rg := res_rg - KAngle(cal_cnt)
          }.otherwise{
            xn := xn + yn_rightshift
            yn := yn - xn_rightshift
            res_rg := res_rg + KAngle(cal_cnt)
          }
        }
  }
  val cal_finish_delay = Reg(Bool()) init(false)
  when(io.en){
    cal_finish_delay := cal_finish
  }
  when(cal_finish_delay){
    res_out := res_rg.sat(1)
  }
  when(io.en){
    finish := cal_finish_delay
  }
  io.res := res_out
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
      .generate(new cordic_int (SizeIn = 8, SizeOut = 8))
  }.printPruned()
}