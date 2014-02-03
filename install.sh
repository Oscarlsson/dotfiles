#!/bin/bash
#
# This is meant to be a install-script.
#
# Install neccesary stuff 

dir=~/dotfiles
backupdir=~/olddot
files="bashrc bash_aliases vimrc vim dircolors oh-my-zsh zshrc zshrcwork gitconfig aliases"

# Xinitrc -> xsession?
# Gnome-session-file

mkdir -p $backupdir
cd $dir

git submodule init
git submodule update

# Create symlinks
for file in $files; do
    
    if [ -a ~/.$file ]; 
        then
        mv ~/.$file $backupdir
    fi
    
    ln -s $dir/.$file ~/.$file
done

# Set Solarized
.solarized/gnome-terminal-colors-solarized/set_dark.sh

# Install oh-my-zsh
chsh -s /bin/zsh
