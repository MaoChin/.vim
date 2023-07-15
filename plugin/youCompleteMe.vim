let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
set completeopt=menu,menuone

noremap <c-z> <NOP>

let g:ycm_semantic_triggers =  {
           \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
           \ 'cs,lua,javascript': ['re!\w{2}'],
           \ }


let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'
"从第二个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=2
"开启YCM标签引擎
let g:ycm_collect_identifiers_from_tags=1
"禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
"语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1
