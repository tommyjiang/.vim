let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)

let g:ale_linters = {'c': ['gcc'], 'cpp': ['gcc']}
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_c_parse_makefile = 1

let g:ale_c_gcc_options = '-Wall -O2 -std=c99 -I /home/haojiang/NetHack/include'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++11 -Wno-sign-compare -I /share2/public/haojiang/rocs/include -I /usr/local/cuda-9.0/include -I /share2/public/haojiang/rocs/src -I /share2/public/haojiang/rocs/build/src -I /share2/public/haojiang/rocs/3rdparty'
"let g:ale_c_cppcheck_options = ''
"let g:ale_cpp_cppcheck_options = ''

hi! clear SpellBad
hi! clear SpellCap
hi! clear SpellRare
hi! SpellBad cterm=underline ctermbg=red
hi! SpellCap cterm=underline ctermbg=blue
hi! SpellRare cterm=underline ctermbg=magenta

"highlight clear ALEError
"hi! ALEError cterm=underline ctermfg=none ctermbg=none
