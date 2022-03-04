

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
  // val dinAReg = Reg(SInt (SIZEINA bits)) init(0)
  // val dinBReg = Reg(SInt (SIZEINA bits)) init(0)

  val MAX_NUM = SIZEINA/2 - 1
  val MAX_DW = log2Up(SIZEINA/2)
  val SHIFT_SIZE = SIZEINA + SIZEINB + 1 + 2
  val Breg = Reg(SInt(SIZEINB bits)) init(0)
  val shiftReg = Reg(Bits(SHIFT_SIZE bits)) init(0)
  val flag_bits = Bits(3 bits)
  val NegativeB = SInt(SIZEINB + 2 bits)
  val Negative2B = SInt(SIZEINB + 2 bits)
  val PositiveB = SInt(SIZEINB + 2 bits)
  val Positive2B = SInt(SIZEINB + 2 bits)
  val AddB = SInt(SIZEINB + 2 bits)
  val Add2B = SInt(SIZEINB + 2 bits)
  val MinusB = SInt(SIZEINB + 2 bits)
  val Minus2B = SInt(SIZEINB + 2 bits)

  val cal_cnt = Reg(UInt(MAX_DW bits)) init(0)
  val cal_en = Reg(Bool()) init(false)
  flag_bits := shiftReg(2 downto 0)
  NegativeB := - PositiveB
  PositiveB := Breg.resized
  Negative2B := NegativeB |<< 1
  Positive2B := PositiveB |<< 1

  val shiftReg_low = SInt()
  val shiftReg_high = SInt()
  shiftReg_low := shiftReg(SIZEINA downto 0).asSInt
  shiftReg_high := shiftReg(SIZEINA+SIZEINB+2 downto SIZEINA+1).asSInt

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
  aftershift := ((beforeshift ## shiftReg_low.asBits).asSInt |>> 2).asBits
  //val affterAdd = Bits(SIZEINA+SIZEINB + 3 bits)
  //affterAdd :=  (beforeshift ## shiftReg_low.asBits)
  //aftershift := affterAdd.msb ## affterAdd.msb ## affterAdd( SIZEINA+SIZEINB+2 downto 2)

  when(io.din_vld){
    shiftReg := U(0, SHIFT_SIZE - SIZEINA - 1 bits).asBits ## io.dinA.asBits ## U(0, 1 bits).asBits
    Breg     := io.dinB
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
    rtl = new booth4_v2(SIZEINA = 4, SIZEINB = 4))
  compiled.doSim { dut =>
    val N = 4
    dut.clockDomain.forkStimulus(5)
    dut.io.din_vld #= false

    sleep(100)
    println("test")
    var a = 0
    var b = 0
    for (a <- -8 to 7){
      for (b <- -8 to 7) {
        println("input a = %d, b = %d", a, b)
        dut.clockDomain.waitSampling()
        dut.io.din_vld #= true
        dut.io.dinA #= a
        dut.io.dinB #= b
        dut.clockDomain.waitSampling()
        dut.io.din_vld #= false
        dut.clockDomain.waitSampling()
        dut.clockDomain.waitSamplingWhere(dut.io.dout_vld.toBoolean)
        assert((a*b)==dut.io.dout.toInt,"data Mismathc")
      }
    }
    sleep(100)


  }
  import sys.process._
  "gtkwave -o ./simWorkspace/booth4_v2/test.vcd"!


}