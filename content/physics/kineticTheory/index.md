# Kinetic Theory

!!! note "Lesson in progress"
    This lesson is being developed.

Kinetic theory is a classical model that describes the behavior of a fluid at the mesoscopic level.
It is based on the assumption that a fluid is composed of a large number of particles that move randomly,
which allows for the derivation of macroscopic properties like density, velocity, and temperature in the thermodynamic continuum limit.

The fundamental object of interest in kinetic theory is the particle distribution function $f(\vec x, \vec u, t)$.
It describes the probability of finding a particle at position $\vec x$ with velocity $\vec u$ at time $t$,
where $\vec{F}$ is an external force acting on the constituent particles of mass $m$.

$$
\frac{df(\vec x, \vec u, t)}{dt} = \partial_t f + \vec u \cdot \vec \nabla_{\vec x} f + \frac{\vec F}{m} \cdot \vec \nabla_{\vec u} f = \Gamma[f]
$$