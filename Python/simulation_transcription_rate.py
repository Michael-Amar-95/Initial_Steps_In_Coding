# !/usr/bin/env python
# coding: utf-8

import numpy as np
import scipy as sp
from scipy.integrate import odeint
from matplotlib import pyplot as plt
import math


# function that returns dx/dt dy/dt for signal after only 1 hour
def model( inducer, k_d, k_i, beta, x_t):
    equation = []
    for i in inducer:
        # print(x_t)
        equation.append(beta * ((k_d / (k_d + x_t)) + ((x_t / (k_d + x_t)) * (i*10000 / (k_i + i*10000 )))))
    return equation

k_d = 100
k_i = 1000
beta = 10
x_T = [0, 20, 50, 100, 200, 500]
inducer = np.linspace(0, 10, 11)
for x_t in x_T:
    y0 = beta * ((k_d / (k_d + x_t)) + ((x_t / (k_d + x_t)) * (0 / (k_i + 0 ))))
    z = model(inducer ,k_d, k_i, beta, x_t)
    # plot results
    plt.plot(inducer, z, '--r')
    plt.xlabel('i[um]')
    plt.ylabel('transcription rate (nm/min)')
    plt.legend(['x'], loc='best')
plt.title("simulation_transcription_rate")
plt.show()
plt.savefig('simulation_transcription_rate')
