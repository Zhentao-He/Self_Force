# Refs

- [2202.01794] Panosso Macedo, Rodrigo / Leather, Benjamin / Warburton, Niels / Wardell, Barry / Zenginoğlu, Anıl
  *Hyperboloidal method for frequency-domain self-force calculations*

  > The traditional semi-analytic Mano-Suzuki-Takasugi (MST) method has some limits:
  >
  > 1. The challenge with this approach is finding the coefficients in these series expansions.
  > 2. not efficient for modes high frequencies
  > 3. ill-suited to working with sources with unbounded support
  >
- [2404.10082] Bourg, Patrick / Pound, Adam / Upton, Samuel D. / Macedo, Rodrigo Panosso
  *Simple, efficient method of calculating the Detweiler-Whiting singular field to very high order*

  > The extension to eccentric or inclined orbits will be more challenging, and the only technical requirement lies in constructing a suitable local coordinate system.
  >
- [2404.10083] Macedo, Rodrigo Panosso / Bourg, Patrick / Pound, Adam / Upton, Samuel D.
  *Multi-domain spectral method for self-force calculations*

  > $m$-decomposition has better numerical convergence than $lm$-decomposition in [2202.01794]
  >

# Schwartzschild circular orbit

$$
S_{\Phi}(t,r,\theta,\varphi) = -4\pi\rho= -4\pi\int 
\frac{\mathrm{d}\tau}{\mathrm{d}t_p} \mathrm{d}t_p
\frac{1}{\sqrt{-g}}
\delta(t-t_p)
\delta[\vec{x}-\vec{x}_p(t_p)]
$$

$$
=\frac{-4\pi q}{E_pr_p^2}\delta(r-r_p)\delta({\theta-\frac{\pi}{2}})
\delta(\varphi - \Omega t)
$$

$$
=\int \sum_{l=0}^{\infty}\sum_{m=-l}^{l} S_{lm\omega}(r)Y_{lm}e^{-i\omega t}\mathrm{d}\omega
$$

$$
S_{lm\omega}(r) = \frac{-4\pi q}{E_pr_p^2}\delta(r-r_p) Y_{lm}(\frac{\pi}{2},0)\delta(\omega - m\Omega)
$$

$$
S_{\Phi} = \sum_{l=0}^{\infty}\sum_{m=-l}^{l} S_{lm}(r)c_{lm}P_l^me^{im(\varphi-\Omega t) }
$$

$$
\Phi= \sum_{l=0}^{\infty}\sum_{m=-l}^{l} \phi_{lm}(r)c_{lm}P_l^me^{im(\varphi-\Omega t) }
$$

$$
\Delta_{lm}\phi_{lm}(r)=S_{lm}^{\text{d}}(r)
$$

$S_{lm}^{\text{d}}(r)$ is called a distributional source with support on the particle’s orbit.

$$
\Delta_{lm} = \partial_r^2 + (\frac{2}{r}+ \frac{f^\prime}{f})\partial_r + \frac{1}{f}(\frac{\omega_m^2}{f} - \frac{l(l+1)}{r^2})
$$

## minimal gauge

$$
t = \lambda[T-H(\sigma)], r= \frac{2M}{\sigma}, H(\sigma)= \frac{1}{2}
[-\frac{1}{\sigma}+\ln(1-\sigma)+\ln(\sigma)]
$$

This gauge retains the minimal structure in the coordinate transformation needed to construct hyperboloidal slices. Consequently, the corresponding equations on black-hole perturbation theory assume the most simple form. [1809.02837, 1910.13452]

Rescaled field

$$
\phi_{lm}=Z\tilde{\phi}_{lm}, Z=\frac{\sigma}{\lambda}e^{sH},s=-i\omega\lambda
$$

$$
\Delta\phi=\mathcal{F} A \tilde{\phi} =S^{\text{d}} \rightarrow A \tilde{\phi} = \frac{S^{\text{d}}}{\mathcal{F}}, \mathcal{F}=\frac{Z\sigma^2}{4M^2f}
$$

The retarded behavior is not imposed through a separate boundary condition, but through the equation itself.

The delta-function source in the right-hand side imposes a jump in the field’s first derivative in the form

$$
\lim_{\epsilon\rightarrow0} 
\left.
\partial_\sigma\tilde\phi
\right|^{\sigma_p+\epsilon}_{\sigma_p-\epsilon}
=\left.
\frac{\tilde{\kappa}_{lm}}{\alpha_2}
\right|_{\sigma_p}
$$

## Multi-domain spectral methods

|                |        |        | `j=N1+1` |        |        |                     |
| :-------------: | ------ | ------ | :--------: | ------ | ------ | ------------------- |
|    `i = 1`    | `A1` | `A1` |   `A1`   |        |        | $\sigma=1$        |
|       ...       | `A1` | `A1` |   `A1`   |        |        | `Domain1`         |
|  `i = N1+1`  | `J`  | `J`  |   `J`   | `J`  | `J`  | $\sigma=\sigma_p$ |
|       ...       |        |        |   `A2`   | `A2` | `A2` | `Domain0`         |
| `i = N1+N2+1` |        |        |   `A2`   | `A2` | `A2` | $\sigma=0$        |

---

