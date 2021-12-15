import spinal.sim._
import spinal.core._
import spinal.core.sim._
import spinal.lib._
import spinal.lib.fsm._
import scala.util.Random
import scala.language.postfixOps

class dotVn (N: Int, SizeIn: Int, SizeCoeff: Int) extends Component {
  val io = new Bundle {
    val en = in Bool()
    val vn_vld = in Bool() // vld_dly1
    val vn_in = in Vec(SInt(SizeIn bits), N)
    val psum_out1 = out SInt(SizeCoeff+SizeIn bits)
    val psum_out2 = out SInt(SizeCoeff+SizeIn bits)
    val psum_vld = out Bool()
    val valid_num = in UInt(3 bits)
    val mean = in SInt(SizeIn bits)
  }
  noIoPrefix()
  val logN = log2Up(N)
  val table = new s_table(SizeIndex = logN, SizeIn = SizeIn, SizeCoeff = SizeCoeff)
  val s1 = SInt(SizeIn+SizeCoeff+logN bits)
  val s2 = SInt(SizeIn+SizeCoeff+logN bits)
  val psum1 = Reg(SInt(SizeIn+SizeCoeff+logN bits)) init(0)
  val psum2 = Reg(SInt(SizeIn+SizeCoeff+logN bits)) init(0)
  val vin_minus_mean = SInt(SizeIn bits)


  val mac_cnt = Reg(UInt(logN bits)) init(0)
  val mac_en = Reg(Bool()) init(false)
  val mac_start = Bool()
  val mac_finish = Bool()
  val finish = Reg(Bool())

  vin_minus_mean := io.vn_in(mac_cnt) - io.mean
  mac_start := mac_cnt === 0
  mac_finish := mac_cnt === N-1
  table.io.index <> mac_cnt
  table.io.din <> vin_minus_mean
  table.io.s1 <> s1
  table.io.s2 <> s2
  when(io.en) {
    when(io.vn_vld) {
      mac_en := Bool(true)
    }.elsewhen(mac_finish) {
      mac_en := Bool(false)
    }
  }.otherwise{
    mac_en := Bool(false)
  }
  when(mac_en){
    mac_cnt := mac_cnt + 1
    when(mac_start){
      psum1 :=  s1
      psum2 :=  s2
    }.otherwise{
      psum1 := psum1 + s1
      psum2 := psum2 + s2
    }
  }.otherwise{
    mac_cnt := 0
  }
  // 1,19,14 --add 1 frac bit--> 1,20,15 --cut 2bits--> 1,18,15
  val FloorWrapPsum1 =  new FloorAndWrap(SizeInList = Array(1,SizeIn+SizeCoeff+logN-2,SizeIn+SizeCoeff-1), SizeOutList = Array(1,SizeIn+SizeCoeff,SizeIn+SizeCoeff-1))
  val FloorWrapPsum2 =  new FloorAndWrap(SizeInList = Array(1,SizeIn+SizeCoeff+logN-2,SizeIn+SizeCoeff-1), SizeOutList = Array(1,SizeIn+SizeCoeff,SizeIn+SizeCoeff-1))

  FloorWrapPsum1.io.din <> psum1.floor(2).asBits // div by 4
  FloorWrapPsum1.io.dout.asSInt <> io.psum_out1

  FloorWrapPsum2.io.din <> psum2.floor(2).asBits
  FloorWrapPsum2.io.dout.asSInt <> io.psum_out2

  when(io.en){
    finish := mac_finish & mac_en
  }.otherwise{
    finish := Bool(false)
  }
  io.psum_vld := finish
}

object Inst_dotVn {
  def main(args: Array[String]): Unit = {
    SpinalConfig(
      defaultConfigForClockDomains = ClockDomainConfig(resetKind = ASYNC,
        clockEdge = RISING,
        resetActiveLevel = LOW),
      mode=Verilog)
      .addStandardMemBlackboxing(blackboxAll)
      .generate(new dotVn (N = 8, SizeIn = 8, SizeCoeff = 8))
  }.printPruned()
}