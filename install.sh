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
INSTALL_DIR=~/.config/tmux
mkdir -p $INSTALL_DIR
cp $SOURCE_DIR/tmux/tmux.conf           $INSTALL_DIR/tmux.conf
cp $SOURCE_DIR/tmux/tmuxline.conf       $INSTALL_DIR/tmuxline.conf --no-dereference
cp $SOURCE_DIR/tmux/tmuxline.conf.dark  $INSTALL_DIR/tmuxline.conf.dark
cp $SOURCE_DIR/tmux/tmuxline.conf.light $INSTALL_DIR/tmuxline.conf.light

# Neovim config
INSTALL_DIR=~/.config/nvim
mkdir -p $INSTALL_DIR
cp $SOURCE_DIR/init.vim $INSTALL_DIR/init.vim
cp $SOURCE_DIR/coc-settings.json $INSTALL_DIR/coc-settings.json

# Git config
cp $SOURCE_DIR/.gitconfig $HOME/.gitconfig

# ghci config
cp $SOURCE_DIR/.ghci $HOME/.ghci

# install neovim plugins with vim-plug. vim-plug must be installed separately already
nvim --headless +PlugInstall +qall
