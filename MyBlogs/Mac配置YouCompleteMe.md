Mac上配置YouCompleteMe
===

之前主要的语言都是Java,PHP,Go等，很少会用到C/C++,但是自从发现自己算法偏弱之后，就准备搞搞算法了。正好碰巧在编程之美上杀进复赛了，但是用的是Java,这个如果搞比赛的话，Java始终不是长久之计。之前写代码的时候就深深的感到没有指针的坑。所以开始尝试用C++，来进行代码的编写，于是开始捣鼓我自己的VIM了。我之前只是用它来写除Java以外的所有东西。所以刚上手写C++，有点不适应。最大的困难就是STL类库掌握不好，所以一个比较合适的不全对于我这种菜鸟来说是需要的。于是开始了捣鼓YouCompleteMe和Syntastic插件。

后者很方便，一会就好了，但是有个坑，因为YouComplete和Syntastic插件共存的时候，对于Clang Family语言，YouCompleteMe是Disable掉Syntastic语法检查的，但是YouCompleteMe集成了语法检查，所以很容易让人以为出现语法错误是因为Syntastic。这个直接运行SyntasticInfo就可以看到了：

```
:SyntasticInfo
Syntastic version: 3.6.0-77 (Vim 704, Darwin)
Info for filetype: cpp
Global mode: active
Filetype cpp is active
The current file will be checked automatically
Available checker: gcc
Currently enabled checkers: -
Checkers for filetype cpp possibly disabled by YouCompleteMe
最后一句看到了吗？
```

编译问题就不说了。解决起来很方便。然后一个坑就是我写C的时候一切顺利，但是当我写C++的时候，各种坑。。。。什么iostream找不到，说好的stl不全不见了。。。一度让我以为他就是个坑。。。其次要喷一下网上那些不负责任，随意Copy Paste的混蛋，都没有理解就开始粘贴复制答案，让我走了很多坑。

最靠谱的永远是作者。首先去Github项目地址上看有没有相关的issue，果然有人遇到了。但是提出的解决办法对我来说没用。比如说[Issue303](https://github.com/Valloric/YouCompleteMe/issues/303),这边提示了一下，主要就是**.ycm_extra_conf.py**,的flag的配置，这边网上大部分都是坑，这个需要因人而异，而且有个很好的检验办法，就是将自己编辑的flag作为编译参数看看是不是可用。比如我的配置参数:

```
flags = [
'-Wall',
'-Wextra',
'-Wno-long-long',
'-Wno-variadic-macros',
'-fexceptions',
'-stdlib=libc++',
'-std=c++11',
'-x', 'c++',
'-I', '.',
'-isystem', '/Library/Developer/CommandLineTools/usr/include/c++/v1',
'-isystem', '/usr/include/'
'-isystem', '/usr/local/include'
]
```

然后可以把这个转换成如下的编译命令：

```
g++ main.cpp \
> -Wall -Wextra -Wno-long-long \
> -Wno-variadic-macros -fexceptions \
> -stdlib=libc++ -std=c++11 -x c++ \
> -I . \
> -isystem /Library/Developer/CommandLineTools/usr/include/c++/v1 \
> -isystem /usr/include/ \
> -isystem /usr/local/include
```

如果得出正确的结果，就说明已经配置完成。当然有人也说需要用**echo | clang -std=c++11 -stdlib=libc++ -v -E -x c++ -**，然后把这个也放进去，亲测没有必要全部放进去，有很多OSX相关的类库也在里面，而这些是完全用不到的。。。好了配置成功之后就可以享受了。上一张官网上的图正楼:

> ![images](https://camo.githubusercontent.com/1f3f922431d5363224b20e99467ff28b04e810e2/687474703a2f2f692e696d6775722e636f6d2f304f50346f6f642e676966)

你以为就这么完了么- -。还没有，其实可以根据YouCompleteMe的配置文件，可以看出他的一个运行原理。之所以要配置这些参数，很大程度上就是为了编译的正确性，我们可以直接使用YcmDebugInfo来看看其中奥秘:

```
:YcmD
YcmDebugInfo  YcmDiags
Printing YouCompleteMe debug information...
-- Server has Clang support compiled in: True
-- Clang version: Apple LLVM version 6.1.0 (clang-602.0.49) (based on LLVM 3.6.0svn)
-- Flags for /Users/Mike/Workspace/fun-code/oj-code/c:c++/oj.hiho/P1001.cpp loaded from /Users/Mike/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py:
-- ['-Wall', '-Wextra', '-Wno-long-long', '-Wno-variadic-macros', '-fexceptions', '-stdlib=libc++', '-std=c++11', '-x', 'c++', '-I', '/Users/Mike/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.', '-isystem', '/Library/Developer/Comma
ndLineTools/usr/include/c++/v1', '-isystem', '/usr/include/-isystem', '-isystem', '/Users/Mike/Public/k-vim/bundle/YouCompleteMe/third_party/ycmd/ycmd/../clang_includes', '-isystem', '/Applications/Xcode.app/Contents/Developer/Toolchains/
XcodeDefault.xctoolchain/usr/include/c++/v1', '-isystem', '/usr/local/include', '-isystem', '/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include', '-isystem', '/usr/include', '-isystem', '/System/Lib
rary/Frameworks', '-isystem', '/Library/Frameworks']
-- Server running at: http://127.0.0.1:56288
-- Server process ID: 8285
-- Server logfiles:
--   /var/folders/p5/v45sv5l951gb1mxw3f_s25t00000gn/T/ycm_temp/server_56288_stdout.log
--   /var/folders/p5/v45sv5l951gb1mxw3f_s25t00000gn/T/ycm_temp/server_56288_stderr.log
```

按照官网的说法，这个插件采用了C/S架构，所以我们的VIM只是一个client，而后台运行的Compiler Server会实时的对我们的文件进行编译，然后将错误输出给VIM。这个设计很巧妙。从而给了其他的应用一个接口，方便实现其补全插件。

对于这个语法解析，传说用了Clang做了前端。因为正在写一个脚本解释器，所以这个还是比较感兴趣。之后会详细写。
