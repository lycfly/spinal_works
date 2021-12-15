import random
import math
import cocotb
import numpy as np 
from numfi import numfi
from cocotb.clock import Clock
from cocotb.triggers import FallingEdge,RisingEdge,Timer
import matplotlib.pyplot as plt
import sys
sys.path.append("../")
import FFT
from FFT import check_scala_np_wn, _reverse_pos, plot_diff_of_two_fft
from utils import Uint2Sint

def requantize(x,s,w,f):
    return numfi.requantize(x,s=s,w=w,f=f)

async def reset_dut(reset_n, duration_ns):
    reset_n <= 0
    await Timer(duration_ns, units="ns")
    reset_n <= 1
    reset_n._log.info("Reset complete.")

async def mem_behav(dut, mem, wordwidth):
    while(1):
        await RisingEdge(dut.clk)
        if(dut.cs == 1 and dut.wr == 0):
            dut.rdata <= int(mem[dut.addr.value.integer])
            real,imag = decode_complex(int(mem[dut.addr.value.integer]),wordwidth)
            dut._log.info("Read fft mem. Addr={}, real= {}, imag = {}".format(dut.addr.value.integer,real,imag))
        elif(dut.cs == 1 and dut.wr == 1):
            mem[dut.addr.value.integer] = dut.wdata.value.integer
            real,imag = decode_complex(mem[dut.addr.value.integer],wordwidth)
            dut._log.info("Write fft mem. Addr={}, real= {}, imag = {}".format(dut.addr.value.integer,real,imag))


def encode_complex(datain_real,datain_imag, quantize):
    s,w,f = quantize
    qdata_real = numfi(datain_real, s,w,f)
    qdata_imag = numfi(datain_imag, s,w,f)
    merge = [qdata_real[x].bin[0] + qdata_imag[x].bin[0] for x in range(qdata_real.shape[0])]
    encode = np.array([int(merge[x],2) for x in range(qdata_real.shape[0])])
    return encode

def str_inverse(string):
    return string[::-1] # inverse

def add_length(string,wordbits):
    addlen = wordbits - len(string)
    return '0'*addlen + string

def decode_complex(mem_int, wordbits):
    binnum = bin(mem_int).replace('0b','')
    binnum = add_length(binnum,wordbits)
    num_bits = int(wordbits/2)
    qdata_real = Uint2Sint(int(binnum[0:num_bits],2),num_bits)
    qdata_imag = Uint2Sint(int(binnum[num_bits:wordbits],2),num_bits)
    return qdata_real,qdata_imag

async def check_cal(dut, mem_stage ,mem_stage_true):
    j = 0
    while True:
        await FallingEdge(dut.ctrl.flg_cnt_group_done)
        await FallingEdge(dut.ctrl.cs)
        dut._log.info(j)
        isequal = np.array(mem_stage_true[j]) == np.array(mem_stage)
        if not (np.sum(isequal) == isequal.shape[0]):
            print('FFT stage {}'.format(j))
            print('Equal sum should be {} , actual is:'.format(isequal.shape[0]))
            print(np.sum(isequal))
            print('Equal mask :')
            print(isequal)
            print('diff distance (A-B):')
            print(mem_stage_true[j][:]-mem_stage[:])
            raise('FFT stage {} cal wrong!'.format(j))
        else:
            dut._log.info('stage {}, test pass!'.format(j))
            j += 1


@cocotb.test()
async def test_fft_simple(dut):
    """ Test fft control"""

    cocotb.fork(Clock(dut.clk, 1, units='ns').start())
    await reset_dut(dut.resetn,10)
    N = 256
    DATA_WIDTH = 16
    MEM_WORDWIDTH = DATA_WIDTH * 2
    FRAC_BITS = 10
    max_bits = np.array([5, 5, 5, 5, 5, 5, 5, 5])
    round_bits = DATA_WIDTH - 1 - max_bits
    round_list = [[1, DATA_WIDTH, FRAC_BITS]]  # input round
    round_list += [[1, DATA_WIDTH, int(x)] for x in round_bits]
    qlist = round_list
    print(qlist)
    check_scala_np_wn("../../wn_real.txt", "../../wn_imag.txt",qlist, N, DATA_WIDTH)

    my_q_fft = FFT.qFFT(N, qlist)

    data = np.random.uniform(low=-1.0, high=1.0, size=N)
    data = numfi(data, 1, DATA_WIDTH, DATA_WIDTH-1)  #1,16,15
    data = np.array(data)
    data = np.zeros(N, dtype=complex) + data
    true_fft = np.fft.fft(data.copy())
    qfft_out, my_stages = my_q_fft.cal_fft_with_stage(data.copy())
    mem_data = data.copy()
    mem = encode_complex(mem_data.real,mem_data.imag, [1,DATA_WIDTH,FRAC_BITS])
    final_stage = my_stages[-1]
    print(mem[0],mem[128])

    mem_encode_stage = [encode_complex(my_stages[x][0],my_stages[x][1],[1,DATA_WIDTH,FRAC_BITS]) for x in range(len(my_stages))]
    print(mem_encode_stage[1][:10])

    cocotb.fork(mem_behav(dut,mem,MEM_WORDWIDTH))
    cocotb.fork(check_cal(dut,mem,mem_encode_stage))

    await RisingEdge(dut.clk)
    dut.en <= 1
    await FallingEdge(dut.done)
    dut.en <= 0
    await Timer(1000, units="ns")
    final_stage_mem = encode_complex(final_stage[0],final_stage[1],[1,DATA_WIDTH,FRAC_BITS])
    print(mem==final_stage_mem)
    final_reverse = np.array([_reverse_pos(x, N) for x in range(N)])  # final reverse code
    print('test')
    final_stage_mem_true_order = mem[final_reverse]
    final_stage_mem_true_order = np.array([np.array(decode_complex(final_stage_mem_true_order[x], MEM_WORDWIDTH))*1.0/(2**FRAC_BITS) for x in range(N)])
    print(final_stage_mem_true_order.shape)
    hardware_fft = final_stage_mem_true_order[:,0] + final_stage_mem_true_order[:,1]*1j
    reference_fft = qfft_out[0,:] + qfft_out[1,:]*1j
    plot_diff_of_two_fft(plt, true_fft.imag,hardware_fft.imag)

if __name__ == '__main__':
    print('test')

