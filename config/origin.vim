" ctags 文件配置
set tags=./.tags;,.tags

" 原始配置
set nocompatible

" 配色方案
colorscheme molokai

" 解决文件乱码
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
set fileencoding=utf-8

" 解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" 状态栏设置
" set statusline=
" set statusline+=%1*\ %<%F\                                "File+path
" set statusline+=%2*\ %y\                                  "FileType
" set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
" set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
" set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..)
" set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
" set statusline+=%9*\ col:%03c\                            "Colnr
" set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.
" 始终显示状态栏
set laststatus=2

" 记忆上次位置
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" 插入模式下backspace的删除作用
set backspace=indent,eol,start

" 设置标签格式
set go=e

" 显示当前命令
set showcmd

" 显示行号
se nu

" 标尺信息
se ru

" 根据不同系统设置默认字体
se guifont=Inconsolata\ 18

" 设置默认窗口大小
" se lines=30 columns=110

" 设置当前行高亮, cursorline
se cul

" 显示光标位置
se ruler

" enable magic matching
set magic

" show matching bracets
set showmatch

" highlight search things
set hlsearch

" incremental match when searching
set incsearch

" ignore case when searching
set smartcase
set ignorecase

" -------------
" 代码设置
" -------------

" 设置语法高亮
syntax enable
syntax on

" 显示缩进tab线
se list lcs=tab:\|\

" -------------
" 缩进设置
" -------------

" auto indent
set autoindent

" c indent
set cindent

" smart indet
set smartindent

" use hard tabs
set tabstop=4
set expandtab
" 将空格转换为tab, :%retab
set shiftwidth=4

" 自动换行
" break long lines
set textwidth=1000

" config C-indenting
set cinoptions=:0,l1,t0,g0

" enable filetype plugin
filetype plugin indent on

" map jj to ESC
imap jj <ESC>

set list          " Display unprintable characters f12 - switches
set listchars=tab:•\ ,trail:•,extends:»,precedes:« " Unprintable chars mapping
