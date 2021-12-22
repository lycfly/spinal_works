

import spinal.core._
import spinal.core.sim._
import scala.language.postfixOps

class booth4_v2 (SIZEINA: Int, SIZEINB:Int) extends Component {
  val io = new Bundle {
    val din_vld = in Bool()
    val dinA = in SInt (SIZEINA bits)
    val dinB = in SInt (SIZEINB bits)

    val dout_vld = out Bool()
    val dout = out SInt (SIZEINA + SIZEINB bits)

  }

  val MAX_NUM = SIZEINA/2 -1
  val MAX_DW = log2Up(MAX_NUM)
  val SHIFT_SIZE = SIZEINA + SIZEINB + 1 + 1
  val shiftReg = Reg(Bits(SHIFT_SIZE bits)) init(0)
  val flag_bits = Bits(3 bits)
  val NegativeB = SInt(SIZEINB + 1 bits)
  val Negative2B = SInt(SIZEINB + 1 bits)
  val PositiveB = SInt(SIZEINB + 1 bits)
  val Positive2B = SInt(SIZEINB + 1 bits)
  val AddB = SInt(SIZEINB + 1 bits)
  val Add2B = SInt(SIZEINB + 1 bits)
  val MinusB = SInt(SIZEINB + 1 bits)
  val Minus2B = SInt(SIZEINB + 1 bits)

  val cal_cnt = Reg(UInt(MAX_DW bits)) init(0)
  val cal_en = Reg(Bool()) init(false)
  flag_bits := shiftReg(2 downto 0)
  NegativeB := - PositiveB
  PositiveB := io.dinB.resized
  Negative2B := NegativeB |<< 1
  Positive2B := PositiveB |<< 1

  val shiftReg_low = SInt()
  val shiftReg_high = SInt()
  shiftReg_low := shiftReg(SIZEINA downto 0).asSInt
  shiftReg_high := shiftReg(SIZEINA+SIZEINB+1 downto SIZEINA+1).asSInt

  AddB := (shiftReg_high + PositiveB)
  Add2B := (shiftReg_high + Positive2B)
  MinusB := (shiftReg_high + NegativeB)
  Minus2B := (shiftReg_high + Negative2B)


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
    is(0,7){
      beforeshift := shiftReg_high.asBits
    }
    is(1,2){
      beforeshift  :=  AddB.asBits   //shift and add
    }
    is(5,6){
      beforeshift  :=  MinusB.asBits   //shift and add
    }
    is(3){
      beforeshift  :=  Add2B.asBits  //shift and add
    }
    is(4){
      beforeshift  :=  Minus2B.asBits  //shift and add
    }
  }
  aftershift := (beforeshift ## shiftReg_low.asBits) |>> 2

  when(io.din_vld){
    shiftReg := U(0, SHIFT_SIZE - SIZEINA - 1 bits).asBits ## io.dinA.asBits ## U(0, 1 bits).asBits
  }.elsewhen(cal_en){
    shiftReg := aftershift
  }

  io.dout_vld := cal_en.fall
  io.dout := shiftReg(SIZEINA+SIZEINB downto 1).asSInt

  //  io.dout := io.dinA * io.dinB
}
object booth4_v2 {
  def main(args: Array[String]): Unit = {
    SpinalConfig(
      defaultConfigForClockDomains = ClockDomainConfig(resetKind = ASYNC,
        clockEdge = RISING,
        resetActiveLevel = LOW),
      mode=Verilog).generate(new booth4_v2(SIZEINA = 8, SIZEINB = 8))


  }
  val compiled = SimConfig.withWave.allOptimisation.compile(
    rtl = new booth4_v2(SIZEINA = 8, SIZEINB = 8))
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
    design = new booth4_v2(SIZEINA = 8, SIZEINB = 8),
    topModuleName = "booth4_v2",
    workspacePath = "/mnt/mydata/Easonlib/syn/booth4_v2",
    DCConfig = dc_config,
    designPath = ""
  ).doit()
}