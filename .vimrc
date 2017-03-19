"""""""""""""""""""""""""""""""""""""""""""""""""
"pathogen  插件管理
"pathogen是为了解决每一个插件安装后文件分散到多个目录不好管理而存在的。
"https://github.com/tpope/vim-pathogen
execute pathogen#infect()
"""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""" base
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

#主题
colorscheme desert

"设置Windows风格的C/C++自动缩进
"1）设置（软）制表符宽度为4：
set tabstop=4
set softtabstop=4
"2）设置缩进的空格数为4
set shiftwidth=4
"3）设置自动缩进：即每行的缩进值与上一行相等；使用 noautoindent取消设置：
set autoindent
"4）设置使用 C/C++ 语言的自动缩进方式：
set cindent

"http://www.cnblogs.com/ayanmw/p/3645183.html
"避免粘贴时缩进爆炸
set pastetoggle=<F9>

""""""""""""""""""""""""""""""""""""""""""""""""" base


""""""""""""""""""""""""""""""""""""""""""""""""" 插件
"
"NERDTree
"http://github.com/scrooloose/nerdtree.git
"autocmd vimenter * NERDTree
nmap <F1> : NERDTreeToggle<CR>

"catgs
"【sudo apt-get install ctags】
"【yum install ctags】
nmap <F4> :! ctags -R ~/src/*<CR>
set tags=tags;
set autochdir
nmap <F5> :! ctags -R ./*<CR>

"Tagbar
"https://github.com/majutsushi/tagbar.git 
nmap <F6> : TagbarToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""" 插件


"""""""""""""""""""""""""""""""""""""""""""""""""" Vundle
"git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
"vundle是为了解决自动搜索及下载插件而存在的。 
"
"在'call vundle#rc()'和'filetype plugin indent on'之间加入github地址，然后执行':source ~/.vimrx','BundleInstall'
set nocompatible
filetype off


set rtp+=~/.vim/bundle/vundle
call vundle#rc()


Bundle 'gmarik/vundle'


Bundle 'Valloric/YouCompleteMe'
Bundle 'Valloric/ListToggle'
Bundle 'scrooloose/syntastic'


filetype plugin indent on
""""""""""""""""""""""""""""""""""""""""""""""""" Vundle


""""""""""""""""""""""""""""""""""""""""""""""""" YouCompleteMe
" 自动补全配置
set completeopt=longest,menu
"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
"回车即选中当前项
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" :"\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" :"\<PageUp>"

"youcompleteme  默认tab  s-tab 和自动补全冲突
"let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示

let g:ycm_collect_identifiers_from_tags_files=1	" 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2	"从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0	" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1	" 语法关键字补全
nnoremap <F8> :YcmForceCompileAndDiagnostics<CR>	" force recomile with syntastic
"nnoremap <leader>lo :lopen<CR>	"open locationlist
"nnoremap <leader>lc :lclose<CR>	"close locationlist
inoremap <leader><leader> <C-x><C-o>
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处

""""""""""""""""""""""""""""""""""""""""""""""""" YouCompleteMe
