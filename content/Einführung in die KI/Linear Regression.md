- real valued respones variable $$y\in \mathbb{R}$$
- minimizes the squared Euclidean distance between predictions $f (x)$ and target variables $y$ .
- [[linear in parameters]]
# standard linear regression model
- with Gaussian noise: 
$$\epsilon \sim \mathcal N (0,s^2)$$
- is given by
$$f(x)=w^Tx+b \quad \text{and} \quad y=f(X)+\epsilon$$
- Goal:
	- learn $f(x)$ from training data $\mathcal D$

# augmented notation
- because of linearity
$$\begin{align*}
f(x) &= w^T x + b \\
&= \left( \sum_{d=1}^{D} w_d x_d \right) + b \\
&= \left( \sum_{d=1}^{D} w_d x_d \right) + \underbrace{b}_{:=w_0} \times \underbrace{1}_{:=x_0} \\
&= \sum_{d=0}^{D} w_d x_d = \tilde{w}^T \tilde{x}
\end{align*}$$
	where $\tilde{w} = (b,w_1,w_2,...,w_D)^T$
	and $\tilde x = (1, x_1,x_2,...,x_d)^T$
# simplified notation
- drop extra $\sim$ 
$$f(x)=w^Tx$$

- suppose data comes from linear model
$$\mathbf{w} = 
\begin{bmatrix}
w_1 \\
w_2 \\
\vdots \\
w_d
\end{bmatrix}
\qquad
\mathbf{x} = 
\begin{bmatrix}
x_1 \\
x_2 \\
\vdots \\
x_d
\end{bmatrix}$$
$$y_{(ideal)}=w^Tx$$
$$y_{(real)}=y_{(ideal)}+\epsilon_{(noise)}$$
- $\epsilon$ is everything, that can be explained 
	- shaped by many iid variables
	- central limit theorem
- for a hypothesized set of coefficients $w$  we can calculate the amount of noise that must have been added:
$$\epsilon = y_{real}-w^Tx$$
- the probability of the noise is given by the Gaussian Formular
$$P(\epsilon) = \frac{1}{\sqrt{2\pi s}}e^{-\frac{\epsilon^2}{2s^2}} $$
- The likelihood of observing our datapoints $y=(y_1,...,y_N)^t$ is thus given by
$$\begin{align*}
L(y|x_1,...x_N)
&=  \prod_{n=1}^N P(y_n|x_n;w)  \\
&= \prod_{n=1}^N \mathcal N(y_n|w^Tx_n;s^2)  \\
&= \prod_{n=1}^N \frac{1}{\sqrt{2\pi s^2}}exp(-{\frac{(y_{n}-w^Tx_n)^2}{2s^2}}) \\
\end{align*}$$
- compacting the notation
$$ \begin{align*}
\quad \quad \quad \quad \quad \quad
&= \frac{1}{(2\pi s^2)^{N/2}}exp(-{\frac{1}{2s^2}}||y-Xw||^2) \\ 
\end{align*}$$
* **The Constant Term**: We are multiplying the term $\frac{1}{\sqrt{2\pi\sigma^2}}$ by itself $N$ times. 
	* This is equivalent to $\left(\frac{1}{(2\pi\sigma^2)^{1/2}}\right)^N = \frac{1}{(2\pi\sigma^2)^{N/2}}$.
* **The Exponential Term**: A product of exponentials is the exponential of the sum of their arguments (i.e., $e^a \cdot e^b = e^{a+b}$). So, we can bring the product $\prod$ inside the $exp$ as a sum $\sum$:
    $$\prod_{n=1}^{N} \exp(\dots) = \exp\left( \sum_{n=1}^{N} \dots \right) = \exp\left( \sum_{n=1}^{N} -\frac{(y_n - w^T x_n)^2}{2\sigma^2} \right)$$
    We can then factor out the constant $-\frac{1}{2\sigma^2}$ from the sum.
* **The Sum to Norm Conversion**:  The expression $\sum_{n=1}^{N} (y_n - w^T x_n)^2$ is the **Sum of Squared Errors (SSE)**. 
	* This sum can be written much more compactly in vector form as $\| \mathbf{y} - \mathbf{Xw} \|^2$, which is the squared Euclidean norm of the vector difference.
	* [[Design Matrix|why this compact notations works]]
