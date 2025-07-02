Every node is considered a candidate for pruning
- consists if removing the subtree rooted at the node
	- making it a leaf node and assigning the most common classification of the training examples affiliated
- Nodes are removed only if the resulting tree performs **not worse** over the *validation set*
- starts with node whose removal most increases accuracy and continues until further pruning is harmful