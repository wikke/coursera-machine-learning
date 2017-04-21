## 本章理解总结

- 每次都plot一下原始数据，得到一些感性认知蛮重要的
- y == 1和find(y == 1)是不一样的，可以自己试试
- fminunc函数

```
%  Set options for fminunc
options = optimset('GradObj', 'on', 'MaxIter', 400);

initial_theta = zeros(n + 1, 1);

%  Run fminunc to obtain the optimal theta
%  This function will return theta and the cost
[theta, cost] = ...
  fminunc(@(t)(costFunction(t, X, y)), initial_theta, options);

[theta, J, exit_flag] = ...
  fminunc(@(t)(costFunctionReg(t, X, y, lambda)), initial_theta, options);
```

fminunc接受参数：自定义cost函数（按需要定义costFunc参数，但是需返回J和Grad）、init_theta、options

we set the GradObj option to on, which tells fminunc that our function returns both the cost and the gradient. This allows fminunc to use the gradient when minimizing the function.

- 后面加入Regularization term后，根据lambda不同，decision boundary也不同。能明显看得出当lambda很大的时候，decision boundary体现出强烈的high bias，反之则high variance。而且最终可以通过precision, recall计算F1确定最佳lambda（这些内容在后面课程会学习到）