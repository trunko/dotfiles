#!/bin/bash

# Install necessary packages
while read i; do yay -S --noconfirm $i; done <~/dotfiles/packages.txt

# Create Symlinks
ln -s ~/dotfiles/config/* ~/.config/
