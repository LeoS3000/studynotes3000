- binary classifier
- $f:\mathbb{R}^D\rightarrow \{-1,+1\}$
### decision function
$$f(x) = \sum_{n=d}^{D} w_dx_d+b=w^Tx+b$$
### sign function
$$\sigma(z)=\left\{_{-1}^{+1}\begin{array}{c}{{:}}\\ {{:}}\end{array}\begin{array}{c}{{z\ge0}}\\ {{otherwise}}\end{array}\right.$$
### classification rule
$$\sigma(f(x))=\sigma(w^Tx+b)=\hat{y}$$
### loss function
$$\hat{R}=\sum_{n=1}^N{V_{Perceptron}}(x_n,y_n,f)=-\sum_{n=1}^N{y_nf(x_n)}$$
### Batch learning
- full gradient of entire trainings set
- true gradient
$${\frac{\partial}{\partial w}}\sum_{n=1}^{N}V(x_{n},y_{n},t)$$
### Online learning
- model updates after every instance directly
- loss function
- stochastic gradient descent (SGD)
$${\frac{\partial}{\partial w}}V(x_{n},y_{n},t)$$
### Learning Rule
- given a training set
$$\left(x_{n},y_{n}\right)\in\mathbb{R}^{D}\times\{-1,+1\},n=1,\ldots,N,$$
- the perceptron algorithm adapts the parameters w, b to the data at-hand:
1. Start with $w^0=0$
2. while $\exists n_{k}$  s.t. $y_{n_{k}}^{-}\left((w^{k})^{\top}x_{n_{k}}\right)\leq0$, update $w^{k+1}=w^{k}+y_{n_{k}}x_{n_{k}}$
- bias $b$ can be augmented
- or update rule for b is given by $b^{k+1}=b^k+y_{nk}$ 
[[convergence proof]]

see also 