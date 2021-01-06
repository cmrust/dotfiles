# macos, initial setup:

xcode-select --install     # installs command line developer tools - necessary to brew install vim

# even though macos ships many of these tools, installing them through brew to get them on an upgrade path
brew_packages=(zsh vim git bash gnu-sed curl jq yq cfssl meld)

brew install ${brew_packages[@]}

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

log_banner () {
  echo "================================================"
  echo "$@"
  echo "================================================"
}

log_banner "Loading dotfiles from github.com/cmrust"
TMP_DIR="$(mktemp)"
echo "creating temporary directory: $TMP_DIR"
cd "$TMP_DIR"
git clone https://github.com/cmrust/dotfiles.git

sync () {
  log_banner "Loading ${1}"
  if [ -f "dotfiles/${1}" ]; then
    if [ -f "~/${1}" ]; then
      output=${diff "dotfiles/${1}" "~/${1}"}
      if [ -z "$output" ]; then
        echo "${1} already in place"
      else
        echo "diff of 'dotfiles/${1}' '~/${1}':"
        echo "$output"
        echo ""
        echo "making a backup and replacing ${1}"
        cp ~/${1}{,.bak}
        ls "~/${1}.bak" "~/${1}"
        mv "dotfiles/${1}" "~/${1}"
      fi
    else
      echo "~/${1} doesn't exist yet, syncing new file"
      mv dotfiles/${1} ~/${1}
    fi
  else
    echo "dotfiles/${1} doesn't exist"
  fi
}

sync '.zshrc'
sync '.vimrc'

cd -
rm -rf "${TMP_DIR}/dotfiles"

