import spinal.sim._
import spinal.core._
import spinal.core.sim._
import spinal.lib._
import spinal.lib.fsm._
import scala.util.Random
import scala.language.postfixOps
import scala.math._

class cal_phase (N: Int, SizeIn: Int, SizeCoeff: Int, SizeOut: Int) extends Component {
  val io = new Bundle {
    val rg_calphase_en = in Bool()
    val rg_bypass_mean = in Bool()
    val rg_cordic_iternum = in UInt(3 bits)
    val rg_leakage_table = in Vec(SInt(SizeIn bits), N)
    val rg_sin_table = in Vec(SInt(SizeIn bits), N)
    val rg_cos_table = in Vec(SInt(SizeIn bits), N)
    val valid_num = in UInt(3 bits)

    val vin_vld = in Bool()
    val vin1 = in SInt(SizeIn bits)
    val vin2 = in SInt(SizeIn bits)

    val phase_vld = out Bool()
    val phase = out SInt(SizeOut bits)
  }
  noIoPrefix()
  val logN = log2Up(N)

  val calvn = new cal_vn(N = N, SizeIn = SizeIn)
  val dot = new dotVn_2 (N = N, SizeIn = SizeIn, SizeCoeff = SizeCoeff)
  val cordic = new cordic_int (SizeIn = SizeCoeff+SizeIn, SizeOut = SizeOut)

  val valid_num_true = UInt(3 bits)
  valid_num_true := ((io.valid_num<<1)-1).resize(3)

  val mean = SInt(SizeIn bits)
  val calvn_finish = Bool()
  val vn = Vec(SInt(SizeIn bits), N)

  val psum_out1 = SInt(SizeCoeff+SizeIn bits)  //a1
  val psum_out2 = SInt(SizeCoeff+SizeIn bits)  //a2
  val psum_vld = Bool()

  calvn.io.en <> io.rg_calphase_en
  calvn.io.rg_bypass_mean <> io.rg_bypass_mean
  calvn.io.valid_num <> io.valid_num
  calvn.io.vin1 <> io.vin1
  calvn.io.vin2 <> io.vin2
  calvn.io.rg_leakage_table <> io.rg_leakage_table
  calvn.io.vin_vld <> io.vin_vld
  calvn.io.mean <> mean
  calvn.io.vn <> vn
  calvn.io.finish <> calvn_finish

  dot.io.en <> io.rg_calphase_en
  dot.io.rg_cos_table <> io.rg_cos_table
  dot.io.rg_sin_table <> io.rg_sin_table
  dot.io.vn_vld <> calvn_finish
  dot.io.vn_in <> vn
  dot.io.valid_num <> valid_num_true
  dot.io.mean <> mean
  dot.io.psum_out1 <> psum_out1
  dot.io.psum_out2 <> psum_out2
  dot.io.psum_vld <> psum_vld

  val ph_vld =  Bool() simPublic()
  val ph_cal =  SInt(SizeOut bits)
  cordic.io.en <> io.rg_calphase_en
  cordic.io.vld <> psum_vld
  cordic.io.rg_cordic_iternum <> io.rg_cordic_iternum
  cordic.io.x <> psum_out1
  cordic.io.y <> psum_out2
  cordic.io.res <> ph_cal
  cordic.io.res_vld <> ph_vld


  io.phase :=  ph_cal
  io.phase_vld := ph_vld

}

object Inst_cal_phase {
  def main(args: Array[String]): Unit = {
    SpinalConfig(
      defaultConfigForClockDomains = ClockDomainConfig(resetKind = ASYNC,
        clockEdge = RISING,
        resetActiveLevel = LOW),
      mode=Verilog,
      targetDirectory="/mnt/mydata/spinal_works/cardiff-b0/rtl/cal_phase",
      oneFilePerComponent = true)
      .addStandardMemBlackboxing(blackboxAll)
      .generate(new cal_phase (N = 8, SizeIn = 8, SizeCoeff = 8, SizeOut = 8))
  }.printPruned()

  val compiled = SimConfig.withWave.allOptimisation.compile(
    rtl = new cal_phase (N = 8, SizeIn = 8, SizeCoeff = 8, SizeOut = 10))
  compiled.doSim { dut =>
    val N = 8
    val in_buffer1 = Array(40,127,10,-125)
    val in_buffer2 = Array(110,91,-76,-119)
    val sin_table = Array(0,99,124,55,-55,-124,-99,0)
    val cos_table = Array(127,79,-28,-114,-114,-28,79,127)


    dut.clockDomain.forkStimulus(5)
    dut.io.rg_calphase_en #= false
    dut.io.rg_bypass_mean #= false
    dut.io.rg_cordic_iternum #= 6
    dut.io.valid_num #= 4
    dut.io.vin_vld #= false
    dut.clockDomain.waitSampling()

    for(i <- 0 until N) {
      dut.io.rg_leakage_table(i) #= 0
      dut.io.rg_sin_table(i) #= sin_table(i)
      dut.io.rg_cos_table(i) #= cos_table(i)
    }

    sleep(100)
    println("test")
    dut.clockDomain.waitSampling()
    sleep(100)
    dut.clockDomain.waitSampling()
    dut.io.rg_calphase_en #= true
    dut.io.vin_vld #= true
    for(i <- 0 until N/2) {
      dut.io.vin1 #=  in_buffer1(i)
      dut.io.vin2 #=  in_buffer2(i)
      dut.clockDomain.waitSampling()

    }
    dut.io.vin_vld #= false
    dut.clockDomain.waitSamplingWhere(dut.io.phase_vld.toBoolean)
   // sleep(500)

    dut.clockDomain.waitSampling()

  }
 // import sys.process._
 // "gtkwave -o ./simWorkspace/cal_phase/test.vcd"!
//   import DesignCompiler._
//   val dc_config = DesignCompiler_config(process = 180, freq = 100)
//   val dc = new DesignCompilerFlow(
//                                     design = new cal_phase (N = 8, SizeIn = 8, SizeCoeff = 8, SizeOut = 8),
//                                     topModuleName = "cal_phase",
//                                     workspacePath = "/mnt/mydata/spinal_works/cardiff-b0/syn/booth2_method",
//                                     DCConfig = dc_config,
//                                     designPath = ""
//   ).doit()
}
