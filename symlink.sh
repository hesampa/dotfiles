#!/bin/bash

echo 'Symlinking dotfiles...'

files=('vimrc' 'zshrc' 'tmux.conf')

if [ ! -d $dotfiles ]; then
    echo 'dotfiles folder not setup correctly. Exiting...'
    exit 1
fi

for file in ${files[@]}:
do
    if [ -e ~/.$file ]; then
        rm ~/.$file
    fi
        ln -sf $dotfiles/$file ~/.$file
        echo "$file"
done

echo 'Done!'
