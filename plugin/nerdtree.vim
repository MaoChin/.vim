" 设置快捷键 F2 就打开左边框
noremap <silent> <F12> :NERDTreeToggle<Enter>
" 把左边框上面的那部分去掉
let NERDTreeMinimalUI = 1
let NREDTreeChDirMode = 2

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
