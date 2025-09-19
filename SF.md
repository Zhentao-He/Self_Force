## Electromagnetic self-force
$$
\begin{equation}
    \Box A^a - R^{a}{}_b A^b = -4\pi j^a
\end{equation}
$$

The potential $A^a$ can be divided into two parts: a singular part that exert no force on the particle and a regular part responsible for self-force [Detweiler,Whiting (2003)].

### Green’s functions in curved spacetime

the reciprocity relation: the retarded Green’s function becomes the advanced Green’s function (and vice versa) when $x$ and $z$ are interchanged.
$$
\begin{equation}
    G^{\text{ret}}_{ab^\prime}(x,z) = 
    G^{\text{adv}}_{b^\prime a}(z,x)
\end{equation}
$$



**Detweiler-Whiting singular part**
$$
\begin{equation}
    G^\text{S} (x,z)= \frac{1}{2}
    \left[
    G^{\text{ret}} + G^{\text{adv}} -H
    \right]
\end{equation}
$$

- symmetric in indices and arguments
    $$
    \begin{equation}
        H_{ab^\prime}(x,z) = 
    H_{b^\prime a}(z,x)
    \end{equation}
    $$
- a solution to the homogeneous wave equation
    $$
    \begin{equation}
        \Box H_{ab^\prime} - R_{a}{}^c(x) H_{cb^\prime} = 0
    \end{equation}
    $$
- **key property**:
    $$
    \begin{equation}
        H(x,z) =
        \begin{cases}
            & G^{\text{adv}}, z \in I^{+}(x)
            \\
            & G^{\text{ret}}, z \in I^{-}(x)
        \end{cases}
    \end{equation}
    $$
    That is both the tail part of $G^{\text{adv}}$ and $G^{\text{ret}}$ are cancelled out by $H$.
    Thus, $G^\text{S}$ is non-zero only when $x$ and $z$ are spacelike/null related.
- the Hadamard form
    $$
    \begin{equation}
        G^\text{S} (x,z)= \frac{1}{2}
        \left[
        U(x,z)\delta(\sigma) - V(x,z)\Theta(\sigma)
        \right]
    \end{equation}
    $$
    where 
    $$
    \begin{equation}
        \sigma(x,z) =\frac{1}{2}
        \left( \int_{x}^{z} \mathrm{d}s\right)^2 
    \end{equation}
    $$ 
    is *Synge’s world function*.
$$
\begin{equation}
    A^{\text{S}}_a (x) = 
    e\int_{u(x)}^{v(x)}
    G^\text{S}_{ab^\prime}[x,z(\tau)]u^{b^\prime}\mathrm{d}\tau
    = \frac{e}{2}
    \left(
    \left.
     \frac{U_{ab^\prime}u^{b^\prime}}{u^{a^\prime}\nabla_{a^\prime}\sigma} 
     \right|^{u}_{v}
     -\int^{v}_{u} V_{ab^\prime}u^{b^\prime}\mathrm{d}\tau
    \right)
\end{equation}
$$

Detweiler-Whiting regular part
$$
\begin{equation}
    G^\text{R} (x,z) = G^{\text{ret}} - G^\text{S}
    = \frac{1}{2}
    \left[
    G^{\text{ret}} - G^{\text{adv}} + H
    \right]
\end{equation}
$$

$$
\begin{equation}
        G^\text{R} (x,z)= \frac{1}{2}
        \left[
        U(x,z)[\delta^\text{ret}(\sigma)-\delta^\text{adv}(\sigma)]
        + V(x,z)\Theta(\sigma)
        \right] 
        + V(x,z)\Theta(-\sigma)
\end{equation}
$$


