#!/bin/bash

log_banner () {
  echo "================================================"
  echo "$@"
  echo "================================================"
}

log_banner "Loading dotfiles from github.com/cmrust"

echo "creating temporary directory: $TMP_DIR"
TMP_DIR="$(mktemp -d)"
cd "$TMP_DIR"
git clone https://github.com/cmrust/dotfiles.git

sync () {
  # Check if file exists in both locations
  # if it does print diff, replace and create a backup
  log_banner "Installing ${1}"
  if [ -f "dotfiles/${1}" ]; then
    if [ -f "~/${1}" ]; then
      output=$(diff "dotfiles/${1}" "~/${1}")
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
