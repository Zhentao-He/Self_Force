# Kerr circular orbit
# Tetrad

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
