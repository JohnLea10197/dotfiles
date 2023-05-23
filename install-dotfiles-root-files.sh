#!/bin/sh

# We setup this secondary script to move specifically the things that require root access.

echo "active directory for the root files script is:"
pwd
dothome=$(pwd)

echo "I use profile.d instead of shell environment (like zshenv or bashrc) because I want to be shell agnostic"

sudo rm -rf /etc/profile.d/clean-home.sh & echo "removed already existing home cleaner script "
sudo rm -rf /etc/profile.d/path.sh & echo "removed already existing path setting script "

sudo cp profile.d/clean-home.sh /etc/profile.d/clean-home.sh & echo "added home cleaner script to profile "
sudo cp profile.d/path.sh /etc/profile.d/path.sh & echo "added path setting script to profile "

echo -e "going back to repo home "
cd $dothome
