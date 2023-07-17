"----------------------------------------------------------------------"
"-                            vim plug(外挂)                          -"
"----------------------------------------------------------------------"
call plug#begin('~/.vim/plugged')
let g:plug_url_format = 'git@github.com:%s.git'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'powerline/fonts'
Plug 'preservim/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tomtom/tcomment_vim'
Plug 'preservim/tagbar'
Plug 'mileszs/ack.vim'
Plug 'morhetz/gruvbox'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'ycm-core/YouCompleteMe'
Plug 'Shougo/echodoc.vim'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'lfv89/vim-interestingwords'
Plug 'sbdchd/neoformat'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'


call plug#end()


"-------------------------------------------------------------------------"
"-                       自定义 设置 vim                                 -"
"-------------------------------------------------------------------------"

"for test

"vim的一些简单配置

"设置leader前置键
let mapleader = "\<space>"
"设置esc快速响应
set ttimeoutlen=5
"设置鼠标右键不进入visual模式
set mouse=v

" 打开字体颜色
syntax on
" 使用256色
set t_Co=256
set bg=dark
colorscheme gruvbox

" Tab 设置
set tabstop=2
set softtabstop=2
set shiftwidth=2

" 页切设置
set showtabline=2
set splitbelow
set splitright

" 剪切版与外面通用
set clipboard=unnamed

" 在底部显示当前是属于命令模式还是插入模式
set noshowmode
" 在命令模式下在底行显示键入的命令
set showcmd
" 支持使用鼠标
""set mouse=a
" 显示行号
set number
" 一行太长时自动换行
set wrap
" 换行时以单词为单位
set linebreak
" 上下翻时在剩余三行就上下翻
set scrolloff=4
" 给光标加下划线
set cursorline
" 不显示空白字符
set nolist

" 在状态栏显示当前光标位置
set ruler
" 光标遇到括号时自动高亮匹配的另一个括号
set showmatch

" 搜索时高亮显示匹配结果，边敲边搜
set incsearch
" 高亮搜索结果
set hlsearch
" 搜索时忽略大小写
set ignorecase
" 打开搜索忽略大小写时当搜索的单词只有一个大小写不同时(如Test 和 test)将对大小写敏感
set smartcase

" 不创建备份文件，默认情况下会创建备份文件
set nobackup
set nowritebackup
" 不创建交换文件，交换文件就是系统崩溃时创建的临时文件
set noswapfile

" 保留撤销历史,会有一个.... .un~的文件
"set undofile

" 括号，冒号自动匹配
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
"inoremap < <><ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap {<CR> {<CR>}<ESC>O
inoremap <C-j> <ESC>xa


" 根据文件类型匹配对应的配置
filetype on
"filetype indent on
filetype plugin on

" 把上下左右禁掉
noremap <UP> <NOP>
noremap <DOWN> <NOP>
noremap <LEFT> <NOP>
noremap <RIGHT> <NOP>
inoremap <UP> <NOP>
inoremap <DOWN> <NOP>
"inoremap <LEFT> <NOP>
"inoremap <RIGHT> <NOP>
imap <C-b> <LEFT>
imap <C-f> <RIGHT>
imap <C-a> <ESC>I
imap <C-e> <ESC>A

" 自动命令：当发生某个事件时自动执行某个命令
" 切换页面时下划线跟着换
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" 保存 buf 时把不可见字符清掉
autocmd BufWritePre * :%s/\s\+$//e

"Json 文件格式化：:FormatJson
com! FormatJson %!python3 -m json.tool

