"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable filetype plugins
filetype plugin indent on

set shell=/bin/bash

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" Highlight search results
set hlsearch

" Show matching brackets when text indicator is over them
set showmatch

"relative number or absolute
"set number
set number relativenumber

" Backup to ~/.vim/temp
set backupdir=~/.vim/temp//,.
set directory=~/.vim/temp//,.

" Use the mouse in scroll and visual mode
:set mouse=a

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax enable

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

colorscheme Tomorrow-Night-Eighties
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" Linebreak on 80 characters
" Break on whitespace
set lbr
set tw=80

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


inoremap jk <ESC>

" Use f2 to paste without tabs
set pastetoggle=<F2>