# Kerr circular orbit

## Tetrad

$$
e_T^{\mu} = u^{\mu}=u^t(1,0,0,\Omega), \Omega = \mathrm{d}\varphi/\mathrm{d}t
$$

$$
e_X^\mu = (0,\frac{\sqrt{\Delta(r_0)}}{r_0},0,0)
$$

$$
e_Y^\mu= (0,0,\frac{1}{r_0},0)
$$

$$
e_Z^\mu=-\frac{1}{r_0F(r_0)\sqrt{\Delta(r_0)}} (\sqrt{Mr_0}(r_0^2 + a^2 - 2a \sqrt{Mr_0}  ),0,0,a \sqrt{M r_0}-2 M r_0+r_0^2)
$$

where

$$
u^t = \frac{\mathrm{d}t}{\mathrm{d}\tau} = \frac{a \sqrt{M r_0}+r_0{}^2}{r_0 \sqrt{2 a \sqrt{M r_0}-3 M r_0+r_0{}^2}}
\overset{a=0}{=}\frac{1}{\sqrt{1-3M/r_0}}
$$

$$
g(e_A,e_B)|_{x_p}=\eta_{AB}
$$

$$
\begin{equation}
    \begin{cases}
        \left.\frac{\partial x^\mu}{\partial X^A}
        \right|_{x_p}
        =e^{\mu}_A 
        \\
        x^\mu(T,0,0,0) = x_p^\mu = \{t,r_0,\frac{\pi}{2},\Omega t\}
    \end{cases}
\end{equation}
$$

$$
\begin{align}
    t & = e^{t}_{T} T + e^t_{Z} z_c \sin^{-1}\left(\frac{Z}{Z_c}\right)
    \\
    r &= r_0 + e^{r}_{X} X
    \\
    \theta & = \cos^{-1}(-e^{\theta}_{Y}Y)
    \\
    \varphi &= e^{\varphi}_{T} T + e^{\varphi}_{Z}z_c\sin^{-1}\left(\frac{Z}{Z_c}\right)
\end{align}
$$

Inverting, we obtain the explicit relations

$$
\begin{align}
    T & = \frac{1}{2e^{t}_{T} }
    [(e^{t}_{Z}\Omega z_c+2)t+z_c e^{t}_{Z} \varphi ]
    \\
    X &= \frac{r-r_0}{e^{r}_{X}} 
    \\
    Y &=- \frac{1}{e^{\theta}_{Y}}\cos\theta
    \\
    Z &= z_c \sin\left[
    \frac{\varphi - \Omega t}
    {(e^{\varphi}_{\varphi}-e^{\varphi}_{T}e^{t}_{Z}/e_T^{t})z_c} 
    \right]
\end{align}
$$

where the constant $z_c$ is set as

$$
(e^{\varphi}_{\varphi}-e^{\varphi}_{T}e^{t}_{Z}/e_T^{t})z_c=2.
$$

Note that the particle is located at $(X,Y,Z)=(0,0,0)$ and

$$
\begin{align}
    \frac{\partial t}{\partial Z} &= \frac{e^t_{Z}}{\sqrt{1-(Z/z_c)^2}}
    \overset{Z=0}{=}e^t_{Z}
    \\
    \frac{\partial \theta}{\partial Y}&= \frac{e^\theta_{Y}}{\sqrt{1-(e^\theta_{Y}Y)^2}}
    \overset{T=0}{=}e^\theta_{Y}
\end{align}
$$

## Analytic mesh-refinement

$$
\begin{equation}
    x(y) = x_{\text{B}} 
    \left(
        1-\frac{2\sinh[\kappa(1-x_{\text{B}}y )]}{\sinh(2\kappa)}
    \right)
\end{equation}
$$

$y\in[-1,1] \rightarrow x\in[-1,1]$

The limit $\kappa\rightarrow$ recovers the identity $x=y$.
When $\kappa$ is large, $\mathrm{d}x/\mathrm{d}y$ is small near the $x_\text{b}$, which can resolve steep gradients in the region.

$$
\frac{\mathrm{d}f}{\mathrm{d}y} = \frac{ \mathrm{d} x}{\mathrm{d}y} \frac{\mathrm{d}f}{\mathrm{d}x}
$$

$$
\frac{\mathrm{d}^2f}{\mathrm{d}x^2} = -\frac{1}{x_y^3}x_{yy}\frac{\mathrm{d}f}{\mathrm{d}y} + \frac{1}{x_y^2} \frac{\mathrm{d}^2f}{\mathrm{d}y^2}
$$

$$
x_y:=\frac{ \mathrm{d} x}{\mathrm{d}y}=  \kappa x_{\text{B}}^2\frac{2\cosh[\kappa(1-x_{\text{B}}y )]}{\sinh(2\kappa)}
$$

$$
x_{yy}=-2 k^2 x_{\text{B}}^3 \text{csch}(2 \kappa) \sinh [\kappa (1-x_{\text{B}} y)]
$$

```matlab
xy = kappa * xB^2 * 2 * sinh(kappa*(1-xB*y)) / sinh(2*kappa); % col vec
Dx = Dy./xy
Dxx = - Dy .* xyy ./ xy.^3 + Dy.^2 ./ xy.^2;
```
