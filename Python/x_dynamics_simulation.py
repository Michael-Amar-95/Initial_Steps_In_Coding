import numpy as np
import scipy as sp
from scipy.integrate import odeint
from matplotlib import pyplot as plt
import math

# function that returns dx/dt dy/dt for signal after only 1 hour
def model(x, deg):
    y_x = (deg*x)
    b_x = 10*(x-2)/(x+1) - x
    return [y_x,b_x]



# initial condition

deg = 1

c = [0, 0]

# time points

x = np.linspace(0, 10, 11)

# solve ODE

z = np.array(model(x,deg))

# plot results
plt.plot(x, z[0], 'b--', label='yx')
plt.plot(x, z[1], 'g', label='b_x')
plt.xlabel('x')
plt.ylabel('b(x) & yx')
plt.legend(loc='upper left')
plt.title("x_dynamics_simulation")
plt.grid()
plt.show()
plt.savefig('x_dynamics_simulation1_b')
