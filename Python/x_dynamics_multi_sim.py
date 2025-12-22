# !/usr/bin/env python
# coding: utf-8

import numpy as np
import scipy as sp
from scipy.integrate import odeint
from matplotlib import pyplot as plt
import math


# function
def x_smaller_then_2(x0, t):
    x_smaller_then_2 = - x0
    x_higher_then_2 = 10 * (x0 - 2) / (x0 + 1) - x0
    x_higher_then_2[x_higher_then_2 <= 2] = 2
    return x_smaller_then_2


# function
def x_higher_then_2(x0, t):
    x_higher_then_2 = 10 * (x0 - 2) / (x0 + 1) - x0
    return x_higher_then_2


initial_condition = [0, 1, 2, 3, 4, 4.5, 5, 6, 10]
t = np.linspace(0, 10, 11)
for c in initial_condition:
    z1 = odeint(x_smaller_then_2, initial_condition, t)
    z2 = odeint(x_smaller_then_2, initial_condition, t)
    # plot results
    plt.plot(z1, '--r')
    plt.plot(z2, '--r')

    plt.xlabel('t')
    plt.ylabel('x')
    plt.legend(['x'], loc='best')
    plt.title("x_dynamics_multi_sim")
plt.show()
plt.savefig('x_dynamics_multi_sim')

