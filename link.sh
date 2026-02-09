#!/bin/bash

THIS_DIR=$(dirname "$0")
cd "$THIS_DIR" || exit
SRC_DIR=$(pwd)

mkdir -p ~/.config

# TMUX
ln -sv "$SRC_DIR"/tmux.conf ~/.tmux.conf

# GIT
ln -sv "$SRC_DIR"/gitignore ~/.gitignore
ln -sv "$SRC_DIR"/gitconfig ~/.gitconfig

# Ghostty
mkdir -p ~/.config/ghostty
rm ~/.config/ghostty/config
ln -sv "$SRC_DIR"/ghostty/config ~/.config/ghostty/config

# Fish
mkdir -p ~/.config/fish
rm ~/.config/fish/config.fish
ln -sv "$SRC_DIR"/fish/config.fish ~/.config/fish/config.fish

# Starship
ln -sv "$SRC_DIR"/starship.toml ~/.config/starship.toml

# psql
ln -sv "$SRC_DIR"/psqlrc ~/.psqlrc

# Zed
mkdir -p ~/.config/zed
rm ~/.config/zed/settings.json
ln -sv "$SRC_DIR"/zed/settings.json ~/.config/zed/settings.json
