"----------------------------------------------------------------------"
"-                            vim plug(外挂)                          -"
"----------------------------------------------------------------------"
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
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
Plug 'dense-analysis/ale'
Plug 'ycm-core/YouCompleteMe'
Plug 'Shougo/echodoc.vim'

call plug#end()


"-------------------------------------------------------------------------"
"-                    YouCompleteMe 配置                                 -"
"-------------------------------------------------------------------------"
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'
"从第二个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=2
"开启YCM标签引擎
let g:ycm_collect_identifiers_from_tags=1
"禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
"语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1



"-------------------------------------------------------------------------"
"-                       自定义 设置 vim                                 -"
"-------------------------------------------------------------------------"

"for test

"vim的一些简单配置
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
inoremap <LEFT> <NOP>
inoremap <RIGHT> <NOP>

" 自动命令：当发生某个事件时自动执行某个命令
" 切换页面时下划线跟着换
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" 保存 buf 时把不可见字符清掉
autocmd BufWritePre * :%s/\s\+$//e

