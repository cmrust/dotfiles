" vimrc file
" Author:   Chris Rust
" Last Change:  20140503

syntax on                              " syntax highlighting
filetype indent plugin on              " react to different filetypes

" turns off automatic comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
