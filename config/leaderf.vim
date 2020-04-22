" Leaderf 配置
let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<m-n>'
noremap <Leader>lm :LeaderfMru<cr>
noremap <Leader>lf :LeaderfFunction!<cr>
noremap <Leader>lb :LeaderfBuffer<cr>
noremap <Leader>lt :LeaderfTag<cr>
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }

let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}

" 使用 pop up 模式
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
