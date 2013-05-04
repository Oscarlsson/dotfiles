#!/bin/bash
#
# This is meant to be a install-script.
#

dir=~/dotfiles
backupdir=~/olddot
files="bashrc bash_aliases vimrc vim ssh xbindkeysrc dircolors"

mkdir -p $backupdir

cd $dir

#git submodule init
#git submodule update

# Create symlinks
for files in $files; do
    mv ~/.$file $backupdir
    ln -s $dir/.$file ~/.$file
done


# Set Solarized
.solarized/gnome-terminal-colors-solarized/set_dark.sh
