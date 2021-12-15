# -*- coding: utf-8 -*-
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import Timer
from cocotb.regression import TestFactory

@cocotb.test()
async def run_test(dut):
  PERIOD = 10
  cocotb.fork(Clock(dut.clk, PERIOD, 'ns').start(start_high=False))

  dut.en = 0
  dut.vin_vld = 0
  dut.v_in_0 = 0
  dut.v_in_1 = 0
  dut.v_in_2 = 0
  dut.v_in_3 = 0
  dut.v_in_4 = 0
  dut.v_in_5 = 0
  dut.v_in_6 = 0
  dut.v_in_7 = 0
  dut.res_vld = 0
  dut.res = 0
  dut.resetn = 0

  await Timer(20*PERIOD, units='ns')

  dut.en = 1
  dut.vin_vld = 1
  dut.v_in_0 = 1
  dut.v_in_1 = 1
  dut.v_in_2 = 1
  dut.v_in_3 = 1
  dut.v_in_4 = 1
  dut.v_in_5 = 1
  dut.v_in_6 = 1
  dut.v_in_7 = 1
  dut.res_vld = 1
  dut.res = 1
  dut.resetn = 1

  await Timer(20*PERIOD, units='ns')

# Register the test.
factory = TestFactory(run_test)
factory.generate_tests()
    