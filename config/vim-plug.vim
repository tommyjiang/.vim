" 安装 vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" 利用 vim-plug 安装插件
call plug#begin('~/.vim/plugged')

" 自动补全
Plug 'Valloric/YouCompleteMe', { 'do': 'python3 ./install.py --clangd-completer' }
" 模糊查找
Plug 'Yggdroot/LeaderF', { 'do': './install.sh'}
Plug 'ryanoasis/vim-devicons' " 图标显示

" C/C++
  " C++ 高亮
  Plug 'octol/vim-cpp-enhanced-highlight', { 'for': ['c', 'cpp']}
  " 自动生成 tags，需要 ctags
  Plug 'ludovicchabant/vim-gutentags'
  " 语法检查
  Plug 'w0rp/ale', {'for': ['c', 'cpp']}

" 侧边栏 Git 状态
Plug 'mhinz/vim-signify'
" Git 常用命令
Plug 'tpope/vim-fugitive'
" 状态栏
Plug 'vim-airline/vim-airline'
" Tag 显示
Plug 'majutsushi/tagbar'
" 显示 leader key 对应的命令
" Plug 'hecal3/vim-leader-guide'
Plug 'liuchengxu/vim-which-key'
" 切换窗口
Plug 't9md/vim-choosewin'
" 查找显示数量
Plug 'google/vim-searchindex'
" 文件树形浏览
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" 彩虹括号
Plug 'luochen1990/rainbow'
" 未匹配括号
Plug 'arnar/vim-matchopen'
" 修改匹配括号
Plug 'tpope/vim-surround'
" Markdown 预览
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" 文本对象全家桶
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-function', { 'for':['c', 'cpp', 'vim', 'java'] }
Plug 'sgur/vim-textobj-parameter'

" 注释
Plug 'tpope/vim-commentary'

call plug#end()

" Leader key 设置
noremap <Leader>pi :PlugInstall<cr>
noremap <Leader>ps :PlugStatus<cr>
noremap <Leader>pu :PlugUpdate<cr>
noremap <Leader>pU :PlugUpgrade<cr>

" Rainbom paren 设置
let g:rainbow_active = 1

" TagBar tag 顺序
let g:tagbar_sort = 0
