#!/bin/bash


echo "Installing the dot files in the home dir ($HOME)"
echo ""

if [ -f ~/.bashrc ]
then
	echo  "~/.bashrc already exists!"
	echo "moving ~/.bashrc to ~/.bashrc.old"
	echo ""
	mv ~/.bashrc ~/.bashrc.old
fi

if [ -f ~/.bash_aliases ]
then
	echo  "~/.bash_aliases already exists!"
	echo "moving ~/.bash_aliases to ~/.bash_aliases.old"
	echo ""
	mv ~/.bash_aliases ~/.bash_aliases.old
fi

if [ -f ~/.bash_profile ]
then
	echo  "~/.bash_profile already exists!"
	echo "moving ~/.bash_profile to ~/.bash_profile.old"
	echo ""
	mv ~/.bash_profile ~/.bash_profile.old
fi

if [ -f ~/.gitignore_global ]
then
	echo  "~/.gitignore_global already exists!"
	echo "moving ~/.gitignore_global to ~/.gitignore_global.old"
	echo ""
	mv ~/.gitignore_global ~/.gitignore_global.old
fi

if [ -f ~/.gitconfig ]
then
	echo  "~/.gitconfig already exists!"
	echo "moving ~/.gitconfig to ~/.gitconfig.old"
	echo ""
	mv ~/.gitconfig ~/.gitconfig.old
fi

echo ""


echo "hard linking the files into the home dir"
ln bashrc ~/.bashrc
ln bash_aliases ~/.bash_aliases
ln bash_profile ~/.bash_profile
ln gitignore_global ~/.gitignore_global
ln gitconfig ~/.gitconfig


echo "replace '/Users/marshall' with '$HOME' in gitconfig"
sed -i -e "s|/Users/marshall/|${HOME}/|" gitconfig


if [ $(gpg --list-keys  | wc -l) -eq 0 ]
then
	echo "no gpg keys, do not sign commits"
	sed -i -e "s|.*sign.*||" gitconfig
fi

