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

"""""""""""""""""""""""""""""""""" 4 space tabs
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

"""""""""""""""""""""""""""""""""" Hashbrown Comment
"""""""""""""""""""""""" How make this change by syntax?
nmap <C-/> ^i#<Esc><Down>
