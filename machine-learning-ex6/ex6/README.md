## 本章理解总结

## SVM

- 区别于Regression通过模型，拟合以匹配、预测数据的方式，SVM通过最大间距的方式划分开数据，因此也被成伟Large Margin Classifier。在这个过程中，我们需要定义相似函数，对于Linear问题，使用Linear Kernel，对于Non-Linear问题使用Gaussian Kernel，字符串相似可以使用String Kernel，等等。

- Logistic Regression问题的Optimization Algorithm需要带入Cost Function(包含X，y)，lambda，init_theta和options，算法要实现grad
- SVM需要带入Similarity Function,X,y和C

## Spam Classifier

- 类似这样实际问题比较关键的步骤在于，如何把问题转化为可被操作的数据，从而使用ML算法。和算法无关的，我们把一封邮件里的特征提取出来（比如高频词语，标点符号数量，邮件的trace IP，邮件的服务提供商等），然后构建vocabulary和其它信息，从而使得对于train，cv，test中的一个输入x，可以转化为针对特征的向量表示(感觉有点神似于normalization，不过当然不是，后面如果使用SVM，还是必须再次正式地normalization，否则可能出现某些特征值dominate的情况)。
- 然后如果使用SVM算法，就需要定义Similarity Function，不断调整C和sita^2，得到最佳参数，实现预测。
