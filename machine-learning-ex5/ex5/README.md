## 本章理解总结

- 伴随所有的实际问题，参数的调整都是必须，一个整体的思想就是，不断变化参数（log scale)，然后选择J(cv)最小的那个。
- 不管是lambda，d(多项式次方),l(neural network layers)，或者其它，都伴随这个参数从小到大变化的过程中，从high bias到high variance（或者相反）的一个变化，也就引来了J(train)和J(cv)的从都很高，到差不多，到J(train)很低，J(cv)很高（或者相反）。
- 不管不同的，随着输入数据集样本大小的不同，J(train)和J(cv)是另一种情形。high bias是2者详尽，但是都很大。high variance是2者相差大，不管J(train)很小
- 通过绘制Learning Curve来判断算法是否Bias/Variance是比较通常的做法，算法也很简单，从1到m（也可以稀疏一些，或者部分）标记为i的数据集，即X和y的前i项，然后通过各种算法训练出结果（比如Theta），然后计算这次遍历i的cost。最终会得到一个i和cost的关系，从而绘制Learning Curve。需要注意的是，这里的cost不需要包括Regularization部分（因为不是在计算cost，而是计算error，见validationCurve.m & learningCurve.m）
- In particular, note that the training error does not include the regularization term
