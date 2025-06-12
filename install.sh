#!/bin/bash
############################
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="zshrc gitconfig tmux.conf" # list of files/folders to symlink in homedir

##########

# make config dir if doesnt exist
mkdir -p ~/.config

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
	echo "Moving any existing dotfiles from ~ to $olddir"
	mv ~/.$file $olddir
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/.$file
done

echo "Moving old init.vim file"
mv ~/.config/nvim/init.vim $olddir
echo "Symlinking nvim"
ln -s "$dir/nvim" ~/.config/nvim

# no longer using emacs
# echo "Moving old doom.d config"
# mv ~/.doom.d $olddir
# echo "Symlinking doom.d config"
# ln -s "$dir/doom" ~/.doom.d
