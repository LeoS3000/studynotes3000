- Create a Root for the tree
- If $Var(Y ) = 0$, 
	- return leaf node with label $y ∈ Y$
- If $dim(X, 1) = 0$ or $dim(X, 2) = 0$, 
	- return leaf node with majority label in Y
• $X_d = argmax_{1≤d≤D}\: IG(X_d ) = argmax_d H(Y ) − H(Y ∣X_d )$ (max [[information gain]])
• Root $← Xd$
• For each possible value $r = 1, . . . ,R\:\: \text{of}\: X_d$
	• Add new branch below Root with $X_d = r$
	• Let $I = {i ∶ X_{i,d} = r}$
	• If $I = ∅$
		• Then add leaf node with majority label $y_{majority} ∈ Y$
		• Else add ID3($\{X_{[I,k]}∶ k ≠ d\}, Y_{[I]}$)
- Return Root