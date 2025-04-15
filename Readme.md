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
- [2411.14976] Leather, Benjamin
  *Gravitational self-force with hyperboloidal slicing and spectral methods*

  > still circular orbit in Schwartzshild BH
  >
- [2503.11523] Vishal, Manas / Field, Scott E. / Gottlieb, Sigal / Ryan, Jennifer
  *Superconvergent Discontinuous Galerkin Method for the Scalar Teukolsky Equation on Hyperboloidal Domains: Efficient Waveform and Self-Force Computation*

  > scalar self-force for circular orbit in Kerr BH
  >
- [1610.09319] Thornburg, Jonathan / Wardell, Barry
  *Scalar self-force for highly eccentric equatorial orbits in Kerr spacetime*

  > 1. hyperboloidal but not minimal gauge
  > 2. Barack-Golbourn-Vega Detweiler effective-source regularization with a 4th order puncture field
  > 3. a separate **time-domain** numerical evolution in 2+1 dimensions for each $m$ modes
  > 4. Our numerical evolution uses Berger-Oliger mesh refinement with 4th order finite differencing in space and time.
  >

# Schwartzschild circular orbit

$$
S_{\Phi}(t,r,\theta,\varphi) = -4\pi\rho= -4\pi q\int 
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

$S_{lm}^{\text{d}}(r)$ is called a **distributional source** with support on the particle’s orbit.

$$
\Delta_{lm} = \partial_r^2 + (\frac{2}{r}+ \frac{f^\prime}{f})\partial_r + \frac{1}{f}(\frac{\omega_m^2}{f} - \frac{l(l+1)}{r^2})
$$

## minimal gauge

$$
t = \lambda[T-H(\sigma)], r= \frac{2M}{\sigma}, H(\sigma)= \frac{1}{2}
[\ln(1-\sigma)-\frac{1}{\sigma}+\ln(\sigma)]
$$

$$
\sigma\rightarrow0, H\rightarrow -r_* = -(r+2M\ln r)
$$

$$\sigma\rightarrow1, H\rightarrow +r_* = \ln(r-2M)$$


This gauge retains the minimal structure in the coordinate transformation needed to construct hyperboloidal slices. Consequently, the corresponding equations on black-hole perturbation theory assume the most simple form. [1809.02837, 1910.13452]

$$
\partial_r=-\frac{\sigma}{2M^2}\partial_\sigma, \partial_r^2=\frac{\sigma^3}{2M^2}\partial_\sigma + \frac{\sigma^4}{4M^2}\partial_\sigma^2
$$

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

### Asymptotic analysis
$$
e^{sH}=e^{+i\omega\lambda r_* }=e^{i\omega\lambda(r+2M\ln r)}, \sigma\rightarrow 0
$$
This behavior is due to the pathological properties of the bifurcation sphere and of spatial infinity: The representation of the physical boundary conditions in these domains is unphysical. [1102.2451]

Switching to horizon-penetrating, hyperboloidal hypersurfaces is equivalent to the rescaling of the master function for the radial equation in frequency domain

$$
\begin{align}
  \Phi 
  &= \sum_{l=0}^{\infty}\sum_{m=-l}^{l} \phi_{lm}(r)Y_{lm}e^{-i\omega_mt}
  \\
  &= \sum_{l=0}^{\infty}\sum_{m=-l}^{l} \bar{\phi}_{lm}(\sigma)Y_{lm}e^{-i\omega_m\lambda T}
\end{align}
$$
i.e.
$$
\phi_{lm}(r) = \bar{\phi}_{lm}e^{sH}
$$

Extracting the scalar field’s fall-oﬀ behavior $\sim1/r$ 
$$
\phi_{lm}(r) = \bar{\phi}_{lm}e^{sH}=\frac{\sigma}{\lambda}e^{sH}\tilde{\phi}_{lm}
$$

will simplify the equation
$$
\left[\frac{\mathrm{d}^2}{\mathrm{d}\sigma^2} + p(\sigma) \frac{\mathrm{d}}{\mathrm{d}\sigma} +q(\sigma)\right]\tilde{\phi}=0,
$$
where
$$
p(\sigma)=\frac{\alpha_1}{\alpha_2},\alpha_2=\sigma^2(1-\sigma),\alpha_1=2\sigma(2-3\sigma)+s(1-2\sigma^2)
$$

$$
q=\frac{\alpha_0}{\alpha_2}, \alpha_0=-[l(l+1)+\sigma(1+2s)+s^2(1+\sigma)]
$$
$\sigma=0$ is a irregular singular point.

$$
p(\sigma)=\sigma^{-2}\sum_{n=0}^{\infty}a_n\sigma^n,q(\sigma)=\sigma^{-2}\sum_{n=0}^{\infty}b_n\sigma^n, \tilde{\phi}(\sigma)=\sigma^{\rho}\sum_{n=0}^{\infty}c_n\sigma^n
$$

The indicial equation for $\rho$ is

$$
a_0c_0\rho=0
$$

where $a_0,b_0,c_0\neq0$ is by definition. Thus $\rho=0$. The recurrence relation for $c_k$ is

$$
c_{k+1}= - \frac{c_kk(k-1)+\sum_{n=0}^{k}(a_{k+1-n}n+b_{k-n})c_n}
{(k+1)a_0}
$$

