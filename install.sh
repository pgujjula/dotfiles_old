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
cp $SOURCE_DIR/.tmux.conf           $HOME/.tmux.conf
cp $SOURCE_DIR/.tmuxline.conf       $HOME/.tmuxline.conf --no-dereference
cp $SOURCE_DIR/.tmuxline.conf.dark  $HOME/.tmuxline.conf.dark
cp $SOURCE_DIR/.tmuxline.conf.light $HOME/.tmuxline.conf.light

# Neovim config
INSTALL_DIR=~/.config/nvim
mkdir -p $INSTALL_DIR
cp $SOURCE_DIR/init.vim $INSTALL_DIR/init.vim

# ghci config
cp $SOURCE_DIR/.ghci $HOME/.ghci

# install plugins with vim-plug. vim-plug must be installed separately already
nvim --headless +PlugInstall +qall
