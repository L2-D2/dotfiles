"""""""""""""""""""""""""""""""""" Colorscheme
colorscheme buddy

"""""""""""""""""""""""""""""""""" Numbers
set nu
set rnu

"""""""""""""""""""""""""""""""""" Convenience Tweaks
set smartindent
set laststatus=2

"""""""""""""""""""""""""""""""""" Syntax Highlighting
syntax on

"""""""""""""""""""""""""""""""""" Insert Line
nmap <S-Return> o<Esc>
nmap <C-Return> O<Esc>

"""""""""""""""""""""""""""""""""" Move Line x1
nmap <C-Up> :m-2<Enter>
nmap <C-Down> :m+1<Enter>

"""""""""""""""""""""""""""""""""" Hashbrown Comment
"""""""""""""""""""""""" How make this change by syntax?
nmap <C-/> ^i#<Esc><Down>
