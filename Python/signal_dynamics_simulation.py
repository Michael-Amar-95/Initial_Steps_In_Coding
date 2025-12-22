# !/usr/bin/env python
# coding: utf-8

import numpy as np
import scipy as sp
from scipy.integrate import odeint
from matplotlib import pyplot as plt
import math

# function that returns dx/dt dy/dt for signal after only 1 hour
def model(c, t, beta1, beta2):
    gamma1 = c[0]
    gamma2 = c[1]
    dxdt = beta1 - gamma1 * math.e ** (-0.011 * t)
    dydt = beta2 + gamma2 * math.e * (-0.08 * t)
    return [dxdt, dydt]

# initial condition

c = [1586.964, 774.699]

# Defining parameters

beta1 = 1818.181
beta2 = 250

# time points

t = np.linspace(0, 10, 11)

# solve ODE

z = odeint(model, c, t, args=(beta1, beta2))

# plot results
plt.plot(t, z[:, 0], 'b--', label='signal after 3 hours')
plt.plot(t, z[:, 1], 'g', label='signal after 1 hours')
plt.xlabel('time')
plt.ylabel('x(t)')
plt.legend(loc='upper left')
plt.title("signal_dynamics_simulation")
plt.grid()
plt.show()
plt.savefig('signal_dynamics_simulation')
