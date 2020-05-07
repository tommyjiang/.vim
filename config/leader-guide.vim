" Define prefix dictionary
let g:lmap =  {}

" Second level dictionaries:
let g:lmap.f = { 'name' : 'File' }
let g:lmap.g = { 'name' : 'Git' }
let g:lmap.l = { 'name' : 'LeaderF' }
let g:lmap.m = { 'name' : 'Plugin' }
let g:lmap.n = { 'name' : 'NERDTree' }
let g:lmap.o = { 'name' : 'Open' }
let g:lmap.p = { 'name' : 'Plugin' }
let g:lmap.y = { 'name' : 'YCM' }
" 'name' is a special field. It will define the name of the group.
" leader-f is the "File Menu" group.
" Unnamed groups will show a default string

" Provide commands and descriptions for existing mappings
nmap <silent> <leader>fd :e $MYVIMRC<CR>
let g:lmap.f.d = ['e $MYVIMRC', 'Open vimrc']

nmap <silent> <leader>fs :so %<CR>
let g:lmap.f.s = ['so %', 'Source file']

nmap <silent> <leader>oo  :copen<CR>
let g:lmap.o.o = ['copen', 'Open quickfix']

nmap <silent> <leader>ol  :lopen<CR>
let g:lmap.o.l = ['lopen', 'Open locationlist']

nmap <silent> <leader>fw :w<CR>
let g:lmap.f.w = ['w', 'Write file']

nmap <silent> <leader>yh <plug>(YCMHover)
" let g:lmap.y.h = ['YCMHover', 'Display documentation']

" Create new menus not based on existing mappings:
let g:lmap.g = {
                \'name' : 'Git',
                \'b' : ['Gblame', 'Git Blame'],
                \'c' : ['Gcommit', 'Git Commit'],
                \'p' : ['Gpull',   'Git Pull'],
                \'s' : ['Gstatus', 'Git Status'],
                \'u' : ['Gpush',   'Git Push'],
                \'w' : ['Gwrite',  'Git Write'],
                \}

let g:lmap.m = {
                \'name' : 'Markdown',
                \'p' : ['MarkdownPreview', 'Markdown Preview'],
                \'s' : ['MarkdownPreviewStop', 'Markdown Preview Stop'],
                \}

let g:lmap.n = {
                \'name' : 'NERDTree',
                \'t' : ['NERDTreeToggle', 'Toggle NERDTree'],
                \}


call leaderGuide#register_prefix_descriptions("<Space>", "g:lmap")
nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>

nnoremap <localleader> :<c-u>LeaderGuide  ','<CR>
vnoremap <localleader> :<c-u>LeaderGuideVisual  ','<CR>
" This variant won't habe any group names.

" Group names can be defined by filetype. Add the following lines:
let g:llmap = {}
autocmd FileType tex let g:llmap.l = { 'name' : 'vimtex' }
call leaderGuide#register_prefix_descriptions(",", "g:llmap")
" to name the <localleader>-n group vimtex in tex files.

autocmd FileType gitcommit  noremap <buffer> <leader> <Plug>leaderguide-buffer
