" source $VIMRUNTIME/vimrc_example.vim
" This must be first, because it changes other options as a side effect.
set nocompatible
set backspace=indent,eol,start
" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on
  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!
  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
  augroup END
else
  set autoindent		" always set autoindenting on
endif " has("autocmd")
"
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" ====================================
" My Part Begin
" ���ñ���
set encoding=utf-8
set termencoding=cp936
set fileencodings=utf-8,chinese,latin-1
language messages zh_CN.utf-8

source $VIMRUNTIME/mswin.vim
behave mswin
" �к�
set number
colorscheme molokai
syntax enable
syntax on
set tags=tags;
set autochdir
set wildmenu	" ��������ǿģʽ
set scrolloff=4	" ������С��������

set guifont=Inconsolata:h10.5
set gfw=��Բ:h10.5:cGB2312
set guifontwide=Microsoft_YaHei_Mono

"  about tab setting
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

set guioptions-=T " ���ع�����
set guioptions-=m " ���ز˵���
set guioptions-=r " ���ش�ֱ������
set guioptions-=L " ���ش�ֱ������
set guioptions-=b " ����ˮƽ������

set ignorecase	" ���Դ�Сд
set incsearch		" do incremental searching
set smartcase	" ���������ݰ�����дʱ������ignorecase

set display=lastline " ��ֹһ�г������ڸ߶ȿ�����
set cursorline	"������ǰ��
set cursorcolumn
hi cursorline guibg=#002244
hi cursorcolumn guibg=#222230

"����mode lines (��ȫ��ʩ�� 
set nomodeline 
"�Զ�д�뻺���� 
set autowrite 
"��ֹ������ʱ�ļ�
set noswapfile
set nobackup		" do not keep a backup file, use versions instead
"���ü����幫��
set clipboard=unnamed
"�����۵�����
set foldmethod=syntax
"����ʱ���۵�����
set foldlevel=100

" {{	ӳ����
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

	"������_VIMRC
	nmap <leader>V :source $MYVIMRC<CR>

	nmap <leader>v :vsp<CR>
	nmap <leader>s :sp<CR>
	nmap <leader>w :w!<CR>
	inoremap <C-U> <C-G>u<C-U>
	map Q gq
	" Increase Number
	noremap <C-I> <C-A>
	" Decrease Number
	nnoremap <C-O> <C-X>

" }}
" =============================
" plugins
call pathogen#infect() "���������
lang English_United States " set Language

" for powerline
set laststatus=2
let g:Powerline_symbols='fancy'

" ���ý�����β
set cc=81
" NERDTree
" {
" ����wΪNerdTree�л�
nmap <silent> <F10> :NERDTreeToggle <CR>

" }
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
"{{
let g:vimwiki_use_mouse = 1
let g:vimwiki_list = [{'path': 'E:/vimwiki/',
\ 'path_html': 'E:/vimwiki/html/',
\ 'html_header': 'E:/vimwiki/template/header.tpl',
\ 'html_footer': 'E:/vimwiki/template/footer.tpl'}]
" �ر��շ��
let g:vimwiki_camel_case = 0
" �ڼ����ִ�����ʱ���ر��������ַ�
let g:vimwiki_CJK_length = 1
" ���Ϊ��ɵ� checklist ��Ŀ�����ر����ɫ
let g:vimwiki_hl_cb_checked = 1
" �ҵ� vim ��û�в˵��ģ���һ�� vimwiki �˵���Ҳû������
let g:vimwiki_menu = ''
nmap <silent> <F4> :VimwikiAll2HTML<CR>
"}}


