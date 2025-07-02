- if decision function is linear:
	- eg. $f(x)=w^Tx+b$ 
- and the prediction for a classification is made by 
$$
\text{sign}(f(x)) = 
\begin{cases}
+1 & \text{if } f(x) > 0 \\
-1 & \text{if } f(x) < 0.
\end{cases}
$$

Then multiplying $w$ and $b$ by any positive constant does *not* change the sign of $f(x)$.

### Example

Suppose you have:

$$
f(x) = 2.
$$

Then:

$$
\text{sign}(f(x)) = +1.
$$

Now scale everything by, say, $3$:

$$
3 \cdot f(x) = 6.
$$

Still:

$$
\text{sign}(3 \cdot f(x)) = +1.
$$

Similarly, if:

$$
f(x) = -4,
$$

then:

$$
3 \cdot f(x) = -12,
$$

and:

$$
\text{sign}(3 \cdot f(x)) = -1.
$$

## Specificaly for SVM

Because SVM only cares about **which side of the hyperplane** a point lies on. That is, only the **sign** of $w^\top x + b$ matters.
This is why:

> Multiplying by any positive constant is just rescaling the function, **not rotating or shifting the hyperplane in space**.

Geometrically:

* The hyperplane:

  $$
  w^\top x + b = 0
  $$

  defines all $x$ where this is 0.
* If you scale by $c > 0$:

  $$
  c \cdot (w^\top x + b) = 0,
  $$

  but this is the *same hyperplane*.