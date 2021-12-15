
import spinal.core._
import spinal.core.sim.{SimConfig, sleep}

import scala.language.postfixOps
import scala.math._
class s_table(SizeIndex : Int, SizeIn: Int, SizeCoeff: Int) extends Component {
  val SizeOut = SizeIn+SizeCoeff+SizeIndex
  val io = new Bundle {
    val index = in UInt(SizeIndex bits)
    val din = in SInt(SizeIn bits)
    val s1 = out SInt(SizeIn+SizeCoeff+SizeIndex bits)
    val s2 = out SInt(SizeIn+SizeCoeff+SizeIndex bits)
  }
  noIoPrefix()
  val MSB = SizeIn+SizeCoeff-1
  val S_table = Vec(SInt(SizeIn+SizeCoeff+SizeIndex bits),  pow(2,SizeIndex).toInt)
  val m128 = SInt(SizeIn+SizeCoeff bits)
  val m32 = SInt(SizeIn+SizeCoeff bits)
  val m16 = SInt(SizeIn+SizeCoeff bits)
  val m8 = SInt(SizeIn+SizeCoeff bits)
  val m4 = SInt(SizeIn+SizeCoeff bits)
  val m2 = SInt(SizeIn+SizeCoeff bits)
  val m1 = SInt(SizeIn+SizeCoeff bits)
  val din_msb = Bool()
  din_msb := io.din.msb
  m128 := (U((6 downto 0)->din_msb) ## io.din ## U(0, SizeCoeff-7 bits)).asSInt
  m32 := (U((4 downto 0)->din_msb) ## io.din ## U(0, SizeCoeff-5 bits)).asSInt
  m16 := (U((3 downto 0)->din_msb) ## io.din ## U(0, SizeCoeff-4 bits)).asSInt
  m8 := (U((2 downto 0)->din_msb) ## io.din ## U(0, SizeCoeff-3 bits)).asSInt
  m4 := (U((1 downto 0)->din_msb) ## io.din ## U(0, SizeCoeff-2 bits)).asSInt
  m2 := (U((0 downto 0)->din_msb) ## io.din ## U(0, SizeCoeff-1 bits)).asSInt
  m1 := (io.din ## U(0, SizeCoeff bits)).asSInt

  val tmp1 = SInt()
  tmp1 := (m2 +^ m4 +^ m32)

  val Coef12 = SInt()
  val Coef99 = SInt()
  val Coef127 = SInt()
  val Coef81 = SInt()
  val Coefm13 = SInt()
  val Coefm100 = SInt()
  val Coefm128 = SInt()
  val Coefm82 = SInt()

  Coef12 := (m32 +^ m16).resize(SizeOut)
  Coef99 := (tmp1 -^ m128).resize(SizeOut)
  Coef127:= (m1 -^ m128).resize(SizeOut)
  Coef81 := (m2 +^ m8 +^ m128).resize(SizeOut)
  Coefm13 := (-Coef12 -^ m128).resize(SizeOut)
  Coefm100 := (-tmp1).resize(SizeOut)
  Coefm128 := (-m1).resize(SizeOut)
  Coefm82 := (-Coef81 -^ m128).resize(SizeOut)


  switch(io.index) {
    is(0)   {
      io.s1 := Coef12
      io.s2 := Coef127
    }
    is(1)   {
      io.s1 := Coef99
      io.s2 := Coef81
    }
    is(2)   {
      io.s1 := Coef127
      io.s2 := Coefm13
    }
    is(3)   {
      io.s1 := Coef81
      io.s2 := Coefm100
    }
    is(4)   {
      io.s1 := Coefm13
      io.s2 := Coefm128
    }
    is(5)   {
      io.s1 := Coefm100
      io.s2 := Coefm82
    }
    is(6)   {
      io.s1 := Coefm128
      io.s2 := Coef12
    }
    is(7)   {
      io.s1 := Coefm82
      io.s2 := Coef99
    }
//    default  {
//      io.s1 := Coef12
//      io.s2 := Coef127
//    }
  }
}
object s_tableInst {
  def main(args: Array[String]): Unit = {
    SpinalConfig(
      defaultConfigForClockDomains = ClockDomainConfig(resetKind = ASYNC,
        clockEdge = RISING,
        resetActiveLevel = LOW),
      mode=Verilog).generate(new s_table(SizeIndex = 3, SizeIn = 8, SizeCoeff = 8))

    //    //SpinalVerilog(new butterfly(SizeXIn = 16,SizeWIn = 16,SizeOut = 16,para = 5))
    //    val compiled = SimConfig.withWave.allOptimisation.compile(
    //      rtl = new RoundandSat(SizeInList = Array(1,20,15), SizeOutList = Array(1,16,15)))

  }
}