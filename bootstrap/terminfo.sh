#!/usr/bin/env bash

# errors are okay.
#set -eu

# Copy compiled terminfo files

# initialize script and dependencies -------------------------------------------
# get this bootstrap folder
cd "$(dirname "$0")/.." || exit 1
readonly dotfiles_path="$(pwd)"
readonly bootstrap_path="${dotfiles_path}/bootstrap"
source "${bootstrap_path}/helpers.sh"

# begin ------------------------------------------------------------------------
dkostatus "Copying terminfo files"

# RXVT
mkdir -p "${HOME}/.terminfo/r"
[ -d "${dotfiles_path}/terminfo/r" ] && \
  cp -R "${dotfiles_path}/terminfo/r" "${HOME}/.terminfo/r/"

# tmux
mkdir -p "${HOME}/.terminfo/t"
[ -d "${dotfiles_path}/terminfo/t" ] && \
  cp -R "${dotfiles_path}/terminfo/t" "${HOME}/.terminfo/t/"

# Install all uncompiled terminfo files
# xterm-256color-italic for iterm2
find "${dotfiles_path}/terminfo/" -name '*.terminfo' -exec tic -x {} \;

# xterm-termite
tic -x "${dotfiles_path}/termite/termite.terminfo"
