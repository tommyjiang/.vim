" 安装 vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" 利用 vim-plug 安装插件
call plug#begin('~/.vim/plugged')

" 自动补全
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
" 模糊查找
Plug 'Yggdroot/LeaderF', { 'do': './install.sh', 'for': 'cpp'}

" C++
  " C++ 高亮
  Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp'}
  " 自动生成 tags
  Plug 'ludovicchabant/vim-gutentags'
  " 语法检查
  Plug 'w0rp/ale', {'for': 'cpp'}
  " 参数提示
  "Plug 'tenfyzhong/CompleteParameter.vim'
  Plug 'Shougo/echodoc.vim'

" 侧边栏 Git 情况
Plug 'mhinz/vim-signify'
" Git 常用命令
Plug 'tpope/vim-fugitive'
" 状态栏
Plug 'vim-airline/vim-airline'
" 显示 leader key 对应的命令
Plug 'hecal3/vim-leader-guide'
" 切换窗口
Plug 't9md/vim-choosewin'
" 查找显示数量
Plug 'google/vim-searchindex'

" 文本对象全家桶
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-function', { 'for':['c', 'cpp', 'vim', 'java'] }
Plug 'sgur/vim-textobj-parameter'

call plug#end()

" Leader key 设置
noremap <Leader>pi :PlugInstall<cr>
noremap <Leader>ps :PlugStatus<cr>
noremap <Leader>pu :PlugUpdate<cr>
noremap <Leader>pU :PlugUpgrade<cr>
