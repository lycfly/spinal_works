import spinal.sim._
import spinal.core._
import spinal.core.sim._
import spinal.lib._
import spinal.lib.fsm._
import scala.util.Random
import scala.language.postfixOps

class dotVn_2 (N: Int, SizeIn: Int, SizeCoeff: Int) extends Component {
  val io = new Bundle {
    val en = in Bool()
    val rg_sin_table = in Vec(SInt(SizeCoeff bits), N)
    val rg_cos_table = in Vec(SInt(SizeCoeff bits), N)
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

  val product1 = SInt(SizeIn+SizeCoeff bits)
  val product2 = SInt(SizeIn+SizeCoeff bits)

  val s1 = SInt(SizeIn+SizeCoeff+logN bits)
  val s2 = SInt(SizeIn+SizeCoeff+logN bits)
  val psum1 = Reg(SInt(SizeIn+SizeCoeff+logN bits)) init(0)
  val psum2 = Reg(SInt(SizeIn+SizeCoeff+logN bits)) init(0)
  val vin_true_in = SInt(SizeIn bits)
  val vin_minus_mean = SInt(SizeIn bits)

  val mac_cnt = Reg(UInt(logN bits)) init(0)
  val mac_en = Reg(Bool()) init(false)
  val mac_start = Bool()
  val mac_finish = Bool()
  val finish = Reg(Bool()) init(false)

  val booth_sin = new booth2_v2(SIZEINA = SizeIn, SIZEINB = SizeCoeff)
  val booth_cos = new booth2_v2(SIZEINA = SizeIn, SIZEINB = SizeCoeff)
  val mul_done = Bool()
  val booth_start = RegNext(io.vn_vld | (mac_en & mul_done)) init(false)

  booth_sin.io.dinA <> vin_true_in
  booth_sin.io.dinB <> io.rg_sin_table(mac_cnt)
  booth_sin.io.din_vld <> booth_start
  booth_sin.io.dout_vld <> mul_done
  booth_sin.io.dout <> product1

  booth_cos.io.dinA <> vin_true_in
  booth_cos.io.dinB <> io.rg_cos_table(mac_cnt)
  booth_cos.io.din_vld <> booth_start
  // booth_cos.io.dout_vld <> mul_done
  booth_cos.io.dout <> product2

  vin_minus_mean := io.vn_in(mac_cnt) - io.mean
  vin_true_in := vin_minus_mean

//  mac_en := mac_cnt < io.valid_num
  mac_start :=  (mac_cnt === 0) & mul_done
  mac_finish := (mac_cnt === io.valid_num - 1) & mul_done
  //product1 := vin_true_in * io.rg_sin_table(mac_cnt)
  //product2 := vin_true_in * io.rg_cos_table(mac_cnt)
  s1 := (product1 >> 2).resized
  s2 := (product2 >> 2).resized
  //  table.io.index <> mac_cnt
//  table.io.din <> vin_minus_mean
//  table.io.s1 <> s1
//  table.io.s2 <> s2
  when(io.en) {
    when(io.vn_vld) {
      mac_en := Bool(true)
    }.elsewhen(mac_finish) {
      mac_en := Bool(false)
    }
  }.otherwise{
    mac_en := Bool(false)
  }

  when(mac_start){
    psum1 :=  s1
    psum2 :=  s2
  }.elsewhen(mul_done){
    psum1 := psum1 + s1
    psum2 := psum2 + s2
  }

  when(mul_done){
    when(mac_en){
      mac_cnt := mac_cnt + 1
    }.otherwise{
      mac_cnt := 0
    }
  }
  // 1,19,14 --add 1 frac bit--> 1,20,15 --cut 2bits--> 1,18,15
  //val FloorWrapPsum1 =  new FloorAndWrap(SizeInList = Array(1,SizeIn+SizeCoeff+logN,SizeIn+SizeCoeff-1), SizeOutList = Array(1,SizeIn+SizeCoeff,SizeIn+SizeCoeff-1))
  //val FloorWrapPsum2 =  new FloorAndWrap(SizeInList = Array(1,SizeIn+SizeCoeff+logN-2,SizeIn+SizeCoeff-1), SizeOutList = Array(1,SizeIn+SizeCoeff,SizeIn+SizeCoeff-1))

  //FloorWrapPsum1.io.din <> psum1.floor(2).asBits // div by 4
  //FloorWrapPsum1.io.dout.asSInt <> io.psum_out1

  //FloorWrapPsum2.io.din <> psum2.floor(2).asBits
  //FloorWrapPsum2.io.dout.asSInt <> io.psum_out2

  io.psum_out1 := psum1.sat(logN)
  io.psum_out2 := psum2.sat(logN)

  when(io.en){
    finish := (mac_cnt === io.valid_num) & mul_done
  }.otherwise{
    finish := Bool(false)
  }
  io.psum_vld := finish
}

object Inst_dotVn_2 {
  def main(args: Array[String]): Unit = {
    SpinalConfig(
      defaultConfigForClockDomains = ClockDomainConfig(resetKind = ASYNC,
        clockEdge = RISING,
        resetActiveLevel = LOW),
      mode=Verilog)
      .addStandardMemBlackboxing(blackboxAll)
      .generate(new dotVn_2 (N = 8, SizeIn = 8, SizeCoeff = 8))
  }.printPruned()
}