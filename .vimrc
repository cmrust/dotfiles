" vimrc file
" Author:       Chris Rust
" Last Change:  20140813

syntax on                          " syntax highlighting
filetype indent plugin on          " react w/indent to different filetypes

" turns off automatic comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" manage tab formatting
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype python setlocal ts=4 sts=4 sw=4
set expandtab " always expand tabs into spaces

" turns on persistent undo history
set undofile
set undodir=~/.vim/undo            " create req dir `mkdir -p ~/.vim/undo`

" turns on highlighted search results
set hlsearch

" turns on numbered lines
set number
