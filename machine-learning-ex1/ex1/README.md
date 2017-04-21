## 本章理解总结

- cost函数的理解：对于一个数据集X和实际y，对一个hopothesis，都可以计算其cost function，计算的公式不同的情况可能有不同，大多数情况就是X（train、cv或者test）关于h的预测结果和y的差异情况。所以这里computeCost函数只有3个参数X, y, theta
- gradient descent算法的理解：这里手动实现了这个算法（后续会有fmincg等Optimization Algorithm来实现），确定一个迭代次数，然后每次Theta减去alpha乘以J的偏导，gradientDescent函数只需要这些参数：X, y, theta, alpha, num_iters，足够了。
- Feature Normalization的通常做法是，减去均值，然后除以标准差
- 习题的扩展部分我也做了，对不同的alpha即Learning Rate按log-scale画出其J_history曲线，然后选择一条最佳的曲线。并且发现，如果alpha过小，则收敛很慢，而过大则会很快，或者diverge
- 画J的3D图挺有意思的，用到了linspace、length、figure、surf、contour等命令
- help plot里面有详细的plot参数，比如linestyle,markerstyle,color
- 从数学公式转化为矩阵乘法的过程中，需要时刻注意是矩阵相乘，还是**点乘**，要仔细体会其中微妙差异。
