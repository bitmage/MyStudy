VIM Quickrun 插件
---

这同样是一个重复造轮子的项目，主要的原因就是受大家喜欢的 [https://github.com/thinca/vim-quickrun](https://github.com/thinca/vim-quickrun) 并不能很好的满足我的需求。

他的运行方式是新开一个 buffer 然后将运行的结果放在 buffer 里面。这样有一个问题就是交互不是很方便。同时，我对这个插件的需求主要还是在写 ACM 的代码时，可以快速的运行。同时在写单脚本语言时，可以方便的配置。

所以，基于以上的几个原因，我自己便开始写了这么一个小插件。

原理其实很简单，就是对你当前的文件名进行一个匹配。比如 "main.cpp"，我会发现这个文件的后缀名是 "cpp"，于是，就会自动查找到配置文件中的 "cpp" 选项。

```
let g:quickrun_known_file_types = {
        \"cpp": ["!g++ %", "./a.out"],
        \"c": ["!gcc %", "./a.out"],
        \"php": ["!php %"],
        \"vim": ["source %"],
        \"py": ["!python %"],
    \}
```

对于插件的默认配置而言就会执行: `!g++ currentFile && ./a.out` 命令，也就是编译加执行。而且是通过 VIM 的命令行执行的，这样的一个好处就是可以方便的进行用户的交互。上手的难度较小。

其他也不是多说什么，具体的安装和配置文档在: [https://github.com/MikeCoder/quickrun.vim](https://github.com/MikeCoder/quickrun.vim)

欢迎试用。
