" 安装 vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug 安装插件
call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

call plug#end()

" 插件相关配置
source ~/.vim/ycm.vim
source ~/.vim/leaderf.vim
source ~/.vim/origin.vim

