" vimrc file
" Author:       Chris Rust
" Last Change:  20140503

syntax on                          " syntax highlighting
filetype indent plugin on          " react w/indent to different filetypes

" turns off automatic comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" manage formatting for html/js
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

" turns on persistent undo history
set undofile
set undodir=~/.vim/undo            " create req dir `mkdir -p ~/.vim/undo`
