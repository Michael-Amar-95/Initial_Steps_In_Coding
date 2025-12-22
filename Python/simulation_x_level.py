# !/usr/bin/env python
# coding: utf-8

import numpy as np
import scipy as sp
from scipy.integrate import odeint
from matplotlib import pyplot as plt
import math


# function that returns dx/dt dy/dt for signal after only 1 hour
def model(c, t, beta, x_div, e):
    x_level = beta / x_div - c * e ** (-x_div * t)
    return x_level


def finfC(beta, t, x_div, e):
    c = (beta / x_div - 144.269) / (e ** (-x_div * t))
    return c

# initial condition

x_div = 0.011
e = math.e

# beta points

beta = np.linspace(0, 50, 6)
t = np.linspace(0, 10, 11)

for b in beta:
    c = finfC(b, 0, x_div, e)

    # solve ODE

    z = odeint(model, c, t, args=(b, x_div, e))

    # plot results
    plt.plot(t, z, 'b--')
    plt.xlabel('time')
    plt.ylabel('x(t)')
plt.title("1.e")
plt.grid()
plt.show()
plt.savefig('1e')
