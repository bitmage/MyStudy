MJsonViewer v0.1 插件发布
===

只是另一个使用在火狐上的 JsonView 插件。

###为什么要写这个插件
1. 因为现有的插件并不能很好的满足我的需求。比如火狐的自带的 json 解析器，初看挺好的，但是用的时候会发现比较复杂。并不能很直观的表示数据的类型。
2. JsonView 插件，之前我一直使用的插件，但是有个不好的地方就是对返回值的头部类型数据校验非常严格，通常面对一些没有明确类型的 json 返回不能很好的解析。
3. JsonHandler 插件，功能强大，不过需要自己把 json 数据粘贴进去。不是很方便。

所以，我这边自己给自己写了个 Json 视图插件。


###主要的功能点
1. 字体使用 Microsoft YaHei Mono，也就是传说中，中文使用微软雅黑，英文使用 Consolas 的字体。
2. 配色使用 Solarized Light，我认为可能是最好的代码配色。
3. 并没有取消双引号，这样方便进行类型判断。（数字同时也是另外的颜色）
4. 加入了数量提示以及大小提示。


###效果预览
![效果预览](https://addons.cdn.mozilla.net/user-media/previews/full/181/181520.png?modified=1484116882)

###安装方式
+ 使用火狐打开这个链接：[https://addons.mozilla.org/en-US/firefox/addon/mjsonviewer/?src=search](https://addons.mozilla.org/en-US/firefox/addon/mjsonviewer/?src=search)
+ 或者直接在 Addons 里直接搜索: MJsonViewer

###TODO
1. 加入自定义代码配色，代码字体等设置
2. 加入是否选用火狐自带解析器
3. 以上都是扯淡，主要看有没有人用
