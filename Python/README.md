# X Dynamics – Multi Simulation Repository

This repository contains several Python simulations modeling the biological dynamics of signal **X**, its derivatives, and related regulatory systems.  
All simulations use ODE-based modeling (`scipy.integrate.odeint`) and generate visual outputs.

---

# 1. `signal_dynamics_simulation`

Simulates two signals **X₁** and **X₂** from **t = 0–10 h** using:

- **dx/dt = β₁ − γ₁ · e^(−0.011t)**
- **dy/dt = β₂ + γ₂ · e^(−0.08t)**

Where γ₁, γ₂ are initial conditions and β₁, β₂ are constant production terms.

**Output:** Plot of x(t) and y(t).

---

# 2. `simulation_x_level`

Two simulations:

### ✔ 2.1 X level over time (0–10 h)
- Two coupled ODEs for X and Y  
- Exponential decay terms  
- Single plot of both signals

### ✔ 2.2 Production-rate sweep
- β = 0–50 nM/min (step = 10)  
- Loop over β values  
- All curves displayed on one plot  
- Higher β → higher steady state

---

# 3. `simulation_transcription_rate`

Simulates transcription rate as a function of inducer concentration **I**, for different regulator totals **X_T**.

Model:

$$
\beta \left(\frac{K_d}{K_d + X_T} + \frac{X_T}{K_d + X_T} \cdot \frac{I}{K_i + I}\right)
$$


**Parameters:**
- Kd = 100 nM  
- Ki = 1 µM  
- β = 10 nM/min  
- X_T = [0, 20, 50, 100, 200, 500] nM  
- I = 0–10 µM  

**Output:** Overlay plot of transcription rate curves.

---

# 4. `x_dynamics_simulation.py`

Contains:

### ✔ 4.1 Signal change over time  
- Initial conditions: [1586.964, 774.699]  
- beta1 = 1818.181, beta2 = 250  
- Range: 0–10 h  
- Plot of X and related signal

### ✔ 4.2 Production-rate variation  
As in section 2.2 (β sweep)

### ✔ 4.3 Transcription-rate curves  
As in section 3

### ✔ 4.4 Plot β(x) and γx  
- x = 0–10  
- β(x) = 10*(x−2)/(x+1) − x  
- γx = x  
- Both curves on one plot

---

# 5. `x_dynamics_multi_sim.py`

Includes all simulations above plus:

### ✔ 5.1 Multiple initial conditions  
Piecewise ODE:

- For x < 2:  dx/dt = −x  
- For x ≥ 2:  dx/dt = 10*(x−2)/(x+1) − x  

Initial values: [0, 1, 2, 3, 4, 4.5, 5, 6, 10]  
Time: 0–10 h (11 points)

**Output:** Plot of all trajectories (`x_dynamics_multi_sim.png`).

---

# 6. `x_system_feedback_sim.py`

Models three interacting components:

- A (signal)  
- Ap (phosphorylated signal)  
- K (interaction partner)

ODE system:

$$
\begin{aligned}
dA/dt &= tran - phos + dephos - kdA \\
dAp/dt &= phos - dephos - kdAp \\
dK/dt &= tran - kdK
\end{aligned}
$$

Where:  
- *tran* = ta*A + ti  (or ta*A_max0 + ti with feedback)  
- *phos* = (bp·K·A)/(kp + A)  
- *dephos* = (bdp·P·Ap)/(kdp + Ap)  
- P = min(1, t/t0)

**Parameters:**  
ta=0.025, ti=0.005, bp=0.065, kp=0.1, bdp=0.125, kdp=0.1, kd=0.005  
Time: 0–2500 (10k points)

### ✔ 6.1 Maximum A vs t0  
- Sweep over 16 t0 values  
- Plot A_max vs t0

### ✔ 6.2 Time evolution without feedback  
Plot A, Ap, K vs time

### ✔ 6.3 Time evolution with feedback  
Compare A_max with/without feedback

---

# 📦 Requirements

```bash
pip install numpy scipy matplotlib