$$
\begin{equation}
    A^{\text{R}}_a (x) = 
    e\int_{-\infty}^{v(x)}
    G^\text{R}_{ab^\prime}[x,z(\tau)]u^{b^\prime}\mathrm{d}\tau
    =
    \frac{e}{2}
    \left(
    \sum_{\tau=u,v}
    \frac{U_{ab^\prime}u^{b^\prime}}{u^{a^\prime}\nabla_{a^\prime}\sigma} 
    +\int^{v}_{u} V_{ab^\prime}u^{b^\prime}\mathrm{d}\tau
    \right)
    +e\int^{u-0^+}_{-\infty} G^{\text{ret}}_{ab^\prime}u^{b^\prime}\mathrm{d}\tau
\end{equation}
$$

$$
\begin{equation}
    F^{\text{R}}_{a^\prime b^\prime}=
    2eu_{[a^\prime}(
        g_{b^\prime]c^\prime} + u_{b^\prime]}u_{c^\prime}
    )
    \left(
        \frac{2}{3}\dot{a}^{c^\prime}+\frac{1}{3}R^{c^\prime}{}_{d^\prime}u^{d^\prime}
    \right)
    + 2e\int^{u-0^+}_{-\infty} \nabla_{[a^\prime}G^{\text{ret}}_{b^\prime]c^\prime}u^{c^\prime}\mathrm{d}\tau
\end{equation}
$$

$$
\begin{equation}
    f^{\text{self}}
    =
    eF^{\text{R}}_{a^\prime b^\prime}u^{b^\prime}
\end{equation}
$$

### Motion of an electric charge in curved spacetime
DeWitt and Brehme(1960), Hobbs(1968)
$$
\begin{equation}
    ma^\mu = f^\mu_{\text{ext}}
    +e^2(\delta^{\mu}{}_{\nu}+u^{\mu}u_{\nu})
    \left(
        \frac{2}{3m}
        \frac{D f^\nu_{\text{ext}}}{\mathrm{d}\tau}
    +\frac{1}{3}R^{\nu}{}_{\lambda}u^{\lambda}
    \right)
    +2e^2u_{\nu}\int_{-\infty}^{\tau-0^+}
    \nabla^{[\mu}{G^{\text{ret}}}^{\nu]}{}_{\lambda^\prime}[z(\tau),z(\tau^\prime)]u^{\lambda^\prime}
    \mathrm{d}\tau^\prime
\end{equation}
$$
- In flat spacetime the Ricci tensor is zero, the tail integral disappears and this reduces to Dirac’s result (1938).
- In curved spacetime, the self-force depends not only on the current state of motion of the particle, but also on its past history, which represents radiation emitted earlier and coming back to the particle after interacting with the spacetime curvature.

## Local expansion

$$
\begin{equation}
    A^{\text{S}} (x) 
    = \frac{e}{2}
    \left(
    \left.
     \frac{U(x,z)}{u^{a^\prime}\nabla_{a^\prime}\sigma} 
     \right|^{u}_{v}
     -\int^{v}_{u} V(x,z)\mathrm{d}\tau
    \right)
\end{equation}
$$

We first choose a reference point $\bar{x} =z(\bar{\tau})$ on the particle’s worldline.

the strategy: we expand functions of $(x,z)$ around $(x,\bar{x})$, and expand them around the coincidence limit $x=\bar{x}$.

1. 
$$
\begin{equation}
    \int^{v}_{u} V(x,z)\mathrm{d}\tau
    = \sum_{k\geq0} \frac{(\Delta\tau_v)^{k+1}-(\Delta\tau_u)^{k+1}}{(k+1)!}
    \frac{\mathrm{d}^k}{\mathrm{d}\bar\tau^k}
    V(x,\bar{x})
\end{equation}
$$
where $\Delta\tau_{v}=v-\bar\tau,\Delta\tau_{u}=u-\bar\tau.$
Completing the expansions requires the quantities $\Delta\tau_{v/u}$, which can be found by expanding the relation
$\sigma(x,z(\bar\tau+\Delta\tau_{v/u}))=0$

