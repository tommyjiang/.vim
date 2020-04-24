" 设置 leader key 为 SPC
let mapleader = "\<Space>"

" 插件相关配置
source ~/.vim/config/vim-plug.vim
source ~/.vim/config/ycm.vim
source ~/.vim/config/leaderf.vim
source ~/.vim/config/origin.vim
source ~/.vim/config/leader-guide.vim
source ~/.vim/config/gutentags.vim
source ~/.vim/config/ale.vim
source ~/.vim/config/markdown-preview.vim

" vim airline 字体设置
let g:airline_powerline_fonts = 1

" 总是显示侧边栏(for vim-signify)
set signcolumn=yes

set encoding=UTF-8

set timeoutlen=300
set ttimeoutlen=0

" choosewin Plugin activation
nmap  -  <Plug>(choosewin)
let g:choosewin_overlay_enable = 1

" command line 显示函数提示
set noshowmode
set cmdheight=1

" echodoc enable at startup
let g:echodoc#enable_at_startup = 1

" Terminal Alt 组合键设置
" let c='a'
" while c <= 'z'
"   exec "set <A-".c.">=\e".c
"   exec "imap \e".c." <A-".c.">"
"   let c = nr2char(1+char2nr(c))
" endw

