# -*- coding: utf-8 -*-
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import Timer
from cocotb.regression import TestFactory
from cocotb.triggers import FallingEdge,RisingEdge,Timer
import numpy as np
np.random.seed(1)

max_num = 8 

queue = []
def enq(din):
    if(len(queue) < max_num):
        queue.append(din)

def deq():
    if(len(queue) > 0):
        return queue.pop(0)        
    
async def reset_dut(reset_n, duration_ns):
    reset_n <= 0
    await Timer(duration_ns, units="ns")
    reset_n <= 1
    reset_n._log.info("Reset complete.")


async def write_fifo_en(dut, full,  dut_wr_en , dut_din, num):
    for i in range(num):
        write_fifo_en = np.random.randint(2)
        write_data = np.random.randint(2**16)
        await RisingEdge(dut.clk)
        full_flag = full.value.integer
        if(full_flag == 0):
            dut_wr_en <= write_fifo_en
            dut_din <= write_data
        else:
            dut_wr_en <= 0
            dut_din <= write_data
    dut_wr_en <= 0

async def write_fifo_data(dut, full,  dut_wr_en , dut_din, num):
    for i in range(num):
        # reference model
        await RisingEdge(dut.clk)
        if(dut_wr_en.value.integer==1 and full.value.integer == 0):
            write_data = dut_din.value.integer
            await Timer(0.1, units="ns")
            enq(write_data)
            dut._log.info("Write fifo complete. Data = {}, queue data= {}".format(write_data,queue))
        #elif(full.value.integer):
        #    dut._log.info("Write fifo fail (full). Data = {}".format(write_data))

async def read_fifo_en(dut, empty,  dut_rd_en , num):
    for i in range(num):
        read_fifo_en = np.random.randint(2)
        await RisingEdge(dut.clk)
        if(empty == 0):
            dut_rd_en <= read_fifo_en
        else:
            dut_rd_en <= 0
            dut._log.info("Read fifo fail (empty).")
    dut_rd_en <= 0

async def read_fifo_data(dut, empty, dut_rd_en , dut_dout, num):
    for i in range(num):
        await RisingEdge(dut.clk)
        if(dut_rd_en.value.integer == 1 and empty.value.integer != 1):
          await Timer(0.2, units="ns")
          read_data = dut_dout.value.integer
          dut._log.info("Read fifo complete. Data = {}".format(read_data))
          real_data =  deq() 
          if(real_data != read_data):
              print('FIFO read data not match! Real: {}, Actual: {}'.format(real_data,read_data))
              print(queue)
              raise('!')


@cocotb.test()
async def run_test(dut):
    PERIOD = 10
    TEST_NUM = 100000
    cocotb.fork(Clock(dut.clk, PERIOD, 'ns').start(start_high=False))
    dut.wr_en = 0
    dut.din = 0
    dut.full = 0
    dut.rd_en = 0
    dut.dout = 0
    dut.empty = 0
    await reset_dut(dut.rst_n,20)
    await Timer(100, units="ns")

    cocotb.fork(write_fifo_en(dut, dut.full,  dut.wr_en , dut.din, TEST_NUM))
    cocotb.fork(write_fifo_data(dut, dut.full,  dut.wr_en , dut.din, TEST_NUM))
    cocotb.fork(read_fifo_en(dut, dut.empty, dut.rd_en , TEST_NUM))
    cocotb.fork(read_fifo_data(dut, dut.empty, dut.rd_en , dut.dout, TEST_NUM))
    await Timer(PERIOD*TEST_NUM, units="ns")


    print('finish')


    