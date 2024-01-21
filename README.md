dotfiles
========

User shell config files. Here to be available from anywhere.

.zshrc, .vimrc, install scripts

### macOS System Setup

```
xcode-select --install     # installs command line developer tools - necessary to install brew

# install homebrew

# even though many of these tools ship with the OS, installing them through brew to get on an upgrade path

brew_packages=(vim bash gnu-sed jq yq cfssl meld gimp tesseract terraform)
brew install ${brew_packages[@]}

# install oh my zsh

# install powerlevel10k into oh my zsh
# on first launch it will ask to:
# - install font, say yes
# - choose style, choose lean

# install dotfiles
```
