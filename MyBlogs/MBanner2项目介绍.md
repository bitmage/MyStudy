MBanner2 项目介绍
---

写这篇文章的一个出发点就是，对自己的 [第一版本](./MBanner介绍.md) 非常的不满意，很多地方的解决思路不够优雅。换句话说就是基于 lib 的二次自定义非常麻烦。

所以才会开启 2.0 版本的开发(反正用的人也不会多，但是我比较喜欢抠细节)。

自定义程度不高主要体现在三方面：
1. PagerViewAdapter 实现方式为 class，并不是接口，导致无法自定义 Adapter，从而绝了换 view 的路。
2. PageIndicator 实现方式单一，且无法改变。
3. 代码的可测试性不强。(在安卓的组件中，这个问题还是挺棘手的)

总的来说，这只是个为了项目而催生的一个紧急替代品，并不能算得上是一个比较靠谱的开源库。所以 MBanner2 应运而生。 也算了了我一个心愿。

其实，这个空间也可以作为一个 ImageView 来使用。因为从逻辑和功能上说，这两个是非常相似的。所以这也是我安卓控件模块化的一个开始。

也参考了几个开源的高 star 项目，比如：

+ [saiwu-bigkoo/Android-ConvenientBanner](https://github.com/saiwu-bigkoo/Android-ConvenientBanner)
+ [JeasonWong/QingtingBannerView](https://github.com/JeasonWong/QingtingBannerView)
+ [youth5201314/banner](https://github.com/youth5201314/banner)

收获的话，大概如下：

1. 之前，我都是直接绑定第三方图片加载库来进行图片加载的，但是在阅读代码的时候，看到了 youth5201314 的一个巧妙的实现思路，即提供一个暴露给用户的 onImgLoadListener 接口，由用户来决定图片加载的逻辑。同时也可以提供一个默认的加载逻辑。
2. 在 saiwu-bigkoo 的实现方式，则是通过 ImageHolder 的思路来实现，以我个人而言，更倾向于 youth5201314 的实现思路。
3. 在样式自定义上，提供比较多样式的 youth5201314 的做法是提供茫茫多的 switch case 选项，这我觉得并不是一个很好的解决办法，只能说的上是一个临时解决方案。可扩展性并不高(因为总不可能在项目里，extends 它的类，然后在添 switch 吧)。
4. 在 saiwu-bigkoo 中，则提供了一个暴露的接口，用来设置 PageIndicator 的样式。但是也有一个局限性，就是这个只支持固定位置的 PageIndicator，所以在和 JeasonWong 的绘图实现是冲突的，并不能很好的集成。

所以这边的一个设计思路如下：
1. 将 Banner 的页面定义成四个部分
    + Image Header  图片头部，即页面的上部显示，微信的做法是这边显示是时间(主要用于图片浏览的时候)
    + Image Content  图片本体，即图片
    + Image Bottom   图片底部，这部分可以实现为图片的标题，或者像微信一样附加了评论等按钮(朋友圈图片浏览)
    + Image PageIndicator 图片分页指示器
