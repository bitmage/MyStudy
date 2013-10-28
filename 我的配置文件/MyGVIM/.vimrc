set nocompatible "使用vim的键盘布局
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
filetype on                  "侦测文件类型插件
filetype plugin on       "为特定文件类型载入相关缩进文件
filetype indent on       "为特定文件类型载入相关缩进文件

syntax on              "语法高亮
syntax enable
colo torte              "设置配色方案

"字体设置
if has("win32") || has("win64")
   set guifont=FZShuTi :h10:cDEFAULT
else
   set guifont=FreeMono\ 15
endif
set ambiwidth=double
set nu                        "设置行号
set autoread              " 文件被改动时自动载入
set cursorline             "高亮显示当前行
set nobackup             "不要备份文件
set wildmenu             "增加模式中的命令行自动完成操作
colorscheme freya
autocmd BufEnter * cd %:p:h "跳转到当前目录

"可以在buffer的任何地方使用鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key

set shortmess=atI      "去掉启动的援助提示
set noerrorbells         "取消vim的滴滴声
set showmatch          "高亮显示匹配的括号
set matchtime=5        "匹配括号高亮的时间 十分之一秒
set ignorecase           "搜索时忽略大小写，这个很实用
set incsearch             "搜索时，输入的词句逐字符高亮
set ruler                      "右下角显示光标位置的状态行
set hlsearch               "高亮显示搜索结果


set autoindent             "继承前一行的缩进方式
set smartindent           "开启新行是使用智能自动缩进
set cindent                  "使用c样式的缩进
set tabstop=4              "制表符为4
set softtabstop=4
set shiftwidth=4          "统一缩进为4
set noexpandtab         "不要用空格代替制表符
set showmode            "显示文本处理模式
set confirm                  "处理未保存或者只读文件时，给出提示
set fileencoding=utf-8 "文件保存编码

set fileencodings=utf-8,gb2312,gbk,gb18030,cp936  "文件载入时检测的编码

set guioptions-=T        "注意 = 前面 有 - 号 ,隐藏不常用到的工具条

" 用空格键来开关折叠
set foldenable
set foldmethod=manual
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

" 命令行补全
set wildmenu
" 自动补全括号，包括大括号
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>

function ClosePair(char)
if getline('.')[col('.') - 1] == a:char
return "\<Right>"
else
return a:char
endif
endf


map <F1> :call CallList()<cr>
func! CallList()
	exec "TlistToggle"
endfun

map <F2> :call CallTerminal()<cr>
func! CallTerminal()
	exec "ConqueTermSplit bash"
endfun

map <F3> :call CallFileList()<cr>
func! CallFileList()
	exec "NERDTree"
endfun

map <F5> :call CompileRun()<cr>
func! CompileRun()
	exec "w"
	exec "make"
	exec "!./%<"
endfun

map <F6> :call NDK_Build()<cr>
func! NDK_Build()
	exec "! /extern/IDE_TOOLS/AndroidNDK/android-ndk-r8c/ndk-build"
endfun


" 设置命令行高度为2行
set cmdheight=1

" 用浅色高亮当前行
if has("gui_running")
    autocmd InsertLeave * se nocul
    autocmd InsertEnter * se cul
endif

" 修正自动C式样注释功能 <2005/07/16>
set comments=s1:/*,mb:*,ex0:/

" 保存窗口大小
set sessionoptions+=resize

"Python代码的实时检测
filetype on            " enables filetype detection
filetype plugin on     " enables filetype specific plugins

" 设置命令行缓存
cmap <c-y> <Plug>CmdlineCompleteBackward
cmap <c-e> <Plug>CmdlineCompleteForward 
