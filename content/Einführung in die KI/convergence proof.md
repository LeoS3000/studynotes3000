## requirements
### The $x_n$ are in a sphere of radius $R:$ 
$$\exists R>0:\forall n\ \|x_{n}\|\leq R$$
### The two classes can be separated with margin γ>0:
$$\exists w^*>0,\|w^*\|=1,\exists\gamma>0:\forall n\ y_{n}((w^{\star})^{\top}x_{n})\geq\gamma/2$$
- There exists an optimal weight vector $w^∗$ (with a length of 1)
- there exists a positive margin $\gamma$
- such that **for all data points** $(x_n​,y_n​)$ in our dataset
- the expression $y_n​((w^∗)^Tx_n​)$ is guaranteed to be **at least $γ/2$
## Core Notation
* **$w^k$
	* weight vector of Perceptron at iteration $k$
	* defines hyperplane
* **$w^{k+1}$
	* updated weight vector after a misclassified sample is used to adjust $w^k$
* **$w^*$
	* an *optimal* weight vector
	* Since 1: at least one such $w^*$ exists that correctly classifies all data points with a certain margin
* **$(x_{n_k}, y_{n_k})$
	* a misclassified data sample at iteration $k$
    * $x_{n_k}$ is the feature vector
    * $y_{n_k}$ is the true label (+1 or -1).
* **$\gamma$ (gamma)**
	* represents the *margin*
	* minimum distance from any data point to the optimal separating hyperplane defined by $w^*$
	* The existence of a positive margin is a formal way of saying the data is linearly separable

## proof's strategy 
- show that the weight vector $w^k$ gets closer to the optimal vector $w^*$ with each iteration
-  **$$(w^{k+1})^T w^*$$ 
- dot product between the **new, updated weight vector** and the **optimal weight vector** ($w^∗$)
- proof wants to understand how this relationship changes after an update

## establishing a lower bound on dot product between the updated weight vector $w^{k+1}$ and the optimal weight vector $w^*$
1.  $(w^{k+1})^T w^* =$ $$(w^k + y_{n_k}x_{n_k})^T w^*$$
    * **Perceptron update rule**
    * When a sample $(x_{n_k}, y_{n_k})$ is misclassified: 
	    * weight vector is updated according to the rule: $w^{k+1} = w^k + y_{n_k}x_{n_k}$
	    * This equation simply substitutes this update rule into the dot product

2.  $$= (w^k)^T w^* + y_{n_k}((x_{n_k})^T w^*)$$
    * applying [[the distributive property]] of the dot product 
		* $\mathbf{a} = w^k$ , $\mathbf{b} = y_{n_k}x_{n_k}$ , $\mathbf{c} = w^*$
		-              $(\mathbf{a} + \mathbf{b})^T \mathbf{c} = (\mathbf{a}^T \mathbf{c}) + (\mathbf{b}^T \mathbf{c})$
		- $(w^k + y_{n_k}x_{n_k})^T w^* = (w^k)^T w^* + (y_{n_k}x_{n_k})^T w^*$
	- pull scalar out of a dot product
		- $y_{n_k}$ is just a scalar (+1 or -1)
