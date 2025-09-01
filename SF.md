## Electromagnetic self-force
$$
\begin{equation}
    \Box A^a - R^{a}{}_b A^a = -4\pi j^b
\end{equation}
$$

The potential $A^a$ can be divided into two parts: a singular part that exert no force on the particle and a regular part responsible for self-force [Detweiler,Whiting (2003)].

Green’s functions in curved spacetime

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

## Motion of an electric charge in curved spacetime
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

# Local expansion