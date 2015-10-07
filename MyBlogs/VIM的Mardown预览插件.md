VIM 的 MarkDown 预览插件
===

首先，我习惯在 VIM 下进行代码的编写和文档的编写，但是有一个比较蛋疼的地方，就是没有比较好的预览方式，之前用过 sublime，觉得它的 markdown preview 的插件功能就刚刚好，使用简单不需要多余的配置。

在之前，我都是在 Mou 下进行文档的编写，然后导出 PDF 还有预览效果。不过始终不是很方便，因为，有时候写文档和代码都在 VIM 里面。如果需要查看效果，就要去打开其他的软件就觉得比较麻烦。尤其是，我希望能有代码高亮的功能。

找过几个 Vim preview 的插件：

+ [vim-preview](https://github.com/greyblake/vim-preview) 没有代码高亮
+ [vim-instant-markdown](https://github.com/suan/vim-instant-markdown) 太复杂，不需要，也没有代码高亮
+ [vim-markdown-preview](https://github.com/JamshedVesuna/vim-markdown-preview) 也是没有代码高亮，同时，也太重
+ ...

以上， 所以就自己写了一个插件。[**markdown-preview.vim**](https://github.com/MikeCoder/markdown-preview.vim)。主要是满足自己的一个需求。

+ 不用实时预览
+ 代码自动识别高亮
+ 主题可自定义

同时，代码的主题自定义也在开发中。

安装和使用的方法也很简单。

####推荐使用 Bundle 和 Vundle 进行安装

+ 添加 **Bundle 'MikeCoder/markdown-preview.vim'** 到 vimrc 或者 vimrc.bundles 里面
+ 执行 **BundleInstall** 进行安装就可以了

*BTW:推荐使用 [k-vim](https://github.com/wklken/k-vim) 做为 VIM 的配置*

####插件使用方法

+ 正常编辑你的.md 或者.markdown 文件。
+ 如果需要进行预览的时候就可以执行**:MarkdownPreview default** 命令，在浏览器中进行预览
+ **default**是主题，插件自带有**default 和 GitHub** 两个主题。
+ 你也可以添加快捷键的方式简化操作，如:**map <leader>m :MarkdownPreview GitHub<CR>**

####自定义
如果你想添加自己的主题。可以按照如下步骤:

+ 打开你的.vim 文件夹，一般位于$HOME/.vim
+ 然后找到 *MarkDownRes* 文件夹
+ 进入就可以看到 default.css 和 GitHub.css 两个文件
+ 将你的 css 文件添加到这，如 example.css
+ 然后回到 vim,执行**:MarkDownPreview example**
+ 就可以用 example.css 的效果渲染你的 markdown 文档了

####代码高亮
插件自带有代码高亮功能。如下的 python 代码：

```
import re
import inspect

__version__ = '0.7.1'
__author__ = 'Hsiaoming Yang lepture.com>'
__all__ = [
    'BlockGrammar', 'BlockLexer',
    'InlineGrammar', 'InlineLexer',
    'Renderer', 'Markdown',
    'markdown', 'escape',
]


_key_pattern = re.compile(r'\s+')
_escape_pattern = re.compile(r'&(?!#?\w+;)')
_newline_pattern = re.compile(r'\r\n|\r')
_block_quote_leading_pattern = re.compile(r'^ *> ?', flags=re.M)
_block_code_leadning_pattern = re.compile(r'^ {4}', re.M)
_inline_tags = [
    'a', 'em', 'strong', 'small', 's', 'cite', 'q', 'dfn', 'abbr', 'data',
    'time', 'code', 'var', 'samp', 'kbd', 'sub', 'sup', 'i', 'b', 'u', 'mark',
    'ruby', 'rt', 'rp', 'bdi', 'bdo', 'span', 'br', 'wbr', 'ins', 'del',
    'img', 'font',
]
_pre_tags = ['pre', 'script', 'style']
_valid_end = r'(?!:/|[^\w\s@]*@)\b'
_valid_attr = r'''"[^"]*"|'[^']*'|[^'">]'''
_block_tag = r'(?!(?:%s)\b)\w+%s' % ('|'.join(_inline_tags), _valid_end)
```

在预览效果中，就是如下的效果:

> ![代码预览](https://raw.githubusercontent.com/MikeCoder/markdown-preview.vim/master/images/code-test.png)

希望大家喜欢。
