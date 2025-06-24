used to calculate [[information gain]]
$H(Y|X)$ of a random variable $Y$ conditional on random variable $X$ is given by 
$$H(Y|X)=-\sum_{j=1}^J{P(X=x_j)}\sum_{r=1}^R{p(Y=y_r|X=x_j)log_2P(Y=y_r|X=x_j)}$$
#### 1. The Inner Core: Entropy for a *Specific* Condition

$$\sum_{r=1}^{R} p(Y=y_r|X=x_j) \log_2 P(Y=y_r|X=x_j)$$

- This inner part calculates the entropy of Y, but *only for the subset of cases where the variable X has one specific value*, $x_j$.

* $p(Y=y_r | X=x_j)$ is the conditional probability: 
	* "What is the probability that $Y$ is $y_r$, given that we know $X$ is $x_j$?"
* This entire expression is the standard formula for entropy, $H = \sum p \log p$.
* So, this inner sum represents $H(Y | X=x_j)$, the uncertainty about Y *given one specific outcome of X*.
#### 2. The Outer Sum: The Weighted Average

$$\sum_{j=1}^{J} P(X=x_j) \left[ \text{Inner Core} \right]$$

This outer part of the formula turns the "specific" uncertainty into an "average" uncertainty.
* $\sum_{j=1}^{J}$ means "sum over all possible values of X ($x_1$, $x_2$, ..., $x_J$)".
* $P(X=x_j)$ is the probability of that specific value $x_j$ occurring. This is the **weight**
* The formula multiplies the entropy for each specific case ($Inner Core$) by the probability of that case occurring ($P(X=x_j)$), and then sums them all up.

#### 3. The Negative Sign

$$H(Y|X) = - \left[ \text{The Rest of the Formula} \right]$$
* A probability $p$ is always between 0 and 1.
* The logarithm of a number between 0 and 1 is always negative (e.g., $\log_2(0.5) = -1$).
* Therefore, the sum $\sum p \log p$ will be a negative number.
* The negative sign at the front simply flips this result back to a positive number.
* By convention, entropy (uncertainty) is expressed as a positive value.



