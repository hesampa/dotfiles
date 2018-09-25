# dotfiles
IA^[10aa^[5aw^[a yea^[4ah^[5a!^[:w^M

## Emacs
To avoid symlinking whole .emacs.d folder, first `mkdir -p ~/.emacs.d; touch ~/.emacs.d/custom.el`. Now run `Emacs` as usual.

## vim
Install vim-plug `curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim; vim +PlugInstall`.

## GNU Stow
Install GNU Stow and link packages, e.g. `stow bash`. Alternatively, run
`./stowit.sh` to link all packages in this folder (except bin and misc).