$$
\begin{equation}
0=\sigma(x,\bar{x})+ \Delta\tau u^{\bar{a}}\sigma_\bar{a}+\frac12(\Delta\tau)^2(a^{\bar{a}}\sigma_\bar{a}+u^{\bar{a}}u^{\bar{b}}\sigma_{\bar{a}\bar{b}}) + \cdots
\end{equation}
$$
where $\sigma_{\bar{a}}=\nabla_{\bar{a}}\sigma$.

To solve this eq., we introduce a parameter $\lambda=1$ that counts powers of distance $\sigma$ from the particle.

Second and higher derivatives of $\sigma$ can be reexpanded in a covariant Taylor series in the vector [?].

$$
\begin{equation}
\sigma_{\bar{a}\bar{b}}=g_{\bar{a}\bar{b}}+
\sum_{k\geq2}\lambda^k p^{\bar{a}_1\cdots\bar{a}_k}(\bar{x})
\sigma_{\bar{a}_{1}}\cdots\sigma_{\bar{a}_k}
\end{equation}
$$

We can derive, by induction, 
$$
\begin{equation}
    \Delta\tau = r+\epsilon s+ \sum_{k\geq2}\lambda^k
    \left[
        \frac{
        q_{1}^{\bar{a}_1\cdots\bar{a}_{2k}}(\bar{x})
        \sigma_{\bar{a}_{1}}\cdots\sigma_{\bar{a}_{2k}}
        }
        {(\epsilon s)^k}
        +
        \frac{
        q_{2}^{\bar{a}_1\cdots\bar{a}_{2k-1}}(\bar{x})
        \sigma_{\bar{a}_{1}}\cdots\sigma_{\bar{a}_{2k-1}}
        }
        {(\epsilon s)^{k-1}}
    \right]
\end{equation}
$$
where $\epsilon = 1$ for the advanced time and $−1$ for the retarded time.
The quantities
$$
\begin{equation}
r:=u^{\bar{a}}\sigma_{\bar{a}},\quad
s:=\sqrt{(g^{\bar{a}\bar{b}}+u^{\bar{a}}u^{\bar{b}})\sigma_{\bar{a}}\sigma_{\bar{b}}}
\end{equation}
$$
are the components of $\sigma_{\bar{a}}$ parallel to and orthogonal to the worldline.

$$
\begin{equation}
A^{\text{S}} (x) 
=\frac{e}{s}+
\sum_{n\geq0}
\lambda^n
        \frac{
        \Phi^{\bar{a}_1\cdots\bar{a}_{3n+3}}(\bar{x})
        \sigma_{\bar{a}_{1}}\cdots\sigma_{\bar{a}_{3n+3}}
        }
        { s^{2n+3}}
\end{equation}
$$

### coordinates

To express the expansion in any given coordinate system, we reexpand for small coordinate distances $\Delta y^{\bar\alpha}=y^\alpha(x)-y^{\bar\alpha}(\bar{x})$

$$
\begin{equation}
\sigma_{\bar\alpha} = \sum_{n\geq1} s_{\bar\alpha\bar\beta_1\cdots\bar\beta_n}(\bar x)
\Delta y^{\bar\beta_1}\cdots\Delta y^{\bar\beta_n}
=-g_{\bar\alpha\bar\beta}\Delta y^{\bar\beta}+\cdots
\end{equation}
$$

$$
\begin{equation}
s=\rho\sqrt{1+\sum_{k\geq1} \lambda^k \frac{S_{\bar\beta_1\cdots\bar\beta_{k+2}}(\bar x)
\Delta y^{\bar\beta_1}\cdots\Delta y^{\bar\beta_{k+2}}}{\rho^2}}
\end{equation}
$$
with the leading term $\rho:=\sqrt{(g^{\bar{a}\bar{b}}+u^{\bar{a}}u^{\bar{b}})\Delta y_{\bar{a}}\Delta y_{\bar{b}}}$.


