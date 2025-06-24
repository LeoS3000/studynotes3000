- does *not* mean the model has to be a straight line with respect to the input variables $x$
- means the model must be a **linear combination of its parameters** (the weights $w$)

A function $f(x)$ is linear in its parameters $w_0, w_1, ..., w_K$ if it can be written as:
$$f(x) = w_0 \cdot g_0(x) + w_1 \cdot g_1(x) + ... + w_K \cdot g_K(x)$$
where the functions $g_i(x)$ can be anything, as long as they don't contain any of the $w$ parameters. The model is linear because the parameters $w$ are just simple coefficients in a weighted sum.

* **Linear Model:** $f(x) = w_1 x + w_2 x^2$. This is a linear model because it's a simple weighted sum of the parameters $w_1$ and $w_2$.
* **Non-linear Model:** $f(x) = w_1 x + \sin(w_2) x^2$. This is *not* a linear model because the parameter $w_2$ is inside a non-linear function ($sin$). Standard linear regression solvers cannot handle this.

### 2. "We can introduce arbitrary nonlinear transformation $\phi(x)$"

This is the key trick to making linear regression incredibly powerful. Instead of feeding the raw input $x$ directly into our model, we first pass it through a transformation function, $\phi(x)$, which creates new features. This function is often called a **basis function** or **feature map**.

The goal of $\phi(x)$ is to "pre-process" the input $x$ into a new, higher-dimensional feature space where the relationship between the transformed features and the output $y$ *is* linear.

### 3. "E.g. $\phi(x) = [1, x_1, x_2, ..., x_{K-1}]^T$" and "Use $f(x) = w^T \phi(x)$"

Let's look at how this works with a more concrete example, **polynomial regression**, which is a special case of this idea.

Suppose you have a single input variable $x$ and you suspect the relationship with the output $y$ is a parabola (a quadratic function). The relationship is:
$$y \approx w_2 x^2 + w_1 x + w_0$$
This relationship is **non-linear in the variable $x$**, but it is **linear in the parameters** $w_0, w_1, w_2$.

We can use the "trick" from the notes to solve this with linear regression:

1.  **Define a non-linear transformation:** We define our basis function $\phi(x)$ to create the features we need: $1$, $x$, and $x^2$.
    $$\phi(x) = \begin{pmatrix} 1 \\ x \\ x^2 \end{pmatrix}$$

2.  **Rewrite the model:** Our new model is $f(x) = w^T \phi(x)$. Let's expand this:
    $$f(x) = \begin{pmatrix} w_0 & w_1 & w_2 \end{pmatrix} \begin{pmatrix} 1 \\ x \\ x^2 \end{pmatrix} = w_0 \cdot 1 + w_1 \cdot x + w_2 \cdot x^2$$

This is exactly the quadratic model we wanted!

**How it works:** We have transformed the problem. Instead of thinking about fitting a non-linear curve to $x$, we think about fitting a *linear plane* to the transformed features $\phi(x)$. We changed our simple 1D input $x$ into a 3D feature vector $z = [1, x, x^2]$. The problem is now to find a linear model $f(z) = w^T z$, which is what linear regression solvers are designed to do.

### Summary

The notes are explaining the core concept that **"linear" in linear regression refers to the parameters, not the input variables**. By first applying a non-linear feature transformation $\phi(x)$ to our input $x$, we can use the machinery of linear regression to fit a much wider variety of complex, non-linear functions. This technique allows us to model curves, waves, and other complex relationships while still remaining in the well-understood and computationally efficient framework of linear models.