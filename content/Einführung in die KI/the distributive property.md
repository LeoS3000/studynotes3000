---
tags:
  - linear_algebra
---
- In regular algebra:
$$(a + b) \cdot c = (a \cdot c) + (b \cdot c)$$

- In Vectors with the dot product:
$$(\mathbf{a} + \mathbf{b})^T \mathbf{c} = (\mathbf{a}^T \mathbf{c}) + (\mathbf{b}^T \mathbf{c})$$

- the dot product of (**a** plus **b**) with **c** is the same as the dot product of **a** with **c** plus the dot product of **b** with **c**
### A Simple Numerical Example

Let's make it concrete with some 2D vectors.
Suppose:
* $\mathbf{a} = \begin{pmatrix} 2 \\ 3 \end{pmatrix}$
* $\mathbf{b} = \begin{pmatrix} 4 \\ 1 \end{pmatrix}$
* $\mathbf{c} = \begin{pmatrix} 5 \\ 6 \end{pmatrix}$

**Left side of the equation:** $(\mathbf{a} + \mathbf{b})^T \mathbf{c}$
1.  First, add **a** and **b**: $\mathbf{a} + \mathbf{b} = \begin{pmatrix} 2+4 \\ 3+1 \end{pmatrix} = \begin{pmatrix} 6 \\ 4 \end{pmatrix}$
2.  Now, take the dot product with **c**: $\begin{pmatrix} 6 \\ 4 \end{pmatrix}^T \begin{pmatrix} 5 \\ 6 \end{pmatrix} = (6 \cdot 5) + (4 \cdot 6) = 30 + 24 = 54$

**Right side of the equation:** $(\mathbf{a}^T \mathbf{c}) + (\mathbf{b}^T \mathbf{c})$
1.  First dot product: $\mathbf{a}^T \mathbf{c} = \begin{pmatrix} 2 \\ 3 \end{pmatrix}^T \begin{pmatrix} 5 \\ 6 \end{pmatrix} = (2 \cdot 5) + (3 \cdot 6) = 10 + 18 = 28$
2.  Second dot product: $\mathbf{b}^T \mathbf{c} = \begin{pmatrix} 4 \\ 1 \end{pmatrix}^T \begin{pmatrix} 5 \\ 6 \end{pmatrix} = (4 \cdot 5) + (1 \cdot 6) = 20 + 6 = 26$
3.  Now, add the results: $28 + 26 = 54$