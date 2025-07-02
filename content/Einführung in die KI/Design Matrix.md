* $\mathbf{y}$ is the vector of all target values: $\mathbf{y} = \begin{bmatrix} y_1 \\ y_2 \\ \vdots \\ y_N \end{bmatrix}$
* $\mathbf{w}$ is the vector of parameters: $\mathbf{w} = \begin{bmatrix} w_1 \\ \vdots \\ w_d \end{bmatrix}$
* $\mathbf{X}$ is the **design matrix**, where each *row* is a single data sample $x_n^T$:
    $$\mathbf{X} = \begin{bmatrix} \text{--- } x_1^T \text{ ---} \\ \text{--- } x_2^T \text{ ---} \\ \vdots \\ \text{--- } x_N^T \text{ ---} \end{bmatrix} = \begin{bmatrix} x_{11} & x_{12} & \dots & x_{1d} \\ x_{21} & x_{22} & \dots & x_{2d} \\ \vdots & \vdots & \ddots & \vdots \\ x_{N1} & x_{N2} & \dots & x_{Nd} \end{bmatrix}$$

Now, consider the matrix-vector product $\mathbf{Xw}$:
$$\mathbf{Xw} = \begin{bmatrix} x_1^T w \\ x_2^T w \\ \vdots \\ x_N^T w \end{bmatrix} = \begin{bmatrix} \text{prediction for sample 1} \\ \text{prediction for sample 2} \\ \vdots \\ \text{prediction for sample N} \end{bmatrix}$$
So the vector difference $\mathbf{y} - \mathbf{Xw}$ is a vector of the individual errors:
$$\mathbf{y} - \mathbf{Xw} = \begin{bmatrix} y_1 - w^T x_1 \\ y_2 - w^T x_2 \\ \vdots \\ y_N - w^T x_N \end{bmatrix}$$
The squared norm of this vector, $\| \mathbf{y} - \mathbf{Xw} \|^2$, is the sum of the squares of its components, which is exactly the SSE we started with.