#!/bin/sh

dothome=$(pwd)

#setup the environment variables for zsh so we can keep the home directory clean :)
sudo rm -rf /etc/zsh/zshenv & echo "removed the zshenv file in /etc/zsh/zshenv"
sudo cp zshenv /etc/zsh/zshenv & echo -e "copied the repo's version of zshenv to /etc/zsh/zshenv \n"

cd ~/.config

#remove existing symlinks, you should only ever run this script once but fail-safes or whatever. Although if I add more dotfiles in the future running it again will be necessary so future-proofing
rm -rf mpd & echo "deleted existing symlink for mpd config files"
rm -rf ncmpcpp & echo "deleted existing symlink for ncmpcpp config files"
rm -rf nitrogen & echo "deleted existing symlink for nitrogen config files"
rm -rf nvim & echo "deleted existing symlink for neovim config files"
rm -rf pulse & echo "deleted existing symlink for pulseaudio config files"
rm -rf zsh & echo -e "deleted existing symlink for zsh config files \n"

#add new symlinks
ln -s $dothome/mpd mpd & echo "successfully created symlink for mpd"
ln -s $dothome/ncmpcpp ncmpcpp & echo "successfully created symlink for ncmpcpp"
ln -s $dothome/nitrogen nitrogen & echo "successfully created symlink for nitrogen"
ln -s $dothome/nvim nvim & echo "successfully created symlink for neovim"
ln -s $dothome/pulse pulse & echo -e "successfully created symlink for pulseaudio"
ln -s $dothome/zsh zsh & echo -e "successfully created symlink for zsh \n"

#add new symlinks that aren't in the usual .config directory (although I wish they were)
cd ~/

cd $dothome
echo -e "going back to repo home \n"
pwd


#cleaning up potential glitchiness
cd $dothome
rm -rf mpd/mpd
rm -rf ncmpcpp/ncmpcpp
rm -rf nitrogen/nitrogen
rm -rf nvim/nvim
rm -rf pulse/pulse

cd $dothome
