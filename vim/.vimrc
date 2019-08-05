"http://www.cnblogs.com/ayanmw/p/3645183.html
"避免粘贴时缩进爆炸
set pastetoggle=<F9>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax on             "语法高亮
filetype plugin indent on
set number            "显示行号
set relativenumber    "相对行号     vim7.4+，否则当前行号会显示为0
set linespace=4
set hlsearch          "搜索高亮
set incsearch         "动态高亮
set ignorecase        "设置默认进行大小写不敏感查找
set smartcase         " 如果有一个大写字母，则切换到大小写敏感查找

set showcmd

set fileencoding=utf-8
"set fileencoding=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set encoding=utf-8

set backspace=2
"0 same as “:set backspace=” (Vi compatible)
"1 same as “:set backspace=indent,eol”
"2 same as “:set backspace=indent,eol,start”
"http://cenalulu.github.io/linux/why-my-backspace-not-work-in-vim/

"主题
colorscheme desert

"设置Windows风格的C/C++自动缩进
"1）设置（软）制表符宽度为4：
set tabstop=4
set expandtab
set softtabstop=4
"2）设置缩进的空格数为4
set shiftwidth=4
"3）设置自动缩进：即每行的缩进值与上一行相等；使用 noautoindent取消设置：
set autoindent
"4）设置使用 C/C++ 语言的自动缩进方式：
set cindent

"重新打开文件时回到上次退出的位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif


