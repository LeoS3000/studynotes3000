# Concept
minimize empirical risk on $\mathcal{D}$ 
$$\hat{R}[f]=\frac{1}{N}\sum_{n=1}^N{\mathcal{l}(f(x_n),y_n)}$$

Converges asymptotically to $R[f]$ in the limit $N\rightarrow \infty$  
# Framework
1.  **Choose a model**, $f$, that makes predictions.
2.  **Choose a loss function**, $\ell$, that measures how bad a single prediction is.
3.  **Minimize the average loss** over your entire training dataset `D`. This average loss is the "empirical risk".

The general formula is:
$$\underset{f}{\text{minimize}} \quad \hat{R}[f] = \frac{1}{N} \sum_{n=1}^{N} \ell(f(x_n), y_n)$$

# **Drawbacks:**
- Convergence $\hat R[f]\rightarrow R[f]$ slow
	- requires large N
- In general no unique minimum
	- poor generalization
	- no distinguished solution
