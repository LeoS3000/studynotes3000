- Training Data:
	$$\{(X_n,Y_n)\}_{n=1,...,N} \quad\text{with} \quad x_n\in \mathbb{R}^D \quad \text{and}\quad y_n\in Y$$
- where Y is a set of discrete class lables (e.g., $Y=\{spam,ham\}$)
- implements a mapping $f:Y\rightarrow Y$ as follows:
	- Each internal node tests an attribute (dimension) $X_d$
	- There is one branch for each possible value of $X_d$
	- Every leaf node is associated with a class label $y ∈ Y$
	- A new input $x^{new}$ is classified by traversing the tree from root to leaf and output the corresponding label of that leaf
[[finding a good tree]]
see also [[Entscheidungsbäume]]

