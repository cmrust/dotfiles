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
  gitfast
  kubectl
)

export ZSH="/Users/cmrust/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# =====================================
#  PERSONAL CONFIGURATION
# =====================================
# Path
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Autocompletion settings
# Disable case sensitivity.
CASE_SENSITIVE="false"
# Enable hyphen insensitivity: _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"
# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Disable autocorrect suggestions.
# unsetopt correct_all
## given this below maybe this above is no longer necessary to set
# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Vim settings
# Make sure system tools use vim.
export VISUAL=vim
export EDITOR=vim
# If it doesn't exist already, create undo storage for vim.
[ ! -d ~/.vim/undo ] && mkdir -p ~/.vim/undo

# Set zsh history size. There's no option for infinite, a million should be enough. OK to keep both entries below equal; incorporating expiration of duplicates allows opportunity for an offset and some cushion for what's in memory, but that's not necessary here.
HISTSIZE=1000000 # entries kept in memory
SAVEHIST=1000000 # entries kept in file
# The share_history option: always imports new commands from the history file (so multiple shells don't overwrite eachother), appends them upon run (as opposed to after exit, where killed hung commands can be lost), and enters beginning timestamp (epoch) and duration (in seconds) for each line.
setopt share_history

# Set personal aliases, overriding those provided by oh-my-zsh libs, plugins, and themes.
alias ls="ls -G" # enable colorized output
alias ll="ls -l"
alias la="ls -al"
alias lt="ls -lt"
alias l="ls"

