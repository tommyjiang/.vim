" 安装 vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug 安装插件
call plug#begin('~/.vim/plugged')

" 自动补全
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
" 模糊查找
Plug 'Yggdroot/LeaderF', { 'do': './install.sh', 'for': 'cpp'}

" C++
  " C++ 高亮
  Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp'}
  " 自动生成 tags
  Plug 'ludovicchabant/vim-gutentags', {'for': 'cpp'}
  " 语法检查
  Plug 'w0rp/ale', {'for': 'cpp'}

" 侧边栏 Git 情况
Plug 'mhinz/vim-signify'
" Git 常用命令
Plug 'tpope/vim-fugitive'
" 状态栏
Plug 'vim-airline/vim-airline'
" 显示 leader key 对应的命令
Plug 'hecal3/vim-leader-guide'

call plug#end()

" vim airline 字体设置
let g:airline_powerline_fonts = 1
"call airline#parts#define_function('ALE', 'ALEGetStatusLine')
"call airline#parts#define_condition('ALE', 'exists("*ALEGetStatusLine")')
"
"let g:airline_section_error = airline#section#create_right(['ALE'])

" 设置 leader key 为 SPC
let mapleader = "\<Space>"

" 总是显示侧边栏(for vim-signify)
set signcolumn=yes

" 插件相关配置
source ~/.vim/config/ycm.vim
source ~/.vim/config/leaderf.vim
source ~/.vim/config/origin.vim
source ~/.vim/config/leader-guide.vim
source ~/.vim/config/gutentags.vim
source ~/.vim/config/ale.vim

" Terminal Alt 组合键设置
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

set timeoutlen=300
set ttimeoutlen=0
