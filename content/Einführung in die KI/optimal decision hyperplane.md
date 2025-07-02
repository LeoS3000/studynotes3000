## Assumptions: 
- Training Data $\mathcal{D}$ is linearly separable
- already have an initial solution $f(x)=w^Tx+b$ 
## Preparations
- Split training data into positive $\mathcal{D}_{+1}$ and negative $\mathcal{D}_{-1}$  set
$$\mathcal{D}_{y}=\{(x_n,y_n):(x_n,y_n)\in\mathcal{D},y_n=y\},\quad y=+/-1$$
- such that
$$\mathcal{D}=\mathcal{D_{+1}}\cup \mathcal{D_{-1}}{\quad\text{~and~}}\quad \mathcal{D_{+1}}\cap \mathcal{D_{-1}}=\emptyset$$
## Ideas
- Place corridor hyperplane around $f$ 
- such that no instance lies in the corridor
	- *bigger corridor $\rightarrow$ better separation*
	- maximize width
## Steps
- Compute [[Functional Margin|Functional Margins]] ${\tilde{\gamma}}_{\pm1}$ for the sets $\mathcal{D}_{\pm{1}}$ given f:
$$\tilde{\gamma}_{+1}=\operatorname*{min}_{(x_{n},y_{n})\in{\cal D}_{+1}}y_{n}\left({w}^Tx_{n}+b\right)$$
$$\tilde{\gamma}_{-1}=\operatorname*{min}_{(x_{n},y_{n})\in{\cal D}_{-1}}y_{n}\left({w}^Tx_{n}+b\right)$$
- Corridor hyperplanes are given by
$$w^Tx+b=+\tilde{\gamma}_{+1}$$
$$w^Tx+b=-\tilde{\gamma}_{-1}$$
- with of the corridor is
$$\tilde{\gamma}_{+1}+\tilde{\gamma}_{-1}$$
- [[Hyperplane]] in the center of the corridor is given by
$$w^Tx+b={\frac{\widetilde{\gamma}_{+1}-\widetilde{\gamma}_{-1}}{2}}=:b_{0}$$
- and has functional margin of 
$$\tilde{\gamma}=\frac{\widetilde{\gamma}_{+1}-\widetilde{\gamma}_{-1}}{2}$$
- Corridor hyperplanes can be expressed relative to center of hyperplane
$$w^Tx+b=b_0+\hat{\gamma}$$
$$w^Tx+b=b_0-\hat{\gamma}$$
- Multiplying the equations with a positive constant does not change the hyperplanes or classification 
	- this is because of the [[Homogeneity of Linear Functions]]
- this also means, that there are infinitely many values of $w$ and $b$ that define **the same separating hyperplane**
	- optimization problem is **ill-posed**
- To get a unique solution we normalize the [[Functional Margin]] to be 1 to get the [[Geometrical Margin]]
	- by dividing by $\hat{\gamma}$ 
- Using ${\tilde{w}}={\frac{1}{\gamma}}w$  and ${\hat{b}}={\frac{b-b_{0}}{\gamma}}$  we get simplified corridor hyperplanes
$$\tilde{w}^{\top}x+\tilde{b}\ \ =+1 \quad \text{and} \quad 
\tilde{w}^{\top}x+\tilde{b}\ \ =-1$$
- giving us a functional margin of $\hat{\gamma}=1$
- decision hyperplane can now be written as
$$\tilde{w}^{\top}x+\tilde{b}\ \ =0$$
- when dropping the tildes
	- hyperplane
$$f(x)=w^{\top}x+b=0$$
	- corridor hyperplanes
$$f(x)=w^{\top}x+b=+1$$
$$f(x)=w^{\top}x+b=-1$$

- Setting $\hat{\gamma}=1$ implies a geometrical margin
$$\gamma=\frac{1}{||w||}$$
- maximizing $\gamma$ is equivalent to minimizing $||w||$
## optimization problem
use $||w||^2$ because it’s smooth, differentiable, convex, and leads to the same optimal hyperplane as minimizing $||w||$
$$\begin{array}{r l}{\operatorname*{min}_{W,b}\|w\|^{2}}&{{}\qquad}\\ {\mathsf{s.t.}}\ y_{n}\left(w^Tx_{n}+b\right)\geq1&{{}\qquad\forall\ 1\leq n\leq N}\end{array}$$

Minimum $w^*$ realizes optimal decision hyperplane with a geometric margin
$$\gamma=\frac{1}{||w||}$$

solving this requires the [[Lagrange Multipliers]]
