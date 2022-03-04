
import spinal.sim._
import spinal.core._
import spinal.core.sim._
import spinal.lib._
import spinal.lib.fsm._
import scala.util.Random
import scala.language.postfixOps
import scala.math._

class PiecewiseApproximator (SizeIn: Int, SizeOut: Int) extends Component {
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
  def op(a:Int,b:Int):Int={
    a + b
  }
  //val test = Runtime.getRuntime.
  io.res := 0



}

object PiecewiseApproximatorInst {
  def main(args: Array[String]): Unit = {
    SpinalConfig(
      defaultConfigForClockDomains = ClockDomainConfig(resetKind = ASYNC,
        clockEdge = RISING,
        resetActiveLevel = LOW),
      mode=Verilog)
      .addStandardMemBlackboxing(blackboxAll)
      .generate(new PiecewiseApproximator (SizeIn = 8, SizeOut = 8))
  }.printPruned()
}