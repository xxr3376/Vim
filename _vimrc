" ���ñ���
set encoding=utf-8
set termencoding=cp936
set fileencodings=utf-8,chinese,latin-1
language messages zh_CN.utf-8

set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
" �к�
set nu
colorscheme molokai
syntax enable
syntax on
set tags=tags;
set autochdir

set guifont=Inconsolata:h11
set gfw=��Բ:h11:cGB2312
set guifontwide=Microsoft_YaHei_Mono

"  about tab setting
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

set guioptions-=T " ���ع�����
set guioptions-=m " ���ز˵���
set guioptions-=r " ���ش�ֱ������
set guioptions-=b " ����ˮƽ������

"����mode lines (��ȫ��ʩ�� 
set nomodeline 
"�Զ�д�뻺���� 
set autowrite 
"��ֹ������ʱ�ļ�
set noswapfile
set nobackup		" do not keep a backup file, use versions instead
"���ü����幫��
set clipboard=unnamed

call pathogen#infect() "���������
lang English_United States " set Language

"Set mapleader
let mapleader = ","
let g:mapleader = ","

"ע��
nmap <silent> <F3> ,x
vmap <silent> <F3> ,x
imap <silent> <F3> ,x
" ����F1ΪESC
nmap <silent> <F1> <ESC>
vmap <silent> <F1> <ESC>
imap <silent> <F1> <ESC>
" ����TabΪ%
nmap <silent> <Tab> %
vmap <silent> <Tab> %

nmap ; :
" Alt + V
nmap <M-v> <C-q>
" ��������
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

" for powerline
set laststatus=2
let g:Powerline_symbols = 'fancy'

" ���ý�����β
set cc=81
" ����wΪNerdTree�л�
nmap <silent> <F10> :NERDTreeToggle <CR>

"����Taglistλ��
let Tlist_File_Fold_Auto_Close=1
let Tlist_Use_Right_Window=1

set undofile                " Save undo's after file closes
set undodir=$VIM/vimfiles/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

nmap <silent> <F9> :make <CR>


"�Զ����� ��ɫ����ƥ��
"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces

"�ֶ����� ��ɫ����ƥ��
nmap <silent> <F12> :RainbowParenthesesToggle <CR>:RainbowParenthesesLoadRound <CR>:RainbowParenthesesLoadSquare <CR>:RainbowParenthesesLoadBraces <CR>:RainbowParenthesesLoadChevrons <CR>

" �����ļ���������
au BufRead,BufNewFile *.json set filetype=javascript

"about vimwiki
let g:vimwiki_use_mouse = 1
let g:vimwiki_list = [{'path': 'E:/vimwiki/',
\ 'path_html': 'E:/vimwiki/html/',
\ 'html_header': 'E:/vimwiki/template/header.tpl',}]

nmap <silent> <F4> :VimwikiAll2HTML<CR>

"������_VIMRC
nmap <leader>V :source $MYVIMRC<CR>

nmap <leader>v :vsp<CR>
nmap <leader>s :sp<CR>

"�����۵�����
set foldmethod=syntax
"����ʱ���۵�����
set foldlevel=100