$$
\begin{equation}
A^{\text{S}} (x) 
=\frac{e}{\rho}+
\sum_{n\geq0}
\lambda^n
        \frac{
        Q^{\bar{a}_1\cdots\bar{a}_{3n+3}}(\bar{x})
        \Delta y_{\bar{a}_{1}}\cdots\Delta y_{\bar{a}_{3n+3}}
        }
        { \rho^{2n+3}}
\end{equation}
$$

If we now specialise to a local coordinate system $(T,X^i)$, in which
- $X^i=0$ on the particle’s worldline
- $g_{\bar\alpha\bar\beta}(T,X^i=0) = \eta_{\bar\alpha\bar\beta}$
- $\left(\dfrac{\partial}{\partial T}\right)^{\bar\alpha}=u^{\bar\alpha}$

$$
\begin{equation}
A^{\text{S}} = \sum_{n\geq-1}\rho^n Q_{i_1\cdots i_{3n+3}}(T)
N^{i_{1}}\cdots N^{i_{3n+3}}
\end{equation}
$$
where $N^i=X^i/\rho$.

Since the regular field is smooth, it can be expanded in a Taylor series around the worldline

$$
\begin{equation}
A^{\text{R}} = \sum_{n\geq0}\rho^n P_{i_1\cdots i_{n}}(T)
N^{i_{1}}\cdots N^{i_{n}}
\end{equation}
$$

Note that the self-force $F_i$ only involve the first derivative, and tha the term of order $n=1$ in $A^{\text{S}}$ is even parity for a parity transformation $X^i\to-X^i$.


The products of $N^i$'s can be re-written a sum of terms involving symmetric trace-free (STF) combinations

$$
\begin{equation}
N^i N^j - \frac13\delta^{ij} = \hat{N}^{ij} 
\end{equation}
$$

$$
\begin{equation}
N^i N^j N^k = \hat{N}^{ijk} + \frac15 (\delta^{ij}N^k + \delta^{ki}N^j+ \delta^{jk}N^i)
\end{equation}
$$

$$
\begin{equation}
A^{\text{S}} =
\frac e\rho + \sum_{n\geq0}\rho^n \sum_{L}^{3n+3}{}^{\prime} \hat{Q}_{L}(T)
\hat{N}^{L}
\end{equation}
$$

$$
\begin{equation}
A^{\text{R}} =
\sum_{n\geq0}\rho^n \sum_{L}^{n}{}^{\prime} \hat{P}_{L}(T)
\hat{N}^{L}
\end{equation}
$$

Such a decomposition is in one-to-one correspondence with a spherical harmonic decomposition [Luc Blanchet, Thibault Damour (1986)].    
$\rho=\sqrt{\delta_{ij}X^iX^j}:=R$.

# Numercial Scheme

## Puncture
The order of the puncture is concerned with the rate of convergence of numerical algorithms.


## Geodesic Self-Force
<u>First</u>-order <u>Schwartzschild</u> <u>circular</u> <u>scalar</u> self-force

**Refs**
> [2202.01794] $lm$
> [2404.10083] $m$

## Self-consistent Self-Force
[Phys.Rev.Lett. 108 (2012) 191102]
$$
\begin{align}
    \Box\Phi^{\text{R}}
    &=S_{\text{eff}}[x|z(\tau),u(\tau)]
    \\
    \frac{\mathrm{D}u^{a}}{\mathrm{d\tau}}
    &= \frac{e}{m(\tau)}(g^{ab}+u^au^b)\nabla_a \Phi^{\text{R}}
    \\
    \frac{\mathrm{d}m}{\mathrm{d\tau}}
    &= -eu^a\nabla_a \Phi^{\text{R}}
\end{align}
$$
Note that the particle can radiate monopole waves and the radiated energy can come at the expense of the rest mass [Quinn(2000)].

## Multiscale expansion

However, the self-consistent approximation is not quite ideal for the EMRI problem.
- It does not capitalize on the particular, adiabatic character of the orbital inspiral, which is only slowly evolving and hence very nearly triperiodic.
- Furthermore, it is not designed to accurately incorporate a second type of slow change in the system: **the slow evolution of the large black hole** [?].