3.  $$\ge (w^k)^T w^* + \gamma/2$$
        * [[# The two classes can be separated with margin γ>0:]]
---
---
### Applying Induction
$$(w^k)^T w^* \ge k\gamma/2$$
- After $k$ updates, the dot product between the weight vector $w^k$ and the optimal vector $w^*$ is at least $k$ times $\gamma/2$
- We need to prove this is true for all $k \ge 1$.
#### 1. The Base Case (k=1, the first update)
* assumption: algorithm begins with $w^0 = \mathbf{0}$
* general rule for a single update:$$(w^{k+1})^T w^* \ge (w^k)^T w^* + \gamma/2$$
* first update, where $k=0$: creating $w^1$:
    $$(w^1)^T w^* \ge (w^0)^T w^* + \gamma/2$$
* Since $w^0 = \mathbf{0}$, the term $(w^0)^T w^*$ is just $0$:
    $$(w^1)^T w^* \ge 0 + \gamma/2 \implies (w^1)^T w^* \ge \gamma/2$$
* Now, let's check if our statement $P(k)$ holds for $k=1$.
    $P(1)$ says: $$(w^1)^T w^* \ge (1)\gamma/2$$
#### 2. The Inductive Step
* assumption:
$$(w^k)^T w^* \ge k\gamma/2$$
* **prove** that the statement must also be true for the next update, $k+1$. $$z.Z.:(w^{k+1})^T w^* \ge (k+1)\gamma/2$$
- one thing we know is always true for any update, from last step:
$$(w^{k+1})^T w^* \ge (w^k)^T w^* + \gamma/2$$
- in the Hypothesis we assumed that: $$(w^k)^T w^* \ge k\gamma/2$$
- we can substitute $k\gamma/2$ into the inequality:
$$(w^{k+1})^T w^* \ge \underbrace{(w^k)^T w^*}_{\ge k\gamma/2} + \gamma/2 \quad \implies \quad (w^{k+1})^T w^* \ge (k\gamma/2) + \gamma/2$$
- simplifng the right side by factoring out $\gamma/2$:
$$(w^{k+1})^T w^* \ge (k+1)\gamma/2$$
## establish a lower bound on the squared magnitude (norm) of the weight vector $w^k$.
1.  **$\|w^k\|\|w^*\| \ge (w^k)^T w^*$**
    * direct application of the [[Cauchy-Schwarz Inequality]]
    * Since the term on the right is shown to be positive from the first block, we can drop the absolute value.
2.  **$\|w^k\|^2 \ge ((w^k)^T w^*)^2 / \|w^*\|^2$**
    * This is obtained by squaring both sides of the Cauchy-Schwarz inequality and then dividing by $\|w^*\|^2$.

3.  **$\ge k^2\gamma^2/4$**
    * This final inequality comes from substituting the result from the first block.
    * We know from our inductive argument that: $$(w^k)^T w^* \ge k\gamma/2$$
    * Therefore, $$((w^k)^T w^*)^2 \ge (k\gamma/2)^2 = k^2\gamma^2/4$$
    * This gives us the final result: 
    $$\|w^k\|^2 \ge k^2\gamma^2 / (4\|w^*\|^2)$$
    - if we assume $\|w^*\|=1$ for simplicity, we get
    $$\|w^k\|^2 \ge k^2\gamma^2 / 4$$

### Conclusion and Significance
1.  The alignment (measured by the dot product) between the current weight vector $w^k$ and the optimal weight vector $w^*$ grows linearly with each update.
2.  As a consequence, the squared magnitude of the weight vector $w^k$ grows at least quadratically with the number of updates ($k$).

## establishing an *upper bound*
### Core Concepts and New Notation
* **$w^k$, $w^{k+1}$, $x_{n_k}$, $y_{n_k}$**: These have the same meaning as before (weight vector at iteration k, the updated vector, the misclassified feature vector, and its true label).
* **$R$**: This is a new term. In the context of this proof, **$R$ represents the maximum norm (or magnitude) of any input feature vector in the training data**. That is, $R = \max_n \|x_n\|$. We assume that all feature vectors are bounded in length.
### Explanation of the Inequalities
- show that the squared norm of the weight vector does not grow too quickly
1.  **$$\|w^{k+1}\|^2 = (w^{k+1})^T w^{k+1}$$
    * definition of the squared Euclidean norm of a vector
    * squared norm is equivalent to the dot product of the vector with itself
2.  **$$= (w^k + y_{n_k}x_{n_k})^T (w^k + y_{n_k}x_{n_k})$$
    * substitute the **Perceptron update rule** ($w^{k+1} = w^k + y_{n_k}x_{n_k}$) into the equation
3.  $$= (w^k)^T w^k + 2y_{n_k}((w^k)^T x_{n_k}) + \|x_{n_k}\|^2$$
    * This is the result of expanding the dot product from the previous step 
	    * (similar to expanding $(a+b)^2 = a^2 + 2ab + b^2$)
    $$(w^k)^T w^k = \|w^k\|^2$$
    * The cross terms are $(w^k)^T (y_{n_k}x_{n_k}) + (y_{n_k}x_{n_k})^T w^k$. 
    * Since the dot product is commutative and $y_{n_k}$ is a scalar, this simplifies to $2y_{n_k}((w^k)^T x_{n_k})$.
    $$(y_{n_k}x_{n_k})^T (y_{n_k}x_{n_k}) = y_{n_k}^2 (x_{n_k}^T x_{n_k})$$
	- Since the label $y_{n_k}$ is either +1 or -1:
	- $$y_{n_k}^2 = 1$$
	- And:
	$$x_{n_k}^T x_{n_k} = \|x_{n_k}\|^2$$

4.   $y_{n_k}((w^k)^T x_{n_k}) \le 0$: 
	- **condition for a misclassification** 
	- The Perceptron's prediction for $x_{n_k}$ is the sign of $(w^k)^T x_{n_k}$. 
	- For the sample to be misclassified, this prediction must be wrong. This means the sign of $(w^k)^T x_{n_k}$ must be different from the sign of the true label $y_{n_k}$. Therefore, their product must be negative (or zero, if the point lies exactly on the hyperplane). 
5. $\|x_{n_k}\|^2 \le R^2$: 
	- This follows from the definition of $R$. 
	- Since $R$ is the maximum norm of any input vector, the norm of this specific vector $x_{n_k}$ (squared) must be less than or equal to $R^2$.
	    * [[### The $x_n$ are in a sphere of radius $R:$ |requirement]]
6.  **$\le \|w^k\|^2 + R^2$**
    * This inequality is formed by replacing the terms in the previous line with their upper bounds.
    * The term $2y_{n_k}((w^k)^T x_{n_k})$ is negative or zero, so removing it (or replacing it with 0) makes the expression larger or equal.
    * The term $\|x_{n_k}\|^2$ is replaced by its maximum possible value, $R^2$.
	    * [[### The $x_n$ are in a sphere of radius $R:$|requirement ]]
### Applying Induction
The goal here is to prove that the squared length of the weight vector, $\|w^k\|^2$, doesn't grow too fast. Specifically, we want to prove that it grows, at most, linearly with the number of updates, $k$.

The statement we want to prove, let's call it $P(k)$, is:
$$P(k): \quad \|w^k\|^2 \le kR^2$$
#### The Foundation for the Induction
$$\|w^{k+1}\|^2 \le \|w^k\|^2 + R^2$$
- The squared length of the weight vector after an update is, at most, the old squared length plus $R^2$
- It's the one step we know is always true for any update.
#### 1. The Base Case (k=1, after the first update)
We need to show the formula $P(k)$ is true for the very first update.
* We start with the algorithm's initial state: $w^0 = \mathbf{0}$. This means its squared length is $\|w^0\|^2 = 0$.
* Now, we apply our known rule for the first update (going from $k=0$ to $k=1$):$$\|w^1\|^2 \le \|w^0\|^2 + R^2$$
* Substitute in $\|w^0\|^2 = 0$:
$$\|w^1\|^2 \le 0 + R^2 \implies \|w^1\|^2 \le R^2$$
#### 2. Inductive Step (If it works for $k$, does it work for $k+1$?)
* **Assume** that our statement $P(k)$ is true after some arbitrary number of updates $k$. So we assume:
$$\|w^k\|^2 \le kR^2$$

* Now, we must **prove** that the statement is also true for the very next update, $k+1$. We must prove $P(k+1)$:
$$\|w^{k+1}\|^2 \le (k+1)R^2$$

- one rule we know is always true:
$$\|w^{k+1}\|^2 \le \|w^k\|^2 + R^2$$
- since we assumed that $\|w^k\|^2$ is *at most* $kR^2$:
$$\|w^{k+1}\|^2 \le \underbrace{\|w^k\|^2}_{\le kR^2} + R^2 \quad \implies \quad \|w^{k+1}\|^2 \le (kR^2) + R^2$$
- factor out $R^2$ on the right side:
$$\|w^{k+1}\|^2 \le (k+1)R^2$$
* This shows that the squared norm of the weight vector is bounded from above by a linear function of the number of updates, $k$.
## Tying It All Together
- combine the results from both limits. Let $k$ be the total number of misclassifications (updates).

- **first** we derived a **lower bound**:
$$\|w^k\|^2 \ge k^2\gamma^2/4$$

- **second**, we derived an **upper bound**:
$$\|w^k\|^2 \le kR^2$$
- **combine** these two inequalities:
$$k^2\gamma^2/4 \le \|w^k\|^2 \le kR^2$$
- Focusing on the **outer parts** of the inequality:
$$k^2\gamma^2/4 \le kR^2$$
- If $k > 0$, we can **divide both sides** by $k$:
$$k\gamma^2/4 \le R^2$$
- we can **solve for $k$**:
$$k \le \frac{4R^2}{\gamma^2}$$
- shows that the total number of misclassifications, $k$, must be less than or equal to a fixed, finite value ($4R^2/\gamma^2$). 
- Since the number of updates is bounded, the algorithm is guaranteed to stop making mistakes and thus converge to a solution that correctly classifies all training data.
**This result makes sense:**
1. The bound does not change if the population is scaled, and
2. the larger the margin, the more quickly the algorithm classifies all the samples correctly.