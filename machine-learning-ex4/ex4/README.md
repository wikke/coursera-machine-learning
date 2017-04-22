## 本章理解总结

Neural Network的计算分为2部分，Forward Propagation和Back Propagation

## Forward Propagation

- 随机初始化定义每一层的的weight，即Theta，这样可以避免系统对称问题(for symmetry breaking)
- 然后用train set逐层推导计算出每一层的activations，并最终计算出prediction，然后计算cost function（without Regularization）
- 添加Regularization term，记得每个Theta去掉第一项

## Back Propagation

- 相当于计算每一层每一个node的error（第一层输入层没有error，最后一层其实也就是y - prediction），即第2层到第l层
- 上一层s(l)的error的计算，牵扯了下一层s(l+1)的error，本层的Theta和本层的z。可以理解为error和Theta在做error向前推导转化，z是权重
- Regularization的牵扯了第1层到第l-1层的Theta。需要排除bias term

## 其它

- 在随机初始化s(l)和s(l+1)的Theta(l)的时候，随机数所参考的epsilon值最好是: sqrt(6) / sqrt(L_in + L_out)
