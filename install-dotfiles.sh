#!/bin/sh

dothome=$(pwd)

cd ~/.config

#remove existing symlinks, you should only ever run this script once but fail-safes or whatever. Although if I add more dotfiles in the future running it again will be necessary so future-proofing
#todo: don't remove existing symlinks and just tell the shell to not update those files if they already exist
rm -rf mpd & echo "deleted existing symlink for mpd config files"
rm -rf ncmpcpp & echo "deleted existing symlink for ncmpcpp config files"
rm -rf nvim & echo "deleted existing symlink for neovim config files"
rm -rf zsh & echo -e "deleted existing symlink for zsh config files"
rm -rf pipewire & echo -e "deleted existing symlink for pipewire config files "

#add new symlinks
ln -s $dothome/mpd mpd & echo "successfully created symlink for mpd"
ln -s $dothome/ncmpcpp ncmpcpp & echo "successfully created symlink for ncmpcpp"
ln -s $dothome/nvim nvim & echo "successfully created symlink for neovim"
ln -s $dothome/pipewire pipewire & echo "successfully created symlink for pipewire"
ln -s $dothome/zsh zsh & echo -e "successfully created symlink for zsh "

cd $dothome
echo -e "going back to repo home "

#cleaning up potential glitchiness
cd $dothome
rm -rf mpd/mpd
rm -rf ncmpcpp/ncmpcpp
rm -rf nvim/nvim
rm -rf polybar/polybar
rm -rf zsh/zsh
rm -rf sxhkd/sxhkd

cd $dothome

./install-dotfiles-root-files.sh
