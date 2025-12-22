#!/usr/bin/env python
# coding: utf-8

# In[1]:


import numpy as np
import scipy as sp
from scipy.integrate import odeint
from matplotlib import pyplot as plt


# In[2]:
ta = 0.025
ti = 0.005
bp = 0.065
kdp = 0.1
kp = 0.1
kd = 0.005
bdp = 0.125


#function that returns dx/dt dy/dt
def model0(z, t, t0, beta):
    A = z[0]
    Ap = z[1]
    K = z[2]
    P = min(1, t/t0)

    tran = ta * A + ti
    phos = (bp * K * A) / (kp + A)
    dephos = (bdp * P * Ap) / (kdp + Ap)
    dAdt = tran - phos + dephos - (kd * A)
    dApdt = phos - dephos - (kd * Ap)
    dKdt = tran - (kd * K)

    return [dAdt, dApdt, dKdt]


# In[13]:


# initial condition for z. 

z0 = [0, 0, 0]

# time points

t = np.linspace(0,2500,10000)

# Defining parameters

t0 = -100
beta = 0
# solve ODE for z. z is an array containing two vectors x and y
A_max = np.empty(16)
time = np.empty(16)
for i in range(0, 16):
    t0 = t0 + 100.1
    z = odeint(model0,z0,t,args=(t0, beta))
    A = z[:, 0]
    Ap = z[:, 1]
    K = z[:, 2]
    A_max[i] = max(A)
    time[i] = t0


# In[14]:

plt.plot(time, A_max)
plt.title('Max_A')
plt.xlabel('time (mins')
plt.ylabel('Max_A (10^(-6) M)')
plt.title('Plot of Array A')
plt.show()


# section b
z2 = odeint(model0,z0,t,args=(0.001, beta))
A2 = z2[:, 0]
A_max0 = max(A2)
print(A_max0)

plt.plot(t,A2,'r--')
plt.xlabel('time (mins)')
plt.ylabel('(10^(-6) M)')
plt.legend(['A','Ap', 'K'], loc='best')
plt.show()



def model1(z, t, t0, beta):
    A1 = z[0]
    Ap1 = z[1]
    K1 = z[2]
    P1 = min(1, t/t0)

    tran = ta * A_max0 + ti
    phos = (bp * K1 * A1) / (kp + A1)
    dephos = (bdp * P1 * Ap1) / (kdp + Ap1)
    dAdt = tran - phos + dephos - (kd * A1)
    dApdt = phos - dephos - (kd * Ap1)
    dKdt = tran - (kd * K1)

    return [dAdt, dApdt, dKdt]


t0 = -100
A_max1 = np.empty(16)
time1 = np.empty(16)
for o in range(0, 16):
    t0 = t0 + 100.1
    z1 = odeint(model1,z0,t,args=(t0, beta))
    A1 = z1[:, 0]
    A_max1[o] = max(A1)
    time1[o] = t0

plt.plot(time1,A_max1,'r--')
plt.plot(time,A_max,'b--')
plt.title('Max_A with/without feedback')
plt.xlabel('time (mins)')
plt.ylabel('(10^(-6) M)')
plt.legend(['A without feedback', 'A with feedback'], loc='best')
plt.show()




