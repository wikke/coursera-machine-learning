## 本章理解总结

- vectorized很重要，极大地利用多线程，优化计算速度
- 凡是引入Regularization的情形下，都不把Regularization term中被计算的数据（比如theta vector等）的第0项计入cost，因为它对应的是bias常数部分

- **Multi-Classification的Logistic Regression问题**，即One-vs-all Prediction的核心逻辑代码如下

```
% Train
for num = 1:num_labels,
  [num_theta] = fmincg (@(t)(lrCostFunction(t, X, (y == num), lambda)), initial_theta, options);
  all_theta(num,:) = num_theta';
end;

% Predict
predictions = sigmoid(X * all_theta');
[values, p] = max(predictions');
```

训练：Multi-Classification中的y，在实际中值会是[A B D C B]，假设K=4即4个分类，训练的时候，循环4遍训练。某一次循环到要训练B了，则会把B对应的数据映射为一个vectore Y_B = [0 1 0 0 1]的数据，然后这次遍历的训练，其实就是对于train数据X和Y_B的0-1分类训练，从而得到B对应的Theta_B。在得到所有K个元素对应的Theta后，合并成为一个Theta（实际中会通过vectorized方式计算）

预测：对于一个测试样本x，乘以theta，并且求sigmoid，然后会得到x_prediction，可能会像[0.01 0.02 0.98 0.02]，也就是需要测试的x对于我们结果集中每一个的可能性大小，我们当然选择可能性最大的那个。

这里lrCostFunction中也引用了同样的sigmoid函数

- 神经网络这里一个简单的Forward Propagation的例子，每一层的a添加第一个bias元素后，乘以本层对应的Theta，并求sigmoid，得到下一层的a

- randperm(100)会得到1到100数组的随机排列数组，在随机选择某几个元素的时候比较常用
