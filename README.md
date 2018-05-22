# dotfiles
IA^[10aa^[5aw^[a yea^[4ah^[5a!^[:w^M

## Emacs
To avoid symlinking whole .emacs.d folder, first `makedir -p ~/.emacs.d; touch ~/.emacs.d/custom.el` then run `emacs -nw` from terminal and all plugins will auto-install.

## vim
Install vim-plug `curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim; vim +PlugInstall`.

## GNU Stow
Install GNU Stow and link packages, e.g. `stow bash`. Alternatively, run
`./stowit.sh` to link all packages in this folder (except bin and misc).

