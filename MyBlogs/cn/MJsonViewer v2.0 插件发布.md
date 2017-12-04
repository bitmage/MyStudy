MJsonViewer v2.0 插件发布
---

可能是第一个支持嵌套 json 解析的火狐 json 插件。正如，之前写的那样，因为持续开发，主要是因为喜欢火狐，而且确实有新的需求进来了。

距离上一次的插件发布已经过去了两个多月了，其实总的使用下来还是比较舒服的。不过，有几个小的缺点也还是要说一下。如果一个 json 中的 k-v 的 v 包含了一个嵌套的 json，一般的 json 解释器都是将其作为 string 来解析。

这就带来了一个问题。在软件开发中，我们经常会在 json 中嵌套 json，从而导致在浏览器中的浏览体验极差。加上最近的四个需求：

+ MikeCoder/MJsonViewer [Feature request] Detect if a string value contains JSON and provide an option to format it enhancement
+ MikeCoder/MJsonViewer [Feature request] Option to hide items and bytes counters enhancement
+ MikeCoder/MJsonViewer [Feature request] Alternative Content-Types are not supported (e.g. application/hal+json) enhancement
+ MikeCoder/MJsonViewer [Feature request] Folding for very long strings

我就决定先写一个验证测试版本出来，不过之后的主要任务就是在不破坏原有 json 结构的情况下更好的实现内部 json 的解析。

现在的一个基本效果图如下：

![效果图](https://addons.cdn.mozilla.net/user-media/previews/full/193/193551.png?modified=1512364996)

这个也算是，在总用户到达 2.5k 之后，的一个小的升级吧。

下载地址：**[https://addons.mozilla.org/en-US/firefox/addon/mjsonviewer/](https://addons.mozilla.org/en-US/firefox/addon/mjsonviewer/)**

代码地址：**[https://github.com/MikeCoder/MJsonViewer](https://github.com/MikeCoder/MJsonViewer)**

Done.
