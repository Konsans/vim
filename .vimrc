" :help keycodes
" <C-T>, <C-S-A>

set nu
set helplang=cn
set encoding=utf-8
"set fenc=utf-8 
"set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936

"set default foldmethod
"set foldmethod=indent

"set nocompatible
"set history=100
"set confirm
"set clipboard+=unnamed 
"filetype on
"filetype plugin on
"filetype indent on
"set viminfo+=!
"set iskeyword+=_,$,@,%,#,-
"highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white 
"match OverLength '\%101v.*'
"highlight StatusLine guifg=SlateBlue guibg=Yellow 
"highlight StatusLineNC guifg=Gray guibg=White 

set hlsearch
set backspace=2
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set fdm=syntax
"set noexpandtab

" normal
" :help usr_29
" :help usr_30
" %, [[, gD,'', mx, `x, n>, n<

" :help syntax.txt
syntax enable
syntax on
colorscheme desert

set cursorline
hi CursorLine  cterm=NONE   ctermbg=darkred ctermfg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white

highlight G1 ctermbg=blue guibg=blue
highlight G2 ctermbg=red guibg=red

" ctags
set tags=./tags;,tags
" <C-]> <C-T>
" ctags -R

" :help taglist.txt
" :Tlist
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

" :help winmanager
" <F1> <cr> - c d D i R s x
let g:winManagerWindowLayout='FileExplorer|TagList'
let g:AutoOpenWinManager=0
nmap wm :WMToggle<cr>

" :help if_cscop.txt
" cscope -Rbq
" :cs add ~/vim71/cscope.out ~/vim71
" :cs find c|d|e|f|g|i|s|t <string>
" :cw
" set cscopequickfix=s-,c-,d-,i-,t-,e-
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-n> :cnext<CR>
nmap <C-p> :cprev<CR>
" :cs reset

" :help quickfix
" :cn   next
" :cp   prev
"nmap <F6> :cn<cr>
"nmap <F7> :cp<cr>
nmap <F5> :call clearmatches()<cr>
nmap <F6> :let <C-R>=join(['a','a'], expand("<cword>"))<CR>=matchadd("G1", expand("<cword>"))<CR><cr>
nmap <F7> :call matchdelete(<C-R>=join(['a','a'], expand("<cword>"))<CR>)<cr>

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
nnoremap <silent> <F3> :Rgrep<CR>

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

map <S-F> :call FormatCode()<CR>
func! FormatCode()
    if &filetype == 'c' || &filetype == 'h'
       exec "%! astyle -pH -A8"
       exec "w"
    return
    endif
endfunc
