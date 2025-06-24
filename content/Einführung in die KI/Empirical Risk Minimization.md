minimize empirical risk on $\mathcal{D}$ 
$$\hat{R}[f]=\frac{1}{N}\sum_{n=1}^N{\mathcal{l}(f(x_n),y_n)}$$

Converges asymptotically to $R[f]$ in the limit $N\rightarrow \infty$  
**Drawbacks:**
- Convergence $\hat R[f]\rightarrow R[f]$ slow
	- requires large N
- In general no unique minimum
	- poor generalization
	- no distinguished solution