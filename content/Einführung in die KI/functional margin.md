$\tilde{\gamma}$ is the decision value $$\tilde{\gamma}=y_n(w^Tx_n+b)$$
- depends on the scaling of w
- scaling w with a positive constant does not change classification

- **Intuition**: $w^Tx_n+b$ gives a score
- if positive: class +1
- if negative class -1
- multiplying by true label $y_n$ gives positive value, when classification is correct
	- $-a*-a = +a$
	- $+a*+a=+a$
	- $-a*+a=-a$
- the higher the value, the further the point is away from the boundery
	- more "confident"

- **flaw**
- can be arbitrarily increased by scaling $w$ and $b$
> [!info]- Visualization
> <iframe src="https://www.geogebra.org/classic/bq67w6qf?embed" width="800" height="600" allowfullscreen style="border: 1px solid #e4e4e4;border-radius: 4px;" frameborder="0"></iframe>
- changes value of $\tilde{\gamma}$ but not hyperplane or real distance

- **solution**
- use [[Geometrical Margin]]

