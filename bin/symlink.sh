#!/bin/bash

# Used when GNU Stow is not installed
# on machine. symlink the essentials

ln -sf ~/dotfiles/bash/.bashrc ~/.bashrc
ln -sf ~/dotfiles/bash/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