The multiscale expansion a method of singular perturbation theory expresses the evolving worldline as a function of both “slow time” $(\tilde{t}=\epsilon t)$ and “fast time” variables.

Such that the equation of motion and field equations into corresponding slow- and fast-time equations.

- At fixed values of slow time, the fast-time equations have the same triperiodicity as a background geodesic, providing “snapshots” of the inspiral on the orbital time scale.
- The slow-time equations then govern the smooth evolution from one snapshot to the next.

**Refs**
> [2508.00087]

### action-angle

$$
\begin{equation}
    g_{\mu\nu} =
    \bar{g}_{\mu\nu}+
    \epsilon h_{\mu\nu}^{(1)}(\tilde{t},x^i,q^A)
    +\epsilon^2 h_{\mu\nu}^{(2)}(\tilde{t},x^i,q^A)
    +...
\end{equation}
$$
The coeﬃcients in the expansion are required to be
- bounded functions of $\tilde{t}$
- periodic functions of $q^A$

\begin{equation}
h_{\mu\nu}^{(n)}=\sum_{k_A} h_{\mu\nu}^{(n,k_A)} (\tilde{t},x^i) 
\mathrm{e}^{\mathrm{-i} k_A q^A}
\end{equation}
### Near Identity Transformation

$$
\begin{equation}
    \dot{f}(P,q) \to \dot{\tilde{f}}(\tilde{P})
    \text{ with }
    \tilde{f}= f + \mathcal{O}(\epsilon)
\end{equation}
$$

slow evolution of "geodesic" variables
$$
\begin{equation}
    \dot{\tilde{P}}:=\frac{\mathrm{d} \tilde{P}}{\mathrm{d}t}\simeq \epsilon F^{(1)}(\tilde{P}) + \epsilon^2 F^{(2)} + ...
\end{equation}
$$
fast evolution of phase variables

\begin{equation}
    \dot{\tilde{q}}\simeq f^{(0)}(\tilde{P}) + \epsilon f^{(1)} +  ...
\end{equation}

Thus,
\begin{equation}
    \tilde{q}(\tilde{t})= \frac{1}{\epsilon}[\tilde{q}^{(0)}(\tilde{t})+\epsilon \tilde{q}^{(1)}(\tilde{t}) + ...] 
\end{equation}

- “adiabatic approximation” $\tilde{q}^{(0)}$, requires only the time-averaged dissipative piece of the first-order force.
- $n$-th “post-adiabatic approximation” $\tilde{q}^{(n)}$, requires the entire first-order force, along with the time-averaged dissipative piece of the second-order force.

\begin{equation}
    \tilde P(\tilde{t})= \tilde P^{(0)}(\tilde{t}) + \epsilon \tilde P^{(1)}(\tilde{t})
    + ... 
\end{equation}

### Drawbacks
- One limitation is that it breaks down on large distances, where length scales become comparable to the radiation-reaction time scale. [1510.05172]
- A similar failure can also occur near the large black hole’s event horizon, which (in the context of wave propagation) plays a role similar to that of infinity.

Overcoming these failures calls for the introduction of additional, complementary expansions near infinity and the horizon, which can be combined with the multiscale expansion by once again appealing to the method of matched asymptotic expansions.

### Transition from inspiral to plunge
Self-force framework for transition-to-plunge waveforms [2405.00170]

# Future work
NS-SMBH IMR waveform from self-force theory
- eccentric orbits
- EM- & G-SF

**two optional methods**
1. self-consistent evolution
    effective source/puncture: Diener et al., PRL (2012)
    worldtube excision: Wittek et al., PRL(2025)
2. geodesic self-force + multiscale expansion + transition to plunge
    [1610.09319] eccentric geodesic scalar self-force in Kerr


**challenges (for me)**
1. Computing the puncture field and eﬀective
source
2. moving the worldtubes
3. other numerical methods (e.g. discontinuous Galerkin method)
4. coding