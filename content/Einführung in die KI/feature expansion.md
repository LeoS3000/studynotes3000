We can map inputs $x1, . . . , xN$ to exotic inner product spaces and realize complex decision boundaries
## feature mapping, 
a form of feature expansion, particularly in the context of making data [[linear separable]] for classification algorithms like the perceptron.

### Connection to Exercises

*   **Definition and Purpose** [[Exercise 8, Task 1]]
    *  In , the concept of "feature mapping" $ϕ(x)$ is introduced to transform input data. The primary goal of such mapping is to determine if data that might not be linearly separable in its original space becomes **linearly separable in the new "feature space"**. If it does, a weight vector $θ$ can then be found to define a separating hyperplane in that higher-dimensional space.

*   **Examples of Feature Mappings**
    *  For a one-dimensional dataset $D = {(xi, yi)}$, the sources provide examples of specific feature mappings:
        *   **$ϕ(x) = (x, x^2)⊤$**: This mapping transforms a single input feature $x$ into a two-dimensional feature vector $(x, x^2)$. When data from the original 1D space is plotted in this 2D feature space, it can become linearly separable. For instance, a weight vector $θ = (2, 0, -1)^⊤$ could be chosen to define a hyperplane $ϕ2(x) = 2$ (which means $x^2 = 2$) that separates the data in this transformed space.
        *   **$ϕ(x) = (x^3)⊤$**: Another example given is mapping $x$ to $
        * $x^3$. The task is to plot the data after this transformation and check for linear separability.

## Connection to Kernels (Implicit Feature Expansion)
- not explicitly called "feature expansion," 
- the **[[kernel trick]]** is a related and more advanced concept discussed in the context of Support Vector Machines (SVMs). The idea behind the kernel trick is to allow linear classification algorithms to find non-linear decision boundaries in the original input space by implicitly mapping the data into a **higher-dimensional feature space**. This is done without explicitly computing the coordinates of the data points in that higher-dimensional space, which can be computationally advantageous, especially if the feature space is very high-dimensional or even infinite. The kernel function computes the inner product of the transformed feature vectors, effectively leveraging the benefits of a high-dimensional feature space without the overhead of explicit transformation.