VIM 浏览器预览插件
---

插件的地址：[GITHUB](https://github.com/MikeCoder/open-in-browser.vim).

写这个插件的原因很简单。因为之前一直再写一个页面，因为在主力的编辑器是 VIM，所以就顺手用了。但是遇到一个很尴尬的地方，就是在想观看编写的效果的时候，常常会需要使用 Finder，然后进入当前的工作目录，然后双击 html 文件。

非常痛苦。于是去查了下 vim 有没有这么一个插件，可以方便的进行浏览器预览的。

当然也是查到了相关的方式，比如[这篇博客](http://www.fantxi.com/blog/archives/vim-view-in-browser-func/)：

```
" 在浏览器预览 for win32
function! ViewInBrowser(name)
    let file = expand("%:p")
    exec ":update " . file
    let l:browsers = {
        \"cr":"D:/WebDevelopment/Browser/Chrome/Chrome.exe",
        \"ff":"D:/WebDevelopment/Browser/Firefox/Firefox.exe",
        \"op":"D:/WebDevelopment/Browser/Opera/opera.exe",
        \"ie":"C:/progra~1/intern~1/iexplore.exe",
        \"ie6":"D:/WebDevelopment/Browser/IETester/IETester.exe -ie6",
        \"ie7":"D:/WebDevelopment/Browser/IETester/IETester.exe -ie7",
        \"ie8":"D:/WebDevelopment/Browser/IETester/IETester.exe -ie8",
        \"ie9":"D:/WebDevelopment/Browser/IETester/IETester.exe -ie9",
        \"iea":"D:/WebDevelopment/Browser/IETester/IETester.exe -all"
    \}
    let htdocs='E:\\apmxe\\htdocs\\'
    let strpos = stridx(file, substitute(htdocs, '\\\\', '\', "g"))
    if strpos == -1
        exec ":silent !start ". l:browsers[a:name] ." file://" . file
    else
        let file=substitute(file, htdocs, "http://127.0.0.1:8090/", "g")
        let file=substitute(file, '\\', '/', "g")
        exec ":silent !start ". l:browsers[a:name] file
    endif
endfunction
nmap <f4>cr :call ViewInBrowser("cr")<cr>
nmap <f4>ff :call ViewInBrowser("ff")<cr>
nmap <f4>op :call ViewInBrowser("op")<cr>
nmap <f4>ie :call ViewInBrowser("ie")<cr>
nmap <f4>ie6 :call ViewInBrowser("ie6")<cr>
```

通过这样的一种方式，进行预览，这显然就能看到局限的部分，就是所有的配置项都需要手动进行修改。非常的麻烦。

而且，通常情况下，我们常常使用的是 Linux 还有 MacOS，不同平台下的配置，也是不同的。于是这个思路进行编写插件，无疑会附带各种平台的依赖。

还好，VIM 支持 python 进行插件开发，而且对于不同平台的配置，他已经做的相当的完善，所以说，如果有这个前人做好的轮子，何苦在自己手工进行环境的配置？

不顾局限也是挺大的，需要 vim 支持 python，不过这一点，基本上大部分的 vim 都已经继承了吧。

插件的地址：[GITHUB](https://github.com/MikeCoder/open-in-browser.vim).

相对来说，依托于 Python，整个代码相当的简短。唯一需要配置的部分，就是列举出，使用改插件的文件后缀名。

```
let g:open_in_browser_allowed_file_types = {
            \"html": 1,
            \"htm": 1,
            \"xml": 1,
        \}
```

这么弄好之后，可以避免在错误的文件类型中，浏览器无法打开的尴尬场面。

最后，磨刀不误砍柴工，vim 最大的好处就是可以在极大提高编写效率的同时，还添加了强大的自定义方式吧。

当然，ATOM 和 Sublime 也相当棒，不过，作为一个常年终端党，能和终端完美结合的也只有 vim 和 emacs 吧。在这一点上，除了会使用 ide 进行 debug，vim 还真的是，完美的编辑器。

又给水了一篇。
