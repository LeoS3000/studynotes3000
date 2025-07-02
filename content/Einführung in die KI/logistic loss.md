an alternative form of the [[Cross-Entropy Loss|Cross-Entropy]] [[loss function]] 
instead of using $y \in \{0,1\}$ as labels$$\hat{y}\in\{-1,+1\}$$
is used
then, the probability can be expressed as

$$
p(\tilde{y}) = \sigma\bigl(\tilde{y}\,f(x)\bigr).
$$

Recall:

$$
\sigma(z) = \frac{1}{1+\exp(-z)}.
$$

Then:

$$
V_{\text{logistic}}(x, \tilde{y}) = -\log\sigma\bigl(\tilde{y}\,f(x)\bigr).
$$

This can be rewritten as:

$$
V_{\text{logistic}}(x, \tilde{y}) = \log\bigl(1 + \exp(-\tilde{y}\,f(x))\bigr).
$$

This is simply another form of cross-entropy adapted for labels in $\{-1,+1\}$.