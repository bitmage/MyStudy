VIM 中多分支视图保存
---
可能是第一个支持多分支多视图代码折叠的 VIM 插件。[下载安装链接](https://github.com/MikeCoder/code-fold.vim)

###起因
因为我前段时间，对 vimrc 做了一点调整发现了之前自己写的视图保存部分的配置十分的突兀，也就是比较冗长吧，就想到了如何精简 vimrc。首先感谢 [k-vim](https://github.com/wklken/k-vim)，也是从他开始，我才从其他的编辑器转向了 vim。

###过程
本来，视图的保存，也就是很简单的几行代码，随手 bing 一下就可以找到：

```
set foldmethod=manual
set viewdir=~/.vim/view

au BufWinLeave * silent mkview
au BufWinEnter * silent loadview
```

这样就达到了将上一次的打开的情况和代码折叠情况保存下来。并且第二次打开时自动加载。

但是，au 是什么意思，BufWinLeave 和 BufWinEnter 是什么意思，为什么是 `*`，基本没有文章单独讲述。这边可以按照找手册的方法，知道 `au BufWinEnter * silent mkview` 的意思是，在离开任意文件 Buffer 的时候自动触发 * silent mkview * 的命令，silent 表示无输出，mkview 则是将当前的视图进行保存。

所以，这边就可以看出问题了。那就是，无论什么文件，都会建立视图。比如说打开文件夹时，那个文件列表页也会被记录，事实是，这个页面其实并不需要。所以，这边我的建议是改成 \*.\*

然后问题就来了，这边很明显，这无法实现在多分支下的视图保存。因为，他是以文件名作为主键的（你可以查看下 .vim/view 目录下的文件，这就是保存的视图）。

本来找到了一个方法，就是通过 mkview 1 loadview 1 这种来实现，但是，这样只能保存 10 个 view，如果分支的数量大于 10，那这个方案基本嗝屁了。本来还想着对分支名做 hash，然后取模对应 1-9 的。

然后就是最后的一个方案，那就是 mkview {自定义命名}，这边有个深坑，那就是通过 mkview {自定义命名} 创建的 view，只能通过 source 命令来加载，如果通过 loadview 那是根本不可行的。然而，网上没有一篇文章说了这个事情。这个害得我去看了 vim 的源码，才发现。

所以，就确定了这个方案。那么就是确定文件的唯一视图 id 了，这边我很简单的处理，就是
```
echo ' . expand('%:t') . '-$(echo ${$(pwd)//\//-})-$(git branch | grep "*" | cut -d " " -f2)
```
简单的说，就是文件名 + 当前路径（路径中的\替换成-）+ 分支名，这样就确保了不同分支对应的 view 不同。

接下来就简单了，无非就是是否是 git 判断，视图文件是否存在等等琐碎的事情，全部代码也就不过 100 行。而且是很大程度上的冗余代码。

全部代码如下:
```
""""""""""""""""""""""""""""""""""""""""""""
" let VERSION = '0.0.2'
" let AUTHOR  = 'Mike Tang'
" let EMAIL   = 'mikecoder.cn@gmail.com'
""""""""""""""""""""""""""""""""""""""""""""
set foldenable
set foldmethod=manual
set foldlevel=99

set viewdir=$HOME/.vim/view

au BufWinLeave *.* call MMkView() " mkview 1
au BufWinEnter *.* call MLoadView() " silent! loadview 1

function! MMkView()
    let isGit = system('git branch')
    echo isGit
    if isGit ==? "fatal: Not a git repository (or any of the parent directories): .git\n"
        let isGit = 0
    else
        let isGit = 1
    endif

    if isGit == 1
        let wfile = system('echo ' . expand('%:t') . '-$(echo ${$(pwd)//\//-})-$(git branch | grep "*" | cut -d " " -f2)')
        echo wfile
        let command = 'mkview! ' . "~/.vim/view/" . wfile
    else
        let wfile = system('echo ' . expand('%:t') . '-$(echo ${$(pwd)//\//-})')
        echo wfile
        let command = 'mkview! ' . "~/.vim/view/" . wfile
    endif

    echo command
    execute command
endfunction

function! MLoadView()
    let isGit = system('git branch')
    if isGit ==? "fatal: Not a git repository (or any of the parent directories): .git\n"
        let isGit = 0
    else
        let isGit = 1
    endif

    if isGit == 1
        let rfile = system('echo ' . expand('%:t') . '-$(echo ${$(pwd)//\//-}"\c")-$(git branch | grep "*" | cut -d " " -f2)"\c"')
        let rfile = $HOME . "/.vim/view/" . rfile
        let fileExists = system('if [ -f ' . rfile . ' ]; then echo 1; else echo 0; fi')
        if fileExists == 1
            echo expand(rfile)
            let command = 'source ' . rfile
            execute command
        endif
    else
        let rfile = system('echo ' . expand('%:t') . '-$(echo ${$(pwd)//\//-}"\c")"\c"')
        let rfile = $HOME . "/.vim/view/" . rfile
        let fileExists = system('if [ -f ' . rfile . ' ]; then echo 1; else echo 0; fi')
        if fileExists == 1
            let command = 'source ' . rfile
            execute command
        endif
    endif
endfunction

map <leader>zz @=((foldclosed(line('.')) < 0) ? 'zf' : 'zd')<CR>
map ff @=((foldclosed(line('.')) < 0) ? 'zf' : 'zd')<CR>
```


###不足之处
1. 在处理非 GIT 的文件夹时，会出现非 git 仓库的异常信息，但是并不影响使用。还得想办法处理这个体验不好的地方。
2. 想想应该在视图文件里加上时间戳，然后自动删除掉时间过于久远的视图文件？
3. 支持多版本管理的分支
