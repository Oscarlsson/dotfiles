#!/bin/bash
#
# This is meant to be a install-script.
#
# Install neccesary stuff 

sudo apt-get install curl zsh ctags

dir=~/dotfiles
backupdir=~/olddot
files="bashrc bash_aliases vimrc vim ssh/.config dircolors xmonad xsession xmodbar oh-my-zsh zshrc gitconfig "

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
