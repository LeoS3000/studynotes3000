---
tags:
  - basiswissen
---
## Rules for Scalar Functions
### Constant Rule: 
The derivative of a constant is zero
	$\frac{d}{dx}(c) = 0$
### Constant Multiple Rule: 
A constant factor can be pulled out of the derivative
	$\frac{d}{dx}(c \cdot f(x)) = c \cdot \frac{d}{dx}(f(x))$
### Power Rule: 
For $x^n$, the derivative is $n \cdot x^{n-1}$
	$\frac{d}{dx}(x^n) = nx^{n-1}$
### Sum/Difference Rule: 
The derivative of a sum or difference of functions is the sum or difference of their derivatives
    $\frac{d}{dx}(f(x) \pm g(x)) = \frac{d}{dx}(f(x)) \pm \frac{d}{dx}(g(x))$
### Product Rule: 
For a product of two functions $f(x)g(x)$, the derivative is $f'(x)g(x) + f(x)g'(x)$
	$\frac{d}{dx}(f(x)g(x)) = f'(x)g(x) + f(x)g'(x)$
### Quotient Rule: 
For a quotient of two functions $\frac{f(x)}{g(x)}$, the derivative is $\frac{f'(x)g(x) - f(x)g'(x)}{(g(x))^2}$
	$\frac{d}{dx}\left(\frac{f(x)}{g(x)}\right) = \frac{f'(x)g(x) - f(x)g'(x)}{(g(x))^2}$
### Chain Rule: 
For a composite function $f(g(x))$, the derivative is $f'(g(x)) \cdot g'(x)$
	$\frac{d}{dx}(f(g(x))) = f'(g(x)) \cdot g'(x)$
## Specific derivatives for common functions
### Exponential Functions
* $\frac{d}{dx}(e^x) = e^x$
* $\frac{d}{dx}(a^x) = a^x \ln(a)$
### Logarithmic Functions
* $\frac{d}{dx}(\ln(x)) = \frac{1}{x}$
* $\frac{d}{dx}(\log_a(x)) = \frac{1}{x \ln(a)}$
### Trigonometric Functions
* $\frac{d}{dx}(\sin(x)) = \cos(x)$
* $\frac{d}{dx}(\cos(x)) = -\sin(x)$
* $\frac{d}{dx}(\tan(x)) = \sec^2(x)$
* And so on for $\cot(x)$, $\sec(x)$, $\csc(x)$.
## Rules for Matrix Calculus
### Linearity:
$$\frac{d}{dX} (aF + bG) = a \frac{dF}{dX} + b \frac{dG}{dX}$$
		where $a, b$ are scalars and $F, G$ are matrix-valued functions.
### Product Rule (for Matrices)
*order matters due to non-commutative matrix multiplication*
* For two matrix-valued functions $F(X)$ and $G(X)$:
$$\frac{d}{dX}(FG) = \frac{dF}{dX}G + F\frac{dG}{dX}$$
	 (This is a simplified form; the exact formulation can be more complex depending on the specific dimensions and nature of $F$ and $G$).
* For a scalar function $f(\mathbf{X}) = \text{tr}(\mathbf{AX})$, where $\mathbf{A}$ and $\mathbf{X}$ are matrices, $\frac{df}{d\mathbf{X}} = \mathbf{A}^T$. 
* For $f(\mathbf{x}) = \mathbf{x}^T \mathbf{A} \mathbf{x}$ (quadratic form), where $\mathbf{x}$ is a vector and $\mathbf{A}$ is a matrix:
$$\frac{\partial (\mathbf{x}^T \mathbf{A} \mathbf{x})}{\partial \mathbf{x}} = (\mathbf{A} + \mathbf{A}^T)\mathbf{x}$$
        If $\mathbf{A}$ is symmetric ($A = A^T$), this simplifies to $2\mathbf{A}\mathbf{x}$.
### Chain Rule (for Matrices)
$$\frac{df}{dX} = \frac{df}{dY} \frac{dY}{dX}$$
where $f$ is a function of $Y$, and $Y$ is a function of $X$. 
This needs careful interpretation based on the dimensions of the matrices involved.
### Gradients
If $f(X)$ is a scalar function of a matrix $X$, the gradient $\nabla_X f$ (or $\frac{df}{dX}$) is a matrix of the same dimensions as $X$, where each element is the partial derivative of $f$ with respect to the corresponding element of $X$.
For a scalar function $f(\mathbf{X})$ where $\mathbf{X}$ is an $m \times n$ matrix, the derivative $\frac{\partial f}{\partial \mathbf{X}}$ is an $m \times n$ matrix with elements:
    $$\left[ \frac{\partial f}{\partial \mathbf{X}} \right]_{ij} = \frac{\partial f}{\partial X_{ij}}$$

### Jacobian Matrix
If $\mathbf{y} = f(\mathbf{x})$ is a vector-valued function of a vector, the Jacobian matrix $J$ (or $\frac{d\mathbf{y}}{d\mathbf{x}}$) contains all first-order partial derivatives. If $\mathbf{y} \in \mathbb{R}^m$ and $\mathbf{x} \in \mathbb{R}^n$, the Jacobian is an $m \times n$ matrix. $$\mathbf{J} = \frac{\partial \mathbf{y}}{\partial \mathbf{x}} = \begin{bmatrix} \frac{\partial y_1}{\partial x_1} & \cdots & \frac{\partial y_1}{\partial x_n} \\ \vdots & \ddots & \vdots \\ \frac{\partial y_m}{\partial x_1} & \cdots & \frac{\partial y_m}{\partial x_n} \end{bmatrix}$$
### Hessian Matrix:
For a scalar function $f(\mathbf{x})$ of a vector $\mathbf{x}$, the Hessian matrix $H$ (or $\frac{\partial^2 f}{\partial \mathbf{x}^2}$) contains all second-order partial derivatives. It's a symmetric matrix.
    $$\mathbf{H} = \frac{\partial^2 f}{\partial \mathbf{x}^2} = \begin{bmatrix} \frac{\partial^2 f}{\partial x_1^2} & \frac{\partial^2 f}{\partial x_1 \partial x_2} & \cdots \\ \frac{\partial^2 f}{\partial x_2 \partial x_1} & \frac{\partial^2 f}{\partial x_2^2} & \cdots \\ \vdots & \vdots & \ddots \end{bmatrix} $$