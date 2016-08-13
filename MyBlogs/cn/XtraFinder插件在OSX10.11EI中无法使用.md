解决 XtraFinder 插件在 OSX 10.11EI 中无法使用的 BUG
===

###方法

如果安装完 XtraFinder 之后，发现 Finder 依旧没有变化，请尝试用 console 看下 log，如果出现如下几行，请参照以下的解决办法。

```
10/19/15 2:36:14.934 PM Finder[388]:
    XtraFinder(483) System Policy: deny scripting-addition-send 'XFdr'/'Ijct'
```

进入 Mac 的 Recover 模式，然后选择终端，输入以下命令：

```
csrutil enable --without debug
```

然后直接重启即可。

至于不在 Recover 模式下是否可行，这个没有测试。希望测试之后，来说明。
