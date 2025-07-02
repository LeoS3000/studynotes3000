in supervised learning:

* We have examples $(x, y)$.
* For each input $x$, we want to predict a probability:
  $$
  \hat{y} = \sigma(f(x)) = \sigma(w^\top x + b).
  $$
* We want to train $w, b$ so that our predicted probabilities are *close* to the observed labels.
