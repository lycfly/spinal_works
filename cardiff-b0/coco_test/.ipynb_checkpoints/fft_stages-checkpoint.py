# Copyright (c) 2012 Ben Reynwar
# Released under MIT License (see LICENSE.txt)

"""
Gives expected results of FFT DIT stages to compare with verilog code.
"""

import cmath
import math
from numpy import fft as nfft
from itertools import chain
import numpy as np
import matplotlib.pyplot as plt
import time
def fftstages(cs):
    """
    Returns a list of the output from FFT DIT stages.

    Args:
        cs: A list of complex numbers.

    Returns:
        A list of lists of complex numbers.
        Each list corresponds to the ouput from a FFT DIT stage.
        The final list of complex numbers should be the correct
        FFT of the input 'cs'.
    """
    N = len(cs)
    #print(N)
    if math.log(N) / math.log(2) != int(math.log(N) / math.log(2)):
        raise ValueError("Length must be a power of 2")
    if N == 1:
        return [cs]
    ess = fftstages(cs[::2])
    oss = fftstages(cs[1::2])
    stages = []
    for es, os in zip(ess, oss):
        stages.append(list(chain(*zip(es, os))))
    fs = []
    for k in range(0, len(cs)):
        tf = cmath.exp(-2 * cmath.pi * 1j * k / N)
        if k < len(cs) / 2:
            f = ess[-1][k] + tf * oss[-1][k]
        else:
            f = ess[-1][k - int(N / 2)] + tf * oss[-1][k - int(N / 2)]
        fs.append(f)
    stages.append(fs)
    return stages

def _reverse_pos(num, N):
    out = 0
    bits = 0
    _i = N
    data = num
    while (_i != 0):
        _i = _i // 2
        bits += 1
    for i in range(bits - 1):
        out = out << 1
        out |= (data >> i) & 1
    total_m = bits - 1
    return out

def butterfly(xp, xq, wn):
    xw = xq * wn
    yp = xp + xw
    yq = xp - xw
    return yp, yq

if __name__ == '__main__':

    # ff_all = np.array([])
    # for i in range(1000):
    #     ff = np.fft.fft(np.random.uniform(low=-1.0, high=1.0, size=512),n=512)
    #     #print(ff.shape)
    #     ff_all = np.concatenate((ff_all,ff))
    #     print(ff_all.shape)
    #
    #
    # plt.hist2d(ff_all.real,ff_all.imag)
    # plt.show()
    # print(ff_all.shape)
    raw_data = np.random.uniform(low=-1.0, high=1.0, size=512)
    starttime = time.time()
    ff = np.fft.fft(raw_data,512)
    np_finish_time = time.time()
    print((np_finish_time-starttime)*100000)
    #ffnum = list(raw_data)
    #stages = raw_data*raw_data
    ffstage_start = time.time()
    stages = fftstages(raw_data)
    print((time.time()-ffstage_start)*100000)

    stages = np.array(stages)
    #print(stages.shape)

    dist = ff-stages[-1,:]
    #plt.hist2d(dist.real,dist.imag)
    #plt.hist2d(dist.real, dist.imag)
    #plt.hist(stages[0])
    # plt.hist2d(stages[9].real, stages[9].imag)
    #plt.show()
    N = 256
    stage_num = int(cmath.log(N,2).real)
    print(stage_num)
    pi = cmath.pi
    cos = cmath.cos
    sin = cmath.sin
    wn = np.array([(cos(2 * pi / N )-sin(2 * pi / N) * 1j) ** i for i in range(N)])
    p_stage_index = []
    q_stage_index = []
    w_stage_index = []
    w_stage_iter = []
    for i in range(stage_num):
        group_num = 2 ** i
        group_iter_num = N//group_num
        half_group_iter_num = (group_iter_num) // 2
        p_stage_index_tmp_0 = []
        q_stage_index_tmp_0 = []
        w_stage_index_tmp_0 = []
        w_stage_iter_tmp_0 = []
        for g in range(group_num):
            for x in range(half_group_iter_num):
                p_stage_index_tmp_0.append(x + group_iter_num * g )
                q_stage_index_tmp_0.append(x + group_iter_num * g + half_group_iter_num)
                w_stage_index_tmp_0.append(_reverse_pos(g, 2 ** i) << (stage_num - 1 - i))
                w_stage_iter_tmp_0.append(wn[_reverse_pos(g,2**i) << (stage_num-1-i)])
        p_stage_index.append(p_stage_index_tmp_0)
        q_stage_index.append(q_stage_index_tmp_0)
        w_stage_index.append(w_stage_index_tmp_0)
        w_stage_iter.append(w_stage_iter_tmp_0)

    final_reverse = np.array([_reverse_pos(x,N) for x in range(N)])

    print(p_stage_index)
    print(q_stage_index)
    print(w_stage_index)
    p_stage_index = np.array(p_stage_index)
    q_stage_index = np.array(q_stage_index)
    w_stage_index = np.array(w_stage_index)
    stages = []
    data = np.random.uniform(low=-1.0, high=1.0, size=N).astype(np.complex_)
    true_fft = np.fft.fft(data)
    another_fft = fftstages(data)
    my_finish_time = time.time()
    for i in range(stage_num):
        xp = data[p_stage_index[i]]
        xq = data[q_stage_index[i]]
        w = wn[w_stage_index[i]]
        #w = w_stage_iter[i]
        data[p_stage_index[i]], data[q_stage_index[i]] = butterfly(xp,xq,w)
        #stages.append(data[final_reverse])
    data = data[final_reverse]
    print((time.time()-my_finish_time)*100000)

    #print(data)
    #print(final_reverse)
    #print(data)
    #print(true_fft)
    #print(another_fft[-1])
    print(sum(true_fft - data))
    dist = true_fft-data
    plt.hist2d(dist.real,dist.imag)
    plt.show()