# .zshrc
# cmrust 20190218

# =====================================
#  OH MY ZSH
# =====================================

# https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# plugins can be found in ~/.oh-my-zsh/plugins/*
# custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  aws
  docker
  golang
  git
  helm
  kubectl
)

export ZSH=/Users/christopherrust/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# =====================================
#  PERSONAL CONFIGURATION
# =====================================

export PATH=$HOME/bin:/usr/local/bin:$PATH

# enable command auto-correction
ENABLE_CORRECTION="true"
# disables autocorrect for arguments but not commands
setopt nocorrectall; setopt correct
# enable hyphen insensitivity: _ and - will be interchangeable
# note: case sensitive completion must be off
HYPHEN_INSENSITIVE="true"
# display red dots whilst waiting for completion
COMPLETION_WAITING_DOTS="true"

# save every command before it is executed
setopt inc_append_history
# retrieve the updated history file everytime history is called
setopt share_history

# make sure system tools use vim
export VISUAL=vim
export EDITOR=vim
# if it doesn't exist already, create undo storage for vim
[ ! -d ~/.vim/undo ] && mkdir -p ~/.vim/undo

alias ls="ls -G" # enable colorized output
alias ll="ls -l"
alias la="ls -al"
alias lt="ls -lt"
alias l="ls"

# open up a SOCKS v5 tunnel 🏠
alias homevpn="ssh -f -N -p24747 -D4444 chris@tnnl.in"

# GO
export GOPATH="$HOME/dev/go"
export GOBIN="$GOPATH/bin"
PATH="$PATH:$GOBIN"
