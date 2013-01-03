" 设置编码
set encoding=utf-8
set termencoding=cp936
set fileencodings=utf-8,chinese,latin-1
language messages zh_CN.utf-8

set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
" 行号
set number
colorscheme molokai
syntax enable
syntax on
set tags=tags;
set autochdir
set wildmenu	" 命令行增强模式
set scrolloff=4	" 上下最小保留行数

set guifont=Inconsolata:h10.5
set gfw=幼圆:h10.5:cGB2312
set guifontwide=Microsoft_YaHei_Mono

"  about tab setting
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

set guioptions-=T " 隐藏工具栏
set guioptions-=m " 隐藏菜单栏
set guioptions-=r " 隐藏垂直滚动条
set guioptions-=L " 隐藏垂直滚动条
set guioptions-=b " 隐藏水平滚动条

set ignorecase	" 忽略大小写
set smartcase	" 当搜索内容包含大写时，忽略ignorecase

set display=lastline " 防止一行超过窗口高度看不到
set cursorline	"高亮当前行
set cursorcolumn
hi cursorline guibg=#002244
hi cursorcolumn guibg=#222230

"禁用mode lines (安全措施） 
set nomodeline 
"自动写入缓冲区 
set autowrite 
"禁止生成临时文件
set noswapfile
set nobackup		" do not keep a backup file, use versions instead
"设置剪贴板公用
set clipboard=unnamed

call pathogen#infect() "插件管理器
lang English_United States " set Language

"Set mapleader
let mapleader = ","
let g:mapleader = ","

"注释
nmap <silent> <F3> ,x
vmap <silent> <F3> ,x
imap <silent> <F3> ,x
" 设置F1为ESC
nmap <silent> <F1> <ESC>
vmap <silent> <F1> <ESC>
imap <silent> <F1> <ESC>
" 设置Tab为%
nmap <silent> <Tab> %
vmap <silent> <Tab> %

nmap ; :
" Alt + V
nmap <M-v> <C-q>
" 窗格区分
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

" for powerline
set laststatus=2
let g:Powerline_symbols='fancy'

" 设置建议行尾
set cc=81
" NERDTree
" {{
" 设置w为NerdTree切换
nmap <silent> <F10> :NERDTreeToggle <CR>


" }}

"设置Taglist位置
let Tlist_File_Fold_Auto_Close=1
let Tlist_Use_Right_Window=1

set undofile                " Save undo's after file closes
set undodir=$VIM/vimfiles/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

nmap <silent> <F9> :make <CR>


"自动开启 彩色括号匹配
"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces

"手动开启 彩色括号匹配
nmap <silent> <F12> :RainbowParenthesesToggle <CR>:RainbowParenthesesLoadRound <CR>:RainbowParenthesesLoadSquare <CR>:RainbowParenthesesLoadBraces <CR>:RainbowParenthesesLoadChevrons <CR>

" 额外文件类型设置
au BufRead,BufNewFile *.json set filetype=javascript

"about vimwiki
let g:vimwiki_use_mouse = 1
let g:vimwiki_list = [{'path': 'E:/vimwiki/',
\ 'path_html': 'E:/vimwiki/html/',
\ 'html_header': 'E:/vimwiki/template/header.tpl',
\ 'html_footer': 'E:/vimwiki/template/footer.tpl'}]
" 关闭驼峰词
let g:vimwiki_camel_case = 0
" 在计算字串长度时用特别考虑中文字符
let g:vimwiki_CJK_length = 1
" 标记为完成的 checklist 项目会有特别的颜色
let g:vimwiki_hl_cb_checked = 1
" 我的 vim 是没有菜单的，加一个 vimwiki 菜单项也没有意义
let g:vimwiki_menu = ''


nmap <silent> <F4> :VimwikiAll2HTML<CR>

"重载入_VIMRC
nmap <leader>V :source $MYVIMRC<CR>

nmap <leader>v :vsp<CR>
nmap <leader>s :sp<CR>
nmap <leader>w :w!<CR>
" Increase Number
noremap <C-I> <C-A>
" Decrease Number
nnoremap <C-O> <C-X>

"代码折叠类型
set foldmethod=syntax
"启动时不折叠代码
set foldlevel=100

let g:ConqueTerm_PyExe = 'D:\DevTool\Python27\python.exe'
