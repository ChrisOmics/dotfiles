call plug#begin()
Plug 'davidhalter/jedi-vim'
call plug#end()
autocmd FileType python setlocal completefunc=jedi#completions()
set backspace=indent,eol,start
color desert

syntax on
filetype indent plugin on

