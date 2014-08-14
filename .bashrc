# bashrc file
# Author:       Chris Rust
# Last Change:  20140813

# if not running interactively, break
[[ $- != *i* ]] && return

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

# make all open sessions write to the same history file
shopt -s histappend
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# for Bash >= 4.0
if [ $(echo $BASH_VERSION | cut -d. -f1) -ge 4 ]; then
    # change to directories w/o typing cd
    shopt -s autocd
fi

# opens a SOCKS proxy to 🏠 on localhost:4444
alias proxytnnl="ssh -p24747 -D4444 chris@tnnl.in"

# hostname/ip lookup functions
function ip2hostname () { nslookup "$1" | grep name | sed 's/.*name\ =\ \(.*\)./\1/'; }
function hostname2ip () { nslookup "$1" | grep 'Address: [0-9]' | sed 's/Address: //'; }

# import local settings (machine specific config)
[ -f ~/.bash_local ] && . ~/.bash_local

# include private bin in PATH if it exists
[ -d "~/bin" ] && PATH="~/bin:$PATH"

# if it doesn't exist, create undo storage for vim
[ ! -d ~/.vim/undo ] && mkdir -p ~/.vim/undo
