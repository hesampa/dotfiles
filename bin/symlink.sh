#!/bin/bash

# Used when GNU Stow is not installed
# on machine. symlink the essentials

mkdir -p ~/.vim/after

ln -sf ~/dotfiles/bash/.bashrc ~/.bashrc
ln -sf ~/dotfiles/bash/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/vim/.vim/.vimrc/ ~/.vimrc
ln -sf ~/dotfiles/vim/.vim/after/ftplugin/ ~/.vim/after/
ln -sf ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
