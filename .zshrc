# .zshrc
# cmrust 20240121

# =====================================
#  Powerlevel10k 1/2
# =====================================

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# =====================================
#  Oh My Zsh
# =====================================

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=()

source $ZSH/oh-my-zsh.sh

# =====================================
#  PERSONAL CONFIGURATION
# =====================================

# Uncomment the following line to use hyphen-insensitive completion.
HYPHEN_INSENSITIVE="true"

# Set zsh history size. There's no option for infinite.
HISTSIZE=1000000 # entries kept in memory
SAVEHIST=1000000 # entries kept in file

# share_history
# 1. imports new commands from the history file (so multiple shells don't overwrite eachother)
# 2. appends them upon run (as opposed to after exit, where killed hung commands can be lost)
# 3. enters beginning timestamp (epoch) and duration (in seconds) for each line
setopt share_history

# Vim settings
# Make sure system tools use vim.
export VISUAL=vim
export EDITOR=vim
# If it doesn't exist already, create undo storage for vim.
[ ! -d ~/.vim/undo ] && mkdir -p ~/.vim/undo

# Set personal aliases, overriding those provided by oh-my-zsh libs, plugins, and themes.
alias ls="ls -G" # enable colorized output
alias ll="ls -l"
alias la="ls -al"
alias lt="ls -lt"
alias l="ls"

# Setup a personal bin, if it doesn't already exist.
[ ! -d ~/bin ] && mkdir -p ~/bin
export PATH=$HOME/bin:$PATH

# =====================================
#  CONSIDERATIONS
# =====================================

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# =====================================
#  Additional Space
# =====================================

# Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

# =====================================
#  Powerlevel10k 2/2
# =====================================

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
