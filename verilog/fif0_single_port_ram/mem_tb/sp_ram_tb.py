# -*- coding: utf-8 -*-
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import Timer
from cocotb.regression import TestFactory

@cocotb.test()
async def run_test(dut):
  PERIOD = 10
  cocotb.fork(Clock(dut.clk, PERIOD, 'ns').start(start_high=False))

  dut.ce = 0
  dut.we = 0
  dut.wdata = 0
  dut.addr = 0
  dut.rdata = 0

  await Timer(20*PERIOD, units='ns')
  dut.ce = 1
  dut.we = 1
  dut.wdata = 1
  dut.addr = 0

  await Timer(20*PERIOD, units='ns')
  dut.ce = 1
  dut.we = 0
  dut.wdata = 1
  dut.addr = 0
  await Timer(20*PERIOD, units='ns')
  
  
# Register the test.
# factory = TestFactory(run_test)
# factory.generate_tests()
    