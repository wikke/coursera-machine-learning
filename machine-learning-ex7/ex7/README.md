## 本章理解总结

## K-means

- 遍历若干遍（防止落入local minimal），每次随机找K个init_centroid（最好是已有的元素）。每次遍历的时候，把每一个元素标记它归属（距离最近）的centroid，完了之后，重新计算新的centroid。
- 若干遍遍历完了以后，找出distortion最小的那个，即最佳Clustering。特别是K比较小的情况下，需要遍历更多遍。

## CPA

- 核心代码如下

```
% production
U_reduce = U(:, 1:K);
Z = X * U_reduce;

% recover
U_reduce = U(:, 1:K);
X_rec = Z * U_reduce';
```

- ext7_pca的代码逻辑很简单，就是一个多维数据同PCA转化为低维，然后在recover，转化为可视化后看效果。不管是二维转1维，还是人脸图像若干维度转为100维。
- 最后一个例子是再次回到图片压缩的例子，把图像的所有颜色通过k-means算法归结为16种，然后从图片随机选择1000个sample，在RGB的三维空间画出来，并且不同的聚类颜色也不同。
- 把三维通过PCA转化为二维后展示更方便观察，这也是数据的best view