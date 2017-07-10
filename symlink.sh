#!/bin/bash

echo "Symlinking dotfiles..."

if [ ! -d ~/dotfiles ]; then
    echo "dotfiles folder not setup correctly. Exiting..."
    exit 1
fi

files=("tmux.conf" "vimrc" "zshenv" "zshrc")

for file in "${files[@]}"; do
    ln -sf ~/dotfiles/$file ~/.$file
    echo "$file linked"
done

echo "Done!"
