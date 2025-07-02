# Definition
Given a hypothesis space $\mathcal{H}$:
- a hypothesis $h ∈ \mathcal{H}$ is said to overfit the training data if:
- there exists some alternative hypothesis $h' ∈ \mathcal{H}$ 
- such that $h$ has smaller error than $h'$ over the training
- but $h'$ has smaller error than $h'$ over the training, 
- but h' has smaller error than h over the entire distribution of instances
# Reasons
- Noise in data
- Number of training examples is too small to produce a representative sample of target function
# How to avoid overfitting
- Stop growing the tree before it reaches the where it classifies the training data with out error
- Allow overfitting and then post [[Pruning|prune]] the tree
- Collect more data 
# determine the perfect size
- Maintain a separate validation set to evaluate utility of post pruning
- Apply statistical test to estimate whether expanding or pruning improves the current hypothesis


