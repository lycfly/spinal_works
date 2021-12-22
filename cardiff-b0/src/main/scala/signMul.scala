

import spinal.core._
import spinal.core.sim._
import scala.language.postfixOps

class signMul (SIZEINA: Int, SIZEINB:Int) extends Component {
  val io = new Bundle {
    val din_vld = in Bool()
    val dinA = in SInt (SIZEINA bits)
    val dinB = in SInt (SIZEINB bits)

    val dout_vld = out Bool()
    val dout = out SInt (SIZEINA + SIZEINB bits)

  }
  val PsumReg = Reg(SInt(SIZEINA + SIZEINB bits)) init(0)


  when(io.din_vld){
    PsumReg := io.dinA * io.dinB
  }
  io.dout_vld := RegNext(io.din_vld) init(false)
  io.dout := PsumReg

  //  io.dout := io.dinA * io.dinB
}
object signMul {
  def main(args: Array[String]): Unit = {
    SpinalConfig(
      defaultConfigForClockDomains = ClockDomainConfig(resetKind = ASYNC,
        clockEdge = RISING,
        resetActiveLevel = LOW),
      mode=Verilog).generate(new signMul(SIZEINA = 8, SIZEINB = 8))


  }
  //  val compiled = SimConfig.withWave.allOptimisation.compile(
  //    rtl = new Booth2SmallArea(SIZEINA = 8, SIZEINB = 8))
  //  compiled.doSim { dut =>
  //    val N = 8
  //    val in_buffer1 = Array(101,72,0,-72,-101,-72,0,72)
  //    val in_buffer2 = Array(97,47,-30,-90,-97,-47,30,90)
  //
  //    dut.clockDomain.forkStimulus(5)
  //    dut.io.din_vld #= false
  //
  //    sleep(100)
  //    println("test")
  //    dut.clockDomain.waitSampling()
  //    dut.io.din_vld #= true
  //    dut.io.dinA #= -34
  //    dut.io.dinB #= 22
  //    dut.clockDomain.waitSampling()
  //    dut.io.din_vld #= false
  //    dut.clockDomain.waitSampling()
  //    dut.clockDomain.waitSamplingWhere(dut.io.dout_vld.toBoolean)
  //    sleep(100)
  //
  //
  //  }
  //  import DesignCompiler._
  //  val dc_config = DesignCompiler_config(process = 28, freq = 100)
  //  val dc = new DesignCompilerFlow(
  //    design = new Booth2SmallArea(SIZEINA = 8, SIZEINB = 8),
  //    topModuleName = "Booth2SmallArea",
  //    workspacePath = "/mnt/mydata/Easonlib/syn/Booth2SmallArea",
  //    DCConfig = dc_config,
  //    designPath = ""
  //  ).doit()
}