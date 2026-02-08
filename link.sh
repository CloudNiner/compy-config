#!/bin/bash

THIS_DIR=$(dirname "$0")
cd "$THIS_DIR" || exit
SRC_DIR=$(pwd)

# TMUX
ln -sv "$SRC_DIR"/tmux.conf ~/.tmux.conf

# GIT
ln -sv "$SRC_DIR"/gitignore ~/.gitignore
ln -sv "$SRC_DIR"/gitconfig ~/.gitconfig

# psql
ln -sv "$SRC_DIR"/psqlrc ~/.psqlrc
