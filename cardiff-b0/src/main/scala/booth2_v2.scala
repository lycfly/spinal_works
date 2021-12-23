

import spinal.core._
import spinal.core.sim._
import scala.language.postfixOps

class booth2_v2 (SIZEINA: Int, SIZEINB:Int) extends Component {
  val io = new Bundle {
    val din_vld = in Bool()
    val dinA = in SInt (SIZEINA bits)
    val dinB = in SInt (SIZEINB bits)

    val dout_vld = out Bool()
    val dout = out SInt (SIZEINA + SIZEINB bits)

  }

  val MAX_NUM = SIZEINA -1
  val MAX_DW = log2Up(MAX_NUM)
  val SHIFT_SIZE = SIZEINA + SIZEINB + 1
  val shiftReg = Reg(Bits(SHIFT_SIZE bits)) init(0)
  val flag_bits = Bits(2 bits)
  val NegativeB = SInt(SIZEINB  bits)
  val PositiveB = SInt(SIZEINB bits)
  val AddB = SInt(SIZEINB bits)
  val MinusB = SInt(SIZEINB bits)

  val cal_cnt = Reg(UInt(MAX_DW bits)) init(0)
  val cal_en = Reg(Bool()) init(false)
  flag_bits := shiftReg(1 downto 0)
  NegativeB := - PositiveB
  PositiveB := io.dinB.resized

  val shiftReg_low = SInt()
  val shiftReg_high = SInt()
  shiftReg_low := shiftReg(SIZEINA downto 0).asSInt
  shiftReg_high := shiftReg(SIZEINA+SIZEINB downto SIZEINA+1).asSInt

  AddB := (shiftReg_high + PositiveB)
  MinusB := (shiftReg_high + NegativeB)


  when(io.din_vld){
    cal_en := Bool(true)
  }.elsewhen(cal_cnt === MAX_NUM){
    cal_en := Bool(false)
  }
  when(cal_en){
    cal_cnt := cal_cnt + 1
  }.elsewhen(io.din_vld){
    cal_cnt := 0
  }
  val beforeshift = Bits()
  val aftershift = Bits()
  switch(flag_bits) {
    is(0,3){
      beforeshift := shiftReg_high.asBits
    }
    is(2){
      beforeshift  :=  MinusB.asBits   //shift and add
    }
    is(1){
      beforeshift  :=  AddB.asBits   //shift and add
    }
  }
  aftershift := ((beforeshift ## shiftReg_low.asBits).asSInt |>> 1).asBits

  when(io.din_vld){
    shiftReg := U(0, SHIFT_SIZE - SIZEINA - 1 bits).asBits ## io.dinA.asBits ## U(0, 1 bits).asBits
  }.elsewhen(cal_en){
    shiftReg := aftershift
  }

  io.dout_vld := cal_en.fall
  io.dout := shiftReg(SIZEINA+SIZEINB downto 1).asSInt

  //  io.dout := io.dinA * io.dinB
}
object booth2_v2 {
  def main(args: Array[String]): Unit = {
    SpinalConfig(
      defaultConfigForClockDomains = ClockDomainConfig(resetKind = ASYNC,
        clockEdge = RISING,
        resetActiveLevel = LOW),
      mode=Verilog).generate(new booth2_v2(SIZEINA = 8, SIZEINB = 8))


  }
  val compiled = SimConfig.withWave.allOptimisation.compile(
    rtl = new booth2_v2(SIZEINA = 8, SIZEINB = 8))
  compiled.doSim { dut =>
    val N = 8
    val in_buffer1 = Array(101,72,0,-72,-101,-72,0,72)
    val in_buffer2 = Array(97,47,-30,-90,-97,-47,30,90)

    dut.clockDomain.forkStimulus(5)
    dut.io.din_vld #= false

    sleep(100)
    println("test")
    dut.clockDomain.waitSampling()
    dut.io.din_vld #= true
    dut.io.dinA #= 55
    dut.io.dinB #= 91
    dut.clockDomain.waitSampling()
    dut.io.din_vld #= false
    dut.clockDomain.waitSampling()
    dut.clockDomain.waitSamplingWhere(dut.io.dout_vld.toBoolean)
    sleep(100)


  }
  // import sys.process._
  // "gtkwave -o ./simWorkspace/cal_phase/test.vcd"!

  import DesignCompiler._
  val dc_config = DesignCompiler_config(process = 180, freq = 100)
  val dc = new DesignCompilerFlow(
    design = new booth2_v2(SIZEINA = 8, SIZEINB = 8),
    topModuleName = "booth2_v2",
    workspacePath = "/mnt/mydata/Easonlib/syn/booth2_v2",
    DCConfig = dc_config,
    designPath = ""
  ).doit()
}