# Log-likelihood
- Instead of maximizing the likelihood $L$ directly, we maximize the log-likelihood $log L$ instead
$$\begin{align*}
\log L(y|x_1, \dots, x_N) &= \log\left( \frac{1}{(2\pi \sigma^2)^{N/2}} \exp\left( -\frac{1}{2\sigma^2} \| \mathbf{y} - \mathbf{Xw} \|^2 \right) \right) \\
&= \underbrace{\log\left(\frac{1}{(2\pi \sigma^2)^{N/2}}\right)}_{\text{constant}} + \left( -\frac{1}{2\sigma^2} \| \mathbf{y} - \mathbf{Xw} \|^2 \right) \\
&= -\frac{1}{2\sigma^2} \| \mathbf{y} - \mathbf{Xw} \|^2 + \text{constant}
\end{align*}$$
## 1. Taking the Logarithm

$$\log L(y|x_1, \dots, x_N) = \log\left( \frac{1}{(2\pi \sigma^2)^{N/2}} \exp\left( -\frac{1}{2\sigma^2} \| \mathbf{y} - \mathbf{Xw} \|^2 \right) \right)$$

## 2. Applying Logarithm Rules

$$= \underbrace{\log\left(\frac{1}{(2\pi \sigma^2)^{N/2}}\right)}_{\text{constant}} + \left( -\frac{1}{2\sigma^2} \| \mathbf{y} - \mathbf{Xw} \|^2 \right)$$

1.  **Log of a product is the sum of logs:** $\log(a \cdot b) = \log(a) + \log(b)$.
    Here, $a = \frac{1}{(2\pi \sigma^2)^{N/2}}$ and $b = \exp(\dots)$.
    The expression inside the main log is broken into two parts added together

2.  **Log and exponential are inverse functions:** $\log(\exp(z)) = z$.
    This rule is applied to the second part of the product. The $log$ cancels out the $exp$, leaving only the exponent's argument: $-\frac{1}{2\sigma^2} | \mathbf{y} - \mathbf{Xw} |^2$.

## 3. Simplifying for Optimization

$$= -\frac{1}{2\sigma^2} \| \mathbf{y} - \mathbf{Xw} \|^2 + \text{constant}$$

 - $\log\left(\frac{1}{(2\pi \sigma^2)^{N/2}}\right)$, does not depend on the parameter vector $w$ that we are trying to find.  It only contains constants ($N, \pi, \sigma$), so for the purpose of optimizing $w$, it's just a constant.
## Maximizing the likelihood leads to
$$argmax_w-\frac{1}{2\sigma^2}||y-Xw||^2$$
## dropping $s^2$ and $-$ leads to
$$argmin_w\frac{1}{2}||y-Xw||^2$$
# squared loss
$$\mathcal{l}_{sqrd}(x,y,f)=(y-f(x))^2$$
- allows us to cast linear regression into [[Empirical Risk Minimization#Framework]] 
$$
\arg\operatorname*{min}_w\frac{1}{2}\sum_{n=1}^{N}\ell_{sqrd}(x_{n},y_{n},{f})
\quad = \quad
\arg\operatorname*{min}_{w}\frac{1}{2}\sum_{n=1}^{N}\bigl(y_{n}-{f}(x_{n})\bigr)^{2}
$$
- also leads to convex optimization because of convexity in parameters
# closed form solution
- minimizing by computing the gradient using the chain rule
$$\begin{align*}
\frac{\partial}{\partial w}\,\frac{1}{2}\,\vert|X_{W}-y\,\vert^{2}&=\frac{2}{2}X^{\top}(X_{W}-y)\\
&= X^TXw-X^Ty
\end{align*}$$
- setting the derivative to zero and solving for $w$ 
$$
\begin{align*}
X^TXw-X^Ty &=0 &|&+X^Ty\\
X^TXw&=X^Ty &|& *(X^TX)^{-1}\\
w&=(X^TX)^{-1}X^Ty &
\end{align*}
$$
- $(X^TX)^{-1}$ denotes the inverse of $(X^TX)$
	- this **only** exists if $(X^TX)$ has [[full rank]]
	- can be approximated by a pseudo inverse
# gradient descent
- In general: min. objective function $E (w ) = ∑N n=1 E n (w )$ Can be solved with gradient descent, if gradient wrt. $w , ∇E (w )$ can be computed: 
	 Initialize $w^{(1)}$(randomly) 
	 for $t = 1, 2, . . .$
		 $w ^{(t+1)} = w ^{(t)} − \alpha^ {(t)} ∇E (w ^{(t)} )$ 
 where $\alpha(t) > 0$ is the learning rate (that can depend on the step).
 
see also: [[Regression und Wirkungsprognosen]]
[[Empirical Risk Minimization]]
