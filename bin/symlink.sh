#!/bin/bash

# used when GNU Stow is not installed
# on the machine

echo "Symlinking dotfiles..."

if [ ! -d ~/dotfiles ]; then
    echo "dotfiles folder not setup correctly. Exiting..."
    exit 1
else
    cd ~/dotfiles
fi

files=("bash" "tmux.conf" "vim")

for file in "${files[@]}"; do
    if [[ $file == *"tmux"* ]]; then
        ln -sf ~/dotfiles/tmux/.$file ~/.$file
    else
        ln -sf ~/dotfiles/$file/.${file}rc ~/.${file}rc
    fi
    echo "$file linked"
done

echo "Done!"
