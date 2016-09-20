"pathogen  插件管理
"https://github.com/tpope/vim-pathogen
execute pathogen#infect()


syntax on             "语法高亮
filetype plugin indent on
set number            "显示行号
set relativenumber    "相对行号
set linespace=4
set hlsearch          "搜索高亮
set incsearch         "动态高亮
set showcmd

set fileencoding=utf-8
"set fileencoding=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set encoding=utf-8

"设置Windows风格的C/C++自动缩进
"1）设置（软）制表符宽度为4：
set tabstop=4
set softtabstop=4
"2）设置缩进的空格数为4
set shiftwidth=4
"3）设置自动缩进：即每行的缩进值与上一行相等；使用 noautoindent 取消设置：
set autoindent
"4）设置使用 C/C++ 语言的自动缩进方式：
set cindent


""""""""""""""""""""""""""
"插件

"NERDTree
"http://github.com/scrooloose/nerdtree.git 
"autocmd vimenter * NERDTree
nmap <F1> :NERDTreeToggle<CR>


“supertab
”https://github.com/ervandew/supertab.git  

"ctags  
"【sudo apt-get install ctags】
"【yum install ctags】
nmap <F5> :! ctags -R *<CR>
"nmap <F5> :! ctags -R YOUR_SRC_PATY/*<CR>
set tags=tags;
set autochdir

"Tagbar
"https://github.com/majutsushi/tagbar.git 
nmap <F6> :TagbarToggle<CR>
