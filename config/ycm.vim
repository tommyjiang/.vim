" ycm 配置
let g:os = substitute(system('uname'), '\n', '', '')
if g:os == "Darwin"
    let g:ycm_server_python_interpreter='/usr/local/bin/python3'
else
    let g:ycm_server_python_interpreter='/usr/bin/python3'
endif
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings = 1
let g:ycm_key_invoke_completion = '<c-z>'
set completeopt=menu,menuone

" 取消 ycm diagnostics 的键映射
let g:ycm_key_detailed_diagnostics = ''

noremap <c-z> <NOP>

let g:ycm_semantic_triggers =  {
           \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
           \ 'cs,lua,javascript': ['re!\w{2}'],
           \ }

let g:ycm_filetype_whitelist = {
                             \ "c":1,
                             \ "cpp":1,
                             \ "vim":1,
                             \ "sh":1,
                             \ "zsh":1,
                             \ "py":1,
                             \ "python":1,
                             \ }

"let g:ycm_key_list_select_completion = ['<C-n>', '<C-j>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<C-k>', '<Up>']
