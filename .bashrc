# bashrc file
# Author:       Chris Rust
# Last Change:  20140511

# if not running interactively, break
[[ $- != *i* ]] && return

# command prompt is: [user@host cwd]$
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

# make history files session independent, by:
# 1. changing setting to append to file, rather than overwrite
# 2. each time running a command, {append,clear,reload}ing the shared history
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

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
