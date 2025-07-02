# rank - different interpretations
* **Number of linearly independent columns or rows:** 
	* The rank of a matrix is the maximum number of its columns or rows that are [[linearly independent]]. 
	* fundamental theorem in linear algebra:  row rank is always equal to the column rank.
* **Dimension of the column space (or row space):** 
	* The column space of a matrix is the vector space spanned by its column vectors. 
	* The rank is the dimension of this column space (which is also equal to the dimension of the row space).
* **Dimension of the image of the linear transformation:** 
	* Every matrix corresponds to a linear transformation. 
	* The rank of the matrix is the dimension of the image (or range) of this linear transformation.

# full rank
- if its rank is the highest possible for a matrix of its given dimensions
- For an $m \times n$ matrix the maximum possible rank is the lesser of the number of rows and columns, i.e., $\min(m, n)$.

So, if a matrix $A$ has dimensions $m \times n$:

* **Full rank means $\text{rank}(A) = \min(m, n)$**.