" :help keycodes
" <C-T>, <C-S-A>

set helplang=cn
set encoding=utf-8

" normal
" :help usr_29
" :help usr_30
" %, [[, gD,'', mx, `x, n>, n<

" :help syntax.txt
syntax enable
syntax on
colorscheme desert

" ctags
" :set tags=/home/wooin/vim71/tags
" <C-]> <C-T>
" ctags -R

" :help taglist.txt
" :Tlist
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

" :help winmanager
" <F1> <cr> - c d D i R s x
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

" :help if_cscop.txt
" cscope -Rbq
" :cs add ~/vim71/cscope.out ~/vim71
" :cs find c|d|e|f|g|i|s|t <string>
" :cw
set cscopequickfix=s-,c-,d-,i-,t-,e-
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>
" :cs reset

" :help quickfix
" :cn   next
" :cp   prev
nmap <F6> :cn<cr>
nmap <F7> :cp<cr>

" :help buffer
" <Tab> <S-Tab> <Enter> d
" <C-Tab> <C-S-Tab>
let g:miniBufExplMapCTabSwitchBufs = 1
" <C-h,j,k,l>
let g:miniBufExplMapWindowNavVim = 1
" <C-direction>
let g:miniBufExplMapWindowNavArrows = 1

" A
" :A AS AV AT
nnoremap <silent> <F12> :A<CR>

" :Grep   [<grep_options>] [<search_pattern> [<file_name(s)>]]
" :Rgrep  [<grep_options>] [<search_pattern> [<file_name(s)>]]
" :Fgrep  [<grep_options>] [<search_pattern> [<file_name(s)>]]
" :Rfgrep [<grep_options>] [<search_pattern> [<file_name(s)>]]
" :Egrep  [<grep_options>] [<search_pattern> [<file_name(s)>]]
" :Regrep [<grep_options>] [<search_pattern> [<file_name(s)>]]
" :Agrep  [<grep_options>] [<search_pattern> [<file_name(s)>]]
" :Ragrep [<grep_options>] [<search_pattern> [<file_name(s)>]]
" :GrepBuffer [<grep_options>] [<search_pattern>]
" :Bgrep [<grep_options>] [<search_pattern>]
" :GrepArgs [<grep_options>] [<search_pattern>]
nnoremap <silent> <F3> :Grep<CR>

" :help Mark
" <Ctrl-F2> <F2> <Shift-F2>

" :help new-omni-completion
" <Ctrl-x> <Ctrl-O> <Ctrl-P> <Ctrl-N> <Ctrl-E> <Ctrl-Y>
" <C-X,C-L> <C-X,C-N> <C-X,C-K> <C-X,C-T> <C-X,C-I>
" <C-X,C-]> <C-X,C-F> <C-X,C-D> <C-X,C-V> <C-X,C-U> <C-X,C-S>
filetype plugin indent on
set completeopt=longest,menu

" :SuperTabHelp
" <Tab>
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
" :help ins-completion
" :help compl-omni
