
import spinal.core._
import spinal.core.sim.{SimConfig, sleep}

import scala.language.postfixOps

class sat(IsSign: Boolean, SizeIn: Int, SizeOut:Int) extends Component {
  val io = new Bundle {
    val din = in Bits(SizeIn bits)
    val dout = out Bits(SizeOut bits)

  }
  noIoPrefix()
  val SatBit = SizeIn- SizeOut
  val dataOut = if(IsSign) SInt(SizeOut bits) else UInt(SizeOut bits)

  if(IsSign){
    dataOut := io.din.asSInt.sat(SatBit)
  }else{
    dataOut := io.din.asUInt.sat(SatBit)
  }
  io.dout := dataOut.asBits
}
object SatInst {
  def main(args: Array[String]): Unit = {
    SpinalConfig(
      defaultConfigForClockDomains = ClockDomainConfig(resetKind = ASYNC,
        clockEdge = RISING,
        resetActiveLevel = LOW),
      mode=Verilog).generate(new sat(IsSign = true, SizeIn = 10, SizeOut = 8))

    //    //SpinalVerilog(new butterfly(SizeXIn = 16,SizeWIn = 16,SizeOut = 16,para = 5))
    //    val compiled = SimConfig.withWave.allOptimisation.compile(
    //      rtl = new RoundandSat(SizeInList = Array(1,20,15), SizeOutList = Array(1,16,15)))

  }
}