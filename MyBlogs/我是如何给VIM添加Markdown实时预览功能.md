我是如何给 vim 添加 markdown 实时预览功能
===

一切的一切都是源于同性交友网站:[GITHUB](http://github.com),之前，我给自己写了一个简单的 markdown 预览插件，所以就没有去更新了。直到后来，有人找到我，希望能够添加实时预览功能，包括同步的滚动，做成类似于 Mac 下的 Mou 的效果。[详细 issue](https://github.com/MikeCoder/markdown-preview.vim/issues/1)

所以，我这边就闲里抽空把这个功能做了下。

####首先就是效果展示
![效果展示](https://github.com/MikeCoder/markdown-preview.vim/blob/master/images/example.gif?raw=true)

####接着就是 HOW
首先就是吐槽下 Python 居然不能管理线程。这个确实挺蛋疼的。不能强行关闭线程。其次，是 VIM 插件开发，资料真的少的可怜。基本上 bing 和 google 到的资料大多都是如何使用别人的插件，而不是如何创造插件。 作为一个在兴趣驱动编码时喜欢造轮子的逗比，我就决定自己写了。

首先就是如何实时的拿到数据，并且不影响 VIM 的正常使用。这很自然的想到了线程和 Ajax。这就意味着，我需要实现一个最简单的 web 服务器，包含静态文件的读取和编辑内容的发送。这个的方案决定确实挺麻烦的。主要有以下几个思路：

+ 直接在 web 服务器实现该功能，静态文件获取和最新编辑内容
+ 生成 tmp.html，然后使用浏览器打开这个tmp.html 通过本地文件加载 js 和 css 然后访问服务器，获取最新数据

很明显，最为一个最优雅的实现方案，第一个绝对是首选。不过，考虑到之前插件的实现原理，通过后者可以最大限度的利用当前代码，同时，服务器端的代码量大幅度降低。所以，思考再三，决定采用第二种方式。虽然丑陋，但是可以最快速度完成该功能。

然后就是服务器的选型。因为是后台进行脚本启动，所以这个的可选余地变得非常大。考虑到我的绝活不是 python, 不是 php。所以一开始是准备使用 java 进行编写的。而且 java 中对线程的支持非常好。同时之前也有过写服务器的经验，但是，作为一个兴趣驱动的项目，我选择了之前编写第一版的 python。

最后就是如何做到同步滚动。这个一开始的思路就是锚点。但是，如何准确的插入锚点，就是一个比较大的问题。因为这个是要进行 markdown 解析的。解析之后的行数不一定对应解析前的行数。主要有如下几个思路:

+ 直接在 markdown 解析库中加入锚点解析
+ 通过特殊字符标定锚点，然后再返回的解析数据中进行替换
+ 记录光标动作，发送状态信息，完全通过前端 js 实现

第一个方案，考虑到之后的解析库更新，为了减少后期的维护成本，这个方案就被否了。然后就是第三个，讲道理的话，这个方案是最佳的。但是，无法确定鼠标的初始位置。因为解析之后的行数不能对应到光标所在的行数，为了实现确定初始位置，就需要标定。然后就和第二个方案一致了。所以最后，考虑到代码实现和效果，采用了第二种方案。

不过这个并不简单，比如在如下的位置:

```
This is Title
¶---
```

当光标处在这个位置时，通过简单的添加就出现了问题，我是以"{ANCHOR}" 作为特殊标定字符串，所以上述的 markdown 就变成了:

```
This is Title
{ANCHOR}---
```

就背离了原始的 markdown 语法。所以这边就是要考虑所有的边际情况。这个，我也不能说完全的避免了。不过，在我测试的几天里，并没有发现这个 bug。

####遗憾
由于之前的设计和编码实现中，并没有仔细阅读他人的代码，后来完成第一版之后，我发现了这个版本的实时预览插件:[iamcco/markdown-preview.vim](https://github.com/iamcco/markdown-preview.vim),他的设计就很巧妙了，通过 websocket 进行通信，这样，无论实时性还是代码的优雅程度就已经碾压我了。这个也是我要在下一个版本中进行改进的地方。

####自找麻烦
为什么说这个呢，因为作为一个码农，会对版本控制有着狂热的追求，所以这个就给自己带来了一些不方便的地方。比如这个插件，我习惯性的加上了版本的属性。因为不同版本中，css 和 js 的文件会不同。同时考虑到提高其他用户的自定义程度，我将资源文件放到了.vim 目录下。这样，我需要更新插件之后，自动判断当前版本，然后确定是否进行资源文件的复制。

这个方案想了很久，最后确定了一种，就是在生成的资源文件夹中添加上当前版本的编号。比如现在的版本是2.0.0-alpha,所以我会在 .vim/MarkDownRes/ 中生成一个 2.0.0-alpha 名字的空文件，在运行的时候，我就会判断，当前版本是否是符合要求。不符合要求我就覆盖资源文件，然后新增一个版本文件。

还有就是针对不同版本系统的支持，直接看代码:

```
def init():
    if vim.eval("exists('g:MarkDownResDir')") == '1':
        DisResDir = vim.eval('g:MarkDownResDir')
    else:
        if platform.system() == 'Windows':
            DisResDir = os.path.join(vim.eval('$HOME'), 'vimfiles', 'MarkDownRes')
        elif vim.eval("has('nvim')") == '1':
            DisResDir = os.path.join(vim.eval('$HOME'),'.nvim', 'MarkDownRes')
        else:
            DisResDir = os.path.join(vim.eval('$HOME'), '.vim', 'MarkDownRes')

    if vim.eval("exists('g:SourceMarkDownResDir')") == '1':
        SourceResDir = vim.eval('g:SourceMarkDownResDir')
    else:
        if platform.system() == 'Windows':
            SourceResDir = os.path.join(vim.eval('$HOME'), 'vimfiles', 'bundle/markdown-preview.vim/resources')
        elif vim.eval("has('nvim')") == '1':
            SourceResDir = os.path.join(vim.eval('$HOME'),'.nvim', 'bundle/markdown-preview.vim/resources')
        else:
            SourceResDir = os.path.join(vim.eval('$HOME'), '.vim', 'bundle/markdown-preview.vim/resources')

    if not os.path.isdir(DisResDir) or not os.path.isfile(os.path.join(DisResDir, markdown_version.__PLUGIN_VERSION__)):
        if os.path.isdir(DisResDir):
            commands.getoutput('rm -rf ' + DisResDir)
            print 'updating markdown-preview plugin...'

        if platform.system() == 'Windows':
            # not test on windows
            print commands.getoutput('xcopy /E ' + SourceResDir + ' ' + DisResDir)
        else:
            print commands.getoutput('cp -R ' + SourceResDir + ' ' + DisResDir)

        open(os.path.join(DisResDir, markdown_version.__PLUGIN_VERSION__), "w")

        print 'markdown-preview plugin has been updated to the lastest version: ' + markdown_version.__PLUGIN_VERSION__
```

为了避免不同系统中的地址问题。真是煞费苦心。

当然，我也没有在 windows 上测试过= =

####TODO
继续完善这个插件。通过 websocket 取代现有的 ajax 轮询。
