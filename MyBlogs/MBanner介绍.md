MBanner 介绍
===
最近做了一个安卓项目，因为有个部分是需要实现一个可以展示标题和图片的 AD Banner。所以就同性交友网上([github](http://github.com))上找了一些案例。

作为一个安卓初学者，所以一开始就选用了 star 最多的那个。效果也很好，但是对方提出了一个需求，就是希望在图片上显示标题。做一个类似的蜻蜓上面的 Banner 效果。所以，就搜索到了 [QingTingBannerView](https://github.com/JeasonWong/QingtingBannerView) 这个项目。

这个项目的 star 数非常高。所以一开始认为是挺靠谱的一个。但是使用中发现了如下几个问题。

1. 在执行 BannerView.setEntities 的时候，他并不是直接的将数组替换，而仅仅是做一个 append 操作。也就是说，当刷新的时候，3个 Banner 会变成 6个 Banner，如果没有在外面做去重的话。
2. 下部的 Title 和是在图片下方，会多占用20dp 左右的空间，在小屏手机上展示效果不佳。
3. 对于业务来说，我们需要更多的可定制化。但是在这个设计中，PageAdapter 只有一个 class，而且是已经实现好的。所以不存在继承接口重新设计的可能性。

基于以上的几点。我们产生了自己开发 Banner 库的想法。

所以，基于上述项目，开发了 MBanner 类库。

主要的特性有：

1. 支持图片的缩放。
2. 添加 Banner 上长按响应事件。
3. 可以通过一定的修改，变成图片阅览器。
4. 添加自动滚动。
5. 添加代码自定义图片背景色和进度条颜色 API。
6. 使用 Glide 库作为图片加载，支持图片缓存。
7. 添加默认加载动画，也可自定义动画。

具体的代码在：[GITHUB-MBANNER](https://github.com/MikeCoder/MBanner)

###实机效果如下：

1. 图片 Banner:

> ![图片 Banner](./images/banner.png)
>
> + 注意，上面是不添加点击放大功能的 banner，下面是添加放大功能的 banner(不能触发点击和长按事件)。

2. 图片浏览器:

> ![图片浏览器](./images/imageViewer.png)
>
> + 此处图片可以双击放大/恢复原状。左右滑动，但是图片的点击和长按事件无法触发。


###安装方式

####通过 gradle 安装:

1. 添加 JitPack 仓库到你的 build 文件，即项目根目录的 build.gradle:

```
allprojects {
    repositories {
        ...
        maven { url "https://jitpack.io" }
    }
}
```

2. 添加依赖:

```
dependencies {
    compile 'com.github.MikeCoder:MBanner:1.0.5' // 表示指定的版本
    compile 'com.github.MikeCoder:MBanner:+' // 表示最新的版本
}
```

3. 然后在 Android Studio 中点击 sync now 按钮即可

####通过下载导入安装（不推荐）


###使用方法：
git clone 项目之后，见 app 模块中的 **MainActivity.java** 和 **ImageViewerActivity.java** 文件

###做的不好的地方
1. 关于 PageAdapter 还是没有抽象出来，导致自定义程度较低。
2. Glide 在加载和自定义动画大小不同的图片时，偶发图片尺寸变形 bug。
3. 本来想把 PageView 中，这个加载的 layout 给暴露出来，但是考虑到是暴露 layout 还是抽象 Adapter，这一点上还是没想好，所以这一步没做，等研究了其他的库再下结论。
4. 大图片加载问题，虽然这个可以通过后台压缩实现，但是作为一个通用库，并没有考虑到，也是一个败笔。

