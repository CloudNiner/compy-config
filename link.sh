#!/bin/bash

THIS_DIR=`dirname $0`
cd $THIS_DIR 
SRC_DIR=`pwd`

ln -sv $SRC_DIR/tmux.conf ~/.tmux.conf

