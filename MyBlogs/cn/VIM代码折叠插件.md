VIM 代码折叠插件发布
---
可能是第一个支持多分支多视图代码折叠的 VIM 插件。[下载安装链接](https://github.com/MikeCoder/code-fold.vim)

正如上篇文章说的那样，可能是第一个支持同一文件在不同分支下保存不同折叠的视图的代码折叠插件。

和上篇的 **0.0.1-beta** 不同的是，现在的版本号已经是 **0.0.7**, 可以发现已经有很多的 bug 得到了解决:

 + 文件名存在空格会报错
 + 在不同的路径下对同一个文件修改，会出现不同的视图保存结果
 + 在非 git 项目编辑文件时，会有报错信息出现(不影响使用)
 + 语法高亮在特定的情况下，会失效
 + 再打开新文件时，会报找不到文件错误
 + 和 Tarbar 插件冲突
 + ...

不过还是有些不完善的地方，比如，mkview 出来的自定义视图文件，是需要用 source 命令进行加载的，这个时候，很可能会和其他的插件冲突。我这边发现的就是有:

 + rainbow
 + airline

所以我这边做了临时的解决方案。就是在 rainbow 插件的最后加了这么几句:

```
func rainbow#render()
    source <amatch>
    if (exists('g:rainbow_active') && g:rainbow_active)
        call rainbow#clear()
        if exists('b:rainbow_conf')
            call rainbow#load()
        else
            call rainbow#hook()
        endif
    endif
endfunc

au SourceCmd *.vim call rainbow#render()
au SourceCmd *.vimrc call rainbow#render()
```

其实也是个无奈之举, 同理，其实可以在冲突的文件里加上这些代码, 不过, 测试下来，也就是少数的几个出现这个状况。在本人的 OSX 10.11 & VIM 8.0 的环境下，没有出现上述冲突状态。

其实很大程度上，这篇文章只是用来水过来的。。。


