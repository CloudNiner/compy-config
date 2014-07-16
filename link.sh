#!/bin/bash

THIS_DIR=`dirname $0`
cd $THIS_DIR 
SRC_DIR=`pwd`

# TMUX
ln -sv $SRC_DIR/tmux.conf ~/.tmux.conf

# GIT
ln -sv $SRC_DIR/gitignore ~/.gitignore
ln -sv $SRC_DIR/gitconfig ~/.gitconfig

