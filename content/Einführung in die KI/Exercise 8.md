
## Introduction to Artificial Intelligence

[http://ml3.leuphana.de/lectures/summer25/KI/](http://ml3.leuphana.de/lectures/summer25/KI/)

**Machine Learning Group, Leuphana University of Lüneburg**

* Ulf Brefeld ([brefeld@leuphana.de](mailto:brefeld@leuphana.de))
* Yannick Rudolph ([yannick.rudolph@leuphana.de](mailto:yannick.rudolph@leuphana.de))

## Exercise 8

**Due:** Tuesday, June 10, 2025

### Task 1: Perceptron IV

Let $D = \{ (x_i, y_i) \}_{i=1}^n = \{ (-3, \cdot), (0, \triangle), (2, \cdot), (-1, \triangle), (-2, \cdot), (3, \cdot), (1, \triangle) \}$ be a data set with two classes (consider: $\cdot = -1$ and $\triangle = +1$).

- (i) Plot the data. Is it linear separable? If yes, provide a weight vector $\theta$.
- (ii) Use the feature mapping $\phi(x) = (x, x^2)$. Plot the data in feature space. Is it linear separable? If yes, provide a weight vector $\theta$.
- (iii) Use another feature mapping $\phi(x) = (x^3)$ and plot the data. Is it linear separable? If yes, provide a weight vector $\theta$.

### Answer

![[Einführung in die KI/exercise-08_solution_page_1_1.png]]

ii) Here we choose the line $\phi_2(x) = 2$ as a hyperplane (all hyperplanes that separate the data would work, but our choice is convenient). We know that the hyperplane has to satisfy the following condition:

$f(x) = \theta_0 + \theta_1 \phi_1(x) + \theta_2 \phi_2(x) \neq 0$,

and that for $x = 0$, we want to have $f(x) > 0$ (i.e. we want that the classification is correct). Rearranging the former condition for $\phi_2(x)$ and enforcing the equation to equal 2 gives use

$\phi_2(x) = -\frac{\theta_0}{\theta_2} - \frac{\theta_1}{\theta_2} \phi_1(x) = 2$.

From the latter condition, it follows that we have to choose $\theta_0 > 0$. Now we can set $\theta$ to any values that satisfy these equations. We choose $\theta_0 = 2$, $\theta_1 = 0$, $\theta_2 = -1$.

### Task 2: Geometry of hyperplanes

Please read Section 4.1.1 of [Bishop, 2006] and update your understanding of the geometry of hyperplanes. Try to understand the exposition and the math involved. (You might want to read at least Section 3.8.1 of [Deisenroth et al., 2020] for a refresher on projections of points to a line.)

### Answer

Discussion in class.

### Task 3: Comparing loss functions

We will recap the use of loss functions in ML. In preparation, we ask you to read through Section 4.1.7 of [Bishop, 2006] and sketch some loss functions for classification.

Let $x \in \mathbb{R}^d$ be an (augmented) feature vector and $y \in \{ +1, -1 \}$ be a binary label. Let $f_\theta(x) = \theta^T x$ be a linear function with $\theta \in \mathbb{R}^d$. Let $\sigma(\cdot)$ denote the sign function as introduced in lecture 4. Please depict the value of $y f_\theta(x)$ on the x-axis and the corresponding loss on the y-axis for the following loss functions:

- i) The 0/1-loss, that equals 1 if the instance is wrongly classified (by means of the sign function applied to $f_\theta(x)$) and 0 else.
- ii) The log-loss from lecture 3 (where log refers to logistic).
- iii) The perceptron-loss that follows from Equation 4.54 in [Bishop, 2006] (and which differs from the loss given in our lecture slides).
- iv) The hinge-loss (that becomes important for classification via support vector machines) and is given by $\max \{ 0, 1 - y f_\theta(x) \}$.

### Answer

![[Einführung in die KI/exercise-08_solution_page_3_1.png]]

See Figure + discussion in class.

### References

* [[PRaML.pdf|Bishop, 2006]] Bishop, C. M. (2006). *Pattern recognition and machine learning*. Springer.
* [[mml-book.pdf|Deisenroth et al., 2020]] Deisenroth, M. P., Faisal, A. A., and Ong, C. S. (2020). *Mathematics for machine learning*. Cambridge University Press.