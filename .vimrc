" vimrc file
" Author:       Chris Rust
" Last Change:  20240121

" --------
"  Vundle
" --------
" The following section configures the Vundle plugin mgr and assumes you've run:
" $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" Don't forget to launch vim and run :PluginInstall
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" add plugins here
Plugin 'dense-analysis/ale'      " automatic linting with wide language support
Plugin 'morhetz/gruvbox'         " theme, plays nicely with gitgutter and airline
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Better color support for the theme:
set termguicolors
colorscheme gruvbox

" ------------------------
"  Personal Configuration
" ------------------------
syntax on                          " syntax highlighting
filetype indent plugin on          " react w/indent to different filetypes

" turns off automatic comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" manage tab formatting
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype bash setlocal ts=2 sts=2 sw=2
autocmd Filetype sh setlocal ts=2 sts=2 sw=2
set expandtab " always expand tabs into spaces

" gofmt tabbing
au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4

" turns on persistent undo history
set undofile
set undodir=~/.vim/undo            " create req dir `mkdir -p ~/.vim/undo`

" turns on highlighted search results
set hlsearch

" override for *.md files to recognize as Markdown rather than Modula 2 source
autocmd BufRead,BufNew *.md set filetype=markdown

" turns on line numbering
set number
set ruler
set rulerformat=%l,%v

" turn backspace key back on (Vim 8+)
set backspace=indent,eol,start

set background=dark

" disable (noop) F1 - help key - kept accidentally hitting it on my keyboard
nmap <F1> <nop>

" turn on groovy highlighting for Jenkinsfile type
au BufNewFile,BufRead Jenkinsfile setf groovy
