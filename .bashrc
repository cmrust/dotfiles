# bashrc file
# Author:       Chris Rust
# Last Change:  20160620

# RHEL command prompt is: [user@host cwd]$
PS1='[\u@\h \W]\$ '

# aliases
alias ls="ls --color"
alias ll="ls -l"
alias la="ls -al"
alias lt="ls -lt"
alias l="ls"

# keeps ~/.bash_history file unbounded
export HISTSIZE=""
export HISTFILESIZE=""

# don't put duplicate lines or lines starting with space in the history
export HISTCONTROL=ignoreboth

# make sure system tools like `crontab` use vim
export VISUAL=vim
export EDITOR=vim

# import local settings (machine specific config)
[ -f ~/.bash_local ] && . ~/.bash_local

# if it doesn't exist already, create undo storage for vim
[ ! -d ~/.vim/undo ] && mkdir -p ~/.vim/undo
