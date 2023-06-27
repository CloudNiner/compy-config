#!/bin/bash

THIS_DIR=$(dirname "$0")
cd "$THIS_DIR" || exit
SRC_DIR=$(pwd)

# TMUX
ln -sv "$SRC_DIR"/tmux.conf ~/.tmux.conf

# GIT
ln -sv "$SRC_DIR"/gitignore ~/.gitignore
ln -sv "$SRC_DIR"/gitconfig ~/.gitconfig

# Bash Profile
ln -sv "$SRC_DIR"/bash_profile ~/.bash_profile

# ZSH
ln -sv "$SRC_DIR"/zsh/.zshenv ~/.zshenv
ln -sv "$SRC_DIR"/.hushlogin ~/.hushlogin
