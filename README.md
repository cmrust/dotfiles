dotfiles
========

User shell config files. Here to be available from anywhere.

.zshrc, .vimrc, install scripts

### macOS System Setup

```
xcode-select --install     # installs command line developer tools - necessary to install brew

# install homebrew

# even though many of these tools ship with the OS, installing them through brew to get on an upgrade path

brew_packages=(zsh vim git bash gnu-sed curl jq yq cfssl meld unrar gimp)
brew install ${brew_packages[@]}

# install oh my zsh

# install dotfiles

./install.sh
```
