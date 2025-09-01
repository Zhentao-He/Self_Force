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


