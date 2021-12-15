import spinal.sim._
import spinal.core._
import spinal.core.sim._
import spinal.lib._
import spinal.lib.fsm._
import scala.util.Random
import scala.language.postfixOps
import scala.math._

class cal_phase (N: Int, SizeIn: Int, SizeCoeff: Int, Stage: Int, SizeOut: Int, SizePh: Int) extends Component {
  val io = new Bundle {
    val en = in Bool()
    val vin_vld = in Bool()
    val v_in = in Vec(SInt(SizeIn bits), N)
    val res_vld = out Bool()
    val res = out SInt(SizeOut bits)

  }
  noIoPrefix()
  val logN = log2Up(N)

  val calvn = new cal_vn(N = N, SizeIn = SizeIn)
  val dot = new dotVn (N = N, SizeIn = SizeIn, SizeCoeff = SizeCoeff)
  val cordic = new cordic_int (Stage = Stage, SizeIn = SizeCoeff+SizeIn, SizeOut = SizePh)

  val vn = Vec(SInt(SizeIn bits), N)
  val vn_vld = Bool()
  val psum_out1 = SInt(SizeCoeff+SizeIn bits)  //a1
  val psum_out2 = SInt(SizeCoeff+SizeIn bits)  //a2
  val psum_vld = Bool()

  calvn.io.en <> io.en
  calvn.io.v_in <> io.v_in
  calvn.io.vin_vld <> io.vin_vld
  calvn.io.vn <> vn
  calvn.io.vn_vld <> vn_vld

  dot.io.en <> io.en
  dot.io.vn_vld <> vn_vld
  dot.io.vn_in <> vn
  dot.io.psum_out1 <> psum_out1
  dot.io.psum_out2 <> psum_out2
  dot.io.psum_vld <> psum_vld

  val ph_vld =  Bool() simPublic()
  val ph_cal =  SInt(SizePh bits)
  cordic.io.en <> io.en
  cordic.io.vld <> psum_vld
  cordic.io.x <> psum_out1
  cordic.io.y <> psum_out2
  cordic.io.res <> ph_cal
  cordic.io.res_vld <> ph_vld

  val LastA2stZero = Reg(Bool()) init(false)

  val ph_now = Reg(SInt(SizePh bits)) init(0)  // fp(1,8,1)
  val ph_last = Reg(SInt(SizePh bits)) init(0)
  val ph_vld_dly1 = RegNext(ph_vld) init(false) simPublic()
  when(ph_vld){
    ph_last := ph_now
    ph_now := ph_cal
  }

  val ph_delta = SInt(SizePh+1 bits)
  val ph_delta_abs = UInt(SizePh+1 bits)
  val AbsGtPi = Bool()
  ph_delta := ph_now -^ ph_last
  ph_delta_abs := ph_delta.abs
  AbsGtPi := ph_delta_abs > pow(2,5+1).toInt  // ph is fp(1,8,1) so pi need to add 1

  val res_last = Reg(SInt(SizePh+2 bits)) init(0)
  val res_last_vld = RegNext(ph_vld_dly1) init(false)
  when(ph_vld_dly1) {
    LastA2stZero := psum_out2.msb    // 1: a2<0
    when(AbsGtPi){
      when(LastA2stZero){  // a2 < 0
        res_last := ph_delta -^ pow(2,5+2).toInt
      }.otherwise{
        res_last := ph_delta +^ pow(2,5+2).toInt
      }
    }.otherwise{
      res_last := ph_delta.resized
    }
  }

  io.res :=  res_last
  io.res_vld := res_last_vld

}

object Inst_cal_phase {
  def main(args: Array[String]): Unit = {
    SpinalConfig(
      defaultConfigForClockDomains = ClockDomainConfig(resetKind = ASYNC,
        clockEdge = RISING,
        resetActiveLevel = LOW),
      mode=Verilog,
      oneFilePerComponent = true,
      targetDirectory = "rtl"
      )
      .addStandardMemBlackboxing(blackboxAll)
      .generate(new cal_phase (N = 8, SizeIn = 8, SizeCoeff = 8, Stage = 4, SizeOut = 10, SizePh = 8))
  }.printPruned()
  // println(in_buffer)
  val compiled = SimConfig.withWave.allOptimisation.compile(
    rtl = new cal_phase (N = 8, SizeIn = 8, SizeCoeff = 8, Stage = 4, SizeOut = 10, SizePh = 8))
  compiled.doSim { dut =>
    val N = 8
    val in_buffer1 = Array(101,72,0,-72,-101,-72,0,72)
    val in_buffer2 = Array(97,47,-30,-90,-97,-47,30,90)

    dut.clockDomain.forkStimulus(5)
    dut.io.en #= false
    dut.io.vin_vld #= false
    dut.io.res_vld #= false

    sleep(100)
    println("test")
    dut.clockDomain.waitSampling()
    sleep(100)
    dut.clockDomain.waitSampling()
    dut.io.en #= true
    dut.io.vin_vld #= true
    for(i <- 0 until N) {
      dut.io.v_in(i) #=  in_buffer1(i)
    }
    dut.clockDomain.waitSampling()
    dut.io.vin_vld #= false
    //sleep(100)
    dut.clockDomain.waitSamplingWhere(dut.ph_vld.toBoolean)
    dut.io.vin_vld #= true
    for(i <- 0 until N) {
      dut.io.v_in(i) #=  in_buffer2(i)
    }
    dut.clockDomain.waitSampling()
    dut.io.vin_vld #= false
    dut.clockDomain.waitSamplingWhere(dut.ph_vld.toBoolean)

  }
  //import sys.process._
  //"gtkwave -o ./simWorkspace/cal_phase/test.vcd"!
  // import DesignCompiler._
  // val dc_config = DesignCompiler_config(process = 28, freq = 100)
  // val dc = new DesignCompilerFlow(
  //                                   design = new cal_phase (N = 8, SizeIn = 8, SizeCoeff = 8, Stage = 4, SizeOut = 10, SizePh = 8),
  //                                   topModuleName = "cal_phase",
  //                                   workspacePath = "/mnt/mydata/spinal_works/cardiff-b0/syn",
  //                                   DCConfig = dc_config,
  //                                   designPath = ""
  // ).doit()
}
