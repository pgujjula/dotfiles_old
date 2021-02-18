#!/bin/bash

# Stop on failure
set -e

# Echo commands
set -x

SOURCE_DIR=$(readlink -f $(dirname "$BASH_SOURCE"))

# Bash config
cp $SOURCE_DIR/.bashrc $HOME/.bashrc
cp $SOURCE_DIR/.bash_profile $HOME/.bash_profile

# Tmux config
cp $SOURCE_DIR/.tmux.conf $HOME/.tmux.conf
cp $SOURCE_DIR/.tmuxline.conf $HOME/.tmuxline.conf

# Neovim config
INSTALL_DIR=~/.config/nvim
mkdir -p $INSTALL_DIR
cp $SOURCE_DIR/init.vim $INSTALL_DIR/init.vim

# install plugins with vim-plug. vim-plug must be installed separately already
nvim --headless +PlugInstall +qall