### Peeling theorem 
The radial Teukolsky equation in BL coordinates reads [Teukolsky, Astrophys.J. 185 (1973)]

$$ \Delta ^{-s} \frac{\mathrm{d}}{\mathrm{d}r}
\left(
  \Delta ^{s+1} \frac{\mathrm{d}R}{\mathrm{d}r}
  \right)
  +
   \frac{ V}{\Delta}
  R=0
$$ 
where $V=K^2-2\mathrm{i}s(r-M)K + \Delta(4\mathrm{i}s\omega r -\lambda)$,$K=(r^2+a^2)\omega-am,\lambda=\lambda(l,m,a\omega,s),\Delta = r^2-2Mr+a^2$.

It is useful to make the transformation to cancel the first derivative

$$
Y = \Delta^{s/2}(r^2+a^2)^{1/2}R, \mathrm{d}r_*/\mathrm{d}r=(r^2+a^2)/\Delta 
$$

$$
\frac{\mathrm{d^2}Y}{\mathrm{d}r_*^2} + 
\left[
  \frac{V}{(r^2+a^2)^2}-G^2-G_{,r_*}
  \right]Y=0
$$
where $$G=\frac{s (r-M)}{a^2+r^2}+\frac{\Delta  r}{\left(a^2+r^2\right)^2}$$

When $r\rightarrow\infty$, $Y\sim r^{s+1}R$

$$
\frac{V}{(r^2+a^2)^2}\simeq\omega^2
+\frac{2\mathrm{i}s\omega}{r} 
+\frac{2\mathrm{i}s\omega M-\lambda}{r^2}
+\mathcal{O}(\frac{1}{r^4})
$$

$$
-G^2-G_{,r_*} \simeq
-\frac{s(s+1)}{r^2}
+\mathcal{O}(\frac{1}{r^3})
$$

Assuming $Y\sim r^ke^{\pm\mathrm{i}\omega r_*}$

$$
\frac{\mathrm{d^2}Y}{\mathrm{d}r_*^2}\simeq
\left[
  -\omega^2 \pm \frac{2\mathrm{i}k\omega}{r}+\frac{k(k-1)}{r^2}+\mathcal{O}(\frac{1}{r^3})
\right]Y
$$
and matching the coefficient of $1/r$, one obtains $k=\mp s$, which is consistent with the peeling-off behavior.

However, the coefficient of $1/r^2$ gives a diffirent result.

## Multi-domain spectral methods

|                |        |        | `j=N1+1` |        |        |                     |
| :-------------: | ------ | ------ | :--------: | ------ | ------ | ------------------- |
|    `i = 1`    | `A1` | `A1` |   `A1`   |        |        | $\sigma=1$        |
|       ...       | `A1` | `A1` |   `A1`   |        |        | `Domain1`         |
|  `i = N1+1`  | `J`  | `J`  |   `J`   | `J`  | `J`  | $\sigma=\sigma_p$ |
|       ...       |        |        |   `A2`   | `A2` | `A2` | `Domain0`         |
| `i = N1+N2+1` |        |        |   `A2`   | `A2` | `A2` | $\sigma=0$        |

## Binary scalar particles

$$
r_1(t)=r_2(t)=\sqrt{r_p^2+d^2}\simeq r_p, \theta_1(t)=\theta_2(t)=\theta_p=\arctan\frac{d}{r_p},\varphi_1(t)=\omega_pt=\varphi_2(t)-\pi
$$

$$
\left.
g_{\mu\nu} \frac{\mathrm{d}x^{\mu}} {\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}} {\mathrm{d}\tau}
\right|_{x_p} =-1 
\rightarrow
\left(
\frac{\mathrm{d}\tau}{\mathrm{d}t_p} 
\right)^2 =\frac{1}{f_p - (r_p\sin\theta_p\omega_p)^2}
$$

$$
S_{\Phi}(t,r,\theta,\varphi) = -4\pi\rho= 
-4\pi q\sum_{p=1}^{2}\int
\frac{\mathrm{d}\tau}{\mathrm{d}t_p} \mathrm{d}t_p
\frac{1}{\sqrt{-g}}
\delta(t-t_p)
\delta[\vec{x}-\vec{x}_p(t_p)]
$$

$$
= \frac{-4\pi\sqrt{|f_p - (r_p\sin\theta_p\omega_p)^2|}}{r_p^2\sin\theta_p} \delta(r-r_p)\delta(\theta-\theta_p)[\delta(\varphi-\omega_pt)+\delta(\varphi-\omega_pt-\pi)]
$$

$$
S_{lm\omega} = \frac{-8\pi\sqrt{|f_p - (r_p\sin\theta_p\omega_p)^2|}}{r_p^2\sin\theta_p} \delta(r-r_p)Y_{lm}(\theta_p,0)\delta(\omega-m\omega_p), \text{not vanishes when } m=\text{even.}
$$

Just replacing $\kappa_{lm}= \frac{-8\pi\sqrt{|f_p - (r_p\sin\theta_p\omega_p)^2|}}{r_p^2\sin\theta_p} Y_{lm}(\theta_p,0)$, and repeating the above process, one can obtain the retrad field.


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
